/*
 * hooks.c
 *
 *  Created on: 1 июн. 2017 г.
 *      Author: snork
 */

//#if !defined(OS_USE_SEMIHOSTING) && !(__STDC_HOSTED__ == 0)

#include <_ansi.h>
#include <_syslist.h>
#include <errno.h>
#include <signal.h>

#include <stm32f10x_conf.h>

#include <diag/Trace.h>

void __initialize_hardware(void);

void __initialize_hardware(void)
{
	SystemCoreClockUpdate();

	// требуется freertos-ом (http://www.freertos.org/RTOS-Cortex-M3-M4.html)
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_4);
	NVIC_SetPriorityGrouping(0);
}


// ----------------------------------------------------------------------------

// When using retargetted configurations, the standard write() system call,
// after a long way inside newlib, finally calls this implementation function.

// Based on the file descriptor, it can send arrays of characters to
// different physical devices.

// Currently only the output and error file descriptors are tested,
// and the characters are forwarded to the trace device, mainly
// for demonstration purposes. Adjust it for your specific needs.

// For freestanding applications this file is not used and can be safely
// ignored.

ssize_t
_write (int fd, const char* buf, size_t nbyte);

ssize_t
_write (int fd __attribute__((unused)), const char* buf __attribute__((unused)),
	size_t nbyte __attribute__((unused)))
{
	return trace_write(buf, nbyte);
}

// ----------------------------------------------------------------------------

//#endif


