/*
 * globalwars.h
 *
 *  Created on: 08 апр. 2017 г.
 *      Author: developer
 */

#ifndef GLOBALWARS_H_
#define GLOBALWARS_H_

#include <stdint.h>

typedef enum {
	CANSAT_MODE_TRANSPORTING,
	CANSAT_MODE_WAITINGSTART,
	CANSAT_MODE_FLYINGUP,
	CANSAT_MODE_FLYINGDOWN,
	CANSAT_MODE_LANDED,
} cansat_mode_t;

typedef enum {
	CANSAT_EXTENDABLESTATE_RAISED,
	CANSAT_EXTENDABLESTATE_EXTENDED
} cansat_extendablestate_t;

typedef struct {
	cansat_mode_t mode;
	uint32_t sdcard_latestblock;
	cansat_extendablestate_t 	legstate,
								parachutestate,
								seedstate;
} internalstatus_t;



#endif /* GLOBALWARS_H_ */
