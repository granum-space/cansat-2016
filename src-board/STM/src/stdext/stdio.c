#include "stdio.h"

/*static int _rscs_uart_stream_read(FILE * stream)
{
	void * userdata = fdev_get_udata(stream);
	USART_TypeDef * bus = (USART_TypeDef *)userdata;

	return USART_ReceiveData(bus);
}


static int _rscs_uart_stream_write(char symbol, FILE * stream)
{
	void * userdata = fdev_get_udata(stream);
	USART_TypeDef * bus = (USART_TypeDef *)userdata;

	USART_SendData(bus, symbol);
	return 0;
}


FILE * rscs_make_uart_stream(USART_TypeDef bus)
{
	FILE * retval = fdevopen(_rscs_uart_stream_write, _rscs_uart_stream_read);
	fdev_set_udata(retval, bus);

	return retval;
}*/

USART_TypeDef * bus;

int fputc(int ch, FILE *f) {
	USART_SendData(bus, ch);
	return 0;
}

int fgetc(FILE *f) {
	return USART_ReceiveData(bus);
}
