//=============================================================================
// sensor_rm44ac.c - RM44AC sin/cos magnetic sensor, non-ISR side.
//
// The RM44AC outputs already-demodulated SIN and COS analog signals, so
// there is no excitation drive and no carrier demodulation needed. The hot
// path (per-ISR atan2 + speed LPF) lives in sensor_rm44ac_inline.h.
//
// This file owns:
//   - the backing globals consumed by the inline header
//   - sensor_init() (zero state, latch defaults)
//   - sensor_rm44ac_capture_zero() (called from ALIGN_ROTOR)
//=============================================================================
#include "build_config.h"

#if SENSOR_BACKEND_RM44AC

#include "sensor_iface.h"

volatile float32_t g_resolver_theta_mech  = 0.0f;
volatile float32_t g_resolver_omega_mech  = 0.0f;
volatile float32_t g_resolver_theta_elec  = 0.0f;
volatile float32_t g_resolver_omega_elec  = 0.0f;
volatile float32_t g_resolver_elec_offset = SENSOR_RES_DEFAULT_OFFSET;
volatile float32_t g_resolver_last_theta  = 0.0f;

void sensor_init(void)
{
    g_resolver_theta_mech  = 0.0f;
    g_resolver_omega_mech  = 0.0f;
    g_resolver_theta_elec  = 0.0f;
    g_resolver_omega_elec  = 0.0f;
    g_resolver_last_theta  = 0.0f;
    // g_resolver_elec_offset starts at the default and is overwritten by
    // sensor_rm44ac_capture_zero() during the ALIGN_ROTOR state.
}

// Called by the state machine in FOC_ALIGN_ROTOR after Id has held for ~1s.
void sensor_rm44ac_capture_zero(void)
{
    g_resolver_elec_offset = g_resolver_theta_mech;
}

#endif // SENSOR_BACKEND_RM44AC
