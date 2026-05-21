//=============================================================================
// sensor_rm44ac.c - RM44AC sin/cos resolver backend non-ISR side.
//
// Wraps the TIDM-02014 sin/cos PLL decoder (libraries via include path).
//
// Excitation generation lives here as well: a small sine LUT is pushed to
// DAC-A at EXC_LUT_RATE_HZ from a CPU-timer ISR.
//=============================================================================
#include "F28x_Project.h"
#include "build_config.h"

#if SENSOR_BACKEND_RM44AC

#include "sensor_iface.h"
#include "resolver.h"

Resolver_t         g_resolver;
volatile float32_t g_resolver_theta_mech = 0.0f;
volatile float32_t g_resolver_omega_mech = 0.0f;
volatile float32_t g_resolver_theta_elec = 0.0f;
volatile float32_t g_resolver_omega_elec = 0.0f;
volatile float32_t g_resolver_elec_offset = SENSOR_RES_DEFAULT_OFFSET;

// ---- Excitation LUT --------------------------------------------------------
static const uint16_t s_exc_lut[EXC_LUT_LEN] = {
    // Filled at runtime by sensor_init() (so we can edit EXC_DAC_PEAK).
    0
};
static uint16_t s_exc_lut_rw[EXC_LUT_LEN];
static volatile uint16_t s_exc_idx;

__interrupt void exc_timer_isr(void);   // wired via SysConfig: CPU Timer 1
__interrupt void exc_timer_isr(void)
{
    DAC_setShadowValue(EXC_DAC_BASE, s_exc_lut_rw[s_exc_idx]);
    s_exc_idx = (s_exc_idx + 1U) & (EXC_LUT_LEN - 1U);
    // Timer 1 ack happens in SysConfig-generated wrapper if any; otherwise:
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}

static void build_excitation_lut(void)
{
    for(uint16_t i = 0; i < EXC_LUT_LEN; ++i)
    {
        float angle = (2.0f * 3.14159265f * (float)i) / (float)EXC_LUT_LEN;
        int32_t v = (int32_t)EXC_DAC_BIAS
                  + (int32_t)((float)EXC_DAC_PEAK * __sin(angle));
        if(v < 0) v = 0;
        if(v > 4095) v = 4095;
        s_exc_lut_rw[i] = (uint16_t)v;
    }
}

void sensor_init(void)
{
    resolver_init(&g_resolver);

    g_resolver.resolver_theta = (float32_t *)&g_resolver_theta_mech;
    g_resolver.resolver_omega = (float32_t *)&g_resolver_omega_mech;
    g_resolver.sample_time    = FOC_ISR_TS;
    g_resolver.pll_gain_in    = SENSOR_RES_PLL_GAIN_IN;
    g_resolver.pll_gain_ff    = SENSOR_RES_PLL_GAIN_FF;
    g_resolver.phase_comp_gain = SENSOR_RES_PHASE_COMP_GAIN;
    g_resolver.bias           = SENSOR_RES_BIAS_OFFSET;

    // FILTER_FO low-pass for speed output: discrete first-order.
    // a1 = exp(-2*pi*fc*Ts), b0 = b1 = (1 - a1) / 2
    float wc = 2.0f * 3.14159265f * SENSOR_RES_SPEED_LPF_HZ;
    float a1 = 1.0f - wc * FOC_ISR_TS;     // crude but stable for fc << fs
    if(a1 < 0.0f) a1 = 0.0f;
    g_resolver.lpf_spd.a1 = a1;
    g_resolver.lpf_spd.b0 = (1.0f - a1) * 0.5f;
    g_resolver.lpf_spd.b1 = (1.0f - a1) * 0.5f;
    g_resolver.lpf_spd.x1 = 0.0f;
    g_resolver.lpf_spd.y1 = 0.0f;

    build_excitation_lut();
    s_exc_idx = 0;
}

// Called by the state machine in FOC_ALIGN_ROTOR after Id has held for ~1s.
void sensor_rm44ac_capture_zero(void)
{
    g_resolver_elec_offset = g_resolver_theta_mech;
}

#endif // SENSOR_BACKEND_RM44AC
