/*
 * spiwork.c
 *
 *  Created on: 08 апр. 2017 г.
 *      Author: developer
 */
#include <stdbool.h>
#include <string.h>

#include "ringbuf.h"
#include "adxl_buffer.h"

#include "../common/comm_def.h"
#include "globals.h"

#include "stm32f10x_conf.h"

//Индексы для вычитки ускорений из буфера
static uint32_t _acc_low, _acc_high, _acc_now;
static uint8_t _acc_params_shift;

//Индекс для передачи
static uint8_t _transiever_index = 0;

//Копия статуса для отправки
static gr_status_stm_t _status;

static void _receive();
static void _transmit();

static enum {
	RECEIVER_IDLE,
	RECEIVER_AMRQ,
	RECEIVEING_STATUS,
	RECEIVEING_ACC_PARAMS
} receiver_state;

static enum {
	TRANSMITTER_IDLE,
	TRANSMITTING_SELFSTATUS,
	TRANSMITTING_ACC,
} transmitter_state;

void SPI2_IRQHandler() {
	_receive();
	_transmit();
}

void EXTI15_10_IRQHandler() { //CS change handling
	//Если CS поднялся, то идём в IDLE
	if(GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_12)) receiver_state = RECEIVER_IDLE;
	//Иначе ждём запроса от атмеги
	else receiver_state = RECEIVER_AMRQ;
	//Сбрасываем флаг прерывания
	EXTI_ClearITPendingBit(EXTI_Line12);
}

void  spiwork_init() {
	//Инициализируем указатели на структуры статуса
	gr_status_p = &gr_status0;
	gr_status_p_tmp = &gr_status1;

	//Клокаем всё, что только можно!
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI2, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);

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

	//GPIO для SPI
	GPIO_InitTypeDef portInit;

	portInit.GPIO_Speed = GPIO_Speed_50MHz;
	portInit.GPIO_Mode = GPIO_Mode_AF_PP;
	portInit.GPIO_Pin = GPIO_Pin_14; //MISO
	GPIO_Init(GPIOB, &portInit);

	portInit.GPIO_Pin = GPIO_Pin_15, GPIO_Pin_13, GPIO_Pin_12;// MOSI, SCLK, CS
	portInit.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_Init(GPIOB, &portInit);

	//Настройка прерываний SPI
	SPI_I2S_ITConfig(SPI2, SPI_I2S_IT_RXNE, ENABLE);

	NVIC_InitTypeDef nvic;
	nvic.NVIC_IRQChannel = SPI2_IRQn;
	nvic.NVIC_IRQChannelCmd = ENABLE;
	nvic.NVIC_IRQChannelPreemptionPriority = 0; //FIXME настроить приоритет прерываний
	nvic.NVIC_IRQChannelSubPriority = 0;
	NVIC_Init(&nvic);

	//Настройка прерываний EXTI (CS)
	EXTI_InitTypeDef exti;

	EXTI_StructInit(&exti);

	GPIO_EXTILineConfig(GPIO_PortSourceGPIOB, GPIO_PinSource12);

	exti.EXTI_Line = EXTI_Line12;
	exti.EXTI_LineCmd = ENABLE;
	exti.EXTI_Mode = EXTI_Mode_Interrupt;
	exti.EXTI_Trigger = EXTI_Trigger_Rising_Falling;

	EXTI_Init(&exti);

	nvic.NVIC_IRQChannel = EXTI15_10_IRQn;
	nvic.NVIC_IRQChannelCmd = ENABLE;
	nvic.NVIC_IRQChannelPreemptionPriority = 14; //FIXME настроить приоритет прерываний
	nvic.NVIC_IRQChannelSubPriority = 0;
	NVIC_Init(&nvic);


	NVIC_EnableIRQ(SPI2_IRQn);
	NVIC_EnableIRQ(EXTI15_10_IRQn);


	//Активируем модуль SPI
	SPI_Cmd(SPI2, ENABLE);

	//Прокачиваем первый обмен
	_receive();
	_transmit();
}

static void _receive() {
	uint16_t data = SPI_I2S_ReceiveData(SPI2);
	switch(receiver_state) {

	case RECEIVER_AMRQ:

		switch(data) {

		case AMRQ_STATUS_Rx:
			receiver_state = RECEIVEING_STATUS;
			break;

		case AMRQ_ACC_DATA:
			receiver_state = RECEIVEING_ACC_PARAMS;
			_acc_high = 0;
			_acc_params_shift = 0;
			break;

		case AMRQ_SELFSTATUS_Tx:
			_transiever_index = 0;

			transmitter_state = TRANSMITTING_SELFSTATUS;
			xSemaphoreTakeFromISR(selfStatusMutex, NULL);

			memcpy(&_status, &selfStatus, sizeof(selfStatus));

			xSemaphoreGiveFromISR(selfStatusMutex, NULL);

			break;

		default: break;

		}
		break;

	case RECEIVEING_STATUS:
		*( ( (uint8_t *) gr_status_p_tmp) + _transiever_index ) = data & 0xFF;
		_transiever_index++;

		if(_transiever_index == sizeof(gr_status_t) ) {
			//Обмениваем указатели
			gr_status_t * tmp = gr_status_p;
			gr_status_p = gr_status_p_tmp;
			gr_status_p_tmp = tmp;

			adxlbuf_start_listen(gr_status_p);

			_transiever_index = 0;
			receiver_state = RECEIVER_IDLE;
		}
		break;

	case RECEIVEING_ACC_PARAMS:
		if(_acc_params_shift < 32) {
			_acc_low |= (data << _acc_params_shift);
		}

		else {
			if(_acc_params_shift < 64) {
				_acc_high |= (data << (_acc_params_shift - 32));
			}
		}

		_acc_params_shift += 8;

		if (_acc_params_shift == 64){
			_acc_now = _acc_low;
			_acc_params_shift = 0;
			_transiever_index = 0;
			receiver_state = RECEIVER_IDLE;
			transmitter_state = TRANSMITTING_ACC;
		}
		break;

	default: break;
	}
}

static void _transmit() {
	uint16_t data = 0xFF;

	accelerations_t * acceleration;

	switch(transmitter_state) {

	case TRANSMITTING_ACC:
		acceleration = rscs_ringbuf_varsize_see_from_tail(adxl_buf, _acc_now);

		data = ((uint8_t *) acceleration) [_transiever_index];
		_transiever_index++;

		if(_transiever_index == sizeof(accelerations_t)) {
			_transiever_index = 0;
			_acc_now++;
		}

		if(_acc_now == (_acc_high + 6)) {
			_transiever_index = 0;
			transmitter_state = TRANSMITTER_IDLE;
		}

		break;

	case TRANSMITTING_SELFSTATUS:
		data = *( ((uint8_t *) &_status ) + _transiever_index);
		_transiever_index++;

		if(_transiever_index == sizeof(selfStatus)){
			_transiever_index = 0;
			transmitter_state = TRANSMITTER_IDLE;
			xSemaphoreGive(selfStatusMutex);
		}
		break;

	case TRANSMITTER_IDLE:
	default:
		break;
	}

	SPI_I2S_SendData(SPI2, data);
}
