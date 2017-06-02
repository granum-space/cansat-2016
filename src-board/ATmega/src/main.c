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

#include "soil_res.h"

#include "granum_globals.h"
#include "granum_config.h"

static void init();

#define OPR(OP) error = OP; if(error != RSCS_E_NONE) printf("ERROR %d", error);
rscs_e error = RSCS_E_NONE;

int main() {

	/*{ //Test purposes only

#define STM_SELECT PORTB &= ~(1 << 4);
#define STM_UNSELECT PORTB |= (1 << 4);

		{ //UART для данных (ID_UART0)
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

		DDRB |= (1 << 4);
		STM_UNSELECT

		rscs_spi_init();

		// TODO: Василий. Оформить взаимодействие с STM в виде модуля
		// и отладить. В контексте отсутствия ожидания данных от UART может вылезти много чего интересного
		while(1) {
			rscs_uart_write_byte(uart_data, rscs_spi_do( rscs_uart_read_byte( uart_data )));

			STM_SELECT

			rscs_uart_write_byte(uart_data, rscs_spi_do( rscs_uart_read_byte( uart_data )));

			STM_UNSELECT
		}
	}*/

	while(GR_JMP_INACT_VAL) //Если поставили джампер неактивности, то ничего не делаем

	init();


	return 0;
}

static void init() {

	rscs_time_init(); //Служба времени

	{ //UART для данных (ID_UART0)
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
	rscs_i2c_set_scl_rate(16);

	{ //Internal ADC (thermistors)
		rscs_adc_init();
	}

	{ //ADXL345
		adxl345 = rscs_adxl345_initi2c(RSCS_ADXL345_ADDR_MAIN);
		rscs_adxl345_set_range(adxl345, RSCS_ADXL345_RANGE_2G);
		rscs_adxl345_set_rate(adxl345, RSCS_ADXL345_RATE_100HZ);
	}

	{ //BMP280
		bmp280 = rscs_bmp280_initi2c(RSCS_BMP280_I2C_ADDR_LOW);
		rscs_bmp280_parameters_t params = {
				.pressure_oversampling = RSCS_BMP280_OVERSAMPLING_X16,
				.temperature_oversampling = RSCS_BMP280_OVERSAMPLING_X2,
				.standbytyme = RSCS_BMP280_STANDBYTIME_62DOT5MS,
				.filter = RSCS_BMP280_FILTER_X16
		};
		OPR( rscs_bmp280_setup(bmp280, &params) )
		OPR( rscs_bmp280_changemode(bmp280, RSCS_BMP280_MODE_NORMAL) )
	}

	{ //DS18B20
		ds18b20 = rscs_ds18b20_init(0x00); //не используем адресацию
		OPR( rscs_ds18b20_start_conversion(ds18b20) )
	}

	{ //DHT22
		dht22 = rscs_dht22_init(&PORTB, &PINB, &DDRB, 4, 7.0f);
	}

	{ //FatFS and SDcard

	}
}

static void sensupdate_fast() {

}

/*static void sensupdate() {

	for(int i = 0; i < 10; i++) {
		RSCS_DEBUG("ADXL345: reading: %d\n", rscs_adxl345_read(adxl345, &(packet.accelerations[i].x), &(packet.accelerations[i].y), &(packet.accelerations[i].z)));
		_delay_ms(100);
	}

	printf("BMP: status: 0x%02X\n", rscs_bmp280_read_status(bmp280));
	printf("BMP: status: %d\n", rscs_bmp280_read(bmp280, &rawpress, &rawtemp));
	rscs_bmp280_calculate(rscs_bmp280_get_calibration_values(bmp280), rawpress, rawtemp, &(packet.pressure), &(packet.temperature_bmp));

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
} */
