/* */

#include <string.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#include <stm32f10x_conf.h>

#include "FreeRTOS.h"
#include "task.h"

#include <minmea.h>

#include "led.h"

#include "gps_nmea.h"

#include "diag/Trace.h"

gr_stm_gps_state_t gps_state;

static size_t _dma_carret;
static char _dma_buffer[GPS_DMA_BUFFER_SIZE];

static size_t _msg_carret;
static char _msg_buffer[GPS_MSG_BUFFER_SIZE];


static void _init_hw(void)
{
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);
	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);


	{
		GPIO_InitTypeDef portInit;
		portInit.GPIO_Speed = GPIO_Speed_50MHz;
		portInit.GPIO_Mode = GPIO_Mode_IN_FLOATING;
		portInit.GPIO_Pin = GPIO_Pin_3; //RX
		GPIO_Init(GPIOA, &portInit);
	}

	{
		USART_InitTypeDef uartInit;
		uartInit.USART_BaudRate = 9600;
		uartInit.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
		uartInit.USART_Mode = USART_Mode_Rx;
		uartInit.USART_Parity = USART_Parity_No;
		uartInit.USART_StopBits = USART_StopBits_1;
		uartInit.USART_WordLength = USART_WordLength_8b;
		USART_Init(GPS_USART, &uartInit);
	}

	{
		DMA_InitTypeDef dma_init;
		DMA_StructInit(&dma_init);
		dma_init.DMA_PeripheralBaseAddr = (uint32_t)&GPS_USART->DR;
		dma_init.DMA_MemoryBaseAddr = (uint32_t)_dma_buffer;
		dma_init.DMA_DIR = DMA_DIR_PeripheralSRC;
		dma_init.DMA_BufferSize = GPS_DMA_BUFFER_SIZE;
		dma_init.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
		dma_init.DMA_MemoryInc = DMA_MemoryInc_Enable;
		dma_init.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
		dma_init.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;
		dma_init.DMA_Mode = DMA_Mode_Circular;
		dma_init.DMA_Priority = DMA_Priority_Medium;
		dma_init.DMA_M2M = DMA_M2M_Disable;
		DMA_Init(GPS_DMA_USART_CHANNEL, &dma_init);

		DMA_Cmd(GPS_DMA_USART_CHANNEL, ENABLE);
	}

	USART_DMACmd(GPS_USART, USART_DMAReq_Rx, ENABLE);

	USART_Cmd(GPS_USART, ENABLE);
}



inline static char _read_dma_buffer(void)
{
	// ждем, пока ДМА чего-нибудь скачает
	while(_dma_carret == (size_t)(GPS_DMA_BUFFER_SIZE - GPS_DMA_USART_CHANNEL->CNDTR)) {}

	char retval = _dma_buffer[_dma_carret];

	_dma_carret++;
	if (_dma_carret >= GPS_DMA_BUFFER_SIZE)
		_dma_carret = 0;

	return retval;
}



void gps_task(void * args)
{
	(void) args;

	_dma_carret = 0;
	_msg_carret = 0;

	_init_hw();

	for ( ; ; )
	{
		// ждем доллара
		do {
			_msg_buffer[0] = _read_dma_buffer();
		} while (_msg_buffer[0] != '$');

		_msg_carret = 1;

		// теперь накапливаем все до \r\n
		do {
			_msg_buffer[_msg_carret++] = _read_dma_buffer();
			if (_msg_carret >= GPS_MSG_BUFFER_SIZE)
			{
				// что-то не так
				continue;
			}

		} while('\r' != _msg_buffer[_msg_carret-2]
			||	'\n' != _msg_buffer[_msg_carret-1]
		);

		// в конце терминируем строку от греха подальше
		_msg_buffer[_msg_carret] = '\x00';

		// накопили, теперь разбираем
		struct minmea_sentence_gga frame;
		if (!minmea_parse_gga(&frame, _msg_buffer))
			continue; // опс, что-то пошло не так

		float _lon = minmea_tofloat(&frame.longitude);
		float _lat = minmea_tofloat(&frame.latitude);
		float _height = minmea_tofloat(&frame.altitude);
		bool _hasFix = frame.fix_quality != 0;

		//float _lon = frame.longitude.value;
		//float _lat = frame.longitude.scale;
		//float _height = _dma_carret;

		taskENTER_CRITICAL();
		gps_state.lon = _lon;
		gps_state.lat = _lat;
		gps_state.height = _height;
		gps_state.has_fix = _hasFix;
		taskEXIT_CRITICAL();


		//led_toggle();
	}
}

