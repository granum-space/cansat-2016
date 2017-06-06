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

#include "sensors.h"

#include "granum_globals.h"
#include "granum_config.h"

static void init();

int main() {

	while(GR_JMP_INACT_VAL); //Если поставили джампер неактивности, то ничего не делаем

	init();

	while(1) { //Главный бесконечный цикл
		sens_update_fast(); //fast part


		if((tick_counter % GR_TICK_SLOW_PRESCALER) == 0) { //slow part
			sens_update_slow();
		}

		if((tick_counter % GR_TICK_SO_SLOW_PRESCALER) == 0) { //so slow part
			sens_update_so_slow();
		}

		tick_counter++;
	}

	return 0;
}

void init() {
	rscs_time_init(); //Служба времени

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
														|RSCS_UART_FLAG_ENABLE_TX
														|RSCS_UART_FLAG_BUFFER_TX);
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
