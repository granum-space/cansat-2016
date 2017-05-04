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

#define OPERATION(OP) error = OP; if (error != RSCS_E_NONE) { error = -1; goto end; }

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
	return error;
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
	return error;
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

	int rc = bmp280_init(&_device);
	rc += bmp280_set_filter(BMP280_FILTER_COEFF_16);
	rc += bmp280_set_oversamp_pressure(BMP280_OVERSAMP_16X);
	rc += bmp280_set_oversamp_temperature(BMP280_OVERSAMP_2X);
	rc += bmp280_set_standby_durn(BMP280_STANDBY_TIME_63_MS);

	rc += bmp280_set_work_mode(BMP280_ULTRA_HIGH_RESOLUTION_MODE);
	rc += bmp280_set_power_mode(BMP280_NORMAL_MODE);

	return rc;
}


int bosh_bmp280_read(uint32_t * pressure, int32_t * temp)
{
	int rc = bmp280_read_pressure_temperature(pressure, temp);
	return rc;
}
