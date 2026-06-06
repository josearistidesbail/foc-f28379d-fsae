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
//   bool  sensor_is_lost(void);              // true once feedback is lost
//   float sensor_get_healthy_speed(void);    // last elec speed while healthy
//
// sensor_is_lost() / sensor_get_healthy_speed() are static inline in the
// backend inline headers (read backend globals). The health state is updated
// inside the backend's existing per-ISR (resolver) or slow-loop (QEP) routine:
//   QEP    : drive-vs-response + QEPSTS, in sensor_update_speed_slow()
//   RM44AC : sin^2+cos^2 magnitude window, in sensor_update_isr()
// The "healthy speed" is the last electrical speed latched while NOT lost; the
// fault shutdown uses it to choose active-short vs coast (on loss the live
// speed estimate is already garbage).
//=============================================================================
#ifndef SENSOR_IFACE_H
#define SENSOR_IFACE_H

#include "build_config.h"
#include "libraries/math/include/math.h"

extern void sensor_init(void);

// Update the filtered speed estimate. Called once per slow-loop tick (1 kHz)
// from foc_speed_loop_tick(), unconditionally in every state. QEP derives speed
// here from a count difference over the fixed slow-loop period; backends that
// derive speed inside sensor_update_isr() (resolver) implement this as a no-op.
extern void sensor_update_speed_slow(void);

// Latch the current rotor position as the new electrical zero. Backend-specific:
//   QEP    : sets g_qep_theta_offset_elec so the present angle reads 0 (single-
//            shot fallback; QEP alignment normally uses the ramp-and-average
//            controller in foc_pipeline.c via sensor_set_elec_offset()).
//   RM44AC : stores g_resolver_theta_mech into g_resolver_elec_offset
extern void sensor_capture_zero(void);

#if SENSOR_BACKEND_QEP
  #include "sensor_qep_inline.h"
#elif SENSOR_BACKEND_RM44AC
  #include "sensor_rm44ac_inline.h"
#endif

#endif // SENSOR_IFACE_H
