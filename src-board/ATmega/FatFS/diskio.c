/*-----------------------------------------------------------------------*/
/* Low level disk I/O module skeleton for FatFs     (C)ChaN, 2016        */
/*-----------------------------------------------------------------------*/
/* If a working storage control module is available, it should be        */
/* attached to the FatFs via a glue function rather than modifying it.   */
/* This is an example of glue functions to attach various exsisting      */
/* storage control modules to the FatFs module with a defined API.       */
/*-----------------------------------------------------------------------*/

#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include <stdio.h>

#include "diskio.h"     /* FatFs lower layer API */

#include <rscs/sdcard.h>

#include <granum_globals.h>
#include <granum_config.h>

/* Definitions of physical drive number for each drive */
//#define DEV_RAM     0   /* Example: Map Ramdisk to physical drive 0 */
#define DEV_MMC     0   /* Example: Map MMC/SD card to physical drive 1 */
//#define DEV_USB     2   /* Example: Map USB MSD to physical drive 2 */

int gr_sd_last_err = 0;

static int _mmc_status = STA_NOINIT;
static rscs_sdcard_t * _sdcard = NULL;

/*-----------------------------------------------------------------------*/
/* Get Drive Status                                                      */
/*-----------------------------------------------------------------------*/

DSTATUS disk_status (
    BYTE pdrv       /* Physical drive nmuber to identify the drive */
)
{
   if (DEV_MMC != pdrv)
      return STA_NODISK;

   return (DSTATUS)_mmc_status;
}



/*-----------------------------------------------------------------------*/
/* Inidialize a Drive                                                    */
/*-----------------------------------------------------------------------*/

DSTATUS disk_initialize (
    BYTE pdrv               /* Physical drive nmuber to identify the drive */
)
{
   if (DEV_MMC != pdrv)
      return STA_NODISK;

   if (_sdcard == NULL)
	   _sdcard = rscs_sd_init(&GR_SD_CS_DDRREG, &GR_SD_CS_PORTREG, GR_SD_CS_PIN_MASK);

   gr_sd_last_err = rscs_sd_startup(_sdcard);

   if (RSCS_E_NONE == gr_sd_last_err)
      _mmc_status &= ~STA_NOINIT;

   return (DSTATUS)_mmc_status;
}

/*-----------------------------------------------------------------------*/
/* Read Sector(s)                                                        */
/*-----------------------------------------------------------------------*/

DRESULT disk_read (
    BYTE pdrv,      /* Physical drive nmuber to identify the drive */
    BYTE *buff,     /* Data buffer to store read data */
    DWORD sector,   /* Start sector in LBA */
    UINT count      /* Number of sectors to read */
)
{
   if (pdrv != DEV_MMC)
      return RES_PARERR;

   if (_mmc_status & (STA_NOINIT | STA_NODISK))
      return RES_NOTRDY;

   gr_sd_last_err = rscs_sd_block_read(_sdcard, sector, buff, count);
   DRESULT retval = RES_OK;
   if (gr_sd_last_err)
      retval = RES_ERROR;

   return retval;
}



/*-----------------------------------------------------------------------*/
/* Write Sector(s)                                                       */
/*-----------------------------------------------------------------------*/

DRESULT disk_write (
    BYTE pdrv,          /* Physical drive nmuber to identify the drive */
    const BYTE *buff,   /* Data to be written */
    DWORD sector,       /* Start sector in LBA */
    UINT count          /* Number of sectors to write */
)
{

   if (pdrv != DEV_MMC)
      return RES_PARERR;

   if (_mmc_status & (STA_NOINIT | STA_NODISK))
      return RES_NOTRDY;

   gr_sd_last_err = rscs_sd_block_write(_sdcard, sector, buff, count);
   DRESULT retval = RES_OK;
   if (gr_sd_last_err != RSCS_E_NONE)
      retval = RES_ERROR;

   return retval;
}


/*-----------------------------------------------------------------------*/
/* Miscellaneous Functions                                               */
/*-----------------------------------------------------------------------*/

DRESULT disk_ioctl (
    BYTE pdrv,      /* Physical drive nmuber (0..) */
    BYTE cmd,       /* Control code */
    void *buff      /* Buffer to send/receive control data */
)
{
   (void)buff;

   if (pdrv != DEV_MMC)
      return RES_PARERR;

   if (CTRL_SYNC == cmd)
      return RES_OK;
   else
      return RES_ERROR; // не должна быть вызвана эта функция.
}

