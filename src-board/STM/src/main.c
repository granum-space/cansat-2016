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
	volatile int i = 798690;
	while(1) {
		i--;i++;i--;
		i++;i--;i++;
		i--;i++;i--;
	}
}

#pragma GCC diagnostic pop

// ----------------------------------------------------------------------------
