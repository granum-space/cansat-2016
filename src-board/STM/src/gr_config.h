/*
 * gr_config.h
 *
 *  Created on: 28 июня 2017 г.
 *      Author: developer
 */

#ifndef GR_CONFIG_H_
#define GR_CONFIG_H_

#include "comm_def.h"

//! Порог, ускорения ниже которого воспринимаются как сигнал о покое
#define ACC_STILL_LIMIT_G				(2)
//! Сколько измерений покоя после удара заблокируют буфер
#define ACC_SAMPLES_STILL_AFTER_IMPACT	(10)
//! Порог, ускорения выше которого будут считаться сигналом об ударе
#define ACC_IMPACT_LIMIT_G 				(3)
//! Перевод ускорений из G в попугаи акселерометра
#define ACC_G_TO_PARROTS(G) 			((int)(G/0.050))
//! Размер буфера хранимых ускорений (В элементах)
#define ACC_BUFFER_SIZE (GR_STM_ACCBUF_SIZE)

#define ACC_TASK_TIMER_PRIO		(configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY + 2)
#define SPI_INTERRUPT_PRIO  	(configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY)
#define SPI_EXTI_INTERRUPT_PRIO (configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY)

#define GPS_USART (USART2)
#define GPS_DMA_BUFFER_SIZE (500)
#define GPS_MSG_BUFFER_SIZE (200)
#define GPS_DMA_USART_CHANNEL (DMA1_Channel6)

#endif /* GR_CONFIG_H_ */
