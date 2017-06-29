/*
 * gr_servo.c
 *
 *  Created on: 17 июня 2017 г.
 *      Author: developer
 */

#include "avr/io.h"
#include "avr/interrupt.h"

#include "granum_config.h"

uint16_t _recalc(uint8_t angle) {
	if(angle >= 90) return GR_SERVO_MAX_VALUE;

	return GR_SERVO_MIN_VALUE + ((GR_SERVO_MAX_VALUE - GR_SERVO_MIN_VALUE) / 90.0 * angle);
}

void gr_servo_init() {
	DDRB |= (1 << 7);

	// настраиваем таймер
	TCCR1A = (1 << WGM11) | (0 << WGM10) // режим fastpwm до ICRA
		| (1 << COM1C1) | (0 << COM1C0) // Clear OC1B on Compare Match, set OC1B at BOTTOM (non-inverting mode)
	;
	TCCR1B = (1 << WGM13) | (1 << WGM12); // режим fastpwm до OC1A

	ICR1 = 20000; // пототолок таймера
	OCR1C = GR_SERVO_START_VALUE; // начальное положение сервы

	// запускаем таймер
	TCCR1B |= (0 << CS12) | (1 << CS11) | (0 << CS10); // запуск таймера без предделителя
}

void gr_servo_set(uint8_t angle) {
	OCR1C = _recalc(angle);
}
