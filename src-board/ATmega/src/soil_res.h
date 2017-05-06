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

// шаг потенциометра
#define DP_STEP 392

/* Настройки SPI под дигипот:
    rscs_spi_init();
	rscs_spi_set_clk(1000);
	rscs_spi_set_order(RSCS_SPI_ORDER_MSB_FIRST);
	rscs_spi_set_pol(RSCS_SPI_POL_SAMPLE_RISE_SETUP_FALL);
*/

/* По сути важны только 2 нижние функции:
   Вот эта:
 * Инициализация */
void rscs_digipot_init(void);

/* И эта:
 * Запись сопротивления в дигипот
 * Просто передай функции необходимое сопротивление в диапазоне от 0 до 100кОм */
void rscs_digipot_write_res(uint32_t resistance);

// Возвращает data_byte, который нужно передать следующей функции
uint8_t digipot_get_data_byte(uint32_t resistance);

/* Возвращает итоговое сопротивление, выдаваемое дигипотом
*  data_byte можно взять из предыдущей функции */
uint32_t rscs_digipot_get_res(uint8_t data_byte);

#endif /* DIGIPOT_H_ */
