/*
 * dump.h
 *
 *  Created on: 05 окт. 2016 г.
 *      Author: snork
 */

#ifndef DUMP_H_
#define DUMP_H_

#include <stddef.h>

#pragma GCC diagnostic push // очень много варнингов на эту тему от фриртоса и fatfs
#pragma GCC diagnostic ignored "-Wpadded"
#include <ff.h>
#pragma GCC diagnostic pop

#include "librscs_config.h"
#include "granum_config.h"
#include "granum_globals.h"

void dump_init(char * filename);
void dump(const void * data, size_t datasize);



#endif /* DUMP_H_ */
