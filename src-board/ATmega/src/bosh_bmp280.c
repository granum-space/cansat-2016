/*
 * bosh_bmp280.c
 *
 *  Created on: 04 мая 2017 г.
 *      Author: snork
 */

#include <util/delay.h>

#include <rscs/i2c.h>
#include <rscs/error.h>

#include "bosh/bmp280.h"

static struct bmp280_t _device;

#define OPERATION(OP) error = OP; if (error != RSCS_E_NONE) { goto end; }

static s8 _i2c_read(u8 dev_addr, u8 reg_addr, u8 *reg_data, u8 cnt)
{
	s8 error;
	OPERATION(rscs_i2c_start());
	OPERATION(rscs_i2c_send_slaw(dev_addr, rscs_i2c_slaw_write));
	OPERATION(rscs_i2c_write_byte(reg_addr));
	OPERATION(rscs_i2c_start());
	OPERATION(rscs_i2c_send_slaw(dev_addr, rscs_i2c_slaw_read));
	OPERATION(rscs_i2c_read(reg_data, cnt, true));

end:
	rscs_i2c_stop();
	printf("i2c_read reg = 0x%02X, cnt = %d, err = %d\n", reg_addr, cnt, error);
	return error == 0 ? 0 : -1;
}


static s8 _i2c_write(u8 dev_addr, u8 reg_addr, u8 *reg_data, u8 cnt)
{
	s8 error;
	OPERATION(rscs_i2c_start());
	OPERATION(rscs_i2c_send_slaw(dev_addr, rscs_i2c_slaw_write));
	OPERATION(rscs_i2c_write_byte(reg_addr));
	OPERATION(rscs_i2c_write(reg_data, cnt));

end:
	rscs_i2c_stop();
	printf("i2c_write reg = 0x%02X, cnt = %d, err = %d\n", reg_addr, cnt, error);
	return error == 0 ? 0 : -1;
}


static void _delay_msec(u32 msek)
{
	while (msek--)
		_delay_ms(1);
}


int bosh_bmp280_init()
{
	_device.bus_read = _i2c_read;
	_device.bus_write = _i2c_write;
	_device.delay_msec = _delay_msec;
	_device.dev_addr = BMP280_I2C_ADDRESS2;
	//_device.dev_addr = BMP280_I2C_ADDRESS1;

	int rc;
	//while(1)
	{
		//printf("bmp_init_start\n");
		rc = bmp280_init(&_device);
		//printf("bmp_set_filter_start\n");
		rc += bmp280_set_filter(BMP280_FILTER_COEFF_16);
		//printf("bmp_set_oversamp_pres_start\n");
		rc += bmp280_set_oversamp_pressure(BMP280_OVERSAMP_16X);
		//printf("bmp_set_oversamp_temp_start\n");
		rc += bmp280_set_oversamp_temperature(BMP280_OVERSAMP_2X);
		//printf("bmp_set_oversamp_standby_start\n");
		rc += bmp280_set_standby_durn(BMP280_STANDBY_TIME_63_MS);

		//printf("bmp_set_workmode_start\n");
		rc += bmp280_set_work_mode(BMP280_ULTRA_HIGH_RESOLUTION_MODE);
		//printf("bmp_set_powermode_start\n");
		rc += bmp280_set_power_mode(BMP280_NORMAL_MODE);
		//printf("bmp_init complete, err = %d\n", rc);
	}

	return rc;
}


int bosh_bmp280_read(uint32_t * pressure, int32_t * temp)
{
	int rc = bmp280_read_pressure_temperature(pressure, temp);
	return rc;
}
