/*
 * led.h
 *
 *  Created on: 1 июн. 2017 г.
 *      Author: snork
 */

#ifndef LED_H_
#define LED_H_

#include <stdbool.h>

void led_init(void);

void led_set(bool state);

void led_toggle(void);


#endif /* LED_H_ */
