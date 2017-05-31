/*
 * led.c
 *
 *  Created on: 1 июн. 2017 г.
 *      Author: snork
 */

#include "led.h"

#include <stm32f10x_conf.h>

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
	GPIO_WriteBit(GPIOC, GPIO_Pin_13, state ? RESET : SET);
}

void led_toggle(void)
{
	bool bit = GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_13);
	GPIO_WriteBit(GPIOC, GPIO_Pin_13, !bit);
}



