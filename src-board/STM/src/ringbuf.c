#include <stdint.h>
#include <stdlib.h>

#include "ringbuf.h"

#include "FreeRTOS.h"
#include "task.h"

static rscs_ringbuf_t buf_static;
static uint8_t bufbuf[200];

rscs_ringbuf_t * rscs_ringbuf_init(size_t bufsyze){
	buf_static.buffer = bufbuf;
	buf_static.fullsize = bufsyze;
	buf_static.head = 0;
	buf_static.tail = 0;
	buf_static.size = 0;
	return &buf_static;
}

void rscs_ringbuf_deinit(rscs_ringbuf_t * buf){
	(void) buf;
}

void rscs_ringbuf_push(rscs_ringbuf_t * buf, uint8_t value) {
	if(buf->size == buf->fullsize) {
		buf->tail++;
		if(buf->tail == buf->fullsize) buf->tail = 0;
		buf->size--;
	}
	//Проверяем, есть ли место
	//Пишем значение в голову
	buf->buffer[buf->head] = value;
	//Двигаем голову
	buf->head++;
	if(buf->head == buf->fullsize) buf->head = 0;
	//Увеличиваем размер записанного
	buf->size++;
}

void rscs_ringbuf_push_many(rscs_ringbuf_t * buf, void * data, size_t datasize) {
	uint8_t * data8 = (uint8_t *) data;
	for(size_t i = 0; i < datasize; i++) {
		rscs_ringbuf_push(buf, data8[i]);
	}
}

uint8_t rscs_ringbuf_pop(rscs_ringbuf_t * buf, uint8_t * data) {
	int error = 0;
	*data = 0;
	taskENTER_CRITICAL();

	//Читаем значение из кольцевого буфера
	if(buf->size == 0) error =  -1;
	else {
		*data = buf->buffer[buf->tail];
		//Двигаем хвост
		buf->tail++;
		if(buf->tail == buf->fullsize) buf->tail = 0;
		//Уменьшаем размер записанного
		buf->size--;
	}

	taskEXIT_CRITICAL();
	return error;
}

void rscs_ringbuf_pop_many(rscs_ringbuf_t * buf, void * data, size_t datasize) {
	uint8_t * data8 = (uint8_t *) data;
	for(size_t i = 0; i < datasize; i++) {
		rscs_ringbuf_pop(buf, data8 + i);
	}
}

size_t rscs_ringbuf_getsize(rscs_ringbuf_t * buf) {
	size_t size;

	taskENTER_CRITICAL();

	size = buf->size;

	taskEXIT_CRITICAL();

	return size;
}

size_t rscs_ringbuf_getfullsize(rscs_ringbuf_t * buf) {
	size_t size;

	taskENTER_CRITICAL();

	size = buf->fullsize;

	taskEXIT_CRITICAL();

	return size;
}

const uint8_t * rscs_ringbuf_getarray(rscs_ringbuf_t * buf) {
	return buf->buffer;
}

int16_t rscs_ringbuf_see_from_head(rscs_ringbuf_t * buf, size_t shift) {
	if(shift >= buf->size) return -1;

	int i = buf->head - shift - 1;
	if(i < 0) i += buf->fullsize;

	return buf->buffer[i];
}

int16_t rscs_ringbuf_see_from_tail(rscs_ringbuf_t * buf, size_t shift) {
	if(shift >= buf->size) return -1;

	size_t i = buf->tail + shift;
	if(i >= buf->fullsize) i -= buf->fullsize;

	return buf->buffer[i];
}
