#ifndef _UART_STDIO_H_
#define _UART_STDIO_H_

#include "stm32f10x.h"

#include <stdio.h>

// Создает стандартный поток на UART
FILE * rscs_make_uart_stream(USART_TypeDef uart);


#endif /* _UART_STDIO_H_ */
