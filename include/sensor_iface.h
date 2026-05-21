//=============================================================================
// sensor_iface.h - Compile-time-selected angle/speed source.
//
// ISR-critical: backend functions are static inline, picked by SENSOR_BACKEND_*
// from build_config.h. No function-pointer dispatch.
//
// Required of every backend:
//   void  sensor_init(void);                 // boot-time setup
//   void  sensor_update_isr(void);           // run inside foc_current_loop_isr
//   float sensor_get_elec_angle(void);       // radians [0, 2*pi)
//   float sensor_get_elec_speed(void);       // electrical rad/s
//=============================================================================
#ifndef SENSOR_IFACE_H
#define SENSOR_IFACE_H

#include "build_config.h"
#include "libraries/math/include/math.h"

extern void sensor_init(void);

#if SENSOR_BACKEND_QEP
  #include "sensor_qep_inline.h"
#elif SENSOR_BACKEND_RM44AC
  #include "sensor_rm44ac_inline.h"
#endif

#endif // SENSOR_IFACE_H
