/*
 * sensors.h
 *
 *  Created on: 06 июня 2017 г.
 *      Author: developer
 */

#ifndef SENSORS_H_
#define SENSORS_H_

void sens_init();

void sens_update_fast();
void sens_update_slow();
void sens_update_so_slow();

uint32_t gr_checksumm_calculate(void * data, size_t datasize);

#endif /* SENSORS_H_ */
