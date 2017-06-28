/*
 * freertos_hooks.c
 *
 *  Created on: 02 окт. 2016 г.
 *      Author: snork
 */

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpadded"
#include <stdlib.h>
#include <FreeRTOS.h>
#include <task.h>
#pragma GCC diagnostic pop


#include <diag/Trace.h>

void vApplicationStackOverflowHook( TaskHandle_t xTask, signed char *pcTaskName);

void vApplicationStackOverflowHook( TaskHandle_t xTask, signed char *pcTaskName)
{
	(void)xTask; (void)pcTaskName;
	trace_printf("stack_overflow at %s\n", pcTaskName);
	abort();
}

void vApplicationGetIdleTaskMemory( StaticTask_t **ppxIdleTaskTCBBuffer,
                                    StackType_t **ppxIdleTaskStackBuffer,
                                    uint32_t *pulIdleTaskStackSize ) {

	static StaticTask_t xIdleTaskTCB;
	static StackType_t uxIdleTaskStack[ configMINIMAL_STACK_SIZE ];

    *ppxIdleTaskTCBBuffer = &xIdleTaskTCB;
    *ppxIdleTaskStackBuffer = uxIdleTaskStack;
    *pulIdleTaskStackSize = configMINIMAL_STACK_SIZE;
}
