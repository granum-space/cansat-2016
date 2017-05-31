#include "librscs_config.h"
#include "rscs/ads1115.h"
#include "rscs/adc.h"
#include "rscs/adxl345.h"
#include "rscs/bmp280.h"
#include "rscs/dht22.h"
#include "rscs/ds18b20.h"
#include "rscs/sdcard.h"
#include "rscs/timeservice.h"
#include "rscs/uart.h"


//Дескрипторы устройств

extern rscs_ads1115_t * ads1115;
extern rscs_adxl345_t * adxl345;
extern rscs_bmp280_descriptor_t * bmp280;
extern rscs_dht22_t * dht22;
extern rscs_ds18b20_t * ds18b20;
extern rscs_sdcard_t * sdcard;
extern rscs_uart_bus_t * uart_data;
extern rscs_uart_bus_t * uart_debug;
