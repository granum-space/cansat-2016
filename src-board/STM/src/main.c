//
// This file is part of the GNU ARM Eclipse distribution.
// Copyright (c) 2014 Liviu Ionescu.
//

// ----------------------------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>
#include "diag/Trace.h"

#include "adxl375.h"
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

void dummy_task(void * args)
{
	(void)args;
	led_init();

	while(1)
	{
		led_toggle();
		vTaskDelay(100);
	}


}

int main(int argc, char* argv[]) {
	// At this stage the system clock should have already been configured
	//at high speed.

	// Infinite loop

	//xTaskCreate(dummy_task, "task", configMINIMAL_STACK_SIZE, NULL, configMAX_PRIORITIES-1, NULL);

	selfStatusMutex = xSemaphoreCreateMutex();

	adxl375_init(10000);
	spiwork_init();
	gps = rscs_gps_init(USART2);

	xTaskCreate(gps_task, "GPS", configMINIMAL_STACK_SIZE, NULL, configMAX_PRIORITIES - 1, NULL);
	xTaskCreate(adxl_task, "ADXL", configMINIMAL_STACK_SIZE, NULL, 0, NULL);

	__enable_irq();

	vTaskStartScheduler();
	return 0;

	// NOTE: Удалить мусор
	volatile int i = 798690;
	while(1) {

		i--;i++;i--;
		i++;i--;i++;
		i--;i++;i--;

	}
}

#pragma GCC diagnostic pop

// ----------------------------------------------------------------------------
