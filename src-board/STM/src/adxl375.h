/*
 * adxl375.h
 *
 *  Created on: 31 марта 2017 г.
 *      Author: developer
 */

#ifndef ADXL375_H_
#define ADXL375_H_

#include "stdint.h"
#include "stdbool.h"

#include "ringbuf.h"

extern bool adxl_dointwork;

typedef enum {
	ADXL375_E_NONE = 0,
	ADXL375_E_DEVID = -1,
} adxl375_e_t;

// параметры пределов измерений
typedef enum
{
	ADXL375_RANGE_2G	= 0,	// 2G
	ADXL375_RANGE_4G	= 1,	// 4G
	ADXL375_RANGE_8G	= 2,	// 8G
	ADXL375_RANGE_16G	= 3,	// 16G
} adxl375_range_t;


// параметры частоты измерений
typedef enum
{
	ADXL375_RATE_0DOT10HZ	= 0,	// 0.10 Герц
	ADXL375_RATE_0DOT20HZ	= 1,	// 0.20 Герц
	ADXL375_RATE_0DOT39HZ	= 2,	// 0.39 Герц
	ADXL375_RATE_0DOT78HZ	= 3,	// 0.78 Герц
	ADXL375_RATE_1DOT56HZ	= 4,	// 1.56 Герц
	ADXL375_RATE_3DOT13HZ	= 5,	// 3.13 Герц
	ADXL375_RATE_6DOT25HZ	= 6,	// 6.25 Герц
	ADXL375_RATE_12DOT5HZ	= 7,	// 12.5 Герц
	ADXL375_RATE_25HZ		= 8,	//   25 Герц
	ADXL375_RATE_50HZ		= 9,	//   50 Герц
	ADXL375_RATE_100HZ		= 10,	//  100 Герц
	ADXL375_RATE_200HZ		= 11,	//  200 Герц
	ADXL375_RATE_400HZ		= 12,	//  400 Герц
	ADXL375_RATE_800HZ		= 13,	//  800 Герц
	// более высокие частоты недоступны в режиме работы через I2C
	ADXL375_RATE_1600HZ	= 14,	//  1600 Герц
	ADXL375_RATE_3200HZ	= 15,	//  3200 Герц
} adxl375_rate_t;

adxl375_e_t adxl375_init();

void adxl375_set_range(adxl375_range_t range);

void adxl375_set_rate(adxl375_rate_t rate);

void adxl375_set_offset(float mg_x, float mg_y, float mg_z);

void adxl375_read(int16_t * x, int16_t * y, int16_t * z);

void adxl375_cast_to_G(int16_t x, int16_t y, int16_t z, float * x_g, float * y_g, float * z_g);

void adxl375_GetGXYZ(int16_t* x, int16_t* y, int16_t* z, float* x_g, float* y_g, float* z_g);



#endif /* ADXL375_H_ */
