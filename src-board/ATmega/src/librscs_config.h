#ifndef CONFIG_H_
#define CONFIG_H_

#include <avr/io.h>



// Шаблон файла конфигурации бибилиотеки - его следует переименовать в
// rscs_config.h и поместить куда-то, откуда библиотека сможет его заинклюдить



// ========================================================
// Настройки модуля ADXL345
// ========================================================
// Настройка пина CS
#define ADXL345_CS_DDR			DDRB	// регистр DDR порта, на котором расположен CS пин
#define ADXL345_CS_PORT			PORTB	// регистр PORT порта, на котором расположен CS пин
#define ADXL345_CS_PIN			4		// номер пина CS в порту



// ========================================================
// Установка режима debug (отладочные сообщения и т.д.)
// Для включения раскомментируйте
// ========================================================

#define RSCS_DEBUGMODE 1

// ========================================================
// настройки GPS
// ========================================================
// размер буфера для накопления сообщения
#define RSCS_GPS_BUFFER_SIZE (100)
// очевидные настройки уарта
#define RSCS_GPS_UART_BAUD_RATE (9600)
#define RSCS_GPS_UART_STOP_BITS (1)
#define RSCS_GPS_UART_PARITY (RSCS_UART_PARITY_NONE)


// ========================================================
// Настройки SPI - драйвера соответствующего контроллера атмеги
// (пока поддерживается только режим мастера)
// ========================================================
// Настройки пинов зависят от микроконтроллера - пины SPI модуля нужно конфигурировать руками...
#ifdef __AVR_ATmega328P__

#define RSCS_SPI_PORTX	(PORTB) // регистр PORT порта на котором висят все пины SPI
#define RSCS_SPI_DDRX	(DDRB)	// регистр DDR порта на котором висят все пины SPI
#define RSCS_SPI_MISO	(4)		// номер MISO пина
#define RSCS_SPI_MOSI	(3)		// номер MOSI пина
#define RSCS_SPI_SCK	(5)		// номер SCK пина
#define RSCS_SPI_SS 	(2)		// номер аппаратного CHIP_SELECT пина

#elif defined __AVR_ATmega128__

#define RSCS_SPI_PORTX	(PORTB)
#define RSCS_SPI_DDRX	(DDRB)
#define RSCS_SPI_MISO	(3)
#define RSCS_SPI_MOSI	(2)
#define RSCS_SPI_SCK	(1)
#define RSCS_SPI_SS		(0)

#endif



// ========================================================
// Настройки I2C - драйвера TWI контроллера атмеги
// (пока поддерживается только режим мастера)
// ========================================================
// Таймаут на I2C формируется исходя из двух параметров: длительность такта ожидания и количество этих тактов.
// Когда I2C модуль получает команду на создание какого-либо события
// его драйвер ожидает (delay) один такт ожидания, а затем проверяет -
// было ли нужное событие таки создано?. Если да - драйвер сообщает об этом пользователю.
// Если нет - модуль уходит на ожидание на еще один такт и процесс повторяется пока не будет
// исчерпано заданное количество тактов ожидания
// Длительность такта ожидания Таймаута на I2C операции (в микросекундах)
#define RSCS_I2C_TIMEOUT_US		(100)
// Количетво тактов ожидания таймаута на I2C операции
#define RSCS_I2C_TIMEOUT_CYCLES	(10)



// ========================================================
// Настройки ONE_WIRE - модуля взаимодействия по ONEWIRE шине
// ========================================================
// Регистр PORT на котором расположен пин onewire шины
#define RSCS_ONEWIRE_REG_PORT (PORTC)
// Регистр PIN на котором расположен пин onewire шины
#define RSCS_ONEWIRE_REG_PIN  (PINC)
// Регистр DDR на котором расположен пин onewire шины
#define RSCS_ONEWIRE_REG_DDR  (DDRC)
// Битовая маска, задающая тот самый пин на порту
#define RSCS_ONEWIRE_PIN_MASK (1 << 0)



// ========================================================
// Настройки модуля SD - модуля работы с SD картами
// ========================================================
// Частота SPI модуля SD карты, которую он устанавливает при вызове rscs_sd_spi_setup
#define RSCS_SDCARD_SPI_CLK_SLOW (16000)
// Частота SPI модуля SD карты, которую он устанавливает при вызове rscs_sd_spi_setup_slow
#define RSCS_SDCARD_SPI_CLK_FAST (400)



// ========================================================
// Настройки модуля SERVO - модуля управления сервомашинками
// ========================================================
// модуль SERVO всегда использует таймер 1. Если это таймер занят под другие задачи, использовать модуль SERVO не получится
// Настройки зависят от микроконтроллера - это пины, на которые выведены каналы захвата-сравнения таймера 1
#ifdef __AVR_ATmega328P__

#define RSCS_SERVO_PORT (PORTB)
#define RSCS_SERVO_PORT_DDR (DDRB)

#elif defined __AVR_ATmega128__

#define RSCS_SERVO_PORT (PORTA)
#define RSCS_SERVO_PORT_DDR (DDRA)
// TODO: Посмотреть в даташите
#endif



// ========================================================
// Настройки модуля UART
// ========================================================
// Использовать ли буферизацию
#define RSCS_UART_USEBUFFERS // Добавить код для поддержки циклических буферов в UART
#define RSCS_UART_BUFSIZE_RX 50 // размер буфера на RX
#define RSCS_UART_BUFSIZE_TX 50 // размер буфера на TX



// ========================================================
// Настройки модуля BMP280
// ========================================================
//Выбор интерфейса обмена (SPI или I2C) (раскомментируйте нужный)
#define RSCS_BMP280_IF_I2C
//#define RSCS_BMP280_IF_SPI

#ifdef RSCS_BMP280_IF_SPI
// Настройки пина CS
#define RSCS_BMP280_CSDDR DDRB
#define RSCS_BMP280_CSPORT PORTB
#define RSCS_BMP280_CSPIN 4
// Частота обмена в килогерцах
#define RSCS_BMP280_SPI_FREQ_kHz 64

#endif //RSCS_BMP280_IF == SPI

// ========================================================
// Настройки дебажных макросов
// ========================================================
#ifdef RSCS_DEBUGMODE

#define RSCS_DEBUG_INIT(UART) stdin = stdout = rscs_make_uart_stream(UART); //инициализация дебага, принимает rscs_uart_bus_t *

#define RSCS_DEBUG printf //предполагается писать этот макрос вместо дебажного printf

#else

#define RSCS_DEBUG_INIT(UART) (void) UART;

#define RSCS_DEBUG (void) //и в случае отключения дебага просто не делать ничего

#endif //#ifdef RSCS_DEBUGMODE



#endif /* CONFIG_H_ */
