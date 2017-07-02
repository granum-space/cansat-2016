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

static int _to_drop = 0;
static gr_telemetry_adxl375_t _acc_pack;

void stm32_initExchange() {
	GR_STM_INIT_CS;

	_acc_pack.marker = 0xFA7B;
	_acc_pack.request.offset = 0;
	_acc_pack.request.size = sizeof(_acc_pack.data) / sizeof(_acc_pack.data[0]);
}

void stm32_updateSTMStatus(){
	rscs_spi_set_clk(GR_STM_SPI_FREQ_kHz);
	GR_STM_SELECT

	_spi_do_delay(AMRQ_SELFSTATUS_Tx);

	_spi_read_delay(&gr_stm_state, sizeof(gr_stm_state), 0xff);

	GR_STM_UNSELECT

	uint16_t marker = GR_STM_STATE_MARKER;
	dump(&marker, sizeof(marker));
	dump(&gr_stm_state, sizeof(gr_stm_state));
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

	if(_to_drop < (GR_STM_ACCBUF_SIZE * 3)){

		GR_STM_SELECT

		_acc_pack.request.offset = _to_drop % GR_STM_ACCBUF_SIZE;
		_acc_pack.try = (_to_drop / GR_STM_ACCBUF_SIZE) + 1;

		_spi_do_delay(AMRQ_ACC_DATA);
		_spi_write_delay(&( _acc_pack.request ), sizeof(_acc_pack.request));

		_spi_read_delay(_acc_pack.data, _acc_pack.request.size * sizeof(accelerations_t), 0xFF);

		GR_STM_UNSELECT

		_acc_pack.checksumm = 0;

		_acc_pack.checksumm = gr_checksumm_calculate(&_acc_pack, sizeof(gr_telemetry_adxl375_t));

		dump(&_acc_pack,  sizeof(gr_telemetry_adxl375_t));

		_to_drop += _acc_pack.request.size;
	}
}
