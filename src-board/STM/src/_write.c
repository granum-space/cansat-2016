//
// This file is part of the µOS++ III distribution.
// Copyright (c) 2014 Liviu Ionescu.
//

// Do not include on semihosting and when freestanding
#if !defined(OS_USE_SEMIHOSTING) && !(__STDC_HOSTED__ == 0)

// ----------------------------------------------------------------------------

#include <errno.h>
#include "diag/Trace.h"

#include <stm32f10x_usart.h>
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
	if (fd == 1 || fd == 2) {
		for(size_t i = 0; i < nbyte; i++) {
			USART_SendData(USART3, buf[i]);
			while(1){
				if(USART_GetFlagStatus(USART3, USART_FLAG_TXE)) break;
			}
		}
    }

	errno = ENOSYS;
	return -1;
}

// ----------------------------------------------------------------------------

#endif // !defined(OS_USE_SEMIHOSTING) && !(__STDC_HOSTED__ == 0)
