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

// Per-CHANNEL zero-current offsets (channel = physical ADC input, in slot order
// A = ADC_RESULT_BASE_IU, B = ..._IV, C = ..._IW). Offsets belong to the analog
// channel, not the motor phase, so they are indexed pre-mapping.
static volatile uint16_t s_ch_offset[3] = {
    ISENSE_ZERO_CODE, ISENSE_ZERO_CODE, ISENSE_ZERO_CODE
};

// Runtime KCL phase-current reconstruction selector: 0=none, 1=U, 2=V, 3=W.
// Boot default comes from the hw header (hw_control_v2.h does not define it, so
// guard with a 0 fallback). Host-writable via the "isense_recon" debug param
// (IDLE-only); see debug_params.c. On 2-channel hardware this variable is
// IGNORED: the un-sensed phase is fully determined by g_isense_map (the phase
// the unused slot C maps to) and is always KCL-reconstructed.
#ifndef ISENSE_RECONSTRUCT_PHASE
#define ISENSE_RECONSTRUCT_PHASE 0
#endif
volatile uint16_t g_isense_reconstruct_phase = ISENSE_RECONSTRUCT_PHASE;

// ---- Runtime channel -> phase mapping ------------------------------------
// The ADC inputs are FIXED (board routing); what changes on the bench is which
// motor phase each external LEM clamp is hooked to. g_isense_map selects one of
// the 6 permutations of (phase of channel A, B, C); g_isense_inv is a bitmask
// (bit0=A, bit1=B, bit2=C) flipping a channel whose clamp faces the wrong way.
// Both are host-writable ("isense_map"/"isense_inv", IDLE-only) and are also
// AUTO-DETECTED by the ALIGN phase-ID stage (foc_pipeline.c) via
// adc_isense_phase_id_commit() below.
volatile uint16_t g_isense_map = ISENSE_MAP_DEFAULT;   // permutation index 0..5
volatile uint16_t g_isense_inv;                        // seeded in adc_init()
// Latest per-channel currents [A] (offset + sign applied, BEFORE the phase
// scatter). The phase-ID dwell averager reads these: they are channel-domain,
// so they identify the wiring independent of the (possibly wrong) current map.
volatile float g_isense_ch_amps[3];
// Phase-ID result status: low nibble 0=never ran, 1=applied, 2=rejected;
// 0x0010<<c = channel c signal too weak, 0x0100<<c = channel c ambiguous
// (dominance gate), 0x0800 = two channels claimed the same phase.
volatile uint16_t g_isense_id_status;

// Permutation table: PHASE_OF_CH[map][c] = motor phase (0=U,1=V,2=W) driven by
// channel c. Lexicographic: 0:UVW 1:UWV 2:VUW 3:VWU 4:WUV 5:WVU.
static const uint16_t PHASE_OF_CH[6][3] = {
    {0U,1U,2U}, {0U,2U,1U}, {1U,0U,2U}, {1U,2U,0U}, {2U,0U,1U}, {2U,1U,0U}
};

// TODO: Debugging ADC, remove after
volatile uint16_t g_dbg_iu_raw;
volatile uint16_t g_dbg_iv_raw;
volatile uint16_t g_dbg_iw_raw;
volatile uint16_t g_dbg_vbus_raw;

// DC-bus voltage low-pass (variant-agnostic). First-order IIR on the scaled bus
// volts, applied in adc_read_vbus() every ISR so the UV/OV trips, the vmax_dyn
// PI clamp and the vbus scope/param all consume a de-noised value. The state is
// updated every ISR (regardless of en) so toggling the enable is bumpless, and
// seeded to the first reading so 1/vbus / vmax_dyn never start from 0 V.
// Tunable live via the vbus_filt_en / vbus_filt_hz serial params.
volatile uint16_t g_vbus_filt_en    = VBUS_FILT_DEFAULT_EN;
volatile float    g_vbus_filt_hz    = VBUS_FILT_DEFAULT_HZ;
volatile float    g_vbus_filt_alpha = 0.0f;   // set in adc_init() from the cutoff
volatile float    g_vbus_filt       = 0.0f;   // IIR state [V], seeded on 1st read
static   uint16_t s_vbus_filt_primed = 0U;

// DC-bus sense affine calibration (live-tunable, see build_config.h).
//   vbus[V] = (code - g_vbus_off_code) * g_vbus_vpc
// g_vbus_ratio is the bus->pin divider ratio in the same units as the header's
// VBUS_DIVIDER_RATIO (that is what you bake back in); g_vbus_vpc is the derived
// volts-per-code the ISR actually multiplies by, recomputed by adc_init() and by
// the "vbus_ratio" setter -- exactly the vbus_filt_hz -> alpha pattern.
// Seeded in adc_init() rather than statically initialized: zero-init globals land
// in .ebss and cost no .cinit (FLASHB is essentially full -- see the #10099 note).
volatile float    g_vbus_ratio;      // = VBUS_DIVIDER_RATIO
volatile float    g_vbus_vpc;        // = VBUS_VOLTS_PER_CODE (derived from ratio)
volatile float    g_vbus_off_code;   // = VBUS_OFFSET_CODE [ADC codes at 0 V]

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

    // Seed the per-channel inversion mask from the legacy ISENSE_SIGN_* macros
    // (they were always per-SLOT signs; a slot is a channel). Constant-folded.
    g_isense_inv = ((ISENSE_SIGN_U < 0.0f) ? 1U : 0U)
                 | ((ISENSE_SIGN_V < 0.0f) ? 2U : 0U)
                 | ((ISENSE_SIGN_W < 0.0f) ? 4U : 0U);
    g_isense_id_status = 0U;

    // Seed the DC-bus IIR coefficient from the boot cutoff (same clamp the
    // vbus_filt_hz setter uses) and force a re-prime on the first reading.
    g_vbus_filt_alpha = VBUS_FILT_ALPHA(g_vbus_filt_hz);
    if(g_vbus_filt_alpha > 1.0f) g_vbus_filt_alpha = 1.0f;
    if(g_vbus_filt_alpha < 0.0f) g_vbus_filt_alpha = 0.0f;
    s_vbus_filt_primed = 0U;

    // Seed the DC-bus affine calibration from the active hw_*.h.
    g_vbus_ratio    = VBUS_DIVIDER_RATIO;
    g_vbus_vpc      = VBUS_VOLTS_PER_CODE;
    g_vbus_off_code = VBUS_OFFSET_CODE;
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
    uint16_t c0 = ADC_readResult(ADC_RESULT_BASE_IU, ADC_SOC_IU);
    uint16_t c1 = ADC_readResult(ADC_RESULT_BASE_IV, ADC_SOC_IV);
    uint16_t c2 = ADC_readResult(ADC_RESULT_BASE_IW, ADC_SOC_IW);

    g_dbg_iu_raw = c0;      // per-CHANNEL raw codes (legacy names kept: the
    g_dbg_iv_raw = c1;      // "u/v/w" suffix means slot A/B/C, not motor phase)
    g_dbg_iw_raw = c2;

    // Channel-domain currents: offset + polarity, no phase assignment yet.
    uint16_t inv = g_isense_inv;
    g_isense_ch_amps[0] = code_to_amps(c0, s_ch_offset[0], (inv & 1U) ? -1.0f : 1.0f);
    g_isense_ch_amps[1] = code_to_amps(c1, s_ch_offset[1], (inv & 2U) ? -1.0f : 1.0f);
    g_isense_ch_amps[2] = code_to_amps(c2, s_ch_offset[2], (inv & 4U) ? -1.0f : 1.0f);

    // Scatter channels onto motor phases through the runtime map.
    uint16_t map = g_isense_map;
    const uint16_t *ph = PHASE_OF_CH[(map <= 5U) ? map : 0U];

#if ISENSE_NUM_CHANNELS == 2
    // Two physical sensors: the phase the unused slot C maps to has no sensor
    // and is ALWAYS reconstructed via KCL (Iu + Iv + Iw = 0). There is no
    // choice to make, so g_isense_reconstruct_phase is ignored here.
    out->value[ph[0]] = g_isense_ch_amps[0];
    out->value[ph[1]] = g_isense_ch_amps[1];
    out->value[ph[2]] = -g_isense_ch_amps[0] - g_isense_ch_amps[1];
#else
    out->value[ph[0]] = g_isense_ch_amps[0];
    out->value[ph[1]] = g_isense_ch_amps[1];
    out->value[ph[2]] = g_isense_ch_amps[2];

    // Reconstruct one dead current-sense channel via KCL (Iu + Iv + Iw = 0).
    // The dead phase's own (scaled) reading is overwritten; the synthesized
    // value depends only on the two healthy channels. g_dbg_i*_raw above still
    // hold the true raw codes (incl. the dead channel) for diagnostics. The
    // selector is a runtime variable so the dead phase can be chosen from the
    // host without a rebuild (debug param "isense_recon").
    switch(g_isense_reconstruct_phase)
    {
    case 1U: out->value[0] = -out->value[1] - out->value[2]; break; // U dead
    case 2U: out->value[1] = -out->value[0] - out->value[2]; break; // V dead
    case 3U: out->value[2] = -out->value[0] - out->value[1]; break; // W dead
    default: break;                                                  // 0 = none
    }
#endif
}

// Effective reconstruction selector for the host readback: on 2-channel
// hardware it is derived from the map (the phase slot C lands on), elsewhere it
// is the live g_isense_reconstruct_phase.
uint16_t adc_isense_recon_phase(void)
{
#if ISENSE_NUM_CHANNELS == 2
    uint16_t map = g_isense_map;
    return PHASE_OF_CH[(map <= 5U) ? map : 0U][2] + 1U;
#else
    return g_isense_reconstruct_phase;
#endif
}

// Solve channel->phase mapping + polarity from the ALIGN phase-ID dwell
// averages and commit them. avg[c][k] = mean current of channel c while the
// commanded field sat at electrical angle k*120 deg. With the drive on the
// d-axis, phase k carries +I_k at dwell k and -I_k/2 at the other two, so for a
// channel clamped on phase p with effective sign s:
//     avg[c][k] = s * I_k * (k == p ? 1.0 : -0.5)
// The decision is taken on the SIGN PATTERN: I_k > 0 always, so the sign at
// k == p is opposite to the sign at the other two dwells NO MATTER how much the
// three dwell amplitudes differ. p is the odd sign out, and s is its sign.
//
// [2026-08-01] This replaces an argmax_k |avg[c][k]| + dominance-ratio solver,
// which silently assumed all three dwells drew the SAME current. They do not.
// The governor freezes one duty across the dwells, which equalizes VOLTS, not
// amps: at the 24 V bench a ~1 A dwell needs only ~36 mV of net loop drive out
// of ~2.7 V commanded -- everything else is the inverter dead zone (dead-time +
// IGBT/diode drops). The current is then the difference of two nearly equal
// large numbers, so a few-percent change in that tax between angles swings it
// by hundreds of percent. Measured: dwells 0/2 drew ~1 A, dwell 1 ~5.5 A, so
// BOTH channels' magnitude peaked at dwell 1, both claimed the same phase, and
// detection rejected with 0x0802 -- even though the sign patterns ([+,-,-] and
// [-,-,+]) were clean, distinct and unambiguous. Sign is the robust feature
// here; magnitude only says whether a sign can be trusted at all.
//
// Acceptance gates (all must pass, else the current map/inv are KEPT):
//   0x0010<<c  the driven dwell is below PHASE_ID_MIN_A -- no current flowed
//              (gate disabled, clamp not on any driven phase, open lead)
//   0x0100<<c  no usable sign pattern: all three dwells share a sign (never a
//              d-axis response), or some dwell is below PHASE_ID_SIGN_MIN_A so
//              its sign is noise and the "pattern" would be fabricated
//   0x0800     two channels claim the same phase
// Called once per align from ISR context (same discipline as
// adc_set_sincos_scale). Returns the status word it stores.
uint16_t adc_isense_phase_id_commit(float avg[3][3])
{
    uint16_t status = 0U;
    uint16_t phase_of[3];
    uint16_t inv_new = g_isense_inv;
    uint16_t c, k;

    for(c = 0U; c < ISENSE_NUM_CHANNELS; c++)
    {
        uint16_t npos     = 0U;    // dwells with a positive average
        uint16_t odd_k    = 0U;    // the driven dwell = the odd sign out
        uint16_t want_pos;
        float    smallest = 0.0f;  // min |avg| over the three dwells
        float    peak;

        for(k = 0U; k < 3U; k++)
        {
            float m = (avg[c][k] < 0.0f) ? -avg[c][k] : avg[c][k];
            if(k == 0U || m < smallest) smallest = m;
            if(avg[c][k] > 0.0f) npos++;
        }

        // 1 positive  -> that dwell is the driven one, s = +1
        // 2 positive  -> the lone negative dwell is driven, s = -1
        // 0 or 3      -> not a d-axis response at all
        if(npos != 1U && npos != 2U) status |= (uint16_t)(0x0100U << c);
        want_pos = (npos == 1U) ? 1U : 0U;
        for(k = 0U; k < 3U; k++)
        {
            uint16_t is_pos = (avg[c][k] > 0.0f) ? 1U : 0U;
            if(is_pos == want_pos) odd_k = k;
        }

        // A sign is only information if that dwell actually drew current.
        if(smallest < PHASE_ID_SIGN_MIN_A) status |= (uint16_t)(0x0100U << c);

        peak = (avg[c][odd_k] < 0.0f) ? -avg[c][odd_k] : avg[c][odd_k];
        if(peak < PHASE_ID_MIN_A) status |= (uint16_t)(0x0010U << c);

        phase_of[c] = odd_k;
        // The averages already include the CURRENT inversion mask, so a
        // negative peak means "flip relative to what is applied now" (XOR),
        // and a positive peak means the existing bit is already right.
        if(avg[c][odd_k] < 0.0f) inv_new ^= (uint16_t)(1U << c);
    }

#if ISENSE_NUM_CHANNELS == 2
    if(phase_of[0] == phase_of[1]) status |= 0x0800U;
    else phase_of[2] = 3U - phase_of[0] - phase_of[1];   // leftover -> KCL phase
#else
    if(phase_of[0] == phase_of[1] || phase_of[0] == phase_of[2] ||
       phase_of[1] == phase_of[2])
        status |= 0x0800U;
#endif

    if(status != 0U)
    {
        g_isense_id_status = status | 0x0002U;   // rejected, previous map kept
        return g_isense_id_status;
    }

    for(k = 0U; k < 6U; k++)
    {
        if(PHASE_OF_CH[k][0] == phase_of[0] &&
           PHASE_OF_CH[k][1] == phase_of[1] &&
           PHASE_OF_CH[k][2] == phase_of[2])
        {
            g_isense_map = k;
            break;
        }
    }
    g_isense_inv       = inv_new;
    g_isense_id_status = 0x0001U;                // applied
    return g_isense_id_status;
}

float adc_read_vbus(void)
{
    uint16_t c = ADC_readResult(ADC_RESULT_BASE_VBUS, ADC_SOC_VBUS);
    g_dbg_vbus_raw = c;
    // Affine map with the LIVE calibration (g_vbus_off_code / g_vbus_vpc, seeded
    // from the header and re-fittable on the bench). Clamped at 0: a negative bus
    // is physically meaningless and would invert vmax_dyn and blow up the 1/vbus
    // SVGEN normalization. A reading pinned at exactly 0.0 V is the tell that the
    // offset is set above the actual code -- it is not silently absorbed.
    float v = ((float)c - g_vbus_off_code) * g_vbus_vpc;
    if(v < 0.0f) v = 0.0f;

    // First-order IIR, run every ISR so the state stays primed (bumpless en
    // toggle). Seed to the first reading so consumers of vbus never see a 0 V
    // startup transient. g_dbg_vbus_raw above keeps the un-filtered code.
    if(!s_vbus_filt_primed) { g_vbus_filt = v; s_vbus_filt_primed = 1U; }
    g_vbus_filt += g_vbus_filt_alpha * (v - g_vbus_filt);

    return g_vbus_filt_en ? g_vbus_filt : v;
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
    s_ch_offset[0] = (uint16_t)(su / n);
    s_ch_offset[1] = (uint16_t)(sv / n);
    s_ch_offset[2] = (uint16_t)(sw / n);
}
