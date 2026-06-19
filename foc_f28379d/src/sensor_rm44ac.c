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

// Sensor-loss state (see sensor_iface.h contract). g_resolver_omega_healthy is
// the last electrical speed latched while the sin/cos vector was in-window; the
// fault shutdown reads it to pick active-short vs coast.
volatile float32_t g_resolver_omega_healthy = 0.0f;
volatile uint16_t  g_resolver_lost          = 0U;
volatile uint16_t  g_resolver_loss_count    = 0U;   // consecutive out-of-window ISRs
// TODO: Debugging Step 9, remove after. Latest sin^2+cos^2 (healthy ~= 1.0).
volatile float32_t g_dbg_resolver_mag;

// Matched 1st-order IIR low-pass on the SIN/COS analog inputs (software noise
// reduction). The inline ISR applies these; the coefficient is owned here so the
// host can tune it. en/hz are host-writable via the "res_filt_en"/"res_filt_hz"
// debug params; the hz setter recomputes alpha. *_filt are the filter memory and
// are updated every ISR (kept primed) so toggling en is bumpless. Defaults OFF.
volatile uint16_t  g_resolver_filt_en    = SENSOR_RES_FILT_DEFAULT_EN;
volatile float32_t g_resolver_filt_hz    = SENSOR_RES_FILT_DEFAULT_HZ;
volatile float32_t g_resolver_filt_alpha = 0.0f;   // set in sensor_init()
volatile float32_t g_resolver_sin_filt   = 0.0f;   // IIR state, sin channel
volatile float32_t g_resolver_cos_filt   = 0.0f;   // IIR state, cos channel

void sensor_init(void)
{
    g_resolver_theta_mech  = 0.0f;
    g_resolver_omega_mech  = 0.0f;
    g_resolver_theta_elec  = 0.0f;
    g_resolver_omega_elec  = 0.0f;
    g_resolver_last_theta  = 0.0f;
    g_resolver_omega_healthy = 0.0f;
    g_resolver_lost        = 0U;
    g_resolver_loss_count  = 0U;

    // Derive the IIR coefficient from the default cutoff, clamped to (0, 1].
    float32_t a = SENSOR_RES_FILT_ALPHA(g_resolver_filt_hz);
    if(a > 1.0f) a = 1.0f;
    if(a < 0.0f) a = 0.0f;
    g_resolver_filt_alpha = a;
    g_resolver_sin_filt   = 0.0f;
    g_resolver_cos_filt   = 0.0f;
    // g_resolver_elec_offset starts at the default and is overwritten by
    // sensor_rm44ac_capture_zero() during the ALIGN_ROTOR state.
}

// The resolver derives speed inside sensor_update_isr() (per-ISR atan2 + LPF in
// sensor_rm44ac_inline.h), so the slow-loop speed update has nothing to do.
void sensor_update_speed_slow(void) {}

// Called by the state machine at the end of FOC_ALIGN_ROTOR.
void sensor_rm44ac_capture_zero(void)
{
    g_resolver_elec_offset = g_resolver_theta_mech;
}

void sensor_capture_zero(void) { sensor_rm44ac_capture_zero(); }

#endif // SENSOR_BACKEND_RM44AC
