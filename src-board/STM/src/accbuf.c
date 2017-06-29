#include <stm32f10x_conf.h>

#include "FreeRTOS.h"
#include "task.h"

#include "gr_config.h"
#include "adxl375.h"
#include "accbuf.h"

gr_stm_acc_state_t acc_state;
accelerations_t accbuf_buffer[ACC_BUFFER_SIZE];

static size_t _samples_left;
static TaskHandle_t _task_handle;


inline static void _push_to_buffer(const accelerations_t * value)
{
	taskENTER_CRITICAL();
	accbuf_buffer[acc_state.accbuf_buffer_carret] = *value;

	acc_state.accbuf_buffer_carret++;
	if (acc_state.accbuf_buffer_carret > ACC_BUFFER_SIZE)
		acc_state.accbuf_buffer_carret = 0;

	taskEXIT_CRITICAL();
}


// Инициализация модуля
void accbuf_init()
{
	adxl375_init();
	accbuf_reset();
}


void accbuf_reset(void)
{
	taskENTER_CRITICAL();

	acc_state.accbuf_status = ACC_STATUS_SIMPLE_READ;
	acc_state.accbuf_buffer_carret = 0;

	taskEXIT_CRITICAL();
}


// Добавления нового измерения в накапливаемый маcсив
int accbuf_update(accelerations_t * retval)
{
	adxl375_read(&retval->x, &retval->y, &retval->z);

	// тут допустимо взять копию статуса, и затем её записать
	// почему - объяснять долго. При изменениях этот момент важно пересмотреть
	taskENTER_CRITICAL();
	gr_stm_accbuf_status_t status_cpy = acc_state.accbuf_status;
	taskEXIT_CRITICAL();

	if (status_cpy == ACC_STATUS_LOCKED)
		goto end;

	_push_to_buffer(retval);

	if (status_cpy == ACC_STATUS_SIMPLE_READ)
		goto end;

	const int32_t acc_modulus = retval->x * retval->x
			+ retval->y * retval->y
			+ retval->z * retval->z;

	int32_t acc_impact_limit = ACC_G_TO_PARROTS(ACC_IMPACT_LIMIT_G);
	acc_impact_limit = acc_impact_limit * acc_impact_limit;
	if (acc_modulus >= acc_impact_limit)
	{
		// Если был удар
		status_cpy = ACC_STATUS_WAIT_LOCK; // если был удар, то переключаем статус
		 _samples_left = ACC_SAMPLES_STILL_AFTER_IMPACT;
	}

	if (status_cpy != ACC_STATUS_WAIT_LOCK)
		goto end;

	int32_t acc_still_limit = ACC_G_TO_PARROTS(ACC_STILL_LIMIT_G);
	acc_still_limit = acc_still_limit * acc_still_limit;
	if (acc_modulus <= acc_still_limit)
		_samples_left--;

	if (0 == _samples_left)
		status_cpy = ACC_STATUS_LOCKED;

end:
	taskENTER_CRITICAL();
	acc_state.accbuf_status = status_cpy;
	taskEXIT_CRITICAL();
	return 0;
}


// Переход в активный режим
void accbuf_start_listen(void)
{
	taskENTER_CRITICAL();

	if (acc_state.accbuf_status <= ACC_STATUS_SIMPLE_READ)
	{
		acc_state.accbuf_status = ACC_STATUS_ACTIVE;
	}
	else
		abort();

	taskEXIT_CRITICAL();
}



void TIM2_IRQHandler(void){
	BaseType_t switchContext;
	vTaskNotifyGiveFromISR(_task_handle, &switchContext);
	portEND_SWITCHING_ISR(switchContext);
}



void accbuf_task_entry(void * args) {
	(void) args;

	accbuf_init();
	_task_handle = xTaskGetCurrentTaskHandle();

	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);

	TIM_TimeBaseInitTypeDef tim_init;
	TIM_TimeBaseStructInit(&tim_init);
	tim_init.TIM_ClockDivision = TIM_CKD_DIV1;
	tim_init.TIM_CounterMode = TIM_CounterMode_Up;
	tim_init.TIM_Period = 1000;
	tim_init.TIM_Prescaler = 72;
	TIM_TimeBaseInit(TIM2, &tim_init);

	TIM_ITConfig(TIM2, TIM_IT_Update, ENABLE);
	NVIC_SetPriority(TIM2_IRQn, ACC_TASK_TIMER_PRIO);
	NVIC_EnableIRQ(SPI2_IRQn);

	TIM_Cmd(TIM2, ENABLE);

	accelerations_t acc_tmp;

	while(1) {
		ulTaskNotifyTake(pdFALSE, 0);

		if (ACC_STATUS_LOCKED == acc_state.accbuf_status)
			vTaskDelete(NULL);

		accbuf_update(&acc_tmp);
		taskENTER_CRITICAL();
		acc_state.current_acc = acc_tmp;
		taskEXIT_CRITICAL();
	}
}
