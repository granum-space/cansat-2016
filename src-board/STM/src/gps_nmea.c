/* */

#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#include <stm32f10x.h>

#include "minmea.h"

#include "ringbuf.h"

#include "gps_nmea.h"

typedef enum
{
	GPS_STATE_IDLE, 		// ждем доллара
	GPS_STATE_ACCUMULATE,	// накапливаем символы
} state_t;

struct rscs_gps_t
{
	USART_TypeDef * uart;
	state_t state;
	char buffer[/*FIXME RSCS_GPS_BUFFER_SIZE*/100];
	size_t buffer_carret;
};

rscs_ringbuf_t * gps_buf;

void USART2_IRQHandler() {
	//USART_ClearITPendingBit(USART2, USART_IT_RXNE);
	rscs_ringbuf_push(gps_buf, USART_ReceiveData(USART2));
}

rscs_gps_t * rscs_gps_init(USART_TypeDef * uartId)
{
	gps_buf = rscs_ringbuf_init(200);
	// создаем дескритор и настраиваем
	rscs_gps_t * retval = (rscs_gps_t *)malloc(sizeof(rscs_gps_t));
	if (NULL == retval)
	{
		return NULL;
	}

	retval->uart = uartId;
	retval->buffer_carret = 0;
	retval->state = GPS_STATE_IDLE;

	// настройка UART

	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);

	GPIO_InitTypeDef portInit;

	portInit.GPIO_Speed = GPIO_Speed_50MHz;
	portInit.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	portInit.GPIO_Pin = GPIO_Pin_3; //RX
	GPIO_Init(GPIOA, &portInit);


	USART_InitTypeDef uartInit;
	uartInit.USART_BaudRate = 9600;
	uartInit.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	uartInit.USART_Mode = USART_Mode_Rx;
	uartInit.USART_Parity = USART_Parity_No;
	uartInit.USART_StopBits = USART_StopBits_1;
	uartInit.USART_WordLength = USART_WordLength_8b;

	USART_Init(retval->uart, &uartInit);

	USART_Cmd(USART2, ENABLE);

	NVIC_InitTypeDef nvic;
	nvic.NVIC_IRQChannel = USART2_IRQn;
	nvic.NVIC_IRQChannelCmd = ENABLE;
	nvic.NVIC_IRQChannelPreemptionPriority = 0;
	nvic.NVIC_IRQChannelSubPriority = 0;
	NVIC_Init(&nvic);

	NVIC_EnableIRQ(USART2_IRQn);

	USART_ITConfig(retval->uart, USART_IT_RXNE, ENABLE);

	return retval;
}


void rscs_gps_deinit(rscs_gps_t * gps)
{
	USART_DeInit(gps->uart);
	free(gps);
}


static int _explode(const char * str, size_t msgSize, char symbol, const char ** results,
		size_t results_size)
{
	uint8_t numbersOfStr = 0;
	for (int i = 0; i < msgSize; i++){
		if (str[i] == symbol){
			results[numbersOfStr] = &str[i + 1];
			if (numbersOfStr > results_size)
				return 0;
			numbersOfStr++;
		}
	}
	return numbersOfStr;
}

static bool _handle_message(const char * msg_signed, size_t msgSize, float * lon, float * lat,
						    float * height, bool * hasFix)
{
	printf("HandleMessage\n");

	struct minmea_sentence_gga frame;
	if( !minmea_parse_gga(&frame, msg_signed)) return false;
	*lon = minmea_tofloat(&frame.longitude);
	*lat = minmea_tofloat(&frame.latitude);
	*height = minmea_tofloat(&frame.altitude);
	*hasFix = frame.fix_quality != 0;

	return 1;

	/*char chksum = msg[1]; // пропускаем нулевой символ $

	size_t chksumLimit = msgSize - 5; // Пропускаем *XX\r\n
	for (size_t i = 2; i < chksumLimit; i++)
		chksum = chksum ^ msg[i];

	int expectedChksumValue;
	if (sscanf(msg_signed + chksumLimit+1, "%X", &expectedChksumValue) == 0)
		return false;

	if (chksum != expectedChksumValue)
		return false;

	const char * results[16];
	uint8_t numbersOfStr = _explode(msg_signed, msgSize, ',', results, sizeof(results));
	if (numbersOfStr == 0)
		return false;

	// разбираем долготу
	if (sscanf(results[1], "%f", lon) != 1)
		return false;

	if(*results[2] != 'N')
		*lon *= -1;

	//разбираем широту
	if (sscanf(results[3], "%f", lat) != 1)
		return false;

	if (*results[4] != 'E')
		*lat *= -1;

	//разбираем высоту
	if (sscanf(results[9], "%f", height) != 1)
		return false;

	//проверка качества
	int fixQual;
	if (sscanf(results[5], "%i", &fixQual) != 0)
		*hasFix = false;
		else
		*hasFix = true;
	return true;*/
}

int rscs_uart_read_some(USART_TypeDef * uart, void * data, size_t count) {
	int i = 0;

	for(i = 0; (i < count) && ( rscs_ringbuf_getsize(gps_buf) != 0); i++) {
		rscs_ringbuf_pop(gps_buf, ((uint8_t *)data + i));
	}
	return i;
}

int rscs_gps_read(rscs_gps_t * gps, float * lon, float * lat,
					 float * height, bool * hasFix)
{
	// нужно прочитать данные из связанного UART
	// выкинуть все не нужное, найти нужное сообщение
	// и выделить из него широту, долготу и высоту

	char symbol;
	size_t readed;

again:
	switch(gps->state)
	{
	case GPS_STATE_IDLE:
		while(0 != (readed = rscs_uart_read_some(gps->uart, &symbol, 1)))
		{
			if ('$' == symbol)
				break;
		}

		if (readed > 0 && '$' == symbol)
		{
			gps->state = GPS_STATE_ACCUMULATE;
			gps->buffer[0] = symbol;
			gps->buffer_carret = 1;
		}
		else
			return -1;

		// брейк опущен сознательно
	case GPS_STATE_ACCUMULATE:
		while(0 != (readed = rscs_uart_read_some(gps->uart, &symbol, 1)))
		{
			if ('$' == symbol)
			{
				gps->buffer[0] = symbol;
				gps->buffer_carret = 1;
				continue;
			}

			if (gps->buffer_carret >= sizeof(gps->buffer))
			{
				gps->state = GPS_STATE_IDLE;
				goto again;
			}

			gps->buffer[gps->buffer_carret] = symbol;
			gps->buffer_carret += readed;

			if (gps->buffer_carret == 6 && memcmp(gps->buffer, "$GPGGA", 6) != 0)
			{
				gps->state = GPS_STATE_IDLE;
				goto again;
			}

			if (gps->buffer_carret >= 2
				&& '\n' == gps->buffer[gps->buffer_carret-1]
			    && '\r' == gps->buffer[gps->buffer_carret-2])
			{
				if (_handle_message(gps->buffer, gps->buffer_carret, lon, lat, height, hasFix))
				{
					gps->state = GPS_STATE_IDLE;
					return 0;
				}
				else
				{
					gps->state = GPS_STATE_IDLE;
					goto again;
				}
			}
		}
		break;
	}

	// если сообщения не нашлось, нужно вернуть RSCS_E_BUSY
	return -1;
}
