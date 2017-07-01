/*
 * dump.h
 *
 *  Created on: 05 окт. 2016 г.
 *      Author: snork
 */

#ifndef DUMP_H_
#define DUMP_H_

#include <stddef.h>

#include "librscs_config.h"
#include "granum_config.h"
#include "granum_globals.h"

void dump_init(void);
void dump(const void * data, size_t datasize);



#endif /* DUMP_H_ */
