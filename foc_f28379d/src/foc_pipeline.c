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
static PI_Obj        s_pi_fw_obj;

static CLARKE_Handle s_clarke;
static PARK_Handle   s_park;
static IPARK_Handle  s_ipark;
static SVGEN_Handle  s_svgen;
static PI_Handle     s_pi_id;
static PI_Handle     s_pi_iq;
static PI_Handle     s_pi_spd;
static PI_Handle     s_pi_fw;     // field-weakening regulator (Step 11)

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

// Alignment result (Step 6). g_dbg_align_offset_elec is the captured electrical
// zero offset in DEGREES — watch it agree across rotor start positions (the old
// single-shot capture varied ~50 deg). g_dbg_align_qep_cnt is the raw QPOSCNT at
// finalize (varies with start position, that's expected).
volatile float32_t g_dbg_align_offset_elec;
volatile int32_t   g_dbg_align_qep_cnt;

// Cross-coupling / back-EMF feedforward. g_dbg_decouple_en toggles it live (also
// the "decouple_en" serial param); g_dbg_ff_d/_q expose the applied terms.
volatile uint16_t  g_dbg_decouple_en;
volatile float32_t g_dbg_ff_d;
volatile float32_t g_dbg_ff_q;

// Outer-loop control mode (also the "control_mode" serial param):
//   FOC_MODE_TORQUE -> iq_ref taken directly from g_dbg_iq_ref
//   FOC_MODE_SPEED  -> iq_ref produced by the speed PI from s_refs.speed_ref
// Switchable live; foc_speed_loop_tick() makes the transfer bumpless.
volatile uint16_t  g_dbg_control_mode;

// Inner current-loop enable (also the "iloop_en" serial param); default
// FOC_ILOOP_DEFAULT=1. 1 = the d/q current PIs are enforced (normal closed-loop
// FOC). 0 = open-loop resistive voltage mode (RUN only): the PIs are bypassed and
// the operator's id_ref/iq_ref (still in AMPS) are applied as the DC voltage that
// would drive that current through the winding resistance,
//   Vd = MOTOR_RS_OHM * id_ref,  Vq = MOTOR_RS_OHM * iq_ref,
// using the live position-sensor angle. No PI, no integrator, and NO back-EMF
// feedforward. WARNING: ignoring back-EMF is only valid at low/zero speed -- at
// speed the small applied Vq vs a large back-EMF can drive strong braking/
// generation. The applied voltage is clamped to the inverter budget and the phase
// overcurrent trip stays armed in FOC_RUN, but treat this as a bring-up tool.
// In FOC_ALIGN_ROTOR, 0 instead selects the OPEN-LOOP ALIGN DRIVE: a fixed
// d-axis modulation g_ol_mod in the duty domain (unity SVGEN bus, exactly like
// FOC_OPENLOOP), so align + the SIN/COS scale calibration work on a bench where
// the VBUS sense is absent (the PI clamp vmax_dyn ~ vbus would pass 0 V).
volatile uint16_t  g_dbg_iloop_en;

// Field weakening (Step 11). g_dbg_fw_en toggles it live (also the "fw_en" serial
// param); default FW_DEFAULT. The regulator runs in the current-loop ISR (RUN
// only) and winds id negative when the requested |Vdq| saturates the inverter.
//   g_dbg_fw_id  -- applied FW id component [A], <= 0
//   g_dbg_vmag   -- requested voltage magnitude |Vdq| [V] (for the scope)
//   g_dbg_iq_lim -- flux-priority current-circle limit on |iq| [A]
volatile uint16_t  g_dbg_fw_en;
volatile float32_t g_dbg_fw_id;
volatile float32_t g_dbg_vmag;
volatile float32_t g_dbg_iq_lim;

// Negative d-axis current produced by the FW regulator [A], in [FW_ID_MIN_A, 0].
// Added to ID_REF_NOMINAL_A to form id_ref each RUN tick. Reset on RUN entry.
static float32_t   s_fw_id;

// Ramp-limited electrical speed setpoint tracked by the speed loop (speed mode).
// Reset to 0 in foc_init() and whenever the state machine is not in FOC_RUN.
static float32_t   s_speed_cmd;

// Open-loop PWM test mode (bench, no power stage). A synthetic electrical angle
// rotates at g_ol_freq_hz while a fixed q-axis "voltage" g_ol_mod is pushed
// straight through IPARK/SVGEN/PWM -- no current loop, no sensor, no vbus
// dependence (oneOverDcBus forced to 1 so g_ol_mod is ~peak duty deviation).
// Used to scope the gate waveforms / deadband / sync with nothing connected;
// entered only in bench mode (g_module_faults_en == 0) via the FOC_OPENLOOP state.
volatile float32_t g_ol_freq_hz = 5.0f;    // electrical frequency [Hz]
volatile float32_t g_ol_mod     = OL_MOD_DEFAULT;  // q-axis drive (~peak duty dev, 0..0.5)
static   float32_t s_ol_theta;             // synthetic electrical angle [rad]

// Bench VBUS override [V] ("vbus_ovr" param, NEEDS_IDLE). 0 = use the measured
// bus (normal). >0 = substitute this fixed voltage for refs.vbus when the VBUS
// sense is physically disconnected (reads ~0): without it the PI clamp
// (vmax_dyn = frac*vbus/2) passes 0 V and the SVGEN 1/vbus normalization is
// garbage, so RUN cannot drive the motor at all. Set it to the actual DC-link
// voltage. WARNING: this also blinds the SW overvoltage trip (it compares
// refs.vbus) -- bench-only tool, zero it once the sense line is repaired.
volatile float32_t g_vbus_override_v = VBUS_OVERRIDE_DEFAULT_V;

//-----------------------------------------------------------------------------
// Trig/RTS-free square root for the flux-priority current-circle limit. The SDK
// <math.h> resolves to the motor-control math header (no C99 sqrtf), and pulling
// the RTS trig/sqrt routines risks flash overflow (see CLAUDE.md pitfalls), so
// use a self-contained fast inverse-sqrt seed + two Newton refinements. ~1e-4
// relative accuracy -- ample for bounding a current reference.
//-----------------------------------------------------------------------------
static inline float32_t foc_fast_sqrt(float32_t x)
{
    if(x <= 0.0f) return 0.0f;
    union { float32_t f; uint32_t u; } c;
    c.f = x;
    c.u = 0x5f3759dfU - (c.u >> 1);              // initial 1/sqrt(x) estimate
    float32_t y = c.f;
    y = y * (1.5f - 0.5f * x * y * y);           // Newton iter 1 (refine 1/sqrt)
    y = y * (1.5f - 0.5f * x * y * y);           // Newton iter 2
    return x * y;                                 // sqrt(x) = x * (1/sqrt(x))
}

// Reset the FW regulator: zero the commanded weakening current and the PI
// integrator. Called on entry to FOC_RUN and whenever not running.
static void fw_reset(void)
{
    s_fw_id = 0.0f;
    PI_setUi(s_pi_fw, 0.0f);
}

//-----------------------------------------------------------------------------
// Rotor alignment controller (runs inside the current-loop ISR while the state
// machine is in FOC_ALIGN_ROTOR). The state machine just polls foc_align_done().
//-----------------------------------------------------------------------------
// Ramp-and-average (both QEP and the RM44AC resolver): settle the rotor at the
// commanded electrical zero, then sweep the commanded field open-loop through
// ALIGN_RAMP_MECH_REVS whole mechanical revolutions while circular-averaging
// (sensor_raw - commanded) electrical angle. Averaging over integer mech revs
// cancels the cogging/stiction that biases a single-shot capture. Result stored
// via sensor_set_elec_offset(). The resolver is absolute (its offset is a fixed
// mechanical quantity), but the spin still helps: it averages out the
// per-start-position settling error a single snapshot would otherwise bake in.
#define ALIGN_SETTLE_TICKS  ((uint32_t)(ALIGN_SETTLE_S * FOC_ISR_FREQ_HZ))
#define ALIGN_RAMP_TICKS    ((uint32_t)((ALIGN_RAMP_MECH_REVS / ALIGN_RAMP_MECH_SPEED_RPS) \
                                        * FOC_ISR_FREQ_HZ))
// Per-ISR carrier advance [elec rad]: mech_rev/s * 2pi * pole_pairs * Ts.
#define ALIGN_CARRIER_DTHETA \
    (ALIGN_RAMP_MECH_SPEED_RPS * 2.0f * MATH_PI * (float32_t)MOTOR_POLE_PAIRS * FOC_ISR_TS)

static FOC_State_t s_prev_state    = FOC_IDLE;
static uint32_t    s_align_ticks;
static bool        s_align_done;

#if SENSOR_BACKEND_RM44AC
// SIN/COS scale-calibration phase, inserted between settle and the offset
// sweep (see sensor_rm44ac.h SENSOR_RES_CAL_*): drag the rotor through whole
// mech rev(s) with the same carrier mechanism while tracking raw min/max ADC
// codes per channel, then commit bias/amplitude via adc_set_sincos_scale() so
// the offset sweep runs on the corrected normalization.
#define ALIGN_CAL_TICKS ((uint32_t)((SENSOR_RES_CAL_MECH_REVS \
                                     / ALIGN_RAMP_MECH_SPEED_RPS) * FOC_ISR_FREQ_HZ))
volatile uint16_t g_res_cal_en = SENSOR_RES_CAL_DEFAULT_EN;  // "res_cal_en" param
// Captured extremes (RO params cal_sin_min/... + Expressions view). Reset to
// 0xFFFF/0 sentinels each align; only meaningful once the cal phase has run.
volatile uint16_t g_res_cal_sin_min;
volatile uint16_t g_res_cal_sin_max;
volatile uint16_t g_res_cal_cos_min;
volatile uint16_t g_res_cal_cos_max;
static   uint32_t s_align_cal_ticks;   // latched at align entry (0 = cal disabled)
static   bool     s_cal_committed;
static   bool     s_cal_failed;        // cal rejected -> hold align, fault latched
#endif
// Offset-capture enable ("align_off_en" param, both backends). 0 = skip the
// ramp sweep and pin the electrical offset to 0 (theta_elec = raw sensor angle).
// Only meaningful for an ABSOLUTE sensor (the resolver); the incremental QEP has
// no usable zero without the sweep, hence the per-motor default.
volatile uint16_t  g_align_offset_en = ALIGN_OFFSET_CAPTURE_DEFAULT;
static   uint32_t  s_align_ramp_ticks; // latched at align entry (0 = capture off)
// Ramp-and-average offset-capture state (both backends).
static float32_t   s_align_carrier;     // commanded electrical angle during ALIGN
// Trig-free circular mean of (sensor_raw - commanded). The samples cluster
// tightly around the true offset (constant offset + small cogging ripple), so we
// anchor on the first sample and average the wrapped deviation from it -- no
// sinf/cosf needed (which would pull large RTS tables into flash).
static float32_t   s_align_ref;         // first (raw - carrier) sample
static float32_t   s_align_sum;         // sum of wrapped deviations from ref
static uint32_t    s_align_n;

static void align_reset(void)
{
    s_align_ticks   = 0;
    s_align_done    = false;
    s_align_carrier = 0.0f;
    s_align_ref     = 0.0f;
    s_align_sum     = 0.0f;
    s_align_n       = 0;
    // Latch the enable so a mid-align host write cannot change the tick budget
    // out from under the phase comparisons (same reason as s_align_cal_ticks).
    s_align_ramp_ticks = g_align_offset_en ? ALIGN_RAMP_TICKS : 0U;
#if SENSOR_BACKEND_RM44AC
    s_align_cal_ticks = g_res_cal_en ? ALIGN_CAL_TICKS : 0U;  // latch: immune to mid-align writes
    g_res_cal_sin_min = 0xFFFFU;
    g_res_cal_sin_max = 0U;
    g_res_cal_cos_min = 0xFFFFU;
    g_res_cal_cos_max = 0U;
    s_cal_committed   = false;
    s_cal_failed      = false;
    // Normalization is untrusted until the cal phase commits: hold the
    // magnitude-window loss check reset AND drop any stale latch (with wrong
    // scale g_resolver_lost may already be set from boot -- it is one-way and
    // safety_check_isr() would fault ALIGN on its first tick). align_reset()
    // runs before safety_check_isr() in the same ISR, so this is race-free.
    g_resolver_lost         = 0U;
    g_resolver_loss_count   = 0U;
    g_resolver_loss_inhibit = 1U;
#endif
}

// Advance the controller one ISR and return the electrical angle to drive into
// Park/IPark for this tick. Id_ref = ALIGN_ID_INJECT_A is set by the state
// machine on ALIGN entry; the d-axis PI holds that current along the carrier.
static float32_t align_step(void)
{
#if SENSOR_BACKEND_RM44AC
    // Scale calibration was rejected: the fault is already latched, but
    // sm_raise_fault() only lands on the next 1 kHz tick. Hold the carrier here
    // so the intervening ISRs cannot start the offset sweep on the bad scale.
    if(s_cal_failed) return s_align_carrier;
    const uint32_t cal_ticks = s_align_cal_ticks;
#else
    const uint32_t cal_ticks = 0U;
#endif
    if(s_align_ticks < ALIGN_SETTLE_TICKS)
    {
        s_align_carrier = 0.0f;                         // lock to phase-U axis
    }
#if SENSOR_BACKEND_RM44AC
    else if(s_align_ticks < ALIGN_SETTLE_TICKS + cal_ticks)
    {
        // SIN/COS scale calibration: same open-loop drag as the offset sweep
        // below, but here we only track the raw ADC extremes of each channel
        // (already latched by this ISR's adc_read_sin_cos()).
        s_align_carrier += ALIGN_CARRIER_DTHETA;
        if(s_align_carrier >= 2.0f * MATH_PI) s_align_carrier -= 2.0f * MATH_PI;

        uint16_t sr = g_dbg_sin_raw;
        uint16_t cr = g_dbg_cos_raw;
        if(sr < g_res_cal_sin_min) g_res_cal_sin_min = sr;
        if(sr > g_res_cal_sin_max) g_res_cal_sin_max = sr;
        if(cr < g_res_cal_cos_min) g_res_cal_cos_min = cr;
        if(cr > g_res_cal_cos_max) g_res_cal_cos_max = cr;

        // Commit on the LAST cal tick: sensor_update_isr() runs before
        // align_step() each ISR, so the offset sweep's very first (anchor)
        // sample is already computed under the new scale.
        if(!s_cal_committed &&
           (s_align_ticks + 1U >= ALIGN_SETTLE_TICKS + cal_ticks))
        {
            s_cal_committed = true;
            if(!adc_set_sincos_scale(g_res_cal_sin_min, g_res_cal_sin_max,
                                     g_res_cal_cos_min, g_res_cal_cos_max))
            {
                // Rejected: the captured extremes are not a usable sin/cos pair
                // (rotor never moved, a channel is dead/frozen, or the two
                // amplitudes disagree -- reason in g_res_cal_status). The OLD
                // scale is still in place, so the angle is untrusted. Fault
                // instead of falling through to the offset sweep, which would
                // average a garbage angle into a garbage offset and then report
                // align success to the state machine.
                s_cal_failed = true;
                sm_raise_fault(FAULT_SENSOR_LOSS);
            }
            else
            {
                g_resolver_lost         = 0U;   // fresh start under the new scale
                g_resolver_loss_count   = 0U;
                g_resolver_loss_inhibit = 0U;   // re-arm loss detection
            }
        }
    }
#endif
    else if(s_align_ticks < ALIGN_SETTLE_TICKS + cal_ticks + s_align_ramp_ticks)
    {
        s_align_carrier += ALIGN_CARRIER_DTHETA;        // slow open-loop sweep
        if(s_align_carrier >= 2.0f * MATH_PI) s_align_carrier -= 2.0f * MATH_PI;

        float32_t e = sensor_get_elec_angle_raw() - s_align_carrier;
        if(s_align_n == 0) s_align_ref = e;             // anchor on first sample
        float32_t d = e - s_align_ref;                  // wrap deviation to [-pi, pi)
        while(d <  -MATH_PI)        d += 2.0f * MATH_PI;
        while(d >=  MATH_PI)        d -= 2.0f * MATH_PI;
        s_align_sum += d;
        s_align_n++;
    }
    else if(!s_align_done)
    {
        // Offset capture disabled (s_align_ramp_ticks == 0): pin the offset to 0
        // explicitly rather than just skipping the sweep -- a previous align's
        // offset must not survive into this one.
        float32_t off = 0.0f;
        if(s_align_ramp_ticks)
        {
            off = s_align_ref +
                  (s_align_n ? s_align_sum / (float32_t)s_align_n : 0.0f);
            while(off <  0.0f)         off += 2.0f * MATH_PI;
            while(off >= 2.0f*MATH_PI) off -= 2.0f * MATH_PI;
        }
        sensor_set_elec_offset(off);
        g_dbg_align_offset_elec = off * (180.0f / MATH_PI);
#if SENSOR_BACKEND_QEP
        g_dbg_align_qep_cnt     = (int32_t)g_dbg_qep_count;   // QEP-only raw count
#endif
#if SENSOR_BACKEND_RM44AC
        g_resolver_loss_inhibit = 0U;   // belt-and-braces (cal disabled path)
#endif
        s_align_done = true;
    }
    s_align_ticks++;
    return s_align_carrier;
}

bool foc_align_done(void) { return s_align_done; }

// Open-loop PWM test: advance the synthetic electrical angle at g_ol_freq_hz.
// A fixed Vq = g_ol_mod then rotates through IPARK/SVGEN producing a balanced
// 3-phase duty set, no current loop or sensor involved.
static float32_t openloop_step(void)
{
    s_ol_theta += (2.0f * MATH_PI * FOC_ISR_TS) * g_ol_freq_hz;
    if(s_ol_theta >= 2.0f * MATH_PI) s_ol_theta -= 2.0f * MATH_PI;
    if(s_ol_theta <  0.0f)           s_ol_theta += 2.0f * MATH_PI;
    return s_ol_theta;
}

void foc_init(void)
{
    s_clarke = CLARKE_init(&s_clarke_obj, sizeof(s_clarke_obj));
    s_park   = PARK_init  (&s_park_obj,   sizeof(s_park_obj));
    s_ipark  = IPARK_init (&s_ipark_obj,  sizeof(s_ipark_obj));
    s_svgen  = SVGEN_init (&s_svgen_obj,  sizeof(s_svgen_obj));
    s_pi_id  = PI_init    (&s_pi_id_obj,  sizeof(s_pi_id_obj));
    s_pi_iq  = PI_init    (&s_pi_iq_obj,  sizeof(s_pi_iq_obj));
    s_pi_spd = PI_init    (&s_pi_spd_obj, sizeof(s_pi_spd_obj));
    s_pi_fw  = PI_init    (&s_pi_fw_obj,  sizeof(s_pi_fw_obj));

    CLARKE_setNumSensors(s_clarke, 3);
    CLARKE_setScaleFactors(s_clarke, MATH_ONE_OVER_THREE, MATH_ONE_OVER_SQRT_THREE);

    SVGEN_setMode(s_svgen, SVM_COM_C);
    SVGEN_setOneOverDcBus_invV(s_svgen, 1.0f / MOTOR_VBUS_NOM_V);

    PI_setGains (s_pi_id,  GAIN_KP_ID, GAIN_KI_ID);
    PI_setGains (s_pi_iq,  GAIN_KP_IQ, GAIN_KI_IQ);
    PI_setGains (s_pi_spd, GAIN_KP_SPEED, GAIN_KI_SPEED);
    PI_setGains (s_pi_fw,  GAIN_KP_FW, GAIN_KI_FW);

    float vmax = VDQ_MAX_FRACTION * MOTOR_VBUS_NOM_V * 0.5f;
    PI_setMinMax(s_pi_id,  -vmax, vmax);
    PI_setMinMax(s_pi_iq,  -vmax, vmax);
    PI_setMinMax(s_pi_spd, IQ_REF_MIN_A, IQ_REF_MAX_A);
    // FW output is a flux-weakening (<= 0) d-axis current in [FW_ID_MIN_A, 0].
    PI_setMinMax(s_pi_fw,  FW_ID_MIN_A, 0.0f);

    s_refs.id_ref    = 0.0f;
    s_refs.iq_ref    = 0.0f;
    s_refs.speed_ref = 0.0f;
    s_refs.vbus      = MOTOR_VBUS_NOM_V;
    g_dbg_iq_ref     = 0.0f;
    g_dbg_run_iq_ref = 0.0f;
    g_dbg_run_iq_meas = 0.0f;
    g_dbg_decouple_en = FOC_DECOUPLE_DEFAULT;
    g_dbg_control_mode = FOC_MODE_TORQUE;
    g_dbg_iloop_en   = FOC_ILOOP_DEFAULT;
    g_dbg_fw_en      = FW_DEFAULT;
    g_dbg_fw_id      = 0.0f;
    g_dbg_vmag       = 0.0f;
    g_dbg_iq_lim     = 0.0f;
    s_fw_id          = 0.0f;
    s_speed_cmd      = 0.0f;
    s_decim          = 0;

    align_reset();
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
    case FOC_GAIN_KP_FW: return PI_getKp(s_pi_fw);
    case FOC_GAIN_KI_FW: return PI_getKi(s_pi_fw);
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
    case FOC_GAIN_KP_FW: PI_setKp(s_pi_fw, value); break;
    case FOC_GAIN_KI_FW: PI_setKi(s_pi_fw, value); break;
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

    // 1. Sensor + angle. During ALIGN the angle is the controller's commanded
    //    carrier (settle at 0, then a slow open-loop sweep); the encoder is
    //    still read so align_step() can average the offset. Otherwise use the
    //    corrected encoder angle.
    FOC_State_t st = sm_get_state();
    sensor_update_isr();

    if(st == FOC_ALIGN_ROTOR && s_prev_state != FOC_ALIGN_ROTOR) align_reset();
    if(st == FOC_RUN         && s_prev_state != FOC_RUN)         fw_reset();
    if(st == FOC_OPENLOOP    && s_prev_state != FOC_OPENLOOP)    s_ol_theta = 0.0f;
#if SENSOR_BACKEND_RM44AC
    // ALIGN exited by ANY path (done, fault, stop): never leave the loss check
    // disabled -- an align aborted mid-calibration must not blind a later RUN.
    if(st != FOC_ALIGN_ROTOR && s_prev_state == FOC_ALIGN_ROTOR)
    {
        g_resolver_loss_inhibit = 0U;
    }
#endif
    s_prev_state = st;

    if(st == FOC_ALIGN_ROTOR)   s_sig.theta_elec = align_step();
    else if(st == FOC_OPENLOOP) s_sig.theta_elec = openloop_step();
    else                        s_sig.theta_elec = sensor_get_elec_angle();
    s_sig.omega_elec = sensor_get_elec_speed();

    // 2. Phase currents -> Clarke -> Park
    adc_read_phase_currents(&s_sig.Iabc);
    CLARKE_run(s_clarke, &s_sig.Iabc, &s_sig.Iab);
    PARK_setup(s_park, s_sig.theta_elec);
    PARK_run  (s_park, &s_sig.Iab, &s_sig.Idq);

    // 3. Inner current PIs.
    //    Clamp PI limits to actual VBUS each ISR so anti-windup is effective
    //    regardless of supply voltage (e.g. 24 V bench vs 48 V rated).
    //    Cross-coupling / back-EMF feedforward (RUN only, gated by
    //    g_dbg_decouple_en) is folded INTO the clamp: the PI is limited to
    //    +/-vmax_dyn - ff, then ff is added after PI_run, so the final Vd/Vq stay
    //    within +/-vmax_dyn and the TI PI's built-in anti-windup stays valid. ff
    //    uses the REFERENCE currents (omega is a coarse 1 kHz estimate; off the
    //    measured currents it would inject noise). Assumes theta_elec and
    //    omega_elec share a sign convention -- true at SENSOR_QEP_DIR_SIGN = +1.
    // Latch the current-loop-bypass flag ONCE per ISR: it selects both the Vdq
    // domain (volts vs duty) here and the SVGEN bus normalization in step 4 --
    // a live toggle between the two reads would drive one tick with mismatched
    // domain/normalization (duty-scale Vdq through the real 1/vbus).
    uint16_t iloop = g_dbg_iloop_en;
    float vmax_dyn = VDQ_MAX_FRACTION * s_refs.vbus * 0.5f;
    float ff_d = 0.0f, ff_q = 0.0f;
    if(st == FOC_RUN && g_dbg_decouple_en && iloop)
    {
        float we = s_sig.omega_elec;
        ff_d = -we * MOTOR_LQ_H * s_refs.iq_ref;
        ff_q =  we * (MOTOR_LD_H * s_refs.id_ref + MOTOR_FLUX_VS);
    }
    g_dbg_ff_d = ff_d;
    g_dbg_ff_q = ff_q;
    PI_setMinMax(s_pi_id, -vmax_dyn - ff_d, vmax_dyn - ff_d);
    PI_setMinMax(s_pi_iq, -vmax_dyn - ff_q, vmax_dyn - ff_q);

    //    (Only run when state machine allows it; otherwise zero outputs.)
    if(st == FOC_ALIGN_ROTOR && !iloop)
    {
        // Open-loop align drive (current PIs bypassed). With the VBUS sense
        // absent/untrusted the PI clamp above (vmax_dyn ~ 0) passes no voltage
        // and align cannot move the rotor -- so drive the align carrier the way
        // FOC_OPENLOOP does: a fixed d-axis modulation g_ol_mod ("ol_mod"
        // param) in the DUTY domain (SVGEN gets a unity bus in step 4). At the
        // slow carrier the current settles on the commanded angle (I ~ V/Rs),
        // which is all the align/calibration sweeps need. Integrators held at 0
        // so closed-loop align re-engages cleanly when iloop_en returns to 1.
        s_sig.Vdq.value[0] = g_ol_mod;
        s_sig.Vdq.value[1] = 0.0f;
        PI_setUi(s_pi_id, 0.0f);
        PI_setUi(s_pi_iq, 0.0f);
    }
    else if(st == FOC_RUN && !iloop)
    {
        // Open-loop resistive voltage mode (current PIs bypassed). Apply the DC
        // voltage that would drive the commanded current through the winding
        // resistance: Vd=Rs*id_ref, Vq=Rs*iq_ref. id_ref/iq_ref stay in AMPS; the
        // angle still comes from the position sensor (Park/IPark below). No
        // back-EMF feedforward -- valid only at low/zero speed (see g_dbg_iloop_en).
        // Clamp to the inverter budget and hold the integrators at 0 so a switch
        // back to closed loop re-engages cleanly. id_ref is NOT overwritten by the
        // FW/id-ownership block (step 3b) while open-loop, so the operator owns it.
        float vd = MOTOR_RS_OHM * s_refs.id_ref;
        float vq = MOTOR_RS_OHM * s_refs.iq_ref;
        s_sig.Vdq.value[0] = MATH_max(-vmax_dyn, MATH_min(vmax_dyn, vd));
        s_sig.Vdq.value[1] = MATH_max(-vmax_dyn, MATH_min(vmax_dyn, vq));
        PI_setUi(s_pi_id, 0.0f);
        PI_setUi(s_pi_iq, 0.0f);
    }
    else if(st == FOC_RUN || st == FOC_ALIGN_ROTOR)
    {
        PI_run(s_pi_id, s_refs.id_ref, s_sig.Idq.value[0], &s_sig.Vdq.value[0]);

        // Flux-priority current-circle limit (FW only): id (set by the FW
        // regulator) gets the current budget first; clamp the q reference to
        // iq_lim = sqrt(I_peak^2 - id^2) so id^2 + iq^2 <= I_peak^2 and the
        // magnitude stays under MOTOR_OC_TRIP_A. RUN bit-identical when FW off.
        float iq_cmd = s_refs.iq_ref;
        if(st == FOC_RUN && g_dbg_fw_en)
        {
            float id_now    = s_refs.id_ref;
            float iq_lim_sq = (MOTOR_I_PEAK_A * MOTOR_I_PEAK_A) - id_now * id_now;
            float iq_lim    = foc_fast_sqrt(iq_lim_sq);     // 0 if arg <= 0
            g_dbg_iq_lim    = iq_lim;
            iq_cmd = MATH_max(-iq_lim, MATH_min(iq_lim, iq_cmd));
        }

        PI_run(s_pi_iq, iq_cmd, s_sig.Idq.value[1], &s_sig.Vdq.value[1]);
        s_sig.Vdq.value[0] += ff_d;
        s_sig.Vdq.value[1] += ff_q;

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

    // Open-loop PWM test: override with a fixed rotating vector (Vd=0, Vq=mod).
    // PI integrators are already held at 0 by the else-branch above.
    if(st == FOC_OPENLOOP)
    {
        s_sig.Vdq.value[0] = 0.0f;
        s_sig.Vdq.value[1] = g_ol_mod;
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

    // 3b. Field-weakening regulator (RUN only). Voltage-feedback: when the
    //     requested |Vdq| reaches the inverter's voltage budget, wind id
    //     negative to drop back-EMF and keep the current PIs out of saturation.
    //     Uses the SQUARED-magnitude error so the path stays sqrt-free, mapped
    //     onto TI PI_run (ref = vmax_fw^2, fbk = |Vdq|^2): when saturated the
    //     error goes negative and s_fw_id winds down toward FW_ID_MIN_A; with
    //     headroom the integrator relaxes it back to 0. The id reference applied
    //     NEXT tick is ID_REF_NOMINAL_A + s_fw_id (one-sample delay, standard).
    //     vmax_fw uses the same vbus*0.5 budget as the per-axis PI clamp; with
    //     FW_VMAX_FRACTION < VDQ_MAX_FRACTION, FW reacts just before the q-clamp.
    if(st == FOC_RUN)
    {
        // |Vdq| telemetry every RUN tick (even with FW off) so the operator can
        // watch the voltage approach the limit before flipping fw_en on.
        float vmag_sq = s_sig.Vdq.value[0] * s_sig.Vdq.value[0]
                      + s_sig.Vdq.value[1] * s_sig.Vdq.value[1];
        g_dbg_vmag = foc_fast_sqrt(vmag_sq);

        if(!g_dbg_iloop_en)            // open-loop resistive: operator owns id_ref
        {
            // Leave s_refs.id_ref untouched (it is applied as Vd=Rs*id_ref in
            // step 3). The FW regulator is meaningless without the current loop.
            fw_reset();
        }
        else if(g_dbg_fw_en)
        {
            float vmax_fw = FW_VMAX_FRACTION * s_refs.vbus * 0.5f;
            PI_run(s_pi_fw, vmax_fw * vmax_fw, vmag_sq, &s_fw_id);   // s_fw_id <= 0
            s_refs.id_ref = ID_REF_NOMINAL_A + s_fw_id;
        }
        else                           // FW disabled -> hold nominal id
        {
            fw_reset();
            s_refs.id_ref = ID_REF_NOMINAL_A;
        }
    }
    else                               // not running (FW does not touch ALIGN id)
    {
        fw_reset();
    }
    g_dbg_fw_id = s_fw_id;

    // 4. Inverse Park -> SVGEN -> PWM.
    //    Keep vbus fresh every ISR (safety_check_isr() needs it for OV/UV),
    //    but only DRIVE the bridge when the state machine is actually
    //    commanding current. In IDLE/CALIBRATE/FAULT we must re-assert the
    //    pwm_force_safe() state every tick: SVGEN's zero-voltage vector maps to
    //    50% duty on all three legs, and pwm_set_duty() releases the AQCSFRC
    //    safe-force, so calling it here would switch all three half-bridges and
    //    trip DRV8305 high-side VDS over-current (nFAULT) while "idle".
    s_refs.vbus = adc_read_vbus();
    if(g_vbus_override_v > 0.0f) s_refs.vbus = g_vbus_override_v;  // bench: dead sense
    // Open-loop test and open-loop align (iloop_en=0) use a synthetic unity bus
    // so g_ol_mod maps directly to duty (the bench has vbus~=0, which would blow
    // up the real 1/vbus normalization). `iloop` is the step-3 latched copy so
    // the Vdq domain and this normalization can never disagree within a tick.
    if(st == FOC_OPENLOOP || (st == FOC_ALIGN_ROTOR && !iloop))
        SVGEN_setOneOverDcBus_invV(s_svgen, 1.0f);
    else
        SVGEN_setOneOverDcBus_invV(s_svgen, 1.0f / s_refs.vbus);

    if(st == FOC_RUN || st == FOC_ALIGN_ROTOR || st == FOC_OPENLOOP)
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
// Slow-loop tick at 1 kHz. Refreshes the speed estimate, then either passes a
// directly-commanded torque (FOC_MODE_TORQUE) or closes the speed PI around the
// ramped electrical speed reference (FOC_MODE_SPEED). Mode is switchable live;
// the inactive path is kept primed so the transfer is bumpless either way.
//-----------------------------------------------------------------------------
void foc_speed_loop_tick(void)
{
    // Keep omega_elec fresh in EVERY state (idle/torque/speed/fault) so it is
    // visible on the scope and usable by the back-EMF feedforward. Must run
    // unconditionally: the QEP estimator differences the count over a fixed
    // slow-loop period and would mis-scale if calls were skipped.
    sensor_update_speed_slow();
    float32_t we = sensor_get_elec_speed();     // electrical rad/s

    if(sm_get_state() == FOC_RUN)
    {
        // id_ref is owned by the current-loop ISR now: it is ID_REF_NOMINAL_A
        // plus the field-weakening regulator's contribution (foc_current_loop_isr,
        // step 3b). The speed loop only shapes the q-axis (torque) reference.

        if(g_dbg_control_mode == FOC_MODE_SPEED)
        {
            // Accel-limited approach to the commanded electrical speed.
            float32_t dmax = SPEED_RAMP_RAD_S2 * SPEED_LOOP_TS;
            float32_t tgt  = s_refs.speed_ref;
            if(tgt > s_speed_cmd + dmax)      s_speed_cmd += dmax;
            else if(tgt < s_speed_cmd - dmax) s_speed_cmd -= dmax;
            else                              s_speed_cmd  = tgt;

            // PI output is clamped to [IQ_REF_MIN_A, IQ_REF_MAX_A] (foc_init).
            PI_run(s_pi_spd, s_speed_cmd, we, &s_refs.iq_ref);
            g_dbg_iq_ref = s_refs.iq_ref;       // mirror applied torque + bumpless
                                                // back-transfer to TORQUE
        }
        else // FOC_MODE_TORQUE
        {
            s_refs.iq_ref = g_dbg_iq_ref;
            // Prime the speed PI at the present torque and track present speed so
            // a live switch into SPEED mode starts without a jolt.
            PI_setUi(s_pi_spd, s_refs.iq_ref);
            s_speed_cmd = we;
        }
    }
    else
    {
        g_dbg_iq_ref  = 0.0f;
        s_refs.iq_ref = 0.0f;
        s_speed_cmd   = 0.0f;
        PI_setUi(s_pi_spd, 0.0f);
    }

    sm_tick_1khz();
}
