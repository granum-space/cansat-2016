/*
 * ringbuf_acc.h
 *
 *  Created on: 28 июня 2017 г.
 *      Author: developer
 */

#ifndef RINGBUF_ACC_H_
#define RINGBUF_ACC_H_

#include "stdlib.h"
#include "stdint.h"

#include "comm_def.h"

#include "ringbuf.h"

//Инициализаци буфера заданного размера
//Принимает указатель на дескриптор буфера (нужно создать самостоятельно) и его размер
rscs_ringbuf_t * rscs_ringbuf_acc_init(size_t bufsyze);

//Освобождение памяти буфера
void rscs_ringbuf_acc_deinit(rscs_ringbuf_t * buf);

/*Добавлени значения в голову буфера*/
void rscs_ringbuf_acc_push(rscs_ringbuf_t * buf, accelerations_t * data);

void rscs_ringbuf_acc_push_many(rscs_ringbuf_t * buf, void * data, size_t datasize);

//Узнать размер записанных данных
size_t rscs_ringbuf_acc_getsize(rscs_ringbuf_t * buf);

int8_t rscs_ringbuf_acc_see_from_head(rscs_ringbuf_t * buf, accelerations_t * data, size_t shift);
int8_t rscs_ringbuf_acc_see_from_tail(rscs_ringbuf_t * buf, accelerations_t * data, size_t shift);


#endif /* RINGBUF_ACC_H_ */
