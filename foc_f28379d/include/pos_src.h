//=============================================================================
// pos_src.h - Position-source supervisor (Step 12).
//
// The ONLY consumer of the sensor backend (sensor_iface.h) and of the sensorless
// observers (observer.h) for commutation. It owns which angle/speed the FOC
// pipeline, the speed loop, the safety layer and the fault safe-state see, and
// it decides when to hand commutation from the physical sensor to the observer.
//
//   angle_src ("angle_src" param, LIVE):
//     SENSOR    today's behaviour; the observers run in shadow for comparison.
//     OBSERVER  forced sensorless: engages as soon as the observer is healthy
//               (REQ_PENDING until then, commutating on the sensor meanwhile);
//               the sensor's own loss flag is then ignored.
//     AUTO      sensor by default; ONE-WAY fail-over to the observer per RUN
//               cycle when (a) the backend latches sensor loss, or (b) a
//               debounced sensor-vs-observer disagreement is detected -- in
//               both cases only if the observer is healthy (above the speed
//               floor, converged). A lost sensor with an unhealthy observer
//               falls through to today's FAULT_SENSOR_LOSS shutdown.
//
// Every switch is BUMPLESS: the angle/speed offset at the handover decays
// linearly to zero over OBS_BLEND_TICKS so the commutation angle never steps
// (a LOSS hand-over blends nothing: the sensor angle it would blend from is
// already garbage). Fail-over raises a WARNING (safety_warn), not a fault: the
// drive keeps running, degraded, and the host banner says why.
//
// Loss while the observer is the active source (fell below the speed floor,
// lost convergence) IS position loss: pos_src_is_lost() goes true and the
// existing FAULT_SENSOR_LOSS path (speed-dependent active-short / coast) runs
// off pos_src_get_healthy_speed() -- the last healthy speed of the ACTIVE
// source, since the sensor's is stale after a fail-over.
//
// Not in this pass (hooks only): I/f open-loop start from standstill (bit
// POS_ST_IF_ACTIVE reserved) and HFI low-speed sensorless.
//=============================================================================
#ifndef POS_SRC_H
#define POS_SRC_H

#include <stdint.h>
#include <stdbool.h>
#include "build_config.h"
#include "libraries/math/include/math.h"
#include "foc_state_machine.h"

typedef enum {
    ANGLE_SRC_SENSOR   = 0,
    ANGLE_SRC_OBSERVER = 1,
    ANGLE_SRC_AUTO     = 2
} angle_src_t;

// pos_status bits ("pos_status" RO param)
#define POS_ST_OBS_ACTIVE     0x0001U   // observer is the commutation source now
#define POS_ST_SENSOR_LOST    0x0002U   // backend loss latch (or pos_force_lost)
#define POS_ST_DISAGREE       0x0004U   // debounced |theta_sensor - theta_est| > obs_err_trip
#define POS_ST_OBS_UNHEALTHY  0x0008U   // observer not (yet) trusted
#define POS_ST_BELOW_MIN_SPD  0x0010U   // |omega_est| < obs_min_speed
#define POS_ST_FAILOVER_DONE  0x0020U   // AUTO already switched this RUN cycle (sticky)
#define POS_ST_DEGRADED       0x0040U   // running sensorless because of a fault (sticky)
#define POS_ST_BLENDING       0x0080U   // hand-over blend in progress
#define POS_ST_FORCED         0x0100U   // angle_src = OBSERVER
#define POS_ST_LOST           0x0200U   // pos_src_is_lost() is true
#define POS_ST_REQ_PENDING    0x0400U   // OBSERVER requested, waiting for health
#define POS_ST_IF_ACTIVE      0x0800U   // reserved: I/f start-up carrier active

// ---- Host-writable -------------------------------------------------------
extern volatile uint16_t  g_angle_src;        // angle_src_t, LIVE
extern volatile float32_t g_obs_err_trip;     // disagreement threshold [rad]
extern volatile float32_t g_obs_iq_max;       // |iq| clamp while sensorless [A]
extern volatile uint16_t  g_pos_force_lost;   // bench: pretend the sensor is lost (RUN)
extern volatile float32_t g_pos_inj_err;      // bench: add this to the sensor angle [rad]
extern volatile uint16_t  g_pos_trig_en;      // bench: fire the scope one-shot at a switch

// ---- Outputs ---------------------------------------------------------------
extern volatile uint16_t  g_pos_angle_act;    // 0 = sensor, 1 = observer
extern volatile uint16_t  g_pos_status;       // POS_ST_* bitfield
extern volatile uint16_t  g_pos_lost;         // what safety.c latches FAULT_SENSOR_LOSS on
extern volatile float32_t g_pos_theta;        // commutation angle [rad], [0, 2*pi)
extern volatile float32_t g_pos_omega;        // commutation speed [elec rad/s]
extern volatile float32_t g_pos_theta_err;    // wrap(theta_est - theta_sensor) [rad]

extern void pos_src_init(void);
// Per ISR, AFTER obs_update_isr(): runs sensor_update_isr(), decides the source,
// applies the blend, refreshes the outputs. ia/ib seed the observer on RUN entry.
extern void pos_src_update_isr(FOC_State_t st, float32_t ia, float32_t ib);
// 1 kHz (from foc_speed_loop_tick): the backend's slow-loop work (QEP speed +
// loss detection).
extern void pos_src_update_slow(void);
// Last healthy speed of the ACTIVE source (fault safe-state decision).
extern float32_t pos_src_get_healthy_speed(void);
// Operator fault clear: re-arm the backend and drop the supervisor's own latch.
extern void pos_src_clear_loss(void);

static inline float32_t pos_src_get_theta(void)       { return g_pos_theta; }
static inline float32_t pos_src_get_omega(void)       { return g_pos_omega; }
static inline bool      pos_src_is_lost(void)         { return g_pos_lost != 0U; }
static inline bool      pos_src_observer_active(void) { return g_pos_angle_act != 0U; }

#endif // POS_SRC_H
