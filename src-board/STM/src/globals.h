/*
 * globals.h
 *
 *  Created on: 30 мая 2017 г.
 *      Author: developer
 */

#ifndef GLOBALS_H_
#define GLOBALS_H_

#include <FreeRTOS.h>
#include <semphr.h>

#include "gps_nmea.h"

#include "comm_def.h"

//Глобальные переменные

// NOTE: Этому место тут? мне кажется это должно быть в spiwork
//Статус аппарата (основной, на время приёма)
extern gr_status_t * gr_status_p, * gr_status_p_tmp;
//Две структуры для того, чтобы не затирать старый статус при приёме нового
extern gr_status_t gr_status0, gr_status1;

//Статус СТМки
extern gr_status_stm_t selfStatus;
//И мьютекс для него
extern xSemaphoreHandle selfStatusMutex;

//Дескриптор GPS
extern rscs_gps_t * gr_gps;


#endif /* GLOBALS_H_ */
