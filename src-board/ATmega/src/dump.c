#include "dump.h"

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

#include "librscs_config.h"

#pragma GCC diagnostic push // очень много варнингов на эту тему от фриртоса и fatfs
#pragma GCC diagnostic ignored "-Wpadded"
#include <ff.h>
#pragma GCC diagnostic pop

#include "rscs/uart.h"

#define OPERATION(OP) if(OP != RSCS_E_NONE) return;

static FATFS fs;
static bool fs_goodFile = false;
static FIL fs_file;

static inline void _initFile() {
	FRESULT res;
	size_t i = 0;
	// монтируем диск

	if (!fs_goodFile )
	{
		do {
			res = f_mount(&fs, "0", 1);
			i++;
			if (i >= 3)
			{
				return;
			}
		} while (res != FR_OK);

		// выбираем имя файлу
		char fname[15];
		for (i = 0; i < SIZE_MAX; i++)
		{
			fname[0] ='\0';
			sprintf(fname, "0:/gr_%u.bin", i);
			FILINFO info;
			if ((res = f_stat(fname, &info)) == FR_NO_FILE)
			{
				// отлично - такого файла нет!
				RSCS_DEBUG("dump file name '%s' ok\n", fname);
				break;
			}
			else if (res == FR_OK)
			{
				//RSCS_DEBUG("dump file name '%s' already exists\n", fname);
			}
			else
			{
				RSCS_DEBUG("dump fname error '%s': err: %d\n", fname, res);
				return;
			}
		}

		// предполагается что с именем файла мы всетаки определились раз мы тут
		if (FR_OK != (res = f_open(&fs_file, fname, FA_WRITE | FA_OPEN_ALWAYS | FA_OPEN_APPEND)))
		{
		  RSCS_DEBUG("open error = %d\n", res);
		}

		else fs_goodFile = true;
	}
}


void dump_init(void)
{
	_initFile();
}


void dump(const void * data, size_t datasize)
{
	rscs_uart_write(uart_data, data, datasize);
	_initFile();

	rscs_spi_set_clk(RSCS_SDCARD_SPI_CLK_FAST);
	if(fs_goodFile) {
		UINT dummy;
		FRESULT res;
		// пишем на флешку
		if ((res = f_write(&fs_file, data, datasize, &dummy)) != FR_OK)
		{
			RSCS_DEBUG("write error %d\n", res);
			fs_goodFile = false;
		}


		static int_fast32_t sync_counter = 0;
		if (sync_counter >= GR_DUMP_FFS_SYNC_PERIOD)
		{
			if ((res = f_sync(&fs_file)) != FR_OK)
			{
				RSCS_DEBUG("sync error %d\n", res);
				fs_goodFile = false;
			}
			sync_counter = 0;
		}
		sync_counter++;
	}
}

