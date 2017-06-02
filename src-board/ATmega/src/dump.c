/*
 * dump.c
 *
 *  Created on: 05 окт. 2016 г.
 *      Author: snork
 */

#include "dump.h"

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

#define OPERATION(OP) if(OP != RSCS_E_NONE) return;

static FATFS fs;
static bool fs_mounted = false;
static bool fs_goodFile = false;
static FIL * fs_p;
static char * fs_filename;

static bool uart_inited = false;

static inline void _initFile() {
	FRESULT res;
	size_t i = 0;

	// монтируем диск
	if (!fs_mounted )
	  do {
		 res = f_mount(&fs, "0", 1);
		 i++;
		 if (i >= 3)
		 {
			 return;
		 }
	  } while (res != FR_OK);
	fs_mounted = true;

	// выбираем имя файлу
	char fname[15];
	for (i = 0; i < SIZE_MAX; i++)
	{
	  fname[0] ='\0';
	  sprintf(fname, "0:/%s%u.bin", fs_filename, i);
	  FILINFO info;
	  if ((res = f_stat(fname, &info)) == FR_NO_FILE)
	  {
		 // отлично - такого файла нет!
		 RSCS_DEBUG("dump file name '%s' ok\n", fname);
		 break;
	  }
	  else if (res == FR_OK)
	  {
		  RSCS_DEBUG("dump file name '%s' already exists\n", fname);
	  }
	  else
	  {
		  RSCS_DEBUG("dump fname error '%s': err: %d\n", fname, res);
		  return;
	  }

	}

   // предполагается что с именем файла мы всетаки определились раз мы тут
   if (FR_OK != (res = f_open(fs_p, fname, FA_WRITE | FA_OPEN_ALWAYS | FA_OPEN_APPEND)))
   {
	  RSCS_DEBUG("open error = %d\n", res);
   }

   else fs_goodFile = true;
}

static inline void _initUart() {
	uart_debug = rscs_uart_init(RSCS_UART_ID_UART0, 	RSCS_UART_FLAG_ENABLE_RX
													|RSCS_UART_FLAG_BUFFER_RX
													|RSCS_UART_FLAG_ENABLE_TX
													|RSCS_UART_FLAG_BUFFER_TX);
	rscs_uart_set_baudrate(uart_data, 9600);
	rscs_uart_set_character_size(uart_data, 8);
	rscs_uart_set_parity(uart_data, RSCS_UART_PARITY_NONE);
	rscs_uart_set_stop_bits(uart_data, RSCS_UART_STOP_BITS_ONE);
	uart_inited = true;
}

void dump_init(char * filename)
{
	fs_filename = filename;
	_initFile();
	_initUart();
}

void dump(const void * data, size_t datasize)
{
	rscs_uart_write(uart_debug, data, datasize);

	_initFile();

	if(fs_mounted & fs_goodFile) {
		UINT dummy;
		FRESULT res;
		// пишем на флешку
		if ((res = f_write(fs_p, data, datasize, &dummy)) != FR_OK)
		  RSCS_DEBUG("write error %d\n", res);

		static int_fast32_t sync_counter = 0;
		if (sync_counter >= GR_DUMP_FFS_SYNC_PERIOD)
		{
		  if ((res = f_sync(fs_p)) != FR_OK)
			 RSCS_DEBUG("sync error %d\n", res);
		  sync_counter = 0;
		}
		sync_counter++;
	}
}

