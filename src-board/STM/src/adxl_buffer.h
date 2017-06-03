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
#include "ringbuf_varsize.h"
#include "adxl375.h"
#include "comm_def.h"

typedef enum {
	STATUS_SIMPLE_READ,		//!< Читаем ускорения, но не анализируем их
	STATUS_ACTIVE,			//!< Читаем ускорения, анализируем их и принимаем решение о посадке
	STATUS_WAIT_LOCK,		//!< Мы уже почувствовали удар о Землю и сейчас накапливаем данные о нем
	STATUS_LOCKED			//!< Процесс входа в Землю закончился, не принимаем новые данные
} adxlbuf_status;

adxlbuf_status status;
rscs_ringbuf_varsize_t * ringbuf;

// Инициализация модуля
void adxlbuf_init(void);

// Добавления нового измерения в накапливаемый маcсив
void adxlbuf_push(accelerations_t current_data, float *acc);

/* Модуль начинает анализировать накапливаемые данные и может
 * войти в состояние блокировки по удару о Землю (в идеале) */
void adxlbuf_waits_lock(accelerations_t current_data);

// Чтение последнего элемента из буфера накопленных
void adxlbuf_readcurrent(accelerations_t * datapointptr);

// Переход в активный режим
void adxlbuf_start_listen(gr_status_t systemstatus);

// Сброс модуля в исходное состояние
void adxlbuf_reset();

// Проверка - было ли обнаружено событие удара и был ли заблокирован буфер
bool adxlbuf_is_triggered(void);







#endif /* ADXL_BUFFER_H_ */
