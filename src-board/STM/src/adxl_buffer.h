/*
 * adxl_buffer.h
 *
 *  Created on: 31 мая 2017 г.
 *      Author: developer
 */

#ifndef ADXL_BUFFER_H_
#define ADXL_BUFFER_H_

#include <stdbool.h>

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "stdbool.h"
#include "math.h"
#include "adxl_buffer.h"
#include "ringbuf_acc.h"
#include "adxl375.h"
#include "comm_def.h"

// Инициализация модуля
void adxlbuf_init(void);

// Добавления нового измерения в накапливаемый маcсив
void adxlbuf_update(void);

// Чтение последнего элемента из буфера накопленных
void adxlbuf_readcurrent(accelerations_t * datapointptr);

// Переход в активный режим
void adxlbuf_start_listen(gr_status_t * systemstatus);

// Сброс модуля в исходное состояние
void adxlbuf_reset(void);

// Проверка - было ли обнаружено событие удара и был ли заблокирован буфер
bool adxlbuf_is_triggered(void);

// Надстройка над ringbuf_varsize_see_from_tail()
int8_t adxlbuf_see_from_tail(size_t shift, void * result);



#endif /* ADXL_BUFFER_H_ */
