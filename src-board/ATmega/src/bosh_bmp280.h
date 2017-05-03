/*
 * bosh_bmp280.h
 *
 *  Created on: 04 мая 2017 г.
 *      Author: snork
 */

#ifndef BOSH_BMP280_H_
#define BOSH_BMP280_H_


int bosh_bmp280_init(void);
int bosh_bmp280_read(uint32_t * pressure, int32_t * temp);


#endif /* BOSH_BMP280_H_ */
