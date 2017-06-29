/*
 * led.c
 *
 *  Created on: 1 июн. 2017 г.
 *      Author: snork
 */


#include <stm32f10x_conf.h>

#include <stdbool.h>

#include "led.h"


void led_init(void)
{
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC, ENABLE);
	GPIO_InitTypeDef pc_init;
	pc_init.GPIO_Mode = GPIO_Mode_Out_OD;
	pc_init.GPIO_Pin = GPIO_Pin_13;
	pc_init.GPIO_Speed = GPIO_Speed_50MHz;

	GPIO_Init(GPIOC, &pc_init);
}

void led_set(bool state)
{
	// лампочка зажигается при нуле на линии, т.к. подключена к пину в режиме октрытого коллектора
	if (state)
		GPIOC->BRR |= GPIO_Pin_13;
	else
		GPIOC->BSRR |= GPIO_Pin_13;
}


void led_toggle(void)
{
	static bool led = true;
	if (led)
		GPIOC->BRR |= GPIO_Pin_13;
	else
		GPIOC->BSRR |= GPIO_Pin_13;

	led = !led;
}



