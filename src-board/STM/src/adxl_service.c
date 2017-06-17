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

// NOTE: все это не используется
static accelerations_t accelerations;

void adxl_task(void * args) {
	(void) args;

	lastWakeup = xTaskGetTickCount();

	// NOTE: Перенести adxl375_init сюда (снова принцип какой-то там ответственности)
	// и проверять ошибку. Если не зашло - мигать лампочкой как псих

	while(1) {
		if(adxlbuf_is_triggered()) vTaskDelete(NULL);

		adxl375_read( &(accelerations.x), &(accelerations.y), &(accelerations.z));

		adxlbuf_update();

		vTaskDelayUntil(&lastWakeup, 1 / portTICK_RATE_MS);
		// NOTE: Срочно нужны тесты. Редко хватает точности ртосовых delay-ев
	}

}
