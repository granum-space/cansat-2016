/*
 * granum_config.h
 *
 *  Created on: 15 апр. 2017 г.
 *      Author: developer
 */

#ifndef GRANUM_CONFIG_H_
#define GRANUM_CONFIG_H_

#include <avr/io.h>

#include "rscs/adc.h"
#include "rscs/ads1115.h"


//Настройки вывода джампера-активатора
#define GR_JMP_INACT_VAL (PINB & (1 << 1))

#define GR_TICK_DELAY_MS 100
#define GR_TICK_SLOW_PRESCALER 10
#define GR_TICK_SO_SLOW_PRESCALER 30

//Настройки дигипота
#define DP_CS_PORTREG PORTD
#define DP_CS_DDRREG DDRD
#define DP_CS_PIN 2


//Настройки мультиплексора
#define MPX1_A_PORTREG PORTD
#define MPX1_A_DDRREG DDRD
#define MPX1_A_PIN 3

#define MPX1_B_PORTREG PORTD
#define MPX1_B_DDRREG DDRD
#define MPX1_B_PIN 4

#define MPX2_A_PORTREG PORTD
#define MPX2_A_DDRREG DDRD
#define MPX2_A_PIN 5

#define MPX2_B_PORTREG PORTD
#define MPX2_B_DDRREG DDRD
#define MPX2_B_PIN 6

#define MPX1_E_PORTREG PORTD
#define MPX1_E_DDRREG DDRD
#define MPX1_E_PIN 7

#define MPX2_E_PORTREG PORTD
#define MPX2_E_DDRREG DDRD
#define MPX2_E_PIN 8


//Настройки ADS1115
#define GR_ADS1115_ADDR RSCS_ADS1115_ADDR_GND


//Настройки АЦП для термиторов
#define GR_THERMISTORS_ADC_CHANNEL_1 RSCS_ADC_SINGLE_0
#define GR_THERMISTORS_ADC_CHANNEL_2 RSCS_ADC_SINGLE_1
#define GR_THERMISTORS_ADC_CHANNEL_3 RSCS_ADC_SINGLE_2


//Настройки SD
#define GR_SD_CS_PORTREG PORTC
#define GR_SD_CS_DDRREG DDRC
#define GR_SD_CS_PIN_MASK (1 << 0)


//Настройки сброса телеметрии
#define GR_DUMP_FFS_SYNC_PERIOD 0

//Настройки UART
#define GR_UART_DATA_ID RSCS_UART_ID_UART0
#define GR_UART_DEBUG_ID RSCS_UART_ID_UART1

#endif /* GRANUM_CONFIG_H_ */
