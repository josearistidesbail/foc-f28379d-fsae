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

// Latch the current rotor position as the new electrical zero. Called from
// the state machine at the end of FOC_ALIGN_ROTOR, after the rotor has
// settled to alignment with Id-axis injection. Backend-specific behaviour:
//   QEP    : stores QPOSCNT into g_qep_mech_offset_cnt
//   RM44AC : stores g_resolver_theta_mech into g_resolver_elec_offset
extern void sensor_capture_zero(void);

#if SENSOR_BACKEND_QEP
  #include "sensor_qep_inline.h"
#elif SENSOR_BACKEND_RM44AC
  #include "sensor_rm44ac_inline.h"
#endif

#endif // SENSOR_IFACE_H
