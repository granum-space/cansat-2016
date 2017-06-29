/* */

#ifndef GPS_NMEA_H_
#define GPS_NMEA_H_

#include "gr_config.h"

void gps_task(void * args);

extern gr_stm_gps_state_t gps_state;

#endif /* GPS_NMEA_H_ */
