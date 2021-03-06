/*
 * ringbuf.h
 *
 *  Created on: 12 февр. 2017 г.
 *      Author: developer
 */

#ifndef RINGBUF_H_
#define RINGBUF_H_

#include "stdlib.h"
#include "stdint.h"

//Структура, описывающая кольцевой буфер
struct rscs_ringbuf;
typedef struct rscs_ringbuf rscs_ringbuf_t;

//Инициализаци буфера заданного размера
//Принимает указатель на дескриптор буфера (нужно создать самостоятельно) и его размер
rscs_ringbuf_t * rscs_ringbuf_init(size_t bufsyze);

//Освобождение памяти буфера
void rscs_ringbuf_deinit(rscs_ringbuf_t * buf);

/*Добавлени значения в голову буфера*/
void rscs_ringbuf_push(rscs_ringbuf_t * buf, uint8_t value);

/*Взятие значения из хвоста буфера*/
uint8_t rscs_ringbuf_pop(rscs_ringbuf_t * buf, uint8_t * data);

void rscs_ringbuf_push_many(rscs_ringbuf_t * buf, void * data, size_t datasize);
void rscs_ringbuf_pop_many(rscs_ringbuf_t * buf, void * data, size_t datasize);

//Узнать размер записанных данных
size_t rscs_ringbuf_getsize(rscs_ringbuf_t * buf);

#endif /* RINGBUF_H_ */
