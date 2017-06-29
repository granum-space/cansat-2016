//
// This file is part of the GNU ARM Eclipse distribution.
// Copyright (c) 2014 Liviu Ionescu.
//

// ----------------------------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>
#include "diag/Trace.h"

#include "accbuf.h"
#include "spiwork.h"
#include "gps_nmea.h"

#include "comm_def.h"

#include "accbuf.h"

#include <FreeRTOS.h>
#include <task.h>
#include <semphr.h>

#include "led.h"

#define GPS_STACK_SIZE 4*configMINIMAL_STACK_SIZE
static StackType_t gps_task_stack[GPS_STACK_SIZE];
static StaticTask_t gps_task_ob;

#define ADXL_STACK_SIZE 8*configMINIMAL_STACK_SIZE
static StackType_t adxl_task_stack[GPS_STACK_SIZE];
static StaticTask_t adxl_task_ob;

#define SPI_STACK_SIZE 8*configMINIMAL_STACK_SIZE
static StackType_t spi_task_stack[GPS_STACK_SIZE];
static StaticTask_t spi_task_ob;

int main(int argc, char* argv[]) {
	(void)argc; (void)argv;
	led_init();
	xTaskCreateStatic(gps_task, "GPS", GPS_STACK_SIZE, NULL, 0, gps_task_stack, &gps_task_ob);
	xTaskCreateStatic(accbuf_task_entry, "ADXL", ADXL_STACK_SIZE, NULL, 0, adxl_task_stack, &adxl_task_ob);
	xTaskCreateStatic(spi_task, "SPI", SPI_STACK_SIZE, NULL, 0, spi_task_stack, &spi_task_ob);

	vTaskStartScheduler();
	return 0;
}

#pragma GCC diagnostic pop

// ----------------------------------------------------------------------------
