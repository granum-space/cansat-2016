/*
 * ringbuf_acc.c
 *
 *  Created on: 28 июня 2017 г.
 *      Author: developer
 */

#include <stdint.h>
#include <stdlib.h>

#include "ringbuf.h"

#include "FreeRTOS.h"
#include "task.h"

#include "gr_config.h"

#include "ringbuf.h"

static rscs_ringbuf_t acc_buf_static;
static uint8_t acc_bufbuf[ACC_BUF_SIZE * ELEMENT_SIZE];

rscs_ringbuf_t * rscs_ringbuf_acc_init(size_t bufsyze){
	acc_buf_static.buffer = acc_bufbuf;
	acc_buf_static.fullsize = bufsyze;
	acc_buf_static.head = 0;
	acc_buf_static.tail = 0;
	acc_buf_static.size = 0;
	return &acc_buf_static;
}

void rscs_ringbuf_acc_deinit(rscs_ringbuf_t * buf){
	(void) buf;
}

void rscs_ringbuf_acc_push(rscs_ringbuf_t * buf, accelerations_t * data) {
	taskENTER_CRITICAL();

	if(buf->size == buf->fullsize) {
		buf->tail++;
		if(buf->tail == buf->fullsize) buf->tail = 0;
		buf->size--;
	}
	//Проверяем, есть ли место
	//Пишем значение в голову

	accelerations_t * buf_acc_p = (accelerations_t *) buf->buffer;

	buf_acc_p[buf->head] = *data;
	//Двигаем голову
	buf->head++;
	if(buf->head == buf->fullsize) buf->head = 0;
	//Увеличиваем размер записанного
	buf->size++;

	taskEXIT_CRITICAL();
}

void rscs_ringbuf_acc_push_many(rscs_ringbuf_t * buf, void * data, size_t datasize) {
	accelerations_t * data_acc = (accelerations_t *) data;
	for(size_t i = 0; i < datasize; i++) {
		rscs_ringbuf_acc_push(buf, data_acc + i);
	}
}

size_t rscs_ringbuf_acc_getsize(rscs_ringbuf_t * buf) {
	size_t size;

	taskENTER_CRITICAL();

	size = buf->size;

	taskEXIT_CRITICAL();

	return size;
}

size_t rscs_ringbuf_acc_getfullsize(rscs_ringbuf_t * buf) {
	size_t size;

	taskENTER_CRITICAL();

	size = buf->fullsize;

	taskEXIT_CRITICAL();

	return size;
}

const accelerations_t * rscs_ringbuf_acc_getarray(rscs_ringbuf_t * buf) {
	return (accelerations_t *) buf->buffer;
}

int8_t rscs_ringbuf_acc_see_from_head(rscs_ringbuf_t * buf, accelerations_t * data,  size_t shift) {
	if(shift >= buf->size) return -1;

	int i = buf->head - shift - 1;
	if(i < 0) i += buf->fullsize;

	accelerations_t * buf_acc_p = (accelerations_t *) buf->buffer;

	*data = buf_acc_p[i];

	return 0;
}

int8_t rscs_ringbuf_acc_see_from_tail(rscs_ringbuf_t * buf, accelerations_t * data, size_t shift) {
	if(shift >= buf->size) return -1;

	size_t i = buf->tail + shift;
	if(i >= buf->fullsize) i -= buf->fullsize;

	accelerations_t * buf_acc_p = (accelerations_t *) buf->buffer;

	*data = buf_acc_p[i];

	return 0;
}
