//=============================================================================
// adc_iface.c - ADC results, offset calibration, raw -> engineering scaling.
//
// SysConfig wires the ePWM SOC -> ADC SOCs and the EOC interrupt. We read the
// already-converted RESULTn registers here. Channel mapping comes from the
// per-variant hw_*.h.
//=============================================================================
#include "driverlib.h"
#include "device.h"
#include "build_config.h"
#include "adc_iface.h"

static volatile uint16_t s_iu_offset = ISENSE_ZERO_CODE;
static volatile uint16_t s_iv_offset = ISENSE_ZERO_CODE;
static volatile uint16_t s_iw_offset = ISENSE_ZERO_CODE;

// Runtime KCL phase-current reconstruction selector: 0=none, 1=U, 2=V, 3=W.
// Boot default comes from the hw header (hw_control_v2.h does not define it, so
// guard with a 0 fallback). Host-writable via the "isense_recon" debug param
// (IDLE-only); see debug_params.c.
#ifndef ISENSE_RECONSTRUCT_PHASE
#define ISENSE_RECONSTRUCT_PHASE 0
#endif
volatile uint16_t g_isense_reconstruct_phase = ISENSE_RECONSTRUCT_PHASE;

// TODO: Debugging ADC, remove after
volatile uint16_t g_dbg_iu_raw;
volatile uint16_t g_dbg_iv_raw;
volatile uint16_t g_dbg_iw_raw;
volatile uint16_t g_dbg_vbus_raw;

// Raw resolver SIN/COS ADC codes from the last adc_read_sin_cos(), exposed to
// the host (scope channels res_sin/res_cos + sin_raw/cos_raw params) to diagnose
// angle noise: DC level = bias (~RES_SINCOS_BIAS_CODE), swing = amplitude, and
// the jitter band converts to mV (code * VREFHI / 4096) for a direct comparison
// against the analog scope. Defined unconditionally so the shared datalog/scope
// path links on every variant; only written in the RM44AC build (0 otherwise).
volatile uint16_t g_dbg_sin_raw;
volatile uint16_t g_dbg_cos_raw;

#if SENSOR_BACKEND_RM44AC
// Runtime per-channel SIN/COS normalization. Seeded from the hw_*.h guesses in
// adc_init() (runtime seeding keeps .cinit from growing) and overwritten by
// adc_set_sincos_scale() when the ALIGN calibration sweep captures the real
// min/max codes. Amplitude is stored as a reciprocal so the ISR path stays
// multiply-only. Written and read exclusively in ISR context - no races.
volatile float g_res_sin_bias;
volatile float g_res_sin_ampl_inv;
volatile float g_res_cos_bias;
volatile float g_res_cos_ampl_inv;
// Low nibble: 0=defaults/never ran, 1=calibration applied, 2=rejected (kept
// previous scale). High nibble: clip flags (set on apply OR reject) -
// 0x10 sin clipped low, 0x20 sin clipped high, 0x40 cos low, 0x80 cos high.
volatile uint16_t g_res_cal_status;
#endif

// The (result-register, SOC-index) pair for each signal, plus the EOC interrupt
// that fires the ISR, come from the active hw_*.h (ADC_RESULT_BASE_*/ADC_SOC_*,
// ADC_ISR_INT_BASE/NUMBER). Those MUST mirror the SysConfig SOC allocation. This
// keeps adc_iface.c variant-agnostic instead of hardcoding the BOOSTXL layout.

void adc_init(void)
{
    // Nothing extra: SysConfig already enabled, calibrated, and trimmed the ADC
    // modules. The offset values get rewritten by adc_calibrate_offsets().
#if SENSOR_BACKEND_RM44AC
    g_res_sin_bias     = RES_SINCOS_BIAS_CODE;
    g_res_sin_ampl_inv = 1.0f / RES_SINCOS_AMPL_CODE;
    g_res_cos_bias     = RES_SINCOS_BIAS_CODE;
    g_res_cos_ampl_inv = 1.0f / RES_SINCOS_AMPL_CODE;
    g_res_cal_status   = 0U;
#endif
}

static inline float code_to_amps(int32_t code, uint16_t offset, float sign)
{
    return sign * (float)((int32_t)code - (int32_t)offset) * ISENSE_AMPS_PER_CODE;
}

void adc_read_phase_currents(FOC_Iabc_t *out)
{
    uint16_t cu = ADC_readResult(ADC_RESULT_BASE_IU, ADC_SOC_IU);
    uint16_t cv = ADC_readResult(ADC_RESULT_BASE_IV, ADC_SOC_IV);
    uint16_t cw = ADC_readResult(ADC_RESULT_BASE_IW, ADC_SOC_IW);

    g_dbg_iu_raw = cu;
    g_dbg_iv_raw = cv;
    g_dbg_iw_raw = cw;

    out->value[0] = code_to_amps(cu, s_iu_offset, ISENSE_SIGN_U);
    out->value[1] = code_to_amps(cv, s_iv_offset, ISENSE_SIGN_V);
    out->value[2] = code_to_amps(cw, s_iw_offset, ISENSE_SIGN_W);

    // Reconstruct one dead current-sense channel via KCL (Iu + Iv + Iw = 0).
    // The dead phase's own (scaled) reading is overwritten; the synthesized
    // value depends only on the two healthy channels. g_dbg_i*_raw above still
    // hold the true raw codes (incl. the dead channel) for diagnostics. The
    // selector is a runtime variable so the dead phase can be chosen from the
    // host without a rebuild (debug param "isense_recon").
    switch(g_isense_reconstruct_phase)
    {
    case 1U: out->value[0] = -out->value[1] - out->value[2]; break; // SO1 (U) dead
    case 2U: out->value[1] = -out->value[0] - out->value[2]; break; // SO2 (V) dead
    case 3U: out->value[2] = -out->value[0] - out->value[1]; break; // SO3 (W) dead
    default: break;                                                  // 0 = none
    }
}

float adc_read_vbus(void)
{
    uint16_t c = ADC_readResult(ADC_RESULT_BASE_VBUS, ADC_SOC_VBUS);
    g_dbg_vbus_raw = c;
    return (float)c * VBUS_VOLTS_PER_CODE;
}

#if SENSOR_BACKEND_RM44AC
void adc_read_sin_cos(float *out_sin, float *out_cos)
{
    int32_t cs = (int32_t)ADC_readResult(ADC_RESULT_BASE_SIN, ADC_SOC_SIN);
    int32_t cc = (int32_t)ADC_readResult(ADC_RESULT_BASE_COS, ADC_SOC_COS);
    g_dbg_sin_raw = (uint16_t)cs;   // raw codes for host diagnostics (pre-scale)
    g_dbg_cos_raw = (uint16_t)cc;
    // Bias-removed and scaled to ~[-1, +1] with the runtime per-channel scale
    // (seeded from the hw_*.h guesses, refined by the ALIGN calibration sweep).
    *out_sin = ((float)cs - g_res_sin_bias) * g_res_sin_ampl_inv;
    *out_cos = ((float)cc - g_res_cos_bias) * g_res_cos_ampl_inv;
}

// Commit the SIN/COS scale from calibration-sweep min/max raw codes. Sanity
// gates: both spans must be real waveform excursions (not a stalled rotor or a
// dead channel) and the two amplitudes must roughly match; otherwise the
// current scale is kept. Called once per align from ISR context.
bool adc_set_sincos_scale(uint16_t sin_min, uint16_t sin_max,
                          uint16_t cos_min, uint16_t cos_max)
{
    uint16_t status = 0U;
    if(sin_min <= SENSOR_RES_CAL_CLIP_LO_CODE) status |= 0x0010U;
    if(sin_max >= SENSOR_RES_CAL_CLIP_HI_CODE) status |= 0x0020U;
    if(cos_min <= SENSOR_RES_CAL_CLIP_LO_CODE) status |= 0x0040U;
    if(cos_max >= SENSOR_RES_CAL_CLIP_HI_CODE) status |= 0x0080U;

    float s_amp = 0.5f * ((float)sin_max - (float)sin_min);
    float c_amp = 0.5f * ((float)cos_max - (float)cos_min);
    float amp_hi = (s_amp > c_amp) ? s_amp : c_amp;
    float amp_lo = (s_amp < c_amp) ? s_amp : c_amp;

    if(sin_max <= sin_min || cos_max <= cos_min ||
       amp_lo < SENSOR_RES_CAL_MIN_AMPL_CODES ||
       (amp_hi - amp_lo) > SENSOR_RES_CAL_MAX_MISMATCH * amp_hi)
    {
        g_res_cal_status = status | 0x0002U;   // rejected, previous scale kept
        return false;
    }

    g_res_sin_bias     = 0.5f * ((float)sin_max + (float)sin_min);
    g_res_sin_ampl_inv = 1.0f / s_amp;
    g_res_cos_bias     = 0.5f * ((float)cos_max + (float)cos_min);
    g_res_cos_ampl_inv = 1.0f / c_amp;
    g_res_cal_status   = status | 0x0001U;     // applied
    return true;
}
#endif

// Synchronously sample N times with PWM in safe state (low-side shorted),
// average the codes, write back as the new zero offsets.
void adc_calibrate_offsets(uint16_t n)
{
    uint32_t su = 0, sv = 0, sw = 0;
    uint16_t i;
    for(i = 0; i < n; ++i)
    {
        // Wait for the next EOC. SysConfig generates an INT flag; here we
        // spin on it for the calibration window.
        while(ADC_getInterruptStatus(ADC_ISR_INT_BASE, ADC_ISR_INT_NUMBER) == false) { }
        ADC_clearInterruptStatus(ADC_ISR_INT_BASE, ADC_ISR_INT_NUMBER);

        su += ADC_readResult(ADC_RESULT_BASE_IU, ADC_SOC_IU);
        sv += ADC_readResult(ADC_RESULT_BASE_IV, ADC_SOC_IV);
        sw += ADC_readResult(ADC_RESULT_BASE_IW, ADC_SOC_IW);
    }
    s_iu_offset = (uint16_t)(su / n);
    s_iv_offset = (uint16_t)(sv / n);
    s_iw_offset = (uint16_t)(sw / n);
}
