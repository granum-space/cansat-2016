#include <stdint.h>
#include <stdlib.h>
//#include <util/atomic.h> FIXME атомарность

#include "ringbuf.h"

struct rscs_ringbuf{
	size_t fullsize, //Полный размер буфера
	size, //Размер записанных данных
	head, //Смещение головы
	tail; //Смещение хвоста
	uint8_t * buffer; 	//Адрес буфера в памяти
};

rscs_ringbuf_t * rscs_ringbuf_init(size_t bufsyze){
	rscs_ringbuf_t * buf = (rscs_ringbuf_t *) malloc(sizeof(rscs_ringbuf_t));
	buf->buffer = (uint8_t *) malloc(bufsyze);
	buf->fullsize = bufsyze;
	buf->head = 0;
	buf->tail = 0;
	buf->size = 0;
	return buf;
}

void rscs_ringbuf_deinit(rscs_ringbuf_t * buf){
	free(buf);
}

void rscs_ringbuf_push(rscs_ringbuf_t * buf, uint8_t value) {
	/*ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {*/ //FIXME атомарность
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
	/*}*/
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
	/*ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {*/ //FIXME атомарность
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
	/*}*/

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
	/*ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {*/ //FIXME атомарность
		size = buf->size;
	/*}*/
	return size;
}

size_t rscs_ringbuf_getfullsize(rscs_ringbuf_t * buf) {
	size_t size;
	/*ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {*/ //FIXME атомарность
		size = buf->fullsize;
	/*}*/
	return size;
}

const uint8_t * rscs_ringbuf_getarray(rscs_ringbuf_t * buf) {
	return buf->buffer;
}
