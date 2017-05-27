#include <stdint.h>
#include <stdlib.h>
#include <util/atomic.h>

#include "ringbuf.h"

#define OPR(OP) value = OP; if(value != RSCS_E_NONE) return value;

struct rscs_ringbuf{
	size_t fullsize, //Полный размер буфера
	size, //Размер записанных данных
	head, //Смещение головы
	tail, //Смещение хвоста
	element_size; //Размер элемента
	uint8_t * buffer; 	//Адрес буфера в памяти
};

rscs_ringbuf_t * rscs_ringbuf_init(size_t bufsyze, size_t element_size) {
	rscs_ringbuf_t * buf = (rscs_ringbuf_t *) malloc(sizeof(rscs_ringbuf_t));
	buf->buffer = (uint8_t *) malloc(bufsyze * element_size);
	buf->fullsize = bufsyze;
	buf->head = 0;
	buf->tail = 0;
	buf->size = 0;
	buf->element_size = element_size;
	return buf;
}

void rscs_ringbuf_deinit(rscs_ringbuf_t * buf){
	free(buf->buffer);
	free(buf);
}

void rscs_ringbuf_push(rscs_ringbuf_t * buf, void * value) {
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		if(buf->size == buf->fullsize) {
			buf->tail++;
			if(buf->tail == buf->fullsize) buf->tail = 0;
			buf->size--;
		}
		//Проверяем, есть ли место
		//Пишем значение в голову
		memcpy(buf->head, value, buf->element_size);
		//Двигаем голову
		buf->head += buf->element_size;
		if(buf->head == buf->fullsize) buf->head = 0;
		//Увеличиваем размер записанного
		buf->size += buf->element_size;
	}
}

/*void rscs_ringbuf_push_many(rscs_ringbuf_t * buf, void * data, size_t datasize) {
	uint8_t * data8 = (uint8_t *) data;
	for(size_t i = 0; i < datasize; i++) {
		rscs_ringbuf_push(buf, data8[i]);
	}
}*/

uint8_t rscs_ringbuf_pop(rscs_ringbuf_t * buf, void * data) {
	int error = 0;
	*data = 0;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		//Читаем значение из кольцевого буфера
		if(buf->size == 0) error =  RSCS_E_BUSY;
		else {
			data = buf->tail;
			//Двигаем хвост
			buf->tail += buf->element_size;
			if(buf->tail == buf->fullsize) buf->tail = 0;
			//Уменьшаем размер записанного
			buf->size -= buf->element_size;
		}
	}

	return error;
}

/*void rscs_ringbuf_pop_many(rscs_ringbuf_t * buf, void * data, size_t datasize) {
	uint8_t * data8 = (uint8_t *) data;
	for(size_t i = 0; i < datasize; i++) {
		rscs_ringbuf_pop(buf, data8 + i);
	}
}*/

size_t rscs_ringbuf_getsize(rscs_ringbuf_t * buf) {
	size_t size;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		size = buf->size;
	}
	return size;
}

size_t rscs_ringbuf_getfullsize(rscs_ringbuf_t * buf) {
	size_t size;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
		size = buf->fullsize;
	}
	return size;
}

const uint8_t * rscs_ringbuf_getarray(rscs_ringbuf_t * buf) {
	return buf->buffer;
}

void * rscs_ringbuf_see_from_head(rscs_ringbuf_t * buf, size_t shift) {
	if((shift * buf->element_size) >= buf->size) return NULL;

	int i = buf->head - ((shift - 1) * buf->element_size);
	if(i < 0) i += buf->fullsize;

	return buf->buffer + i;
}

void * rscs_ringbuf_see_from_tail(rscs_ringbuf_t * buf, size_t shift) {
	if((shift * buf->element_size) >= buf->size) return NULL;

	int i = buf->tail + (shift * buf->element_size);
	if(i >= buf->fullsize) i -= buf->fullsize;

	return buf->buffer + i;
}
