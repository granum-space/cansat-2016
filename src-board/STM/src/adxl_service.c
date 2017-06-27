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

#include "stm32f10x.h"

#include "globals.h"
#include <comm_def.h>

TaskHandle_t adxl_task_handle;

void TIM2_IRQHandler(void){
	BaseType_t switchContext;

	vTaskNotifyGiveFromISR(adxl_task_handle, &switchContext);

	portEND_SWITCHING_ISR(switchContext);
}

void adxl_task(void * args) {
	(void) args;

	adxlbuf_init();

	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);

	TIM_TimeBaseInitTypeDef tim_init;

	TIM_TimeBaseStructInit(&tim_init);

	tim_init.TIM_ClockDivision = TIM_CKD_DIV1;
	tim_init.TIM_CounterMode = TIM_CounterMode_Up;
	tim_init.TIM_Period = 1000;
	tim_init.TIM_Prescaler = 72;

	TIM_TimeBaseInit(TIM2, &tim_init);

	TIM_ITConfig(TIM2, TIM_IT_Update, ENABLE);

	TIM_Cmd(TIM2, ENABLE);

	NVIC_SetPriority(TIM2_IRQn, configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY + 1);

	NVIC_EnableIRQ(SPI2_IRQn);

	accelerations_t acc_tmp;

	while(1) {
		ulTaskNotifyTake(pdFALSE, 0);

		if(adxlbuf_is_triggered()) vTaskDelete(NULL);

		adxlbuf_update();

		adxlbuf_readcurrent(&acc_tmp);

		taskENTER_CRITICAL();

		selfStatus.acc_last = acc_tmp;

		taskEXIT_CRITICAL();
	}

}
