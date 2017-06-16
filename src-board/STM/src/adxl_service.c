/*
 * adxl_service.c
 *
 *  Created on: 15 июня 2017 г.
 *      Author: developer
 */

#include <FreeRTOS.h>
#include <portable.h>
#include <task.h>

#include "adxl375.h"
#include "adxl_buffer.h"

#include <comm_def.h>

static TickType_t lastWakeup;

static accelerations_t accelerations;
static float acc;

void adxl_task(void * args) {
	(void) args;

	lastWakeup = xTaskGetTickCount();

	while(1) {
		if(adxlbuf_is_triggered()) vTaskDelete(NULL);

		adxl375_read( &(accelerations.x), &(accelerations.y), &(accelerations.z));

		adxlbuf_update();

		vTaskDelayUntil(&lastWakeup, 1 / portTICK_RATE_MS);
	}

}
