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

// Helpers for the C28x driverlib ADC RESULT register access. SysConfig binds
// these SOC indices; using SOC 0/1/2/3 here as a convention - update if your
// SysConfig allocates differently.
#define SOC_IU      0U
#define SOC_IV      1U
#define SOC_IW      2U
#define SOC_VBUS    3U
#define SOC_SIN     4U
#define SOC_COS     5U

void adc_init(void)
{
    // Nothing extra: SysConfig already enabled, calibrated, and trimmed the ADC
    // modules. The offset values get rewritten by adc_calibrate_offsets().
}

static inline float code_to_amps(int32_t code, uint16_t offset, float sign)
{
    return sign * (float)((int32_t)code - (int32_t)offset) * ISENSE_AMPS_PER_CODE;
}

void adc_read_phase_currents(FOC_Iabc_t *out)
{
    uint16_t cu = ADC_readResult(ADCCRESULT_BASE, SOC_IU);
    uint16_t cv = ADC_readResult(ADCBRESULT_BASE, SOC_IV);
    uint16_t cw = ADC_readResult(ADCARESULT_BASE, SOC_IW);

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
    uint16_t c = ADC_readResult(ADCARESULT_BASE, SOC_VBUS);
    g_dbg_vbus_raw = c;
    return (float)c * VBUS_VOLTS_PER_CODE;
}

#if SENSOR_BACKEND_RM44AC
void adc_read_sin_cos(float *out_sin, float *out_cos)
{
    int32_t cs = (int32_t)ADC_readResult(ADCBRESULT_BASE, SOC_SIN);
    int32_t cc = (int32_t)ADC_readResult(ADCCRESULT_BASE, SOC_COS);
    // Bias-removed, scaled into ~[-1, +1]
    *out_sin = (float)(cs - 2048) * (1.0f / 2048.0f);
    *out_cos = (float)(cc - 2048) * (1.0f / 2048.0f);
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
        while(ADC_getInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1) == false) { }
        ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);

        su += ADC_readResult(ADCCRESULT_BASE, SOC_IU);
        sv += ADC_readResult(ADCBRESULT_BASE, SOC_IV);
        sw += ADC_readResult(ADCARESULT_BASE, SOC_IW);
    }
    s_iu_offset = (uint16_t)(su / n);
    s_iv_offset = (uint16_t)(sv / n);
    s_iw_offset = (uint16_t)(sw / n);
}
