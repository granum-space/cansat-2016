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
#include "diskio.h"

static void init();

static luminosity_t _luminosity_lastdata[9];

static soilresist_data_t _soilres_lastdata[9];

static uint32_t _exit_time, _fuse_on_time;

static int _slowing_coeff_ms = 1000;

static enum {
	RADIO_STATE_IDLE,
	RADIO_STATE_COLLECTING
} radio_state;
static uint8_t radio_bytes[] = {0, 0, 0, 0, 0, 0, 0, 0};


void gr_nextMode(void) {
	if(gr_status.mode == GR_MODE_ONGROUND) return;

	gr_status.mode++;
	stm32_transmitSystemStatus();

	switch(gr_status.mode) {

	case GR_MODE_AWAITING_EXIT:
		_slowing_coeff_ms = 0;
		break;

	case GR_MODE_AWAITING_PARACHUTE:
		_exit_time = rscs_time_get();
		break;

	case GR_MODE_AWAITING_LEGS:
		GR_FUSE_ON
		_fuse_on_time = rscs_time_get();
		break;

	case GR_MODE_LANDING:
		GR_FUSE_OFF
		break;

	case GR_MODE_ONGROUND:
		gr_servo_set(0);
		stm32_getAccelerations();
		break;

	default:
		break;
	}
}


void radio_checkForCommads(void) {
	uint8_t databyte = 0;

	while(rscs_uart_read_some(uart_data, &databyte, 1)) {
		memcpy(radio_bytes, radio_bytes + 1, sizeof(radio_bytes) - 1);

		radio_bytes[7] = databyte;

		uint64_t * data_p = (uint64_t *) radio_bytes;

		if(*data_p == GSRQ_CHMOD) {
			if(gr_status.mode == GR_MODE_IDLE) gr_nextMode();
		}

		else if((*data_p & 0x00FFFFFFFFFFFFFF) == GSRQ_CHLUX) {
			gr_luminosity_threshhold = radio_bytes[7];
		}
	}
}


int main() {

	GR_JMP_INIT

	if(GR_JMP_INACT_VAL) {
		gr_servo_init();
		gr_servo_set(0);
		while(GR_JMP_INACT_VAL); //Если поставили джампер неактивности, то ничего не делаем
	}

	DDRG |= (1 << 3);

	init();

	while((rscs_time_get() % GR_TICK_DELAY_MS) != 0);

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

			if(gr_status.mode == GR_MODE_AWAITING_PARACHUTE) {
				if(rscs_time_get() >= (_exit_time + GR_PARACHUTE_TIME_MS)) gr_nextMode();
			}

			RSCS_DEBUG("TICK: %ld\n", tick_counter);
			RSCS_DEBUG("TIME: %ld\n", cycleStartTime);
			RSCS_DEBUG("DHT22: H: %d, P: %d    E:%d\n", telemetry_so_slow.humidity, telemetry_so_slow.temperature_dht, telemetry_so_slow.dht22_error);
			RSCS_DEBUG("ADXL345: %d, %d, %d   e: %d\n", telemetry_fast.accelerations.x, telemetry_fast.accelerations.y, telemetry_fast.accelerations.z, telemetry_fast.adxl345_error);
			RSCS_DEBUG("TSL: %d e: %d    %d e: %d    %d e: %d\n", telemetry_fast.luminosity[0].lux, telemetry_fast.luminosity[0].error,
						telemetry_fast.luminosity[1].lux, telemetry_fast.luminosity[1].error,
						telemetry_fast.luminosity[2].lux, telemetry_fast.luminosity[2].error);
			RSCS_DEBUG("SD ERR: %d\n", gr_sd_last_err);
		}

		if((tick_counter % GR_TICK_SLOW_PRESCALER) == 0) { //slow part
			sens_update_slow();

			if((gr_status.mode == GR_MODE_AWAITING_LEGS) && (rscs_time_get() >= (_fuse_on_time + GR_PENETRATORS_MIN_EXIT_TIME_MS))) {
				int meas_passed = 0;
				for(int i = 0; i < 9; i++) {
					memcpy(_soilres_lastdata, _soilres_lastdata + 3, 6 * sizeof(soilresist_data_t));
					memcpy(_soilres_lastdata + 6, telemetry_slow.soilresist_data, 3 * sizeof(soilresist_data_t));

					if(_soilres_lastdata[i].resistance > GR_SOILRES_THRESHOLD) {
						meas_passed++;
					}
				}

				if(meas_passed > 4) gr_nextMode();
			}

			if(gr_stm_state.acc_state.accbuf_status == ACC_STATUS_LOCKED) gr_nextMode();

			RSCS_DEBUG("STM32 ADXL: %d  %d  %d\n", gr_stm_state.acc_state.current_acc.x, gr_stm_state.acc_state.current_acc.y, gr_stm_state.acc_state.current_acc.z);
			RSCS_DEBUG("CARRET: %d, STATUS: %d\n", gr_stm_state.acc_state.accbuf_buffer_carret, gr_stm_state.acc_state.accbuf_status);
			RSCS_DEBUG("GPS: %f  %f  %f    %d\n", gr_stm_state.gps_state.lat, gr_stm_state.gps_state.lon, gr_stm_state.gps_state.height, gr_stm_state.gps_state.has_fix);

			RSCS_DEBUG("RAW ADC: %ld  %ld  %ld\n", telemetry_so_slow.temperature_soil[0], telemetry_so_slow.temperature_soil[1], telemetry_so_slow.temperature_soil[2]);
			RSCS_DEBUG("SOILRES: %ld   %ld   %ld\n", 	telemetry_slow.soilresist_data[0].resistance,
												telemetry_slow.soilresist_data[1].resistance,
												telemetry_slow.soilresist_data[2].resistance);
			RSCS_DEBUG("BMP280: P:%ld  T:%ld    e: %d\n", telemetry_slow.pressure, telemetry_slow.temperature_bmp, telemetry_slow.bmp280_error);
			RSCS_DEBUG("SD ERR: %d\n", gr_sd_last_err);
		}

		if((tick_counter % GR_TICK_SO_SLOW_PRESCALER) == 0) { //so slow part
			sens_update_so_slow();

			RSCS_DEBUG("DS18B20: %d   e: %d   %d\n", telemetry_so_slow.temperature_ds18, telemetry_so_slow.ds18b20_error_read, telemetry_so_slow.ds18b20_error_conversion);
			RSCS_DEBUG("SD ERR: %d\n", gr_sd_last_err);
		}

		RSCS_DEBUG("\n\n\n\n");
		RSCS_DEBUG("Mode %d\n", gr_status.mode);
		//RSCS_DEBUG("\n\n\n\n");


		if(gr_status.mode == GR_MODE_ONGROUND) stm32_getAccelerations();


		tick_counter++;

		while(rscs_time_get() < (cycleStartTime + GR_TICK_DELAY_MS + _slowing_coeff_ms));

		PORTG ^= (1 << 3);
	}

	return 0;
}

static void init() {
	rscs_time_init(); //Служба времени

	{ //Structures
		gr_status.mode = GR_MODE_IDLE;

		gr_stm_state.acc_state.accbuf_status = ACC_STATUS_SIMPLE_READ;
		gr_stm_state.gps_state.has_fix = false;

		radio_state = RADIO_STATE_IDLE;
	}

	sei();

	{ //UART data
		uart_data = rscs_uart_init(GR_UART_DATA_ID, 	RSCS_UART_FLAG_ENABLE_RX
														|RSCS_UART_FLAG_BUFFER_RX
														|RSCS_UART_FLAG_ENABLE_TX
														|RSCS_UART_FLAG_BUFFER_TX
														);
		rscs_uart_set_baudrate(uart_data, 9600);
		rscs_uart_set_character_size(uart_data, 8);
		rscs_uart_set_parity(uart_data, RSCS_UART_PARITY_NONE);
		rscs_uart_set_stop_bits(uart_data, RSCS_UART_STOP_BITS_ONE);
	}

#ifdef RSCS_DEBUGMODE
	{ //UART debug
		uart_debug = rscs_uart_init(GR_UART_DEBUG_ID, 	RSCS_UART_FLAG_ENABLE_RX
														|RSCS_UART_FLAG_BUFFER_RX
														|RSCS_UART_FLAG_ENABLE_TX
														|RSCS_UART_FLAG_BUFFER_TX
														);
		rscs_uart_set_baudrate(uart_debug, 38400);
		rscs_uart_set_character_size(uart_debug, 8);
		rscs_uart_set_parity(uart_debug, RSCS_UART_PARITY_NONE);
		rscs_uart_set_stop_bits(uart_debug, RSCS_UART_STOP_BITS_ONE);

		RSCS_DEBUG_INIT(uart_debug);
	}
#endif

	RSCS_DEBUG("INIT_STARTED\n");
	rscs_spi_init();
	rscs_i2c_init();
	dump_init(); //FatFS and SDcard
	sens_init();
	gr_servo_init();
	GR_FUSE_INIT
}
