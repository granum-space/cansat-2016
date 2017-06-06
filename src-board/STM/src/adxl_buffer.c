
#include "adxl_buffer.h"

#define BUF_SIZE 1000
#define ELEMENT_SIZE 2
#define ACC_GROW 15

//adxlbuf_status status;

//static rscs_ringbuf_varsize_t * ringbuf;

int16_t x, y, z;
float x_g, y_g, z_g;

int k = 0;

static const accelerations_t * _read_from_head(size_t offset)
{
	void * elemInBufferVoid = rscs_ringbuf_varsize_see_from_head(ringbuf, offset);
	return (accelerations_t*)elemInBufferVoid;
}

// Инициализация модуля
void adxlbuf_init()
{
	ringbuf = rscs_ringbuf_varsize_init(BUF_SIZE, ELEMENT_SIZE);
	status = STATUS_SIMPLE_READ;
}

// Проверка - было ли обнаружено событие удара и был ли заблокирован буфер
bool adxlbuf_is_triggered(void)
{
	return status == STATUS_LOCKED;
}

// Чтение последнего элемента из буфера накопленных
void adxlbuf_readcurrent(accelerations_t * datapointptr)
{
	*datapointptr = *_read_from_head(0);
}

// Переход в активный режим
void adxlbuf_start_listen(gr_status_t systemstatus)
{
	if (systemstatus.mode == GR_MODE_LANDING)
		status = STATUS_ACTIVE;
}

/* Модуль начинает анализировать накапливаемые данные и может
 * войти в состояние блокировки по удару о Землю (в идеале) */
void adxlbuf_waits_lock(accelerations_t current_data)
{
	float x_g, y_g, z_g, acc;

	rscs_ringbuf_varsize_push(ringbuf, &current_data);

	x_g = (current_data.x)/2049.18033f;
	y_g = (current_data.y)/2049.18033f;
	z_g = (current_data.z)/2049.18033f;
	acc = sqrt(x_g*x_g + y_g*y_g + z_g*z_g);

	if (acc < 1) k++; // NOTE: Очень странное условие, что оно значит?
	if (k > 10) status = STATUS_LOCKED;
}

// Добавления нового измерения в накапливаемый маcсив
void adxlbuf_push(accelerations_t current_data, float *acc)
{
	float x_g, y_g, z_g;
	bool j = true;
	if (status == STATUS_LOCKED)
		return;

	rscs_ringbuf_varsize_push(ringbuf, &current_data);

	if (status == STATUS_SIMPLE_READ)
		return;

	x_g = (current_data.x)/2049.18033f;
	y_g = (current_data.y)/2049.18033f;
	z_g = (current_data.z)/2049.18033f;

	*acc = sqrt(x_g*x_g + y_g*y_g + z_g*z_g);

	if (*acc < 3) j = false;
		else j = true; // j = false, значит удара не было

	if (j) status = STATUS_WAIT_LOCK; // если был удар, то переключаем статус

	if (status != STATUS_WAIT_LOCK)
		return;

	adxlbuf_waits_lock(current_data);
}

// Сброс модуля в исходное состояние
void adxlbuf_reset()
{
	status = STATUS_SIMPLE_READ;
	// FIXME: Добавить clean в рингбуфер
}
