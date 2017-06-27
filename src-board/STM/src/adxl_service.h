/*
 * adxl_service.h
 *
 *  Created on: 15 июня 2017 г.
 *      Author: developer
 */

#ifndef ADXL_SERVICE_H_
#define ADXL_SERVICE_H_

#include "FreeRTOS.h"
#include "task.h"

extern TaskHandle_t adxl_task_handle;

void adxl_task(void * args);


#endif /* ADXL_SERVICE_H_ */
