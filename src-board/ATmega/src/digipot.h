/*
 * digipot.h
 *
 *  Created on: 29 апр. 2017 г.
 *      Author: developer
 */

#ifndef DIGIPOT_H_
#define DIGIPOT_H_

#include "granum_config.h"
#include "rscs/spi.h"

#define DP_STEP 392

uint8_t data_byte;

// Инициализация
void rscs_digipot_init(void);

// Запись сопротивления в дигипот
void rscs_digipot_write_res(uint32_t resistance);

// Возвращает data_byte, который нужно передать следующей функции
uint8_t digipot_get_data_byte(uint32_t resistance);

// Возвращает итоговое сопротивление, выдаваемое дигипотом
// data_byte нужно взять из предыдущей функции
uint32_t rscs_digipot_get_res(uint8_t data_byte);

#endif /* DIGIPOT_H_ */
