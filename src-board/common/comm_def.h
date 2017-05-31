#ifndef COMM_DEF_H_
#define COMM_DEF_H_

#include <stdbool.h>
#include "stdint.h"

//Вспомогательный тип для хранения ускорений
typedef struct {
	int16_t x, y, z;
} accelerations_t;

//Телеметрийные пакеты
typedef struct {
	uint16_t marker; //Must be 0xACCA

	uint16_t number;
	uint32_t tick;

	accelerations_t accelerations;
	uint16_t luminosity1, luminosity2, luminosity3;

	uint32_t time;

	uint32_t checksumm;
} gr_telemetry_fast_t;

typedef struct {
	uint16_t marker; //Must be 0xFCFC

	uint16_t number;
	uint32_t tick;

	int32_t pressure;
	int32_t temperature_bmp;

	float latitude, longtitude, height;
	bool gps_hasFix;

	uint32_t time;

	uint32_t checksumm;
} gr_telemetry_slow_t;

typedef struct {
	uint16_t marker; //Must be 0xFC1A

	uint16_t number;
	uint32_t tick;

	int16_t temperature_ds18;

	int16_t temperature_dht;
	uint16_t humidity;

	uint16_t temperature_soil1, temperature_soil2, temperature_soil3;

	struct {
		uint16_t adc_low, adc_high;
		float resistance;
	} soilresist_data[3];

	uint32_t time;

	uint32_t checksumm;
} gr_telemetry_so_slow_t;

typedef struct {
	uint16_t marker; //Must be 0xFA7B
	uint16_t start_i, end_i;
	accelerations_t data[];
} gr_telemetry_adxl375_t;

//Статусные пакеты TODO: Василий: Рассмотреть вомзожность упразднения режима LIFTING, присвоить енумам значения
typedef struct {
	enum {
		GR_MODE_IDLE,
		GR_MODE_AWAITING_START,
		GR_MODE_LIFTING,
		GR_MODE_AWAITING_PARACHUTE,
		GR_MODE_AWAITING_LEGS,
		GR_MODE_LANDING,
		GR_MODE_ONGROUND
	} mode;

	bool seeds_activated;
} gr_status_t;

enum {
	ADXL_STATUS_IDLE,
	ADXL_STATUS_COLLECTING,
	ADXL_STATUS_FINISHED
} stm_adxl_status;

typedef struct {

	uint8_t adxl_status; //Одно из значений enum stm_adxl_status
	bool hasFix;
	float lat, lon, alt;

} gr_status_stm_t;


//Запросы от атмеги к стм
#define AMRQ_STATUS_Rx 		0xAA
#define AMRQ_SELFSTATUS_Tx	0xBB
#define AMRQ_ACC_DATA		0xCC

#endif //COMM_DEF_H_
