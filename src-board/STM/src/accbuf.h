/*
 * adxl_buffer.h
 *
 *  Created on: 31 мая 2017 г.
 *      Author: developer
 */

#ifndef ACCBUF_H_
#define ACCBUF_H_

#include <stdint.h>
#include <stdlib.h>
#include "stdbool.h"

#include "gr_config.h"


// Инициализация модуля
void accbuf_init(void);

// Сброс модуля в исходное состояние
void accbuf_reset(void);

// Добавления нового измерения в накапливаемый маcсив
// и возвращение его через указатель в аругменте
// если модуль заблокирован или случилась ошибка - вернет не 0
int accbuf_update(accelerations_t * retval);

// Переход в активный режим - режим в котором модуль ждет удара
void accbuf_start_listen(void);

void accbuf_task_entry(void * args);

extern gr_stm_acc_state_t acc_state;
extern accelerations_t accbuf_buffer[ACC_BUFFER_SIZE];

#endif /* ACCBUF_H_ */
