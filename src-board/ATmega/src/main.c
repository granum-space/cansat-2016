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

#include "sensors.h"

#include "granum_globals.h"
#include "granum_config.h"
#include <math.h>

static void init();

static unsigned int _luminosity_lastdata[] = {0, 0, 0, 0, 0, 0, 0, 0, 0};
static rscs_e _luminosity_lasterrors[] = {-127, -127, -127, -127, -127, -127, -127, -127, -127};

static double _thermistors_recalc(int16_t adc_data){
	/*double r1 = 100000.0*(adc_data*5.0/1024.0)/(5.0 - adc_data*5.0/1024.0);
	double t1 = 1.0/(25.0 + 273.15) + 1.0/3950.0*log(r1/100000.0);
	return (1.0 / t1) - 273.15;*/

	double r1 = 1023 / adc_data - 1;
	r1 = 82400.0 / r1;

	 double steinhart;
	  steinhart = r1 / 100000;     // (R/Ro)
	  steinhart = log(steinhart);                  // ln(R/Ro)
	  steinhart /= 3950;                   // 1/B * ln(R/Ro)
	  steinhart += 1.0 / (25.0 + 273.15); // + (1/To)
	  steinhart = 1.0 / steinhart;                 // Invert
	  steinhart -= 273.15;                         // convert to C
	  return steinhart;
}

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

					if( *( (uint64_t *)radio_bytes) == GSRQ_CHMOD) {
						if(gr_status.mode == GR_MODE_IDLE) gr_status.mode = GR_MODE_AWAITING_EXIT;
					}

					else if( *( (uint64_t*)radio_bytes) == GSRQ_CHLUX) {
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

				memcpy(_luminosity_lastdata, _luminosity_lastdata + 3, 6 * sizeof(unsigned int));
				memcpy(_luminosity_lastdata + 6, telemetry_fast.luminosity, 3 * sizeof(unsigned int));

				memcpy(_luminosity_lasterrors + 3, _luminosity_lasterrors, 6);
				_luminosity_lasterrors[0] = telemetry_fast.tsl2561_A_error;
				_luminosity_lasterrors[1] = telemetry_fast.tsl2561_B_error;
				_luminosity_lasterrors[2] = telemetry_fast.tsl2561_C_error;
				// NOTE: Почему у этих буферов разные головы? Один идет с 0-ого элемента, второй с последнего...
				// В этом контексте очень странно выглядит следующий цикл
				// так как там потенциально проверяются значения, которые были получены с кодом ошибки
				// а значит не могут считаться валидными и хоть как-то учавствовать в принятии решения

				int meas_valid = 9, meas_passed = 0;

				for(int i = 0; i < 3 * 3 /*3 измерения с 3 датчиков*/ ; i++) {
					if(_luminosity_lasterrors[i] != RSCS_E_NONE) meas_valid--;

					else if(_luminosity_lastdata[i] > gr_luminosity_threshhold) meas_passed++;
				}

				if(meas_passed > (meas_valid * 2)) gr_nextMode();
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
				for(int i = 0; i < 3; i++) {
					if(telemetry_slow.soilresist_data[i].resistance > GR_SOILRES_THRESHOLD) {
						meas_passed++;
					}
				}

				if(meas_passed >= 2) gr_nextMode();
			}

			if(gr_status_stm.adxl_status == ADXL_STATUS_FINISHED) gr_nextMode();

			printf("RAW ADC: %ld  %ld  %ld\n", telemetry_so_slow.temperature_soil[0], telemetry_so_slow.temperature_soil[1], telemetry_so_slow.temperature_soil[2]);
			printf("THERMISTORS: %lf  %lf  %lf\n", _thermistors_recalc(telemetry_so_slow.temperature_soil[0]),
												_thermistors_recalc(telemetry_so_slow.temperature_soil[1]),
												_thermistors_recalc(telemetry_so_slow.temperature_soil[2]));

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
