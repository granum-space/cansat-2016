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

// наш дигипот выдает сопротивление до 100кОм
#define MAX_RES 100000

// сопротивление wiper'а
#define WIPER_RES 125

static void digipot_start()
{
	DP_CS_PORTREG &= ~(1 << DP_CS_PIN);
}

static void digipot_stop()
{
	DP_CS_PORTREG |= (1 << DP_CS_PIN);
}

// Инициализация
void rscs_digipot_init()
{
	// установка на запись пина chip select
	DP_CS_DDRREG |= (1 << DP_CS_PIN);
}

uint8_t digipot_get_data_byte(uint32_t resistance)
{
	return (resistance / DP_STEP);
}

void rscs_digipot_write_res(uint32_t resistance)
{
	// начало передачи
	digipot_start();

	/* перед каждой записью сопротивления необходимо передавать
	 * так называемый "command byte"
	 * 0 и 1 биты ставятся в 0 и 1 соответственно, если мы используем терминалы
	   PA, PB и PW с индексом 0 (на плате Гранума именно так и разведено)
	 * 4 и 5 биты ставятся в 0 и 1, если мы хотим, чтобы дигипот байт,
       идущий после command byte */
	rscs_spi_do(0b00010010);

	/* отправляем data_byte (здесь 0 соответствует нулевому сопротивлению,
	   а 255 - максимальному сопротивлению, то есть 100кОм, отсюда и DP_STEP = 392) */
	rscs_spi_do(digipot_get_data_byte(resistance));

	// конец передачи
	digipot_stop();
}

// если захочется узнать сопротивления между терминалами в режиме потенциометра
uint32_t rscs_digipot_get_res(uint8_t data_byte)
{
	uint32_t resRWA, resRWB;
	resRWA = (MAX_RES * (256 - data_byte)) / 256 + WIPER_RES;
	resRWB = (MAX_RES * data_byte) / 256 + WIPER_RES;
	return (resRWA + resRWB);
}
