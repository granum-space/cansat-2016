/*
 * main.c
 *
 *  Created on: 15 апр. 2017 г.
 *      Author: developer
 */
#include <stdio.h>
#include <util/delay.h>
#include <string.h>
#include <avr/interrupt.h>

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
#include "gr_servo.h"

#include "sensors.h"
#include "stm32.h"

#include "granum_globals.h"
#include "granum_config.h"
#include <math.h>

static void init();

static luminosity_t _luminosity_lastdata[9];

static soilresist_data_t _soilres_lastdata[9];

static enum {
	RADIO_STATE_IDLE,
	RADIO_STATE_COLLECTING
} radio_state;
static uint8_t radio_bytes[9];
static uint8_t radio_index;

void radio_checkForCommads(void) {
	uint8_t databyte = 0;

	while(rscs_uart_read_some(uart_data, &databyte, 1)) {
		switch (radio_state) {
			case RADIO_STATE_IDLE:
				if(databyte == GSRQ_START) radio_state = RADIO_STATE_COLLECTING;
				break;

			case RADIO_STATE_COLLECTING:
				radio_bytes[radio_index] = databyte;
				radio_index++;

				if(radio_index > 9) {
					radio_index = 0;

					uint64_t * data_p = (uint64_t *)radio_bytes;

					if( *data_p == GSRQ_CHMOD) {
						if(gr_status.mode == GR_MODE_IDLE) gr_status.mode = GR_MODE_AWAITING_EXIT;
					}

					else if( *data_p == GSRQ_CHLUX) {
						gr_luminosity_threshhold = radio_bytes[8];
					}
				}

				break;

			default:
				break;
		}
	}
}

void gr_nextMode(void) {
	gr_status.mode++;
	stm32_transmitSystemStatus();

	switch(gr_status.mode) {
	case GR_MODE_AWAITING_LEGS:
		GR_FUSE_ON
		break;

	case GR_MODE_LANDING:
		GR_FUSE_OFF
		break;

	case GR_MODE_ONGROUND:
		gr_servo_set(90);
		for(int i = 0; i < 3; i++) stm32_getAccelerations();
		break;

	default:
		break;
	}
}

int main() {

	while(GR_JMP_INACT_VAL); //Если поставили джампер неактивности, то ничего не делаем

	DDRG |= (1 << 3);

	init();

	while((rscs_time_get() % 1000) != 0);

	while(1) { //Главный бесконечный цикл
		uint32_t cycleStartTime = rscs_time_get();

		radio_checkForCommads();

		{ //fast part

			sens_update_fast();

			if(gr_status.mode == GR_MODE_AWAITING_EXIT) {

				memcpy(_luminosity_lastdata, _luminosity_lastdata + 3, 6 * sizeof(luminosity_t));
				memcpy(_luminosity_lastdata + 6, telemetry_fast.luminosity, 3 * sizeof(luminosity_t));

				int meas_valid = 9, meas_passed = 0;

				for(int i = 0; i < 3 * 3 /*3 измерения с 3 датчиков*/ ; i++) {
					if(_luminosity_lastdata[i].error != RSCS_E_NONE) meas_valid--;

					else if(_luminosity_lastdata[i].lux > gr_luminosity_threshhold) meas_passed++;
				}

				if(meas_passed > (meas_valid / 2)) gr_nextMode();
			}

			printf("TICK: %ld\n", tick_counter);
			printf("TIME: %ld\n", cycleStartTime);
			//printf("DHT22: H: %d, P: %d    E:%d\n", telemetry_so_slow.humidity, telemetry_so_slow.temperature_dht, telemetry_so_slow.dht22_error);
			//printf("ADXL345: %d, %d, %d   e: %d\n", telemetry_fast.accelerations.x, telemetry_fast.accelerations.y, telemetry_fast.accelerations.z, telemetry_fast.adxl345_error);
			/*printf("TSL: %d e: %d    %d e: %d    %d e: %d\n", telemetry_fast.luminosity[0].lux, telemetry_fast.tsl2561_A_error,
						telemetry_fast.luminosity[1].lux, telemetry_fast.tsl2561_B_error,
						telemetry_fast.luminosity[2].lux, telemetry_fast.tsl2561_C_error);*/
		}

		if((tick_counter % GR_TICK_SLOW_PRESCALER) == 0) { //slow part
			sens_update_slow();

			int meas_passed = 0;
			if(gr_status.mode == GR_MODE_AWAITING_LEGS) {
				for(int i = 0; i < 9; i++) {
					memcpy(_soilres_lastdata, _soilres_lastdata + 3, 6 * sizeof(soilresist_data_t));
					memcpy(_soilres_lastdata + 6, telemetry_fast.luminosity, 3 * sizeof(soilresist_data_t));

					if(_soilres_lastdata[i].resistance > GR_SOILRES_THRESHOLD) {
						meas_passed++;
					}
				}

				if(meas_passed > 4) gr_nextMode();
			}

			if(gr_status_stm.adxl_status == ADXL_STATUS_FINISHED) gr_nextMode();

			printf("RAW ADC: %ld  %ld  %ld\n", telemetry_so_slow.temperature_soil[0], telemetry_so_slow.temperature_soil[1], telemetry_so_slow.temperature_soil[2]);

			/*printf("SOILRES: %ld   %ld   %ld\n", 	telemetry_slow.soilresist_data[0].resistance,
												telemetry_slow.soilresist_data[1].resistance,
												telemetry_slow.soilresist_data[2].resistance);*/
			//printf("BMP280: P:%ld  T:%ld    e: %d\n", telemetry_slow.pressure, telemetry_slow.temperature_bmp, telemetry_slow.bmp280_error);
		}

		if((tick_counter % GR_TICK_SO_SLOW_PRESCALER) == 0) { //so slow part
			sens_update_so_slow();

			//printf("DS18B20: %d   e: %d   %d\n", telemetry_so_slow.temperature_ds18, telemetry_so_slow.ds18b20_error_read, telemetry_so_slow.ds18b20_error_conversion);
		}

		printf("\n\n\n\n");

		tick_counter++;

		while(rscs_time_get() < (cycleStartTime + GR_TICK_DELAY_MS));

		PORTG ^= (1 << 3);
	}

	return 0;
}

static void init() {
	rscs_time_init(); //Служба времени
	sei();

	{ //UART для данных (ID_UART1)
		uart_data = rscs_uart_init(GR_UART_DATA_ID, 	RSCS_UART_FLAG_ENABLE_RX
														|RSCS_UART_FLAG_BUFFER_RX
														|RSCS_UART_FLAG_ENABLE_TX
														|RSCS_UART_FLAG_BUFFER_TX);
		rscs_uart_set_baudrate(uart_data, 9600);
		rscs_uart_set_character_size(uart_data, 8);
		rscs_uart_set_parity(uart_data, RSCS_UART_PARITY_NONE);
		rscs_uart_set_stop_bits(uart_data, RSCS_UART_STOP_BITS_ONE);
	}

#ifdef RSCS_DEBUG
	{ //UART для дебага
		uart_debug = rscs_uart_init(GR_UART_DEBUG_ID, 	RSCS_UART_FLAG_ENABLE_RX
														|RSCS_UART_FLAG_BUFFER_RX
														|RSCS_UART_FLAG_BUFFER_TX
														|RSCS_UART_FLAG_ENABLE_TX);
		rscs_uart_set_baudrate(uart_debug, 9600);
		rscs_uart_set_character_size(uart_debug, 8);
		rscs_uart_set_parity(uart_debug, RSCS_UART_PARITY_NONE);
		rscs_uart_set_stop_bits(uart_debug, RSCS_UART_STOP_BITS_ONE);

		RSCS_DEBUG_INIT(uart_debug)
	}
#endif

	rscs_spi_init();

	rscs_i2c_init();

	sens_init();
}
