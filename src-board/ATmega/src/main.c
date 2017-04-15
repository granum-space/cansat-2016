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
#include "rscs/ds18b20.h"
#include "rscs/sdcard.h"
#include "rscs/uart.h"
#include "rscs/stdext/stdio.h"

//Дескрипторы устройств

rscs_ads1115_t * ads1115;
rscs_adxl345_t * adxl345;
rscs_bmp280_descriptor_t * bmp280;
rscs_ds18b20_t * ds18b20;
rscs_sdcard_t * sdcard;
rscs_uart_bus_t * uart_gps;
rscs_uart_bus_t * uart_data;

static void init();
static void sensupdate();

#define OPR(OP) error = OP; if(error != RSCS_E_NONE) printf("ERROR %d", error);
rscs_e error = RSCS_E_NONE;

int main() {
	init();
	int16_t ds18_data = 0;

	int16_t x, y, z;
	float x_g, y_g, z_g;
	int32_t rawpress, rawtemp, pres, temp;

	while(1) {
		while(1) if(rscs_ds18b20_check_ready()) break;
		OPR( rscs_ds18b20_read_temperature(ds18b20, &ds18_data) )
		OPR( rscs_ds18b20_start_conversion(ds18b20) )
		RSCS_DEBUG("DS18B20: %f\n", ds18_data / 16.0f);

		OPR( rscs_adxl345_GetGXYZ(adxl345, &x, &y, &z, &x_g, &y_g, &z_g) )
		RSCS_DEBUG("ADXL345: %f  %f  %f   %d  %d  %d\n", x_g, y_g, z_g, x, y, z);

		RSCS_DEBUG("BMP280: status: %x\n", rscs_bmp280_read_status(bmp280));
		OPR( rscs_bmp280_read(bmp280, &rawpress, &rawtemp) )
		rscs_bmp280_calculate(rscs_bmp280_get_calibration_values(bmp280), rawpress, rawtemp, &pres, &temp);
		RSCS_DEBUG("BMP280: %ld  %ld   %ld  %ld\n", pres, temp, rawpress, rawtemp);
		_delay_ms(100);
	}

	return 0;
}

static void init() {

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
	}

	rscs_i2c_init();
	rscs_i2c_set_scl_rate(100);

	{ //ADXL345
		adxl345 = rscs_adxl345_initi2c(RSCS_ADXL345_ADDR_MAIN);
		rscs_adxl345_set_range(adxl345, RSCS_ADXL345_RANGE_2G);
		rscs_adxl345_set_rate(adxl345, RSCS_ADXL345_RATE_100HZ);
	}

	{ //BMP280
		bmp280 = rscs_bmp280_initi2c(RSCS_BMP280_I2C_ADDR_HIGH);
		rscs_bmp280_parameters_t params = {
				.pressure_oversampling = RSCS_BMP280_OVERSAMPLING_X16,
				.temperature_oversampling = RSCS_BMP280_OVERSAMPLING_X2,
				.standbytyme = RSCS_BMP280_STANDBYTIME_62DOT5MS,
				.filter = RSCS_BMP280_FILTER_X16
		};
		OPR( rscs_bmp280_set_config(bmp280, &params) )
		OPR( rscs_bmp280_changemode(bmp280, RSCS_BMP280_MODE_NORMAL) )
	}

	{ //DS18B20
		ds18b20 = rscs_ds18b20_init(0x00); //не используем адресацию
		rscs_ds18b20_start_conversion(ds18b20);
	}

}

static void sensupdate() {

}
