#ifndef COMM_DEF_H_
#define COMM_DEF_H_

#include <stdbool.h>
#include "stdint.h"

#ifdef AVR
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpragmas"
#endif

#pragma pack(push, 1)

#ifdef AVR
#pragma GCC diagnostic pop
#endif

//Вспомогательный тип для хранения ускорений
typedef struct {
	int16_t x, y, z;
} accelerations_t;


typedef struct {
	int16_t adc_low, adc_high;
	uint32_t resistance;
} soilresist_data_t;


typedef struct {
	uint16_t v0, v1;
	unsigned int lux;
	int8_t error;
} luminosity_t;


//Телеметрийные пакеты
typedef struct {
	uint16_t marker; //Must be 0xACCA

	uint16_t number;
	uint32_t tick;

	accelerations_t accelerations;
	int8_t adxl345_error;

	luminosity_t luminosity[3];

	uint32_t time;

	uint32_t checksumm;
} gr_telemetry_fast_t;


typedef struct {
	uint16_t marker; //Must be 0xFCFC

	uint16_t number;
	uint32_t tick;

	int32_t pressure;
	int32_t temperature_bmp;
	int8_t bmp280_error;

	float latitude, longtitude, altitude;
	bool gps_hasFix;

	soilresist_data_t soilresist_data[3];

	uint32_t time;

	uint32_t checksumm;
} gr_telemetry_slow_t;


typedef struct {
	uint16_t marker; //Must be 0xFC1A

	uint16_t number;
	uint32_t tick;

	int16_t temperature_ds18;
	int8_t ds18b20_error_read, ds18b20_error_conversion;

	int16_t temperature_dht;
	uint16_t humidity;
	int8_t dht22_error;

	int32_t temperature_soil[3];
	int8_t thermistor_A_error, thermistor_B_error, thermistor_C_error;

	uint32_t time;

	uint32_t checksumm;
} gr_telemetry_so_slow_t;


typedef struct {
	uint16_t marker; //Must be 0xFA7B
	uint16_t start_i, end_i;
	uint32_t checksumm;

	accelerations_t data[];
} gr_telemetry_adxl375_t;


typedef struct {
	enum {
		GR_MODE_IDLE = 0,
		GR_MODE_AWAITING_EXIT,
		GR_MODE_AWAITING_PARACHUTE,
		GR_MODE_AWAITING_LEGS,
		GR_MODE_LANDING,
		GR_MODE_ONGROUND
	} mode;

	// FIXME: УБрать в очередной статус ? или убрать нафиг
	bool seeds_activated;
} gr_status_t;


// Тип для отступов ускорений
typedef uint16_t gr_stm_accbuf_offset_t;


// Запрос на передачу данных накопленных ускорений
typedef struct
{
	gr_stm_accbuf_offset_t offset;	// отступ запрашиваемой зоны
	gr_stm_accbuf_offset_t size;	// размер запрашиваемой зоны
} gr_stm_accbuf_values_request;


typedef enum {
	ACC_STATUS_SIMPLE_READ,		//!< Читаем ускорения, но не анализируем их
	ACC_STATUS_ACTIVE,			//!< Читаем ускорения, анализируем их и принимаем решение о посадке
	ACC_STATUS_WAIT_LOCK,		//!< Мы уже почувствовали удар о Землю и сейчас накапливаем данные о нем
	ACC_STATUS_LOCKED			//!< Процесс входа в Землю закончился, не принимаем новые данные
} gr_stm_accbuf_status_t;


typedef struct
{
	accelerations_t current_acc;
	gr_stm_accbuf_status_t accbuf_status;
	gr_stm_accbuf_offset_t accbuf_buffer_carret;
} gr_stm_acc_state_t;


typedef struct
{
	float lon, lat, height;
	bool has_fix;
} gr_stm_gps_state_t;


typedef struct {
	gr_stm_acc_state_t acc_state;
	gr_stm_gps_state_t gps_state;
} gr_stm_state_t;


//Запросы от атмеги к стм
#define AMRQ_STATUS_Rx 		0xAA
#define AMRQ_SELFSTATUS_Tx	0xBB
#define AMRQ_ACC_DATA		0xCC

//Запросы от наземной станции к атмеге
#define GSRQ_CHMOD 0x73B750F83246FEAE
#define GSRQ_CHLUX 0x00EAFDDAF5679FED


#ifdef AVR
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpragmas"
#endif

#pragma pack(pop)

#ifdef AVR
#pragma GCC diagnostic pop
#endif


#endif //COMM_DEF_H_
