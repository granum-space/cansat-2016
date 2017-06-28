
#include "adxl_buffer.h"

#include "FreeRTOS.h"
#include "semphr.h"

#include "gr_config.h"

#include "string.h"

#include "ringbuf_acc.h"

#define ACC_GROW 15

static StaticSemaphore_t _adxl_mutex_buf;
static xSemaphoreHandle _adxl_buf_mutex;

typedef enum {
	STATUS_SIMPLE_READ,		//!< Читаем ускорения, но не анализируем их
	STATUS_ACTIVE,			//!< Читаем ускорения, анализируем их и принимаем решение о посадке
	STATUS_WAIT_LOCK,		//!< Мы уже почувствовали удар о Землю и сейчас накапливаем данные о нем
	STATUS_LOCKED			//!< Процесс входа в Землю закончился, не принимаем новые данные
} adxlbuf_status;

static adxlbuf_status status;

static rscs_ringbuf_t * adxl_buf;

int k = 0;

static accelerations_t _last_acc;

static const accelerations_t * _read_from_head(size_t offset)
{
	rscs_ringbuf_acc_see_from_head(adxl_buf, &_last_acc, offset);
	return &_last_acc;
}

// Инициализация модуля
void adxlbuf_init()
{
	adxl375_init();

	_adxl_buf_mutex = xSemaphoreCreateMutexStatic(&_adxl_mutex_buf);

	xSemaphoreTake(_adxl_buf_mutex, 0);
	adxl_buf = rscs_ringbuf_acc_init(ACC_BUF_SIZE);
	xSemaphoreGive(_adxl_buf_mutex);

	status = STATUS_SIMPLE_READ;
}

// Проверка x_g- было ли обнаружено событие удара и был ли заблокирован буфер
bool adxlbuf_is_triggered(void)
{
	xSemaphoreTake(_adxl_buf_mutex, 0);
	bool is = status == STATUS_LOCKED;
	xSemaphoreGive(_adxl_buf_mutex);

	return is;
}

// Чтение последнего элемента из буфера накопленных
void adxlbuf_readcurrent(accelerations_t * datapointptr)
{
	xSemaphoreTake(_adxl_buf_mutex, 0);
	*datapointptr = *_read_from_head(0);
	xSemaphoreGive(_adxl_buf_mutex);
}

// Переход в активный режим
void adxlbuf_start_listen(gr_status_t * systemstatus)
{
	if (systemstatus->mode == GR_MODE_LANDING) {
		xSemaphoreTake(_adxl_buf_mutex, 0);
		status = STATUS_ACTIVE;
		xSemaphoreGive(_adxl_buf_mutex);
	}
}


// Добавления нового измерения в накапливаемый маcсив
void adxlbuf_update(void)
{
	float x_g, y_g, z_g;
	accelerations_t accelerations;

	if (status == STATUS_LOCKED)
		goto end;

	adxl375_GetGXYZ(&accelerations.x, &accelerations.y, &accelerations.z, &x_g, &y_g, &z_g);

	xSemaphoreTake(_adxl_buf_mutex, 0);
	rscs_ringbuf_acc_push(adxl_buf, &accelerations);

	if (status == STATUS_SIMPLE_READ)
		goto end;

	float acc = sqrt(x_g*x_g + y_g*y_g + z_g*z_g);

	if (acc >= 3.0)
	{
		// Если был удар
		 status = STATUS_WAIT_LOCK; // если был удар, то переключаем статус
		 k = 0;
	}

	if (status != STATUS_WAIT_LOCK)
		goto end;

	if (acc < 1) k++;
	if (k > 10) status = STATUS_LOCKED;

end:
	xSemaphoreGive(_adxl_buf_mutex);
}

// Сброс модуля в исходное состояние
void adxlbuf_reset()
{
	xSemaphoreTake(_adxl_buf_mutex, 0);
	status = STATUS_SIMPLE_READ;
	// FIXME: Добавить clean в рингбуфер
	xSemaphoreGive(_adxl_buf_mutex);
}

int8_t adxlbuf_see_from_tail(size_t shift, void * result) {

	xSemaphoreTake(_adxl_buf_mutex, 0);

	int8_t retval = rscs_ringbuf_acc_see_from_tail(adxl_buf, (accelerations_t *) result, shift);

	xSemaphoreGive(_adxl_buf_mutex);

	return retval;
}
