/*
 * main.c
 *
 *  Created on: 15 апр. 2017 г.
 *      Author: developer
 */
#include <stdio.h>
#include <util/delay.h>

#include <avr/io.h>

#include "comm_def.h"

#include "librscs_config.h"
#include "rscs/ads1115.h"
#include "rscs/adc.h"
#include "rscs/adxl345.h"
#include "rscs/bmp280.h"
#include "rscs/dht22.h"
#include "rscs/ds18b20.h"
#include "rscs/sdcard.h"
#include "rscs/timeservice.h"
#include "rscs/uart.h"
#include "rscs/stdext/stdio.h"

#include "bosh_bmp280.h"

//Дескрипторы устройств

rscs_ads1115_t * ads1115;
rscs_adxl345_t * adxl345;
rscs_bmp280_descriptor_t * bmp280;
rscs_dht22_t * dht22;
rscs_ds18b20_t * ds18b20;
rscs_sdcard_t * sdcard;
rscs_uart_bus_t * uart_gps;
rscs_uart_bus_t * uart_data;

gr_telemetry_t packet = {	.marker = 0xFCFC,
							.number = 0,
							.pressure = 0,
							.temperature_bmp = 0,
							.temperature_ds18 = 0,
							.temperature_dht = 0,
							.humidity = 0,
							.luminosity1 = 0,
							.luminosity2 = 0,
							.luminosity3 = 0,
							.temperature_soil1 = 0,
							.temperature_soil2 = 0,
							.temperature_soil3 = 0,
							.latitude = 56.72666666666667,
							.longtitude = 37.716944444444444,
							.height = 143
};

int32_t rawpress, rawtemp;
const rscs_bmp280_calibration_values_t * calvals;

uint8_t dht_untilrequest = 0;

static void init();
static void sensupdate();
inline static void sign_packet(gr_telemetry_t * packet);

#define OPR(OP) error = OP; if(error != RSCS_E_NONE) printf("ERROR %d", error);
rscs_e error = RSCS_E_NONE;

int main() {
	_delay_ms(2000);
	packet.soilresist_data[0].adc = 0;
	packet.soilresist_data[0].digipot = 0;
	packet.soilresist_data[1].adc = 0;
	packet.soilresist_data[1].digipot = 0;
	packet.soilresist_data[2].adc = 0;
	packet.soilresist_data[2].digipot = 0;

	init();

	while(1) {
		sensupdate();
	}

	return 0;
}

static void init() {

	rscs_time_init(); //Служба времени

	{ //UART для данных и дебага (ID_UART0)
		uart_data = rscs_uart_init(RSCS_UART_ID_UART0, 	RSCS_UART_FLAG_ENABLE_RX
														|RSCS_UART_FLAG_BUFFER_RX
														|RSCS_UART_FLAG_ENABLE_TX
														|RSCS_UART_FLAG_BUFFER_TX);
		rscs_uart_set_baudrate(uart_data, 9600);
		rscs_uart_set_character_size(uart_data, 8);
		rscs_uart_set_parity(uart_data, RSCS_UART_PARITY_NONE);
		rscs_uart_set_stop_bits(uart_data, RSCS_UART_STOP_BITS_ONE);

		RSCS_DEBUG_INIT(uart_data)
		stdin = stdout = rscs_make_uart_stream(uart_data);
	}

	rscs_i2c_init();
	rscs_i2c_set_scl_rate(100);

	{ //ADXL345
		adxl345 = rscs_adxl345_initi2c(RSCS_ADXL345_ADDR_MAIN);
		rscs_adxl345_set_range(adxl345, RSCS_ADXL345_RANGE_2G);
		rscs_adxl345_set_rate(adxl345, RSCS_ADXL345_RATE_100HZ);
	}

	{ //BMP280
		bosh_bmp280_init();
	}

	{ //DS18B20
		ds18b20 = rscs_ds18b20_init(0x00); //не используем адресацию
		OPR( rscs_ds18b20_start_conversion(ds18b20) )
	}

	{ //DHT22
		dht22 = rscs_dht22_init(&PORTB, &PINB, &DDRB, 4, 7.0f);
	}

}

static void sensupdate() {

	for(int i = 0; i < 10; i++) {
		RSCS_DEBUG("ADXL345: reading: %d\n", rscs_adxl345_read(adxl345, &(packet.accelerations[i].x), &(packet.accelerations[i].y), &(packet.accelerations[i].z)));
		_delay_ms(100);
	}

	bosh_bmp280_read(&packet.pressure, &packet.temperature_bmp);
	printf("BMP: p %ld  t %ld   %ld %ld\n", rawpress, rawtemp, packet.pressure, packet.temperature_bmp);


	if(dht_untilrequest == 0) {
		rscs_dht22_read(dht22, &(packet.humidity), &(packet.temperature_dht));
		dht_untilrequest  = 2;
		printf("DHT: %d %d\n", packet.humidity, packet.temperature_dht);
	}
	else dht_untilrequest--;

	if(rscs_ds18b20_check_ready()) {
		RSCS_DEBUG("DS18B20: reading: %d\n", rscs_ds18b20_read_temperature(ds18b20, &(packet.temperature_ds18) ) );
		RSCS_DEBUG("DS18B20: %d\n", packet.temperature_ds18);
		RSCS_DEBUG("DS18B20: starting conversion: %d\n", rscs_ds18b20_start_conversion(ds18b20));
	}


	sign_packet(&packet);
	rscs_uart_write(uart_data, &packet, sizeof(packet));
	_delay_ms(100);
}

inline static void sign_packet(gr_telemetry_t * packet) {
	packet->number++;
	packet->time = rscs_time_get();
	packet->checksumm = 0;

	for(int i = 0; i < ( sizeof(gr_telemetry_t) - sizeof(packet->checksumm) ); i++) {
		packet->checksumm += ((uint8_t *) packet)[i];
	}
}
