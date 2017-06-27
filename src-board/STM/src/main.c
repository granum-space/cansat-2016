//
// This file is part of the GNU ARM Eclipse distribution.
// Copyright (c) 2014 Liviu Ionescu.
//

// ----------------------------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>
#include "diag/Trace.h"

#include "adxl_buffer.h"
#include "adxl_service.h"
#include "spiwork.h"
#include "gps_nmea.h"

#include "comm_def.h"
#include "globals.h"

// ----------------------------------------------------------------------------
//
// STM32F1 empty sample (trace via DEBUG).
//
// Trace support is enabled by adding the TRACE macro definition.
// By default the trace messages are forwarded to the DEBUG output,
// but can be rerouted to any device or completely suppressed, by
// changing the definitions required in system/src/diag/trace_impl.c
// (currently OS_USE_TRACE_ITM, OS_USE_TRACE_SEMIHOSTING_DEBUG/_STDOUT).
//

// ----- main() ---------------------------------------------------------------

// Sample pragmas to cope with warnings. Please note the related line at
// the end of this function, used to pop the compiler diagnostics status.
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wmissing-declarations"
#pragma GCC diagnostic ignored "-Wreturn-type"

#include <FreeRTOS.h>
#include <task.h>
#include <semphr.h>

#include "led.h"

#define GPS_STACK_SIZE 3*configMINIMAL_STACK_SIZE
static StackType_t gps_task_stack[GPS_STACK_SIZE];
static StaticTask_t gps_task_ob;

#define ADXL_STACK_SIZE 3*configMINIMAL_STACK_SIZE
static StackType_t adxl_task_stack[GPS_STACK_SIZE];
static StaticTask_t adxl_task_ob;

#define SPI_STACK_SIZE 3*configMINIMAL_STACK_SIZE
static StackType_t spi_task_stack[GPS_STACK_SIZE];
static StaticTask_t spi_task_ob;

int main(int argc, char* argv[]) {
	xTaskCreateStatic(gps_task, "GPS", GPS_STACK_SIZE, NULL, 0, gps_task_stack, &gps_task_ob);
	xTaskCreateStatic(adxl_task, "ADXL", ADXL_STACK_SIZE, NULL, 0, adxl_task_stack, &adxl_task_ob);
	xTaskCreateStatic(spi_task, "SPI", SPI_STACK_SIZE, NULL, 0, spi_task_stack, &spi_task_ob);

	__enable_irq();

	vTaskStartScheduler();
	return 0;
}

#pragma GCC diagnostic pop

// ----------------------------------------------------------------------------
