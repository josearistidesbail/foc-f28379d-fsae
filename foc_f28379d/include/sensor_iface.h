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
//   float sensor_get_elec_angle_raw(void);   // uncorrected elec angle (align)
//   float sensor_get_elec_speed(void);       // electrical rad/s
//   bool  sensor_is_lost(void);              // true once feedback is lost
//   void  sensor_clear_loss(void);           // re-arm detection (operator clear)
//   float sensor_get_healthy_speed(void);    // last elec speed while healthy
//   void  sensor_set_elec_offset(float rad); // store elec zero (align controller)
//
// sensor_is_lost() / sensor_get_healthy_speed() are static inline in the
// backend inline headers (read backend globals). The health state is updated
// inside the backend's existing per-ISR (resolver) or slow-loop (QEP) routine:
//   QEP    : drive-vs-response + QEPSTS, in sensor_update_speed_slow()
//   RM44AC : sin^2+cos^2 magnitude window, in sensor_update_isr()
// The "healthy speed" is the last electrical speed latched while NOT lost; the
// fault shutdown uses it to choose active-short vs coast (on loss the live
// speed estimate is already garbage).
//
// The lost flag is a ONE-WAY latch by design: detection must not self-clear the
// instant a marginal signal flickers back. Un-latching is therefore an explicit
// operator action -- sensor_clear_loss(), called from sm_clear_fault(). Without
// it, safety_clear() would zero safety.c's mask while the backend still reported
// lost, and the first ISR tick back in RUN/ALIGN would re-latch FAULT_SENSOR_LOSS
// forever (the FAULT <-> IDLE loop). Re-arming is not the same as suppressing: if
// the signal is genuinely still bad the backend re-detects within its own
// debounce window.
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

// Single-shot fallback: latch the present rotor position as the electrical zero.
// BOTH backends now align via the ramp-and-average controller in foc_pipeline.c
// (settle, spin a couple mech revs, circular-average -> sensor_set_elec_offset()),
// so this is no longer called by the align controller -- kept only as a fallback.
//   QEP    : sets g_qep_theta_offset_elec so the present angle reads 0.
//   RM44AC : stores g_resolver_theta_mech into g_resolver_elec_offset.
extern void sensor_capture_zero(void);

// Re-arm sensor-loss detection: drop the one-way lost latch and reset the
// backend's debounce/window state so a fresh full window must elapse before it
// can trip again. Called from sm_clear_fault() so an operator fault-clear means
// the same thing to the sensor backend as it does to safety.c. NOT called from
// the ISR (it touches file-static window accumulators in the backend .c).
//   QEP    : g_qep_lost + the drive-vs-response movement window.
//            QEPSTS POS_CNT_ERROR needs no HW clear -- per the TRM it is a
//            read-only, non-sticky flag re-evaluated at each index event.
//   RM44AC : g_resolver_lost + the sin^2+cos^2 out-of-window debounce count.
//            Deliberately does NOT touch g_resolver_loss_inhibit, which is owned
//            by the align controller (set over the scale-cal phase, force-cleared
//            on any ALIGN exit).
extern void sensor_clear_loss(void);

#if SENSOR_BACKEND_QEP
  #include "sensor_qep_inline.h"
#elif SENSOR_BACKEND_RM44AC
  #include "sensor_rm44ac_inline.h"
#endif

#endif // SENSOR_IFACE_H
