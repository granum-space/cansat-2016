/*
 * spiwork.c
 *
 *  Created on: 08 апр. 2017 г.
 *      Author: developer
 */
#include <stdbool.h>
#include <string.h>

#include "stm32f10x_conf.h"

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

#include "../common/comm_def.h"

#include "accbuf.h"
#include "gps_nmea.h"
#include "led.h"

#include "spiwork.h"

spi_task_state_t spi_task_state;

static TaskHandle_t _task_handle;

static const uint8_t * _tx_ptr = NULL;
static const uint8_t * _tx_ptr_limit = NULL;

static uint8_t * _rx_ptr = NULL;
static const uint8_t * _rx_ptr_limit = NULL;

// Параметры запроса на передачу ускорений
static gr_stm_accbuf_values_request _acc_values_request;

//Копия статуса для отправки
static gr_stm_state_t _my_state;

// копия глоабльного статуса для приёма
static gr_status_t _tmp_global_state;

static void _receive();
static void _transmit();


static enum {
	RECEIVER_IDLE,
	RECEIVER_AMRQ,
	RECEIVER_STATUS,
	RECEIVER_ACC_REQUEST
} receiver_state;


static uint16_t _data_lastRx = 0;


void SPI2_IRQHandler() {
	BaseType_t switchContext;
	_data_lastRx = SPI2->DR;
	vTaskNotifyGiveFromISR(_task_handle, &switchContext);
	portEND_SWITCHING_ISR(switchContext);
}


void EXTI15_10_IRQHandler() { //CS change handling
	receiver_state = RECEIVER_AMRQ;
	_tx_ptr = _tx_ptr_limit = NULL;
	//Сбрасываем флаг прерывания
	EXTI->PR = EXTI_Line12; //EXTI_ClearITPendingBit(EXTI_Line12);
}


void spiwork_init() {
	//Клокаем всё, что только можно!
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI2, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);

	{
		//Настраиваем SPI
		SPI_InitTypeDef spiconf;
		spiconf.SPI_CRCPolynomial = 7; // Отключено (так Василий сказал)
		spiconf.SPI_DataSize = SPI_DataSize_8b;
		spiconf.SPI_NSS = SPI_NSS_Hard;
		spiconf.SPI_Direction = SPI_Direction_2Lines_FullDuplex;
		spiconf.SPI_FirstBit = SPI_FirstBit_MSB;
		spiconf.SPI_Mode = SPI_Mode_Slave;
		spiconf.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_16;
		spiconf.SPI_CPHA = SPI_CPHA_1Edge;
		spiconf.SPI_CPOL = SPI_CPOL_Low;
		SPI_Init(SPI2, &spiconf);
	}

	{
		//GPIO для SPI
		GPIO_InitTypeDef portInit;
		portInit.GPIO_Speed = GPIO_Speed_50MHz;
		portInit.GPIO_Mode = GPIO_Mode_AF_PP;
		portInit.GPIO_Pin = GPIO_Pin_14; //MISO
		GPIO_Init(GPIOB, &portInit);

		portInit.GPIO_Pin = GPIO_Pin_15 | GPIO_Pin_13 | GPIO_Pin_12;// MOSI, SCLK, CS
		portInit.GPIO_Mode = GPIO_Mode_IN_FLOATING;
		GPIO_Init(GPIOB, &portInit);
	}

	//Настройка прерываний SPI
	SPI_I2S_ITConfig(SPI2, SPI_I2S_IT_RXNE, ENABLE);
	NVIC_SetPriority(SPI2_IRQn, SPI_INTERRUPT_PRIO);
	NVIC_EnableIRQ(SPI2_IRQn);

	{
		//Настройка прерываний EXTI (CS)
		EXTI_InitTypeDef exti;
		EXTI_StructInit(&exti);
		GPIO_EXTILineConfig(GPIO_PortSourceGPIOB, GPIO_PinSource12);
		exti.EXTI_Line = EXTI_Line12;
		exti.EXTI_LineCmd = ENABLE;
		exti.EXTI_Mode = EXTI_Mode_Interrupt;
		exti.EXTI_Trigger = EXTI_Trigger_Falling;
		EXTI_Init(&exti);
	}

	NVIC_SetPriority(EXTI15_10_IRQn, SPI_EXTI_INTERRUPT_PRIO);
	NVIC_EnableIRQ(EXTI15_10_IRQn);

	//Активируем модуль SPI
	SPI_Cmd(SPI2, ENABLE);

	//Прокачиваем первый обмен
	SPI_I2S_ReceiveData(SPI2);
	_transmit();
}


inline static void _receive() {
	uint16_t data = _data_lastRx;

	if ((receiver_state != RECEIVER_AMRQ && receiver_state != RECEIVER_IDLE)
			&& _rx_ptr != _rx_ptr_limit)
	{
		*_rx_ptr = data;
		_rx_ptr++;
	}

	switch(receiver_state)
	{
	case RECEIVER_AMRQ:

		switch(data) {
		case AMRQ_STATUS_Rx:
			receiver_state = RECEIVER_STATUS;

			_rx_ptr = (uint8_t*)&_tmp_global_state;
			_rx_ptr_limit = _rx_ptr + sizeof(_tmp_global_state);

			break;

		case AMRQ_SELFSTATUS_Tx:
			receiver_state = RECEIVER_IDLE;

			taskENTER_CRITICAL();
			_my_state.acc_state = acc_state;
			_my_state.gps_state = gps_state;
			taskEXIT_CRITICAL();

			_tx_ptr = (uint8_t*)&_my_state;
			_tx_ptr_limit = _tx_ptr + sizeof(_my_state);

			break;

		case AMRQ_ACC_DATA:
			receiver_state = RECEIVER_ACC_REQUEST;

			_rx_ptr = (uint8_t*)&_acc_values_request;
			_rx_ptr_limit = _rx_ptr + sizeof(_acc_values_request);

			break;
		default:
			break;
		}
		break;

	case RECEIVER_STATUS:
		if (_rx_ptr == _rx_ptr_limit)
		{
			// Применяем полученный статус
			taskENTER_CRITICAL();
			spi_task_state.global_status = _tmp_global_state;
			taskEXIT_CRITICAL();
			receiver_state = RECEIVER_IDLE;
		}
		break;

	case RECEIVER_ACC_REQUEST:
		if (_rx_ptr == _rx_ptr_limit)
		{
			receiver_state = RECEIVER_IDLE;

			_tx_ptr = (uint8_t*)&accbuf_buffer[_acc_values_request.offset];
			_tx_ptr_limit = _tx_ptr + _acc_values_request.size * sizeof(accbuf_buffer[0]);
			if (
				(_tx_ptr >= (uint8_t*)accbuf_buffer + sizeof(accbuf_buffer))
			||  (_tx_ptr_limit > (uint8_t*)accbuf_buffer + sizeof(accbuf_buffer))
			)
			{
				abort();
			}
		}
		break;

	default:
		break;
	}
}


inline static void _transmit() {
	uint16_t data = 0xFF;

	if ((_tx_ptr != _tx_ptr_limit))
	{
		data = *_tx_ptr;
		_tx_ptr++;
	}

	SPI2->DR = data;
}


void spi_task(void * args) {
	(void) args;

	_task_handle = xTaskGetCurrentTaskHandle();
	spiwork_init();

	while(1){
		ulTaskNotifyTake(pdFALSE, portMAX_DELAY);

		_receive();
		_transmit();
	}
}
