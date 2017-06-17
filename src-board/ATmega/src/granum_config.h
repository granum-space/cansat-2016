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
#define GR_JMP_INACT_VAL (PINA & (1 << 0))

#define GR_TICK_DELAY_MS 150
#define GR_TICK_SLOW_PRESCALER 1
#define GR_TICK_SO_SLOW_PRESCALER 1

//Настройки дигипота
#define DP_CS_PORTREG PORTB
#define DP_CS_DDRREG DDRB
#define DP_CS_PIN 4


//Настройки мультиплексора
#define MPX1_A_PORTREG PORTA
#define MPX1_A_DDRREG DDRA
#define MPX1_A_PIN 4

#define MPX1_B_PORTREG PORTA
#define MPX1_B_DDRREG DDRA
#define MPX1_B_PIN 5

#define MPX2_A_PORTREG PORTA
#define MPX2_A_DDRREG DDRA
#define MPX2_A_PIN 6

#define MPX2_B_PORTREG PORTA
#define MPX2_B_DDRREG DDRA
#define MPX2_B_PIN 3

#define MPX_E_PORTREG PORTA
#define MPX_E_DDRREG DDRA
#define MPX_E_PIN 7

//Настройки ADS1115
#define GR_ADS1115_ADDR RSCS_ADS1115_ADDR_GND


//Настройки АЦП для термиторов
#define GR_THERMISTORS_ADC_CHANNEL_1 RSCS_ADC_SINGLE_0
#define GR_THERMISTORS_ADC_CHANNEL_2 RSCS_ADC_SINGLE_1
#define GR_THERMISTORS_ADC_CHANNEL_3 RSCS_ADC_SINGLE_2


//Настройки SD
#define GR_SD_CS_PORTREG PORTB
#define GR_SD_CS_DDRREG DDRB
#define GR_SD_CS_PIN_MASK (1 << 5)


//Настройки сброса телеметрии
#define GR_DUMP_FFS_SYNC_PERIOD 0

//Настройки UART
#define GR_UART_DATA_ID RSCS_UART_ID_UART0
#define GR_UART_DEBUG_ID RSCS_UART_ID_UART1

//Макросы управления CS к STM32
#define GR_STM_SELECT PORTB &= ~(1 << 6);
#define GR_STM_UNSELECT PORTB |= (1 << 6);

#define GR_STM_INIT_CS DDRB |= (1 << 6); GR_STM_SELECT

//Размер буфера для ускорений на STM (в измерениях)
#define GR_STM_ACCBUF_SIZE 2000

//Порого срабатывания для стержней (Ом)
#define GR_SOILRES_THRESHOLD 100

//Настройки DHT22
#define RG_DHT22_PORTREG PORTC
#define RG_DHT22_PINREG PINC
#define RG_DHT22_DDRREG DDRC
#define RG_DHT22_PINNUMBER 1

//Макросы для пережигания
#define GR_FUSE_INIT DDRC |= (1 << 2);
#define GR_FUSE_ON PORTC |= (1 << 2);
#define GR_FUSE_OFF PORTC &= ~(1 << 2);

//Настройки модуля сервы
#define GR_SERVO_MAX_VALUE 2400
#define GR_SERVO_MIN_VALUE 650
#define GR_SERVO_START_VALUE GR_SERVO_MIN_VALUE

#endif /* GRANUM_CONFIG_H_ */
