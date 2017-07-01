#include <stdlib.h>

#include <util/delay.h>

#include "granum_config.h"
#include "comm_def.h"
#include "granum_globals.h"

#include "rscs/spi.h"
#include "sensors.h"

#include "dump.h"

uint8_t _spi_do_delay(uint8_t value)
{
	uint8_t retval = rscs_spi_do(value);

	_delay_us(GR_STM_SPI_PAUSE_uS);

	return retval;
}

void _spi_read_delay(void * read_buffer, size_t buffer_size, uint8_t dummy)
{
	for (size_t i = 0; i < buffer_size; i++) {
		((uint8_t*)read_buffer)[i] = _spi_do_delay(dummy);
	}
}


void _spi_write_delay(const void * write_buffer, size_t buffer_size)
{
	for (size_t i = 0; i < buffer_size; i++) {
		_spi_do_delay(((const uint8_t*)write_buffer)[i]);
	}
}

void stm32_initExchange() {
	GR_STM_INIT_CS;
}

void stm32_updateSTMStatus(){
	rscs_spi_set_clk(GR_STM_SPI_FREQ_kHz);
	GR_STM_SELECT

	_spi_do_delay(AMRQ_SELFSTATUS_Tx);

	_spi_read_delay(&gr_stm_state, sizeof(gr_stm_state), 0xff);

	GR_STM_UNSELECT
}

void stm32_transmitSystemStatus() {
	rscs_spi_set_clk(GR_STM_SPI_FREQ_kHz);
	GR_STM_SELECT

	_spi_do_delay(AMRQ_STATUS_Rx);

	_spi_write_delay(&gr_status, sizeof(gr_status));

	GR_STM_UNSELECT
}

void stm32_getAccelerations() {
	rscs_spi_set_clk(GR_STM_SPI_FREQ_kHz);

	gr_telemetry_adxl375_t * packet = malloc( sizeof(gr_telemetry_adxl375_t) + GR_STM_ACCBUF_SIZE * sizeof(accelerations_t) );
	packet->request.offset = 0;
	packet->request.size = GR_STM_SPI_FREQ_kHz;

	for( 	;
			packet->request.offset <= GR_STM_ACCBUF_SIZE;
			packet->request.offset += packet->request.size + 1) {

		GR_STM_SELECT

		_spi_do_delay(AMRQ_ACC_DATA);
		_spi_write_delay(&( packet->request ), sizeof(packet->request));

		_spi_read_delay(packet->data, packet->request.size, 0xFF);

		GR_STM_UNSELECT

		packet->checksumm = 0;

		packet->checksumm = gr_checksumm_calculate(packet, sizeof(gr_telemetry_adxl375_t) + GR_STM_ACCBUF_SIZE * sizeof(accelerations_t) );

		dump(packet,  sizeof(gr_telemetry_adxl375_t) + GR_STM_ACCBUF_SIZE * sizeof(accelerations_t));
	}
}
