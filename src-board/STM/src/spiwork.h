/*
 * spiwork.h
 *
 *  Created on: 08 апр. 2017 г.
 *      Author: developer
 */

#ifndef SPIWORK_H_
#define SPIWORK_H_

#include "ringbuf.h"

extern TaskHandle_t spi_task_handle;

void  spiwork_init();

void spi_task(void * args);


#endif /* SPIWORK_H_ */
