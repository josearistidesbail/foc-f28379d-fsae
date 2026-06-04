//=============================================================================
// foc_pipeline.c - FOC current loop (ISR-rate) and speed loop (1 kHz).
//
// Every step is a 1-line call into a TI library, so the structure of the
// algorithm is visible at a glance. Object instances live in this file as
// statics, owned and run only from this module.
//=============================================================================
#include "build_config.h"
#include "foc_pipeline.h"
#include "foc_state_machine.h"
#include "sensor_iface.h"
#include "adc_iface.h"
#include "pwm_iface.h"
#include "safety.h"
#include "debug_hooks.h"

#include "clarke.h"
#include "park.h"
#include "ipark.h"
#include "svgen.h"
#include "pi.h"

// ---- Static FOC objects (memory backing for TI handles) -----------------
static CLARKE_Obj    s_clarke_obj;
static PARK_Obj      s_park_obj;
static IPARK_Obj     s_ipark_obj;
static SVGEN_Obj     s_svgen_obj;
static PI_Obj        s_pi_id_obj;
static PI_Obj        s_pi_iq_obj;
static PI_Obj        s_pi_spd_obj;

static CLARKE_Handle s_clarke;
static PARK_Handle   s_park;
static IPARK_Handle  s_ipark;
static SVGEN_Handle  s_svgen;
static PI_Handle     s_pi_id;
static PI_Handle     s_pi_iq;
static PI_Handle     s_pi_spd;

// Live signals + refs (volatile because read from background)
static volatile FOC_Refs_t    s_refs;
static volatile FOC_Signals_t s_sig;
static uint16_t               s_decim;

// TODO: Debugging Step 6 alignment, remove after.
// Snapshotted every ISR while state is FOC_ALIGN_ROTOR. During align, theta
// is forced to 0 and Id_ref = ALIGN_ID_INJECT_A. The expected steady state:
//   g_dbg_align_id_meas -> ALIGN_ID_INJECT_A
//   g_dbg_align_iq_meas -> ~0
//   g_dbg_align_vd      -> small positive (~Rs * Id_ref + back-EMF if rotor moving)
volatile float32_t g_dbg_align_id_meas;
volatile float32_t g_dbg_align_iq_meas;
volatile float32_t g_dbg_align_vd;

// TODO Step 6 debug, remove after. Open-loop d-axis voltage probe used to
// determine current-sense polarity free of closed-loop dynamics. When nonzero
// AND state==FOC_ALIGN_ROTOR, the current-PI output is overridden with this
// fixed Vd [volts] (Vq forced to 0, integrators held at 0). With theta forced
// to 0 a fixed +Vd drives a known DC current into phase U; read g_dbg_iv_raw /
// g_dbg_iw_raw (raw codes, independent of ISENSE_SIGN) and s_sig.Idq to see the
// true measured sign for a known applied voltage. 0 = normal closed-loop align.
volatile float32_t g_dbg_openloop_vd;
// Companion q-axis open-loop probe. At theta=0, Vq drives current on the beta
// axis = between phases V and W (Iu = 0), BYPASSING phase U. If Vq conducts
// (supply shows steady current) but Vd does not, the phase-U leg is open
// (winding/connector/BoosterPack contact), not a firmware problem. 0 = off.
volatile float32_t g_dbg_openloop_vq;

// Direct q-axis current command for CCS Expressions during current-control
// bring-up. Write only while g_dbg_state == FOC_RUN. Cleared outside RUN so a
// stale torque command cannot survive a stop, fault, or restart.
volatile float32_t g_dbg_iq_ref;
// ISR-rate RUN snapshots for CCS Expressions. g_dbg_iq_ref is the requested
// command; these show the applied reference and Park-transform feedback.
volatile float32_t g_dbg_run_iq_ref;
volatile float32_t g_dbg_run_iq_meas;

void foc_init(void)
{
    s_clarke = CLARKE_init(&s_clarke_obj, sizeof(s_clarke_obj));
    s_park   = PARK_init  (&s_park_obj,   sizeof(s_park_obj));
    s_ipark  = IPARK_init (&s_ipark_obj,  sizeof(s_ipark_obj));
    s_svgen  = SVGEN_init (&s_svgen_obj,  sizeof(s_svgen_obj));
    s_pi_id  = PI_init    (&s_pi_id_obj,  sizeof(s_pi_id_obj));
    s_pi_iq  = PI_init    (&s_pi_iq_obj,  sizeof(s_pi_iq_obj));
    s_pi_spd = PI_init    (&s_pi_spd_obj, sizeof(s_pi_spd_obj));

    CLARKE_setNumSensors(s_clarke, 3);
    CLARKE_setScaleFactors(s_clarke, MATH_ONE_OVER_THREE, MATH_ONE_OVER_SQRT_THREE);

    SVGEN_setMode(s_svgen, SVM_COM_C);
    SVGEN_setOneOverDcBus_invV(s_svgen, 1.0f / MOTOR_VBUS_NOM_V);

    PI_setGains (s_pi_id,  GAIN_KP_ID, GAIN_KI_ID);
    PI_setGains (s_pi_iq,  GAIN_KP_IQ, GAIN_KI_IQ);
    PI_setGains (s_pi_spd, GAIN_KP_SPEED, GAIN_KI_SPEED);

    float vmax = VDQ_MAX_FRACTION * MOTOR_VBUS_NOM_V * 0.5f;
    PI_setMinMax(s_pi_id,  -vmax, vmax);
    PI_setMinMax(s_pi_iq,  -vmax, vmax);
    PI_setMinMax(s_pi_spd, IQ_REF_MIN_A, IQ_REF_MAX_A);

    s_refs.id_ref    = 0.0f;
    s_refs.iq_ref    = 0.0f;
    s_refs.speed_ref = 0.0f;
    s_refs.vbus      = MOTOR_VBUS_NOM_V;
    g_dbg_iq_ref     = 0.0f;
    g_dbg_run_iq_ref = 0.0f;
    g_dbg_run_iq_meas = 0.0f;
    s_decim          = 0;
}

FOC_Refs_t * foc_get_refs(void) { return (FOC_Refs_t *)&s_refs; }
const FOC_Signals_t * foc_get_signals(void) { return (const FOC_Signals_t *)&s_sig; }

float32_t foc_get_gain(foc_gain_id_t which)
{
    switch(which)
    {
    case FOC_GAIN_KP_D: return PI_getKp(s_pi_id);
    case FOC_GAIN_KI_D: return PI_getKi(s_pi_id);
    case FOC_GAIN_KP_Q: return PI_getKp(s_pi_iq);
    case FOC_GAIN_KI_Q: return PI_getKi(s_pi_iq);
    case FOC_GAIN_KP_W: return PI_getKp(s_pi_spd);
    case FOC_GAIN_KI_W: return PI_getKi(s_pi_spd);
    default:            return 0.0f;
    }
}

void foc_set_gain(foc_gain_id_t which, float32_t value)
{
    switch(which)
    {
    case FOC_GAIN_KP_D: PI_setKp(s_pi_id,  value); break;
    case FOC_GAIN_KI_D: PI_setKi(s_pi_id,  value); break;
    case FOC_GAIN_KP_Q: PI_setKp(s_pi_iq,  value); break;
    case FOC_GAIN_KI_Q: PI_setKi(s_pi_iq,  value); break;
    case FOC_GAIN_KP_W: PI_setKp(s_pi_spd, value); break;
    case FOC_GAIN_KI_W: PI_setKi(s_pi_spd, value); break;
    default: break;
    }
}

//-----------------------------------------------------------------------------
// Current loop, called from ADCA1 EOC ISR at FOC_ISR_FREQ_HZ.
// Placed in .TI.ramfunc by the linker pragma in isr.c (where it is called).
//-----------------------------------------------------------------------------
void foc_current_loop_isr(void)
{
    debug_isr_scope_high();

    // 1. Sensor + angle. During ALIGN, force theta=0 so the d-axis lines up
    //    with phase-U (alpha electrical). Sensor estimates are still updated
    //    so we can capture the rotor's settled position at end of ALIGN.
    FOC_State_t st = sm_get_state();
    sensor_update_isr();
    s_sig.theta_elec = (st == FOC_ALIGN_ROTOR) ? 0.0f : sensor_get_elec_angle();
    s_sig.omega_elec = sensor_get_elec_speed();

    // 2. Phase currents -> Clarke -> Park
    adc_read_phase_currents(&s_sig.Iabc);
    CLARKE_run(s_clarke, &s_sig.Iabc, &s_sig.Iab);
    PARK_setup(s_park, s_sig.theta_elec);
    PARK_run  (s_park, &s_sig.Iab, &s_sig.Idq);

    // 3. Inner current PIs
    //    Clamp PI limits to actual VBUS each ISR so anti-windup is effective
    //    regardless of supply voltage (e.g. 12 V bench vs 48 V rated).
    {
        float vmax_dyn = VDQ_MAX_FRACTION * s_refs.vbus * 0.5f;
        PI_setMinMax(s_pi_id, -vmax_dyn, vmax_dyn);
        PI_setMinMax(s_pi_iq, -vmax_dyn, vmax_dyn);
    }
    //    (Only run when state machine allows it; otherwise zero outputs.)
    if(st == FOC_RUN || st == FOC_ALIGN_ROTOR)
    {
        PI_run(s_pi_id, s_refs.id_ref, s_sig.Idq.value[0], &s_sig.Vdq.value[0]);
        PI_run(s_pi_iq, s_refs.iq_ref, s_sig.Idq.value[1], &s_sig.Vdq.value[1]);

        // Open-loop probe (see g_dbg_openloop_vd / _vq). ALIGN only; bypasses the
        // (currently unstable at 5 kHz) closed loop with a fixed Vd/Vq. Vd injects
        // on phase U; Vq injects on the V<->W axis (bypasses phase U).
        if(st == FOC_ALIGN_ROTOR &&
           (g_dbg_openloop_vd != 0.0f || g_dbg_openloop_vq != 0.0f))
        {
            s_sig.Vdq.value[0] = g_dbg_openloop_vd;
            s_sig.Vdq.value[1] = g_dbg_openloop_vq;
            PI_setUi(s_pi_id, 0.0f);
            PI_setUi(s_pi_iq, 0.0f);
        }
    }
    else
    {
        s_sig.Vdq.value[0] = 0.0f;
        s_sig.Vdq.value[1] = 0.0f;
        PI_setUi(s_pi_id, 0.0f);
        PI_setUi(s_pi_iq, 0.0f);
    }

    if(st == FOC_ALIGN_ROTOR)
    {
        g_dbg_align_id_meas = s_sig.Idq.value[0];
        g_dbg_align_iq_meas = s_sig.Idq.value[1];
        g_dbg_align_vd      = s_sig.Vdq.value[0];
    }
    else if(st == FOC_RUN)
    {
        g_dbg_run_iq_ref  = s_refs.iq_ref;
        g_dbg_run_iq_meas = s_sig.Idq.value[1];
    }

    // 4. Inverse Park -> SVGEN -> PWM.
    //    Keep vbus fresh every ISR (safety_check_isr() needs it for OV/UV),
    //    but only DRIVE the bridge when the state machine is actually
    //    commanding current. In IDLE/CALIBRATE/FAULT we must re-assert the
    //    pwm_force_safe() state every tick: SVGEN's zero-voltage vector maps to
    //    50% duty on all three legs, and pwm_set_duty() releases the AQCSFRC
    //    safe-force, so calling it here would switch all three half-bridges and
    //    trip DRV8305 high-side VDS over-current (nFAULT) while "idle".
    s_refs.vbus = adc_read_vbus();
    SVGEN_setOneOverDcBus_invV(s_svgen, 1.0f / s_refs.vbus);

    if(st == FOC_RUN || st == FOC_ALIGN_ROTOR)
    {
        IPARK_setup(s_ipark, s_sig.theta_elec);
        IPARK_run  (s_ipark, &s_sig.Vdq, &s_sig.Vab);
        SVGEN_run  (s_svgen, &s_sig.Vab, &s_sig.duty);
        pwm_set_duty(&s_sig.duty);
    }
    else
    {
        pwm_force_safe();
    }

    // 5. Decimated outer loop
    if(++s_decim >= SPEED_LOOP_DECIM)
    {
        s_decim = 0;
        foc_speed_loop_tick();
    }

    // 6. Safety latches and trip checks
    safety_check_isr();

    // 7. Log one ring sample
    debug_datalog_push(&s_sig, (uint16_t)st);
    debug_isr_scope_low();
}

//-----------------------------------------------------------------------------
// Slow-loop tick at 1 kHz. Speed PI is intentionally disabled during
// current-control bring-up so iq_ref remains directly commandable.
//-----------------------------------------------------------------------------
void foc_speed_loop_tick(void)
{
    if(sm_get_state() == FOC_RUN)
    {
        s_refs.iq_ref = g_dbg_iq_ref;
        s_refs.id_ref = ID_REF_NOMINAL_A;
        PI_setUi(s_pi_spd, 0.0f);
    }
    else
    {
        g_dbg_iq_ref = 0.0f;
        s_refs.iq_ref = 0.0f;
    }

    sm_tick_1khz();
}
