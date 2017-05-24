//
// This file is part of the GNU ARM Eclipse distribution.
// Copyright (c) 2014 Liviu Ionescu.
//

// ----------------------------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>
#include "diag/Trace.h"

#include "adxl375.h"
#include "spiwork.h"
#include "gps_nmea.h"

#include "comm_def.h"

// ----------------------------------------------------------------------------
//
// STM32F1 empty sample (trace via DEBUG).
//
// Trace support is enabled by adding the TRACE macro definition.
// By default the trace messages are forwarded to the DEBUG output,
// but can be rerouted to any device or completely suppressed, by
// changing the definitions required in system/src/diag/trace_impl.c
// (currently OS_USE_TRACE_ITM, OS_USE_TRACE_SEMIHOSTING_DEBUG/_STDOUT).
//

// ----- main() ---------------------------------------------------------------

// Sample pragmas to cope with warnings. Please note the related line at
// the end of this function, used to pop the compiler diagnostics status.
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wmissing-declarations"
#pragma GCC diagnostic ignored "-Wreturn-type"

gr_status_t * gr_status;

gr_stm_status selfStatus = {
		.adxl_status = ADXL_STATUS_IDLE
};

void testuart_init(USART_TypeDef * USARTx) {
	 USART_InitTypeDef itd;
	 itd.USART_BaudRate = 9600;
	 itd.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	 itd.USART_Mode = USART_Mode_Tx | USART_Mode_Rx;
	 itd.USART_Parity = USART_Parity_No;
	 itd.USART_StopBits = USART_StopBits_1;
	 itd.USART_WordLength = USART_WordLength_8b;

	 USART_Init(USARTx, &itd);
}

int main(int argc, char* argv[])

{
  // At this stage the system clock should have already been configured
  // at high speed.

  // Infinite loop

	adxl375_init(10000);
	trace_printf("hello world\n");

	/*int16_t x, y, z;
	float x_g, y_g, z_g;
	while (1) {
		adxl375_GetGXYZ(&x, &y, &z, &x_g, &y_g, &z_g);
		trace_printf("%d  %d  %d     %f  %f  %f\n", x, y, z, x_g, y_g, z_g);
    }*/

	spiwork_init(adxl_buf);
	float lat = 0, lon = 0, alt = 0;
	bool hasfix;
	rscs_gps_t * gps = rscs_gps_init(USART2);
	volatile int i = 798690;
	while(1) {
		if(rscs_gps_read(gps, &lon, &lat, &alt, &hasfix) == 0) {
			trace_printf("%f  %f  %f    %d\n", lat, lon, alt, hasfix);
		}

		//USART_SendData(USART3, USART_ReceiveData(USART2));

		/*i--;i++;i--;rintf("%c\n", );
  		i++;i--;i++;
		i--;i++;i--;*/

	}
}

#pragma GCC diagnostic pop

// ----------------------------------------------------------------------------
