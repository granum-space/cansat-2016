/*
 * globals.h
 *
 *  Created on: 30 мая 2017 г.
 *      Author: developer
 */

#ifndef GLOBALS_H_
#define GLOBALS_H_

#include "gps_nmea.h"

#include "comm_def.h"

//Глобальные переменные

//Статус аппарата (основной, на время приёма)
extern gr_status_t * gr_status_p, * gr_status_p_tmp;
//Две структуры для того, чтобы не затирать старый статус при приёме нового
extern gr_status_t gr_status0, gr_status1;

//Статус СТМки
extern gr_status_stm_t selfStatus;

//Дескриптор GPS
extern rscs_gps_t * gps;


#endif /* GLOBALS_H_ */
