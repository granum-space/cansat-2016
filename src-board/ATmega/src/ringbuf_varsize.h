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
struct rscs_ringbuf_varsize;
typedef struct rscs_ringbuf_varsize rscs_ringbuf_varsize_t;

//Инициализаци буфера заданного размера
//Принимает максимальное количество элементов в буфере и размер одного элемента
rscs_ringbuf_varsize_t * rscs_ringbuf_varsize_init(size_t bufsyze, size_t element_size);

//Освобождение памяти буфера
void rscs_ringbuf_varsize_deinit(rscs_ringbuf_varsize_t * buf);

/*Добавление элемента в голову буфера*/
void rscs_ringbuf_varsize_push(rscs_ringbuf_varsize_t * buf, void * data);

/*Добавление count элементов в голову буфера*/
void rscs_ringbuf_varsize_push_many(rscs_ringbuf_varsize_t * buf, void * data, size_t count);

/*Удаление count элементов из хвоста буфера*/
uint8_t rscs_ringbuf_varsize_pop(rscs_ringbuf_varsize_t * buf, size_t count);

//Узнать размер записанных данных
size_t rscs_ringbuf_varsize_getsize(rscs_ringbuf_varsize_t * buf);

//Функции взятия указателя на элемент без удаления
// С адресацией от головы
void * rscs_ringbuf_varsize_see_from_head(rscs_ringbuf_varsize_t * buf, size_t shift);
// С адресацией от хвоста
void * rscs_ringbuf_varsize_see_from_tail(rscs_ringbuf_varsize_t * buf, size_t shift);

// TODO: Нужны еще потокобезопасные функции чтения с копированием

#endif /* RINGBUF_H_ */
