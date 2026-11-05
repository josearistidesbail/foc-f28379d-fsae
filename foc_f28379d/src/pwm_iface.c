//=============================================================================
// pwm_iface.c - SVGEN duty -> ePWM compare value, and the bridge's
//               non-switching OFF / ASC output patterns (see pwm_iface.h).
//
// SVGEN_run() outputs duty in [-0.5, +0.5]. Convert to count by:
//   cmp = period_count/2 * (1 - 2*duty)  for active-low convention
// Adjust polarity if your SysConfig uses the other.
//=============================================================================
#include "driverlib.h"
#include "device.h"
#include "build_config.h"
#include "pwm_iface.h"
#include "safety.h"     // g_module_faults_en (bench bypass)

// SysConfig owns period and deadband; we keep the period for the duty math.
extern uint16_t g_pwm_period_count;     // defined by SysConfig glue or below

#ifndef PWM_PERIOD_COUNT_OVERRIDE
// Fallback if SysConfig file does not export the period. EPWMCLK = SYSCLK/2
// for F28379D when EPWMCLKDIV = 2.
uint16_t g_pwm_period_count = (uint16_t)((SYS_CLK_HZ / 2U) / (uint32_t)PWM_FREQ_HZ / 2U);
#endif

void pwm_init(void)
{
    // SysConfig has already configured the ePWM modules (free-running at the
    // SysConfig CMPA, but the gate driver is still disabled). Put the bridge in
    // the all-LOW OFF pattern straight away, so the MCU pins match what the
    // gate driver will see when it is first enabled.
    pwm_force_off();
    // Apply the bench bypass: if module-fault protection is disabled, drop the
    // OSHT trip sources now (this runs after Board_init, so it undoes the
    // SysConfig TZ enable).
    pwm_apply_module_tz();
}

// (Re)arm or disarm the module-fault one-shot trip-zone sources to match
// g_module_faults_en. Production board (HW_CONTROL_BOARD_V2) only: SysConfig
// wires the module OC lines to OSHT1/2/3 on all three half-bridges. With no
// power stage those lines assert spuriously and trip the bridge in any state,
// so bench mode disables them and clears any latched one-shot. No-op on other
// variants (their TZ is untouched).
void pwm_apply_module_tz(void)
{
#if defined(HW_CONTROL_BOARD_V2)
    const uint16_t sig = EPWM_TZ_SIGNAL_OSHT1 | EPWM_TZ_SIGNAL_OSHT2
                       | EPWM_TZ_SIGNAL_OSHT3;
    if(g_module_faults_en)
    {
        EPWM_enableTripZoneSignals(PWM_U_BASE, sig);
        EPWM_enableTripZoneSignals(PWM_V_BASE, sig);
        EPWM_enableTripZoneSignals(PWM_W_BASE, sig);
        // Drop any one-shot latched before the fault pads reached their final
        // polarity. SysConfig's Board_init() arms OSHT in EPWM_init() BEFORE
        // GPIO_init() applies the pad inversion (FE_UFPR 4.0: active-high
        // module faults, MODULE_FAULT_PAD_INVERT), so for a few cycles a HEALTHY
        // module (lines LOW) reads as a trip and latches ASC at boot. The TZ
        // inputs are level-sensitive: a fault that is really present re-latches
        // the instant the flag is cleared, so this only discards the spurious
        // boot latch. epwm_tz_isr ignores a request whose OST is not latched.
        EPWM_clearTripZoneFlag(PWM_U_BASE, EPWM_TZ_FLAG_OST | EPWM_TZ_INTERRUPT);
        EPWM_clearTripZoneFlag(PWM_V_BASE, EPWM_TZ_FLAG_OST | EPWM_TZ_INTERRUPT);
        EPWM_clearTripZoneFlag(PWM_W_BASE, EPWM_TZ_FLAG_OST | EPWM_TZ_INTERRUPT);
    }
    else
    {
        EPWM_disableTripZoneSignals(PWM_U_BASE, sig);
        EPWM_disableTripZoneSignals(PWM_V_BASE, sig);
        EPWM_disableTripZoneSignals(PWM_W_BASE, sig);
        EPWM_clearTripZoneFlag(PWM_U_BASE, EPWM_TZ_FLAG_OST | EPWM_TZ_INTERRUPT);
        EPWM_clearTripZoneFlag(PWM_V_BASE, EPWM_TZ_FLAG_OST | EPWM_TZ_INTERRUPT);
        EPWM_clearTripZoneFlag(PWM_W_BASE, EPWM_TZ_FLAG_OST | EPWM_TZ_INTERRUPT);
    }
#endif
}

// ---- Non-switching output patterns -------------------------------------
// Which pattern the bridge is in. Starts as RUN only so the first
// pwm_force_off() in pwm_init() does the full OFF sequence.
typedef enum { PWM_OUT_RUN = 0, PWM_OUT_OFF, PWM_OUT_ASC } pwm_out_t;
static pwm_out_t s_pwm_out = PWM_OUT_RUN;

static const uint32_t s_pwm_base[3] = { PWM_U_BASE, PWM_V_BASE, PWM_W_BASE };

// Dead-band output mode, BOTH edges in one register write (DBCTL.OUT_MODE,
// bit1 = RED -> EPWMxA, bit0 = FED -> EPWMxB). Cleared = "EPWMxA and EPWMxB
// passed with no delay" (classical DB mode 1): the outputs ARE the
// action-qualifier outputs and POLSEL/IN_MODE have no effect. Set = the
// SysConfig AHC mode (RED + FED on input A, FED inverted). SysConfig leaves the
// DBCTL shadow disabled, so the write takes effect immediately. Only OUT_MODE is
// touched -- polarity, input mode and the RED/FED delays stay as configured.
static inline void db_set(uint32_t base, bool on)
{
    if(on) HWREGH(base + EPWM_O_DBCTL) |= EPWM_DBCTL_OUT_MODE_M;
    else   HWREGH(base + EPWM_O_DBCTL) &= (uint16_t)~EPWM_DBCTL_OUT_MODE_M;
}

// AQCSFRC: continuous software force, the highest-priority action in the AQ
// output chain (above PRD/CAU/CAD). Immediate load so it acts now, not at the
// next period. NOTE it sits BEFORE the dead band: in AHC mode EPWMxB is derived
// from A, so forcing AQ B does nothing until the dead band is bypassed.
static inline void aq_force(uint32_t base, EPWM_ActionQualifierOutputModule out,
                            EPWM_ActionQualifierSWOutput action)
{
    EPWM_setActionQualifierContSWForceShadowMode(base, EPWM_AQ_SW_IMMEDIATE_LOAD);
    EPWM_setActionQualifierContSWForceAction(base, out, action);
}

// ALL SIX LOW. Order per leg matters, it is what keeps this shoot-through-free
// when called from RUN with the gate still enabled:
//   1. force AQ A LOW while the dead band is still in AHC mode. EPWMxA falls at
//      once (RED delays only rising edges); EPWMxB can at most start its normal
//      dead-time-delayed rise, i.e. a correctly sequenced low-side turn-on.
//   2. force AQ B LOW (unused in AHC, it becomes the B output in step 3).
//   3. bypass the dead band: EPWMxB = AQ B = LOW, EPWMxA = AQ A = LOW.
// The opposite order (bypass first) could hand AQ A straight to the pin inside
// the RED window -- the high side would turn on with no dead time after the low
// side was told to turn off. Every step here only turns a device OFF.
// CMPA is parked at the period so a released AQ starts from 0 % high-side duty.
void pwm_force_off(void)
{
    uint16_t i;
    for(i = 0U; i < 3U; i++)
    {
        uint32_t b = s_pwm_base[i];
        aq_force(b, EPWM_AQ_OUTPUT_A, EPWM_AQ_SW_OUTPUT_LOW);
        aq_force(b, EPWM_AQ_OUTPUT_B, EPWM_AQ_SW_OUTPUT_LOW);
        db_set(b, false);
        EPWM_setCounterCompareValue(b, EPWM_COUNTER_COMPARE_A, g_pwm_period_count);
    }
    s_pwm_out = PWM_OUT_OFF;
}

// ACTIVE SHORT: high sides LOW, low sides HIGH. AQ A is forced LOW and the
// dead band is put back in AHC mode, so EPWMxB = NOT(FED(A)): the low side only
// turns on after A has been LOW for the full dead time. From RUN that is the
// hardware dead band doing its normal job. From OFF the high sides have been
// off since OFF was entered; the delay below covers the (not currently
// reachable -- every OFF->ASC path is at least one ISR tick apart) case of an
// OFF entered from RUN microseconds ago.
void pwm_force_asc(void)
{
    uint16_t i;
    if(s_pwm_out == PWM_OUT_OFF)
        DEVICE_DELAY_US((PWM_DEADBAND_NS / 1000U) + 1U);
    for(i = 0U; i < 3U; i++)
    {
        uint32_t b = s_pwm_base[i];
        aq_force(b, EPWM_AQ_OUTPUT_A, EPWM_AQ_SW_OUTPUT_LOW);
        db_set(b, true);
        aq_force(b, EPWM_AQ_OUTPUT_B, EPWM_AQ_SW_DISABLED);   // unused in AHC
        EPWM_setCounterCompareValue(b, EPWM_COUNTER_COMPARE_A, g_pwm_period_count);
    }
    s_pwm_out = PWM_OUT_ASC;
}

// Re-assert whichever non-switching pattern was last selected. Called every
// ISR tick outside RUN/ALIGN/OPENLOOP as belt-and-braces (see foc_pipeline.c
// step 4). If nothing was selected yet, OFF -- it is safe from any mode.
void pwm_hold_safe(void)
{
    if(s_pwm_out == PWM_OUT_ASC) pwm_force_asc();
    else                         pwm_force_off();
}

void pwm_set_duty(const FOC_Duty_t *d)
{
    // duty in [-0.5, +0.5] -> [0, period_count]
    float half = 0.5f * (float)g_pwm_period_count;
    int32_t cu = (int32_t)(half * (1.0f - 2.0f * d->value[0]));
    int32_t cv = (int32_t)(half * (1.0f - 2.0f * d->value[1]));
    int32_t cw = (int32_t)(half * (1.0f - 2.0f * d->value[2]));

    if(cu < 0) cu = 0; if(cu > g_pwm_period_count) cu = g_pwm_period_count;
    if(cv < 0) cv = 0; if(cv > g_pwm_period_count) cv = g_pwm_period_count;
    if(cw < 0) cw = 0; if(cw > g_pwm_period_count) cw = g_pwm_period_count;

    // Write CMPA first while the AQ force is still active, then release: the
    // force holds EPWMxA LOW while CMPA moves from period_count to the real duty
    // value, so the AQ takes over only with a valid compare value in place.
    EPWM_setCounterCompareValue(PWM_U_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t)cu);
    EPWM_setCounterCompareValue(PWM_V_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t)cv);
    EPWM_setCounterCompareValue(PWM_W_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t)cw);

    // Leaving OFF/ASC (the first duty write of a RUN/ALIGN/OPENLOOP stretch).
    // Dead band back to AHC while AQ A is still forced LOW: A has been LOW for
    // at least one ISR tick, so EPWMxB goes HIGH at once -- the low-side-on
    // half of normal complementary switching, high side already long off. Only
    // then is A released, so every subsequent edge goes through the dead band.
    // From OFF this is the first instant any output is HIGH, one ISR tick
    // after the state machine raised the gate enable on an all-LOW bridge.
    if(s_pwm_out != PWM_OUT_RUN)
    {
        uint16_t i;
        for(i = 0U; i < 3U; i++)
        {
            db_set(s_pwm_base[i], true);
            EPWM_setActionQualifierContSWForceAction(s_pwm_base[i], EPWM_AQ_OUTPUT_B,
                                                     EPWM_AQ_SW_DISABLED);
        }
        s_pwm_out = PWM_OUT_RUN;
    }

    // Releasing A every call is an idempotent register write once in RUN.
    EPWM_setActionQualifierContSWForceAction(PWM_U_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_SW_DISABLED);
    EPWM_setActionQualifierContSWForceAction(PWM_V_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_SW_DISABLED);
    EPWM_setActionQualifierContSWForceAction(PWM_W_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_SW_DISABLED);
}

void pwm_clear_trip(void)
{
    // Release the latched one-shot trip-zone (and its interrupt flag) on all
    // three half-bridges so PWM can resume on the next RUN. Called from
    // enter(FOC_IDLE) — i.e. after a fault has been cleared. Harmless when no
    // trip is configured/latched (clears already-zero flags). The HW trip
    // itself is configured in SysConfig (OSHT1, action A=LOW / B=HIGH = ASC).
    EPWM_clearTripZoneFlag(PWM_U_BASE, EPWM_TZ_FLAG_OST | EPWM_TZ_INTERRUPT);
    EPWM_clearTripZoneFlag(PWM_V_BASE, EPWM_TZ_FLAG_OST | EPWM_TZ_INTERRUPT);
    EPWM_clearTripZoneFlag(PWM_W_BASE, EPWM_TZ_FLAG_OST | EPWM_TZ_INTERRUPT);
}
