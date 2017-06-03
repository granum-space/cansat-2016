/*
 * main.c
 *
 *  Created on: 31 мая 2017 г.
 *      Author: developer
 */

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "stdbool.h"
#include "math.h"
#include "adxl_buffer.h"
#include "ringbuf_varsize.h"
#include "adxl375.h"
#include "comm_def.h"

int main_test()
{
	FILE *f = fopen("/home/developer/acc.txt", "r");
	if (f == NULL) {
		printf("fail");
	}
	adxlbuf_init();
	gr_status_t status_cs;
	status_cs.mode = GR_MODE_LANDING;
	adxlbuf_start_listen(status_cs);

	while(1)
	{
		int16_t id;
		int16_t raw[3];
		float g[3], acc;
		accelerations_t acc_data;
		size_t cnt = fscanf(f, "%hd, %f, %f, %f, %hd, %hd, %hd, ", &id, &g[0], &g[1], &g[2], &raw[0], &raw[1], &raw[2]);
		if (id >= 1268)
			break;

		acc_data.x = raw[0];
		acc_data.y = raw[1];
		acc_data.z = raw[2];
		adxlbuf_push(acc_data, &acc);
		printf("%d, %f, %d\n", id, acc, status);
	}

	return 0;
}

