/*
 * digipot.c
 *
 *  Created on: 29 апр. 2017 г.
 *      Author: developer
 */

#include "digipot.h"
#include "rscs/spi.h"
#include "granum_config.h"
#include <math.h>

#define MAX_RES 100000
#define WIPER_RES 125

// для старта линию нужно опустить в ноль
static void digipot_start()
{
	DP_CS_PORTREG |= (1 << DP_CS_PIN);
}

static void digipot_stop()
{
	DP_CS_PORTREG &= ~(1 << DP_CS_PIN);
}

void rscs_digipot_init()
{
	uint8_t command_code = 0b00010001;
	rscs_spi_do(command_code);
	// установка на запись пина chip select
	DP_CS_DDRREG &= ~(1 << DP_CS_PIN);
}

uint8_t digipot_get_data_byte(uint32_t resistance)
{
	return (resistance / DP_STEP);
}

void rscs_digipot_write_res(uint32_t resistance)
{
	data_byte = digipot_get_data_byte(resistance);
	digipot_start();
	rscs_spi_do(data_byte);
	digipot_stop();
}

uint32_t rscs_digipot_get_res(uint8_t data_byte)
{
	uint32_t resRWA, resRWB;
	resRWA = (MAX_RES * (256 - data_byte)) / 256 + WIPER_RES;
	resRWB = (MAX_RES * data_byte) / 256 + WIPER_RES;
	return (resRWA + resRWB);
}
