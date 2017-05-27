/*
 * digipot.c
 *
 *  Created on: 29 апр. 2017 г.
 *      Author: developer
 */


#include <stdlib.h>
#include <stdio.h>
#include <float.h>
#include <math.h>

#include <util/delay.h>

#include <rscs/adc.h>
#include <rscs/spi.h>

#include "soil_res.h"
#include "granum_config.h"


#include "rscs/ads1115.h"

static void set_bus_high(volatile uint8_t * reg, uint8_t pin)
{
	*reg |= (1 << pin);
}

static void set_bus_low(volatile uint8_t * reg, uint8_t pin)
{
	*reg &= ~(1 << pin);
}

static void digipot_start()
{
	// установка 0 на пин
	set_bus_low(&DP_CS_PORTREG, DP_CS_PIN);
}

static void digipot_stop()
{
	// установка 1 на пин
	set_bus_high(&DP_CS_PORTREG, DP_CS_PIN);
}

static rscs_ads1115_t * adc;

// инициализация
void rscs_soil_res_init()
{
	/* настройка дигипота
	 * установка на вывод пина chip select */
	set_bus_high(&DP_CS_DDRREG, DP_CS_PIN);
	set_bus_high(&DP_CS_PORTREG, DP_CS_PIN);

	// настройка первого мультиплексора
	set_bus_high(&MPX1_A_DDRREG, MPX1_A_PIN);
	set_bus_high(&MPX1_B_DDRREG, MPX1_B_PIN);
	set_bus_high(&MPX1_E_DDRREG, MPX1_E_PIN);
	/* если на пин Enabled выставить 1, то все переключатели будут выключены
	 * если 0, то включены
	 * сначала пусть они будут выключены */
	set_bus_high(&MPX1_E_PORTREG, MPX1_E_PIN);

	// настройка второго мультиплексора
	set_bus_high(&MPX2_A_DDRREG, MPX2_A_PIN);
	set_bus_high(&MPX2_B_DDRREG, MPX2_B_PIN);
	set_bus_high(&MPX2_E_DDRREG, MPX2_E_PIN);
	set_bus_high(&MPX2_E_PORTREG, MPX2_E_PIN);

	// настройка ацп
	adc = rscs_ads1115_init(GR_ADS1115_ADDR);
	rscs_ads1115_set_range(adc, RSCS_ADS1115_RANGE_6DOT144);
	rscs_ads1115_set_datarate(adc, RSCS_ADS1115_DATARATE_475SPS);

	//Настройки SPI под дигипот:
    rscs_spi_set_clk(1000);
	rscs_spi_set_order(RSCS_SPI_ORDER_MSB_FIRST);
	rscs_spi_set_pol(RSCS_SPI_POL_SAMPLE_RISE_SETUP_FALL);

	// включить мультиплексорs!
	set_bus_low(&MPX1_E_PORTREG, MPX1_E_PIN);
	set_bus_low(&MPX2_E_PORTREG, MPX2_E_PIN);

}

void rscs_digipot_set_res(uint32_t resistance)
{
	// если сопротивление < 100кОм, то обойдемся одним встроенным реостатом
	if (resistance < 100000) {
		digipot_start();
		rscs_spi_do(COMMAND_BYTE_DP0);
		/* отправляем data_byte (здесь 0 соответствует нулевому сопротивлению,
			   а 255 - максимальному сопротивлению, то есть 100кОм, отсюда и DP_STEP = 392) */
		rscs_spi_do(resistance / DP_STEP);
		digipot_stop();

		digipot_start();
		rscs_spi_do(COMMAND_BYTE_DP1);
		rscs_spi_do(0);
		digipot_stop();
	}
	// если нет, то поставим первый реостат на максимум, а второй на полученную разницу
	else {
		digipot_start();
		rscs_spi_do(COMMAND_BYTE_DP0);
		rscs_spi_do(255);
		digipot_stop();

		digipot_start();
		rscs_spi_do(COMMAND_BYTE_DP1);
		rscs_spi_do((resistance - 100000) / DP_STEP);
		digipot_stop();
	}

	_delay_us(10);
}

rscs_e rscs_get_soil_res(uint32_t *res12, uint32_t *res23, uint32_t *res13, uint8_t precision)
{
	int16_t value;
	for (int j = 0; j < 3; j++)
	{
		//выключить мультиплексорs!
		set_bus_low(&MPX1_E_PORTREG, MPX1_E_PIN);
		set_bus_low(&MPX2_E_PORTREG, MPX2_E_PIN);
		switch (j)
		{
		case 0:
			// подключение в цепь пару стержней с номерами 1 и 2
			// 1 стержень к пину y0 мультиплексора, для этого подаем следующие сигналы на линии:
			set_bus_low(&MPX1_A_PORTREG, MPX1_A_PIN);
			set_bus_low(&MPX1_B_PORTREG, MPX1_B_PIN);
			// 2 стержень
			set_bus_high(&MPX2_A_PORTREG, MPX2_A_PIN); // y1 второго мультиплексора
			set_bus_low(&MPX2_B_PORTREG, MPX2_B_PIN);
			break;
		case 1:
			// подключение в цепь пару стержней с номерами 1 и 3
			// 1 стержень
			set_bus_low(&MPX1_A_PORTREG, MPX1_A_PIN); // y0 первого мультиплексора
			set_bus_low(&MPX1_B_PORTREG, MPX1_B_PIN);
			// 3 стержень
			set_bus_low(&MPX2_A_PORTREG, MPX2_A_PIN); // y2 второго мультиплексора
			set_bus_high(&MPX2_B_PORTREG, MPX2_B_PIN);
			break;
		case 2:
			// подключение в цепь пару стержней с номерами  2 и 3
			// 2 стержень
			set_bus_high(&MPX1_A_PORTREG, MPX1_A_PIN); // y1 первого мультиплексора
			set_bus_low(&MPX1_B_PORTREG, MPX1_B_PIN);
			// 3 стержень
			set_bus_low(&MPX2_A_PORTREG, MPX2_A_PIN); // y2 второго мультиплексора
			set_bus_high(&MPX2_B_PORTREG, MPX2_B_PIN);
		};

		rscs_e error;

		int16_t parrots_dif1, parrots_dif2, parrots_difX;
		uint32_t res1 = 0, res2 = 200000, resX;

		rscs_digipot_set_res(res1);
		error = rscs_ads1115_take(adc, RSCS_ADS1115_CHANNEL_DIFF_01, &parrots_dif1);
		rscs_digipot_set_res(res2);
		error = rscs_ads1115_take(adc, RSCS_ADS1115_CHANNEL_DIFF_01, &parrots_dif2);

		/* Рассматриваем зависимость разницы потенциалов от значения сопротивления на дигипоте
		 * как монотонную функцию */

		for (int i = 0; i < precision; i++)
		{
			/*rscs_digipot_set_res(res1);
			error = rscs_ads1115_take(adc, RSCS_ADS1115_CHANNEL_DIFF_01, &parrots_dif1);
			printf("left: %d", parrots_dif1);
			rscs_digipot_set_res(res2);
			error = rscs_ads1115_take(adc, RSCS_ADS1115_CHANNEL_DIFF_01, &parrots_dif2);
			printf(" right: %d\n", parrots_dif2); */
			resX = (res2 + res1) / 2;
			rscs_digipot_set_res(resX);
			error = rscs_ads1115_take(adc, RSCS_ADS1115_CHANNEL_DIFF_01, &parrots_difX);

			if (parrots_difX > 0)
			{
				res2 = resX;
			}
				else if (parrots_difX < 0)
				{
					res1 = resX;
				}
					else break;
			}
			printf("in volts at %d: %lu\n", j, resX);
		}

		return RSCS_E_NONE;
	}
