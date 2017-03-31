/*
 * adxl375.c
 *
 *  Created on: 31 марта 2017 г.
 *      Author: developer
 */

#include <stm32f10x_conf.h>

#define ADXL_SPI SPI1

static void hw_init()
{
	RCC_APB1PeriphClockCmd(RCC_APB2Periph_SPI1, ENABLE);

	SPI_InitTypeDef spiconf;
	spiconf.SPI_CRCPolynomial = 7; // Отключено (так Василий сказал)
	spiconf.SPI_DataSize = SPI_DataSize_8b;
	spiconf.SPI_NSS = SPI_NSS_Soft;
	spiconf.SPI_Direction = SPI_Direction_2Lines_FullDuplex;
	spiconf.SPI_FirstBit = SPI_FirstBit_MSB;
	spiconf.SPI_Mode = SPI_Mode_Master;
	spiconf.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_16;
	spiconf.SPI_CPHA = SPI_CPHA_2Edge;
	spiconf.SPI_CPOL = SPI_CPOL_High;

	SPI_Init(ADXL_SPI, &spiconf);

	GPIO_InitTypeDef portInit;
	portInit.GPIO_Mode = GPIO_Mode_AF_PP;
	portInit.GPIO_Speed = GPIO_Speed_50MHz;
	portInit.GPIO_Pin = GPIO_Pin_15; //CS
	GPIO_Init(GPIOA, &portInit);

	portInit.GPIO_Pin = GPIO_Pin_3 | GPIO_Pin_5; //MOSI, SCLK
	GPIO_Init(GPIOB, &portInit);

	portInit.GPIO_Pin = GPIO_Pin_4;// MISO
	portInit.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_Init(GPIOB, &portInit);

	SPI_Cmd(ADXL_SPI, ENABLE);
}


static void writeByte(int byte){
	GPIO

	SPI_I2S_SendData(ADXL_SPI, byte);

	while (SPI_I2S_GetFlagStatus(ADXL_SPI, SPI_I2S_FLAG_RXNE))
	{}

	volatile int x = SPI_I2S_ReceiveData(ADXL_SPI);
	(void)x;

}

