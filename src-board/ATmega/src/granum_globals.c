#include "granum_globals.h"

//Дескрипторы устройств
rscs_ads1115_t * ads1115;
rscs_adxl345_t * adxl345;
rscs_bmp280_descriptor_t * bmp280;
rscs_dht22_t * dht22;
rscs_ds18b20_t * ds18b20;
rscs_sdcard_t * sdcard;
rscs_tsl2561_t * tsl2561_A, * tsl2561_B, * tsl2561_C;
rscs_uart_bus_t * uart_data;
rscs_uart_bus_t * uart_debug;

//Ощибки датчиков
rscs_e ads1115_error, adxl345_error, bmp280_error, dht22_error, ds18b20_error, tsl2561_A_error,
		tsl2561_B_error, tsl2561_C_error, thermistor_A_error, thermistor_B_error, thermistor_C_error;

//Счётчик тиков
uint32_t tick_counter;

//Пакеты
gr_telemetry_fast_t telemetry_fast;
gr_telemetry_slow_t telemetry_slow;
gr_telemetry_so_slow_t telemetry_so_slow;
