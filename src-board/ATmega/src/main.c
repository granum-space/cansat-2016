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

#include "dump.h"
#include "librscs_config.h"
#include "rscs/ads1115.h"
#include "rscs/adc.h"
#include "rscs/adxl345.h"
#include "rscs/bmp280.h"
#include "rscs/dht22.h"
#include "rscs/ds18b20.h"
#include "rscs/sdcard.h"
#include "rscs/timeservice.h"
#include "rscs/tsl2561.h"
#include "rscs/uart.h"
#include "rscs/stdext/stdio.h"

#include "soil_res.h"

#include "granum_globals.h"
#include "granum_config.h"

static void init();

#define OPR(OP) error = OP; if(error != RSCS_E_NONE) printf("ERROR %d", error);
rscs_e error = RSCS_E_NONE;

static void _sensupdate_fast();
static void _sensupdate_slow();
static void _sensupdate_so_slow();


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

	while(1) { //Главный бесконечный цикл
		_sensupdate_fast(); //fast part


		if((tick_counter % GR_TICK_SLOW_PRESCALER) == 0) { //slow part
			_sensupdate_slow();
		}

		if((tick_counter % GR_TICK_SO_SLOW_PRESCALER) == 0) { //so slow part
			_sensupdate_so_slow();
		}

		tick_counter++;
	}

	return 0;
}

static void init() {

	rscs_time_init(); //Служба времени

	{//Structures init
		telemetry_fast.marker = 0xACCA;
		telemetry_fast.number = 0;

		telemetry_slow.marker = 0xFCFC;
		telemetry_slow.number = 0;

		telemetry_so_slow.marker = 0xFC1A;
		telemetry_so_slow.number = 0;
	}

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

	rscs_spi_init();

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
		RSCS_DEBUG("FATFS\n");
		dump_init("d");
		int why[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};
		while(1){dump(why, sizeof(why));}
	}

	{ //TSL2561
		tsl2561_A = rscs_tsl2561_init(RSCS_TSL2561_ADDR_LOW);
		tsl2561_B = rscs_tsl2561_init(RSCS_TSL2561_ADDR_HIGH);
		tsl2561_C = rscs_tsl2561_init(RSCS_TSL2561_ADDR_FLOATING);

		rscs_tsl2561_setup(tsl2561_A);
		rscs_tsl2561_setup(tsl2561_B);
		rscs_tsl2561_setup(tsl2561_C);
	}
}

static uint32_t _checksumm_calculate(void * data, size_t datasize);

static void _sensupdate_fast() {
	{//ADXL345
		rscs_adxl345_read(adxl345, 	&(telemetry_fast.accelerations.x),
									&(telemetry_fast.accelerations.y),
									&(telemetry_fast.accelerations.z));
	}

	{//TSL2561
		rscs_tsl2561_read(tsl2561_A, &(telemetry_fast.luminosity[0].v0), &(telemetry_fast.luminosity[0].v1));
		rscs_tsl2561_read(tsl2561_B, &(telemetry_fast.luminosity[1].v0), &(telemetry_fast.luminosity[1].v1));
		rscs_tsl2561_read(tsl2561_C, &(telemetry_fast.luminosity[2].v0), &(telemetry_fast.luminosity[2].v1));
	}

	telemetry_fast.time = rscs_time_get();
	telemetry_fast.tick = tick_counter;

	telemetry_fast.checksumm = _checksumm_calculate(&telemetry_fast, sizeof(telemetry_fast) - sizeof(telemetry_fast.checksumm));

	dump(&telemetry_fast, sizeof(telemetry_fast));

	telemetry_fast.number++;
}

static void _sensupdate_slow(){

	{//BMP280
		int32_t rawpress, rawtemp;
		rscs_bmp280_read(bmp280, &rawpress, &rawtemp);
		rscs_bmp280_calculate(rscs_bmp280_get_calibration_values(bmp280), rawpress, rawtemp,
								&(telemetry_slow.pressure), &(telemetry_slow.temperature_bmp));
	}

	{//STM32
		//TODO запрос статуса у STM32
	}

	telemetry_slow.time = rscs_time_get();
	telemetry_slow.tick = tick_counter;

	telemetry_slow.checksumm = _checksumm_calculate(&telemetry_slow, sizeof(telemetry_slow) - sizeof(telemetry_slow.checksumm));

	dump(&telemetry_slow, sizeof(telemetry_slow));

	telemetry_slow.number++;
}

static void _sensupdate_so_slow(){

	if(rscs_ds18b20_check_ready()) {//DS18B20
		rscs_ds18b20_read_temperature(ds18b20, &(telemetry_so_slow.temperature_ds18));
		rscs_ds18b20_start_conversion(ds18b20);
	}

	rscs_dht22_read(dht22, &(telemetry_so_slow.humidity), &(telemetry_so_slow.temperature_dht));

	{//Thermistors

		switch(tick_counter % (GR_TICK_SO_SLOW_PRESCALER * 3) ) {

		case 0:
			rscs_adc_get_result(&(telemetry_so_slow.temperature_soil[0]));
			rscs_adc_start_single_conversion(GR_THERMISTORS_ADC_CHANNEL_2);
			break;

		case GR_TICK_SO_SLOW_PRESCALER:
			rscs_adc_get_result(&(telemetry_so_slow.temperature_soil[1]));
			rscs_adc_start_single_conversion(GR_THERMISTORS_ADC_CHANNEL_3);
			break;

		default:
			rscs_adc_get_result(&(telemetry_so_slow.temperature_soil[2]));
			rscs_adc_start_single_conversion(GR_THERMISTORS_ADC_CHANNEL_1);
			break;
		}

	}
}

static uint32_t _checksumm_calculate(void * data, size_t datasize) {
	uint32_t result = 0;

	for(int i = 0; i < datasize; i++) {
		result += ((uint8_t *)data) [i];
	}

	return result;

}

/*static void sensupdate() {

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
