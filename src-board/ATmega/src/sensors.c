#include "dump.h"
#include "stdio.h"

#include "librscs_config.h"

#include "granum_config.h"
#include "granum_globals.h"

#include "stm32.h"
#include "soil_res.h"

static uint32_t _checksumm_calculate(void * data, size_t datasize);

void sens_init() {

	stm32_initExchange();

	{//Structures init
		telemetry_fast.marker = 0xACCA;
		telemetry_fast.number = 0;

		telemetry_slow.marker = 0xFCFC;
		telemetry_slow.number = 0;

		telemetry_so_slow.marker = 0xFC1A;
		telemetry_so_slow.number = 0;
	}

	{ //Internal ADC (thermistors)
		rscs_adc_init();
		rscs_adc_start_single_conversion(GR_THERMISTORS_ADC_CHANNEL_1);
	}

	{ //ADXL345
		adxl345 = rscs_adxl345_initi2c(RSCS_ADXL345_ADDR_MAIN);
		rscs_adxl345_startup(adxl345);
		rscs_adxl345_set_range(adxl345, RSCS_ADXL345_RANGE_16G);
		rscs_adxl345_set_rate(adxl345, RSCS_ADXL345_RATE_100HZ);
	}

	{ //BMP280
		bmp280 = rscs_bmp280_initi2c(RSCS_BMP280_I2C_ADDR_HIGH);
		rscs_bmp280_parameters_t params = {
				.pressure_oversampling = RSCS_BMP280_OVERSAMPLING_X16,
				.temperature_oversampling = RSCS_BMP280_OVERSAMPLING_X2,
				.standbytyme = RSCS_BMP280_STANDBYTIME_62DOT5MS,
				.filter = RSCS_BMP280_FILTER_X16
		};
		rscs_bmp280_setup(bmp280, &params);
		rscs_bmp280_changemode(bmp280, RSCS_BMP280_MODE_NORMAL);
	}

	{ //DS18B20
		ds18b20 = rscs_ds18b20_init(0x00); //не используем адресацию
		rscs_ds18b20_start_conversion(ds18b20);
	}

	dht22 = rscs_dht22_init(&RG_DHT22_PORTREG, &RG_DHT22_PINREG, &RG_DHT22_DDRREG, RG_DHT22_PINNUMBER, 7.0f); //DHT22

	dump_init("granum"); //FatFS and SDcard

	{ //TSL2561
		tsl2561_A = rscs_tsl2561_init(RSCS_TSL2561_ADDR_LOW);
		tsl2561_B = rscs_tsl2561_init(RSCS_TSL2561_ADDR_HIGH);
		tsl2561_C = rscs_tsl2561_init(RSCS_TSL2561_ADDR_FLOATING);

		printf("TSL error %d\n", rscs_tsl2561_setup(tsl2561_A));
		printf("TSL error %d\n", rscs_tsl2561_setup(tsl2561_B));
		printf("TSL error %d\n", rscs_tsl2561_setup(tsl2561_C));
	}

	rscs_soil_res_init();
}

void sens_update_fast() {
	{//ADXL345
		telemetry_fast.adxl345_error = rscs_adxl345_read(adxl345, 	&(telemetry_fast.accelerations.x),
									&(telemetry_fast.accelerations.y),
									&(telemetry_fast.accelerations.z));
	}

	{//TSL2561
		telemetry_fast.luminosity[0].error = rscs_tsl2561_read(tsl2561_A, &(telemetry_fast.luminosity[0].v0), &(telemetry_fast.luminosity[0].v1));
		telemetry_fast.luminosity[0].lux = rscs_tsl2561_get_lux(tsl2561_A, RSCS_TSL2561_GAIN_1X, RSCS_TSL2561_TYPE_CS, RSCS_TSL2561_INT_402MS, telemetry_fast.luminosity[0].v0, telemetry_fast.luminosity[0].v1);
		telemetry_fast.luminosity[1].error = rscs_tsl2561_read(tsl2561_B, &(telemetry_fast.luminosity[1].v0), &(telemetry_fast.luminosity[1].v1));
		telemetry_fast.luminosity[1].lux = rscs_tsl2561_get_lux(tsl2561_B, RSCS_TSL2561_GAIN_1X, RSCS_TSL2561_TYPE_CS, RSCS_TSL2561_INT_402MS, telemetry_fast.luminosity[1].v0, telemetry_fast.luminosity[1].v1);
		telemetry_fast.luminosity[2].error = rscs_tsl2561_read(tsl2561_C, &(telemetry_fast.luminosity[2].v0), &(telemetry_fast.luminosity[2].v1));
		telemetry_fast.luminosity[2].lux = rscs_tsl2561_get_lux(tsl2561_C, RSCS_TSL2561_GAIN_1X, RSCS_TSL2561_TYPE_CS, RSCS_TSL2561_INT_402MS, telemetry_fast.luminosity[2].v0, telemetry_fast.luminosity[2].v1);
	}

	telemetry_fast.time = rscs_time_get();
	telemetry_fast.tick = tick_counter;

	telemetry_fast.checksumm = _checksumm_calculate(&telemetry_fast, sizeof(telemetry_fast) - sizeof(telemetry_fast.checksumm));

	dump(&telemetry_fast, sizeof(telemetry_fast));

	telemetry_fast.number++;
}

void sens_update_slow() {

	{//BMP280
		int32_t rawpress, rawtemp;
		telemetry_slow.bmp280_error = rscs_bmp280_read(bmp280, &rawpress, &rawtemp);
		rscs_bmp280_calculate(rscs_bmp280_get_calibration_values(bmp280), rawpress, rawtemp,
								&(telemetry_slow.pressure), &(telemetry_slow.temperature_bmp));
	}

	{//STM32
		stm32_updateSTMStatus();

		telemetry_slow.latitude = gr_status_stm.lat;
		telemetry_slow.longtitude = gr_status_stm.lon;
		telemetry_slow.altitude = gr_status_stm.alt;
		telemetry_slow.gps_hasFix = gr_status_stm.hasFix;
	}

	{//Soilresist
		printf("SOILRES ERROR: %d\n", rscs_get_soil_res(telemetry_slow.soilresist_data, 15));
	}

	telemetry_slow.time = rscs_time_get();
	telemetry_slow.tick = tick_counter;

	telemetry_slow.checksumm = _checksumm_calculate(&telemetry_slow, sizeof(telemetry_slow) - sizeof(telemetry_slow.checksumm));

	dump(&telemetry_slow, sizeof(telemetry_slow));

	telemetry_slow.number++;
}

static uint32_t lastDHTupdate = 0;

void sens_update_so_slow() {

	if(rscs_ds18b20_check_ready()) {//DS18B20
		telemetry_so_slow.ds18b20_error_read = rscs_ds18b20_read_temperature(ds18b20, &(telemetry_so_slow.temperature_ds18));
		telemetry_so_slow.ds18b20_error_conversion = rscs_ds18b20_start_conversion(ds18b20);
	}

	if(rscs_time_get() >= (lastDHTupdate + 3000)) { //DHT22
		telemetry_so_slow.dht22_error = rscs_dht22_read(dht22, &(telemetry_so_slow.humidity), &(telemetry_so_slow.temperature_dht));
		lastDHTupdate = rscs_time_get();
	}

	{//Thermistors

		rscs_adc_wait_result();
		telemetry_so_slow.thermistor_A_error = rscs_adc_get_result(&(telemetry_so_slow.temperature_soil[0]));

		rscs_adc_start_single_conversion(GR_THERMISTORS_ADC_CHANNEL_2);
		rscs_adc_wait_result();
		telemetry_so_slow.thermistor_B_error = rscs_adc_get_result(&(telemetry_so_slow.temperature_soil[1]));

		rscs_adc_start_single_conversion(GR_THERMISTORS_ADC_CHANNEL_3);
		rscs_adc_wait_result();
		telemetry_so_slow.thermistor_C_error = rscs_adc_get_result(&(telemetry_so_slow.temperature_soil[2]));

		rscs_adc_start_single_conversion(GR_THERMISTORS_ADC_CHANNEL_1);
	}
}

static uint32_t _checksumm_calculate(void * data, size_t datasize) {
	uint32_t result = 0;

	for(int i = 0; i < datasize; i++) {
		result += ((uint8_t *)data) [i];
	}

	return result;

}
