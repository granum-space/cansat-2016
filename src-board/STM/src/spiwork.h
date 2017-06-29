/*
 * spiwork.h
 *
 *  Created on: 08 апр. 2017 г.
 *      Author: developer
 */

#ifndef SPIWORK_H_
#define SPIWORK_H_

#include "comm_def.h"

typedef struct
{
	gr_status_t global_status; // общий статус систмы, получаемый от атмеги
} spi_task_state_t;



void spi_task(void * args);

extern spi_task_state_t spi_task_state;


#endif /* SPIWORK_H_ */
