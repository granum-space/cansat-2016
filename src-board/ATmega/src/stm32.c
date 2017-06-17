#include <stdlib.h>

#include "granum_config.h"
#include "comm_def.h"
#include "granum_globals.h"

#include "rscs/spi.h"

#include "dump.h"

void stm32_initExchange() {
	GR_STM_INIT_CS;
}

void stm32_updateSTMStatus(){
	GR_STM_SELECT

	rscs_spi_do(AMRQ_SELFSTATUS_Tx);

	rscs_spi_read(&gr_status_stm, sizeof(gr_status_stm), 0xff);

	GR_STM_UNSELECT
}

void stm32_transmitSystemStatus() {
	GR_STM_SELECT

	rscs_spi_do(AMRQ_STATUS_Rx);

	rscs_spi_write(&gr_status, sizeof(gr_status));

	GR_STM_UNSELECT
}

void stm32_getAccelerations() {

	int step = 100;
	gr_telemetry_adxl375_t * packet = malloc( sizeof(gr_telemetry_adxl375_t) + 100 );
	for(uint32_t i = 0; i < GR_STM_ACCBUF_SIZE; i += step + 1) {
		GR_STM_SELECT

		rscs_spi_do(AMRQ_ACC_DATA);
		rscs_spi_do(i);
		rscs_spi_do(i + step);

		rscs_spi_read(packet->data, step, 0xFF);

		GR_STM_UNSELECT

		dump(packet->data, step);
	}
}
