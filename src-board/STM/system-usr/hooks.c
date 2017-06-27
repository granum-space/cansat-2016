/*
 * hooks.c
 *
 *  Created on: 1 июн. 2017 г.
 *      Author: snork
 */

//#if !defined(OS_USE_SEMIHOSTING) && !(__STDC_HOSTED__ == 0)

#include <_ansi.h>
#include <_syslist.h>
#include <errno.h>
#include <signal.h>

#include <stm32f10x_usart.h>
#include <stm32f10x_usart.h>

void __initialize_hardware(void);

void __initialize_hardware(void)
{
	SystemCoreClockUpdate();

	// настройка UART для printf
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);

	GPIO_InitTypeDef git;
	git.GPIO_Mode = GPIO_Mode_AF_PP;
	git.GPIO_Pin = GPIO_Pin_10; //Tx
	git.GPIO_Speed = GPIO_Speed_50MHz;

	GPIO_Init(GPIOB, &git);

	git.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	git.GPIO_Pin = GPIO_Pin_11; //Rx

	GPIO_Init(GPIOB, &git);

	USART_InitTypeDef itd;
	itd.USART_BaudRate = 9600;
	itd.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	itd.USART_Mode = USART_Mode_Tx | USART_Mode_Rx;
	itd.USART_Parity = USART_Parity_No;
	itd.USART_StopBits = USART_StopBits_1;
	itd.USART_WordLength = USART_WordLength_8b;

	USART_Init(USART3, &itd);
	USART_Cmd(USART3, ENABLE);

	// требуется freertos-ом (http://www.freertos.org/RTOS-Cortex-M3-M4.html)
	//NVIC_PriorityGroupConfig(NVIC_PriorityGroup_4);
	//NVIC_SetPriorityGrouping(0);
}


// ----------------------------------------------------------------------------

// When using retargetted configurations, the standard write() system call,
// after a long way inside newlib, finally calls this implementation function.

// Based on the file descriptor, it can send arrays of characters to
// different physical devices.

// Currently only the output and error file descriptors are tested,
// and the characters are forwarded to the trace device, mainly
// for demonstration purposes. Adjust it for your specific needs.

// For freestanding applications this file is not used and can be safely
// ignored.

ssize_t
_write (int fd, const char* buf, size_t nbyte);

ssize_t
_write (int fd __attribute__((unused)), const char* buf __attribute__((unused)),
	size_t nbyte __attribute__((unused)))
{
	if (fd == 1 || fd == 2) {
		for(size_t i = 0; i < nbyte; i++) {
			USART_SendData(USART3, buf[i]);
			while(1){
				if(USART_GetFlagStatus(USART3, USART_FLAG_TXE)) break;
			}
		}
    }

	errno = ENOSYS;
	return -1;
}

// ----------------------------------------------------------------------------

//#endif


