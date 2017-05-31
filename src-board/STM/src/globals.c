#include "math.h"

#include "globals.h"

//Глобальные переменные

//Статус аппарата (основной, на время приёма)
gr_status_t * gr_status_p, * gr_status_p_tmp;
//Две структуры для того, чтобы не затирать старый статус при приёме нового
gr_status_t gr_status0, gr_status1;

//Статус СТМки
gr_status_stm_t selfStatus = {
		.adxl_status = ADXL_STATUS_IDLE,
		.hasFix = false,
		.lat = NAN, .lon = NAN, .alt = NAN
};

//Дескриптор GPS
rscs_gps_t * gps;
