/*
 * adxl375.c
 *
 *  Created on: 31 марта 2017 г.
 *      Author: developer
 */

#include <stm32f10x_conf.h>

#include <stdbool.h>
#include <math.h>

#include "adxl375.h"
#include "ringbuf.h"

#define ADXL_SPI SPI1

/* Команды на чтение и запись */
#define ADXL375_SPI_READ        (1 << 7)	//бит на чтение
#define ADXL375_SPI_WRITE       (0 << 7)	//бит на запись
#define ADXL375_SPI_MB          (1 << 6)	//бит чтение/запись нескольких байт (в противном случае только одного байта)

/* ADXL375 Адреса регистров */
#define ADXL375_DEVID			0x00 // R	Device ID
#define ADXL375_OFSX            0x1E // R/W X-axis offset.
#define ADXL375_OFSY            0x1F // R/W Y-axis offset.
#define ADXL375_OFSZ            0x20 // R/W Z-axis offset.
#define ADXL375_BW_RATE         0x2C // R/W Data rate and power mode control.
#define ADXL375_POWER_CTL       0x2D // R/W Power saving features control.
#define ADXL375_INT_ENABLE      0x2E // R/W Interrupt enable control.
#define ADXL375_INT_MAP         0x2F // R/W Interrupt mapping control.
#define ADXL375_INT_SOURCE      0x30 // R   Source of interrupts.
#define ADXL375_DATA_FORMAT     0x31 // R/W Data format control.
#define ADXL375_DATAX0          0x32 // R   X-Axis Data 0.
#define ADXL375_DATAX1          0x33 // R   X-Axis Data 1.
#define ADXL375_DATAY0          0x34 // R   Y-Axis Data 0.
#define ADXL375_DATAY1          0x35 // R   Y-Axis Data 1.
#define ADXL375_DATAZ0          0x36 // R   Z-Axis Data 0.
#define ADXL375_DATAZ1          0x37 // R   Z-Axis Data 1.
#define ADXL375_FIFO_CTL        0x38 // R/W FIFO control.
#define ADXL375_FIFO_STATUS     0x39 // R   FIFO status.

/* ADXL375_POWER_CTL Определение регистра */
#define ADXL375_PCTL_LINK       (1 << 5)
#define ADXL375_PCTL_AUTO_SLEEP (1 << 4)
#define ADXL375_PCTL_MEASURE    (1 << 3)
#define ADXL375_PCTL_SLEEP      (1 << 2)
#define ADXL375_PCTL_WAKEUP(x)  ((x) & 0x3)

/* ADXL375_INT_ENABLE / ADXL375_INT_MAP / ADXL375_INT_SOURCE Определение регистра */
#define ADXL375_DATA_READY      (1 << 7)
#define ADXL375_SINGLE_TAP      (1 << 6)
#define ADXL375_DOUBLE_TAP      (1 << 5)
#define ADXL375_ACTIVITY        (1 << 4)
#define ADXL375_INACTIVITY      (1 << 3)
#define ADXL375_FREE_FALL       (1 << 2)
#define ADXL375_WATERMARK       (1 << 1)
#define ADXL375_OVERRUN         (1 << 0)

/* ADXL375_DATA_FORMAT Определение регистра */
#define ADXL375_SELF_TEST       (1 << 7)
#define ADXL375_SPI_BIT             (1 << 6)
#define ADXL375_INT_INVERT      (1 << 5)
#define ADXL375_FULL_RES        (1 << 3)
#define ADXL375_JUSTIFY         (1 << 2)
#define ADXL375_RANGE(x)        ((x) & 0x3)

/* ADXL375_BW_RATE Определение регистра */
#define ADXL375_LOW_POWER       (1 << 4)
#define ADXL375_RATE(x)         ((x) & 0xF)


/* ADXL375 Full Resolution Scale Factor */
#define ADXL375size_t bufsize_SCALE_FACTOR    		0.0039
#define ADXL375_OFFSET_SCALE_FACTOR		15.6

static void hw_init();
static void sendByte(int byte);
static int readByte(void);
int adxl375_getRegisterValue(uint8_t registerAddress, uint8_t * read_data);
int adxl375_setRegisterValue(uint8_t registerAddress, uint8_t registerValue);

adxl375_e_t adxl375_init() {

	hw_init();

	uint8_t devid = 0;
	adxl375_getRegisterValue(0x00, &devid);
	if(devid != 229) return ADXL375_E_DEVID;

	adxl375_setRegisterValue(ADXL375_BW_RATE,		ADXL375_RATE_100HZ);	//LOW_POWER off, 100Гц (по умолчанию)
	adxl375_setRegisterValue(ADXL375_DATA_FORMAT,	ADXL375_RANGE_2G |				//диапазон 2g (по умолчанию)
					ADXL375_FULL_RES														//FULL_RES = 1
																								//JUSTIFY = 0 (выравнивание бит данных по правому краю)
																							);
	adxl375_setRegisterValue(ADXL375_POWER_CTL,	ADXL375_PCTL_MEASURE); //переводит акселерометр из режима ожидания в режим измерения

	return ADXL375_E_NONE;
}

/* УСТАНОВКА ПРЕДЕЛОВ ИЗМЕРЕНИЙ*/
void adxl375_set_range(adxl375_range_t range)
{
	uint8_t data = 0;

	adxl375_getRegisterValue(ADXL375_DATA_FORMAT, &data);
	data = (data & 0x3) | ADXL375_RANGE(range);	//очищаем 2 младших бита регистра BW_RATE и записываем новое значение
	adxl375_setRegisterValue(ADXL375_DATA_FORMAT, data);
}


/* УСТАНОВКА ЧАСТОТЫ ИЗМЕРЕНИЙ*/
void adxl375_set_rate(adxl375_rate_t rate)
{
	uint8_t data = 0;

	adxl375_getRegisterValue(ADXL375_BW_RATE, &data);
	data = (data & 0xF) | ADXL375_RATE(rate);	//очищаем 4 младших бита регистра BW_RATE и записываем новое значение
	adxl375_setRegisterValue(ADXL375_BW_RATE, data);
}


/* УСТАНОВКА СМЕЩЕНИЯ РЕЗУЛЬТАТОВ ПО ОСЯМ X, Y, Z*/
void adxl375_set_offset(float mg_x, float mg_y, float mg_z)
{
	int8_t ofs_x;
	int8_t ofs_y;
	int8_t ofs_z;

	ofs_x = (int8_t) round(mg_x / ADXL375_OFFSET_SCALE_FACTOR);
	ofs_y = (int8_t) round(mg_y / ADXL375_OFFSET_SCALE_FACTOR);
	ofs_z = (int8_t) round(mg_z / ADXL375_OFFSET_SCALE_FACTOR);

	adxl375_setRegisterValue(ADXL375_OFSX, ofs_x);
	adxl375_setRegisterValue(ADXL375_OFSX, ofs_y);
	adxl375_setRegisterValue(ADXL375_OFSX, ofs_z);
}


/* ЧТЕНИЕ ДАННЫХ ADXL375 В БИНАРНОМ ВИДЕ*/
void adxl375_read(int16_t * x, int16_t * y, int16_t * z)
{
	uint8_t readBuffer[6]   = {0};
	uint8_t firstRegAddress = ADXL375_SPI_READ | ADXL375_SPI_MB | ADXL375_DATAX0;

	GPIO_ResetBits(GPIOA, GPIO_Pin_4); //CS в 0
	sendByte(firstRegAddress);
	for(uint32_t i = 0; i < sizeof(readBuffer); i++) {
		readBuffer[i] = readByte();
	}
	GPIO_SetBits(GPIOA, GPIO_Pin_4); //CS в 1


	*x = (readBuffer[1] << 8) | readBuffer[0];
	*y = (readBuffer[3] << 8) | readBuffer[2];
	*z = (readBuffer[5] << 8) | readBuffer[4];
}

void adxl375_cast_to_G(int16_t x, int16_t y, int16_t z, float * x_g, float * y_g, float * z_g) {
	/*uint8_t  range = 1;

	range = (1 << device->range);

	if(x >> 9) *x_g = -(float)(!x + 1);	//если 10-й бит равен 1, то число отрицательное
	if(x >> 9) *y_g = -(float)(!y + 1);
	if(x >> 9) *z_g = -(float)(!z + 1);

	*x_g = (*x_g) * ADXL375_SCALE_FACTOR * range;
	*y_g = (*y_g) * ADXL375_SCALE_FACTOR * range;
	*z_g = (*z_g) * ADXL375_SCALE_FACTOR * range;*/

	*x_g = x * 0.050f;
	*y_g = y * 0.050f;
	*z_g = z * 0.050f;
}

void adxl375_GetGXYZ(int16_t* x, int16_t* y, int16_t* z, float* x_g, float* y_g, float* z_g)
{
	*x = 76;
	*y = 89;
	*z = 12;

	adxl375_read(x, y, z);

	adxl375_cast_to_G(*x, *y, *z, x_g, y_g, z_g);
}

static void hw_init()
{
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_SPI1, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);

	SPI_InitTypeDef spiconf;
	spiconf.SPI_CRCPolynomial = 7; // Отключено (так Василий сказал)
	spiconf.SPI_DataSize = SPI_DataSize_8b;
	spiconf.SPI_NSS = SPI_NSS_Soft;
	spiconf.SPI_Direction = SPI_Direction_2Lines_FullDuplex;
	spiconf.SPI_FirstBit = SPI_FirstBit_MSB;
	spiconf.SPI_Mode = SPI_Mode_Master;
	spiconf.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_16;
	spiconf.SPI_CPHA = SPI_CPHA_2Edge;
	spiconf.SPI_CPOL = SPI_CPOL_High;

	SPI_Init(ADXL_SPI, &spiconf);

	GPIO_InitTypeDef portInit;
	portInit.GPIO_Mode = GPIO_Mode_Out_PP;
	portInit.GPIO_Speed = GPIO_Speed_50MHz;
	portInit.GPIO_Pin = GPIO_Pin_4; //CS
	GPIO_Init(GPIOA, &portInit);

	portInit.GPIO_Mode = GPIO_Mode_AF_PP;
	portInit.GPIO_Pin = GPIO_Pin_5 | GPIO_Pin_7; //MOSI, SCLK
	GPIO_Init(GPIOA, &portInit);

	portInit.GPIO_Pin = GPIO_Pin_6 | GPIO_Pin_3;// MISO, INT
	portInit.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_Init(GPIOA, &portInit);

	GPIO_SetBits(GPIOA, GPIO_Pin_4);
	SPI_Cmd(ADXL_SPI, ENABLE);
	SPI_NSSInternalSoftwareConfig(ADXL_SPI, SPI_NSSInternalSoft_Set); //ВНнутренний CS для модуля
}


static void sendByte(int byte){
	SPI_I2S_SendData(ADXL_SPI, byte);

	bool notYet = true;
	while(notYet) {
		__disable_irq();
		notYet = SPI_I2S_GetFlagStatus(ADXL_SPI, SPI_I2S_FLAG_RXNE) == RESET;
		__enable_irq();
	}

	volatile int x = SPI_I2S_ReceiveData(ADXL_SPI);
	(void)x;
}

static int readByte(void) {
	SPI_I2S_SendData(ADXL_SPI, 0xFFFF);

	bool notYet = true;
	while(notYet) {
		__disable_irq();
		notYet = SPI_I2S_GetFlagStatus(ADXL_SPI, SPI_I2S_FLAG_RXNE) == RESET;
		__enable_irq();
	}

	return SPI_I2S_ReceiveData(ADXL_SPI);

}

int adxl375_getRegisterValue(uint8_t registerAddress, uint8_t * read_data) {
	GPIO_ResetBits(GPIOA, GPIO_Pin_4);// CS в 0

	sendByte(registerAddress);
	*read_data = readByte();

	GPIO_SetBits(GPIOA, GPIO_Pin_4);// CS в 1
	return 0;
}

int adxl375_setRegisterValue(uint8_t registerAddress, uint8_t registerValue) {
	GPIO_ResetBits(GPIOA, GPIO_Pin_4);// CS в 0

	sendByte(registerAddress);
	sendByte(registerValue);

	GPIO_SetBits(GPIOA, GPIO_Pin_4);// CS в 1
	return 0;
}
