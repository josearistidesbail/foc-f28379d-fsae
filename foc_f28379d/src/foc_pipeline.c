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

// Measured DC-bus voltage [V] (the real adc_read_vbus() reading), refreshed every
// ISR. Streamed as scope channel SCOPE_BIT_VBUS (datalog col 13) and read by the
// "vbus" RO param 0x0115 -- this is the MONITORING path and always tracks the live
// sensor, even when the control loop runs on the override below.
volatile float32_t g_dbg_vbus_v;

// BENCH DC-bus override [V] (restored 2026-07-23): when > 0, the CONTROL loop
// (vmax_dyn clamp + 1/vbus SVGEN normalization) and the OV/UV trips use this fixed
// nominal instead of the live sensor reading, which isn't trusted yet at low bench
// voltage (and nuisance-trips UV). Monitoring (g_dbg_vbus_v, scope, "vbus" param)
// still shows the measured bus. Default VBUS_OVERRIDE_DEFAULT_V (24 V at the
// bench); set g_vbus_override_v = 0 ("vbus_ovr" param) to use the measured bus.
volatile float32_t g_vbus_override_v = VBUS_OVERRIDE_DEFAULT_V;

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

// Runtime command-current clamp [A] ("iq_max" param, LIVE so it can be tightened
// mid-run). Applied in the ISR at the single choke point every q-axis command
// flows through -- torque command, speed-PI output, step injector -- and, in
// open-loop resistive mode, to both id_ref and iq_ref (capping the applied
// Rs*i volts). Exists because on a current-limited bench supply a large
// commanded current must never be *attempted*, whatever the source; production
// boots at the machine limit (IQ_CMD_MAX_DEFAULT_A = IQ_REF_MAX_A) so the
// clamp is transparent there. NOTE: the speed PI's own output limits stay at
// +/-IQ_REF_MAX_A, so in SPEED mode it can wind up against this clamp --
// acceptable for a bench guard, revisit if speed mode is used with a low clamp.
volatile float32_t g_iq_cmd_max = IQ_CMD_MAX_DEFAULT_A;

// Runtime scale on the per-axis PI voltage clamp ("vmax_frac" param, LIVE):
// vmax_dyn = g_vdq_max_frac * vbus * 0.5. Boots at the compile-time
// VDQ_MAX_FRACTION (= transparent); the setter clamps to [0, VDQ_MAX_FRACTION].
// This bounds what the loop can APPLY, which iq_max cannot: iq_max caps the
// REFERENCE, but a sign-flipped or oscillating current PI rails its OUTPUT to
// the voltage clamp regardless of the reference -- on a milliohm machine that
// is hundreds of amps and folds a bench supply before anything is observable.
// Closed-loop bring-up recipe: vmax_frac=0.05 (0.6 V at 24 V -> worst-case
// rail current ~30 A phase, ~1 A DC-side), engage RUN, watch id/iq/vd/vq on
// the scope, then walk it back up once the loop is proven. NOTE: the FW
// regulator's vmax_fw target intentionally stays on FW_VMAX_FRACTION (FW is a
// high-speed feature; do not exercise it with vmax_frac lowered).
volatile float32_t g_vdq_max_frac = VDQ_MAX_FRACTION;

// ---- Step injector (current-loop step response) --------------------------
// Applies a reference step and fires the datalog one-shot trigger in the SAME
// ISR tick, so the captured window's trig_idx IS the first sample carrying the
// step. Doing this host-side cannot work: a PARAM_WRITE lands with milliseconds
// of serial + scheduler jitter against a 12.8 ms capture window, so the edge
// arrives at a random offset or misses the window entirely.
//
// Both axes need care, because neither reference is host-owned in RUN:
//   d -- the step-3b ownership block rewrites s_refs.id_ref EVERY tick
//        (ID_REF_NOMINAL_A + s_fw_id), so a host write to "id_ref" is clobbered
//        before the PI ever sees it. s_step_id is folded into that expression.
//   q -- s_refs.iq_ref is refreshed from g_dbg_iq_ref by foc_speed_loop_tick()
//        at 1 kHz, so writing only the source would quantize the edge by up to
//        10 ISR samples. The injector writes BOTH, and the 1 kHz tick then
//        re-asserts the same value (torque mode) so they never fight.
//
// g_step_go ("step_go" param), consumed by the ISR:
//   0 = release a frozen one-shot buffer, resume free-running capture
//   1 = apply the step on g_step_axis / g_step_a, then trigger  (FOC_RUN only)
//   2 = trigger only, no reference change -- a coherent 128-sample window with
//       no inter-block gaps, valid in ANY state (use it for noise-floor work)
#define STEP_AXIS_D  0U
#define STEP_AXIS_Q  1U
#define STEP_PRE_DEFAULT  32U          // quarter of DATALOG_LEN_SAMPLES

volatile uint16_t  g_step_go;      // write 1/2 to fire, 0 to release the freeze
volatile uint16_t  g_step_axis;    // STEP_AXIS_D / STEP_AXIS_Q
volatile float32_t g_step_a;       // reference value at the step [A]
volatile uint16_t  g_step_pre;     // pre-trigger samples kept as baseline

// Live d-axis step offset [A], added to id_ref by the step-3b ownership block.
// Cleared on RUN entry so a step can never survive into the next run.
static float32_t   s_step_id;

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

// ---- Phase-ID: current-sense wiring auto-detect (ALIGN stage) ------------
// Runs FIRST in the ALIGN ladder, before the settle: park the commanded field
// open-loop at 0 / 120 / 240 deg electrical for one dwell each and average the
// CHANNEL-domain currents (g_isense_ch_amps, pre-mapping). It must precede
// every stage that consumes current feedback -- with iloop_en=1 the settle is
// CLOSED-LOOP, and closed loop on an unverified map/sign is positive feedback
// (d-PI rails to vmax_dyn, folds a current-limited bench supply the instant
// ALIGN begins -- bench 2026-07-27).
// A channel's driven dwell is the one whose current sign is opposite to the
// other two (d-axis injection puts +I on the driven phase and -I/2 on the other
// two), and that sign is the clamp direction. adc_isense_phase_id_commit()
// decides on the sign pattern rather than peak magnitude -- see the comment
// there for why magnitude is not trustworthy across dwells. It validates and
// stores the map + inversion mask ("isense_map"/"isense_inv"), so physically
// re-clamping the LEMs needs no manual reconfiguration -- just re-align.
// The stage FORCES the open-loop duty drive (g_ol_mod on the d-axis) even when
// iloop_en=1: the channel->phase map is unknown by definition while it runs,
// so closed-loop current feedback cannot be trusted. A rejected detection
// freezes the carrier and latches FAULT_CURRENT_SENSE (same pattern as a
// rejected SIN/COS scale cal) -- continuing to RUN on unverifiable current
// wiring is how you get a positive-feedback current loop.
volatile uint16_t g_phase_id_en = PHASE_ID_DEFAULT_EN;   // "phase_id_en" param
#define PHASE_ID_DWELL_TICKS ((uint32_t)(PHASE_ID_DWELL_S * FOC_ISR_FREQ_HZ))
#define PHASE_ID_AVG_TICKS   ((uint32_t)(PHASE_ID_AVG_S   * FOC_ISR_FREQ_HZ))
#define PHASE_ID_TOTAL_TICKS (3U * PHASE_ID_DWELL_TICKS)
#define PHASE_ID_MOD_STEP    (PHASE_ID_MOD_SLEW_PER_S * FOC_ISR_TS)
static uint32_t    s_phaseid_ticks;    // latched budget at align entry (0 = off)
static bool        s_phaseid_active;   // dwells running -> force open-loop drive
static bool        s_phaseid_failed;   // rejected -> carrier frozen, fault latched
static float32_t   s_pid_sum[3][3];    // [channel][dwell] current sums

// Dwell-current governor. The fixed ol_mod drag drive is sized to MOVE the
// rotor -- at duty scale on a milliohm winding that is tens of amps, which
// current-limits a bench supply, collapses the bus mid-detection, and garbles
// the dwell averages (unequal amplitudes across dwells break both the argmax
// and the dominance gate -- exactly the CURRENT_SENSE reject seen on the bench
// 2026-07-27). Detection needs a measurable current, not a moving rotor, so:
// during dwell 0's settle portion, slew the duty up until the largest
// |channel| current reaches g_phase_id_a ("phase_id_a" param, default
// PHASE_ID_TARGET_A = ALIGN_ID_INJECT_A), then FREEZE it for everything after.
// Channel amplitude is a valid feedback while the map is unknown (magnitude is
// map- and polarity-independent). Freezing (instead of re-regulating each
// dwell) keeps one shared drive level for all three angles; a per-dwell
// governor would actively normalize away the +I vs -I/2 structure being
// measured (worst case: both clamps sit on -I/2 phases, that dwell reads I/2,
// the governor doubles it). Duty is capped at g_ol_mod so the worst case
// equals the old fixed drive.
// [2026-08-01] NOTE one shared duty equalizes VOLTS, not amps -- at the bench
// bus the dead zone eats ~99% of the commanded volts, so the dwells can still
// differ several-fold in current (measured 1 A / 5.5 A / 1 A). The solver no
// longer depends on them matching (it reads the sign pattern), so this is now a
// drive-sizing choice, not a correctness requirement.
volatile float32_t g_phase_id_a = PHASE_ID_TARGET_A;   // target dwell current [A]
volatile float32_t g_dbg_phaseid_mod;  // governed duty ("phase_id_mod" RO param)
static float32_t   s_phaseid_mod;      // governor state, frozen after dwell 0 settle

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
    uint16_t c, k;
    s_align_ticks   = 0;
    s_align_done    = false;
    s_align_carrier = 0.0f;
    s_align_ref     = 0.0f;
    s_align_sum     = 0.0f;
    s_align_n       = 0;
    // Phase-ID: latch the enable (same mid-align-write immunity as the others).
    s_phaseid_ticks  = g_phase_id_en ? PHASE_ID_TOTAL_TICKS : 0U;
    s_phaseid_active = false;
    s_phaseid_failed = false;
    s_phaseid_mod    = 0.0f;           // governor ramps from zero each align
    g_dbg_phaseid_mod = 0.0f;
    for(c = 0U; c < 3U; c++)
        for(k = 0U; k < 3U; k++)
            s_pid_sum[c][k] = 0.0f;
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
    // Phase-ID was rejected: the fault is latched but only lands on the next
    // 1 kHz tick. Hold the carrier (and the open-loop drive, s_phaseid_active
    // stays true) so the intervening ISRs cannot run later stages on a wiring
    // map that just failed verification.
    if(s_phaseid_failed) return s_align_carrier;
#if SENSOR_BACKEND_RM44AC
    // Scale calibration was rejected: the fault is already latched, but
    // sm_raise_fault() only lands on the next 1 kHz tick. Hold the carrier here
    // so the intervening ISRs cannot start the offset sweep on the bad scale.
    if(s_cal_failed) return s_align_carrier;
    const uint32_t cal_ticks = s_align_cal_ticks;
#else
    const uint32_t cal_ticks = 0U;
#endif
    const uint32_t pid_ticks = s_phaseid_ticks;
    s_phaseid_active = false;               // only the dwell branch asserts it
    if(s_align_ticks < pid_ticks)
    {
        // Phase-ID dwells -- FIRST, before the settle (see the section comment
        // above: closed-loop stages must never run on an unverified map).
        // Park the field at k*120 deg electrical, average the channel-domain
        // currents over the settled tail of each dwell. Dwell 0 is at the same
        // theta=0 the settle uses, so the rotor pre-parks for free.
        uint32_t t  = s_align_ticks;
        uint32_t k  = t / PHASE_ID_DWELL_TICKS;
        uint32_t ti = t - k * PHASE_ID_DWELL_TICKS;
        if(k > 2U) k = 2U;
        s_phaseid_active = true;
        s_align_carrier  = (float32_t)k * (2.0f * MATH_PI / 3.0f);

        // Current governor: dwell 0's settle portion ONLY, then the duty is
        // frozen so all three dwells share one drive level (see the block
        // comment at the top of this section for why re-regulating per dwell
        // would break the solver). g_isense_ch_amps is one tick old here (the
        // ADC read runs after align_step) -- irrelevant at this slew rate.
        if(k == 0U && ti < PHASE_ID_DWELL_TICKS - PHASE_ID_AVG_TICKS)
        {
            float32_t imax = 0.0f;
            uint16_t c;
            for(c = 0U; c < ISENSE_NUM_CHANNELS; c++)
            {
                float32_t m = g_isense_ch_amps[c];
                if(m < 0.0f) m = -m;
                if(m > imax) imax = m;
            }
            if(imax < g_phase_id_a) s_phaseid_mod += PHASE_ID_MOD_STEP;
            else                    s_phaseid_mod -= PHASE_ID_MOD_STEP;
            if(s_phaseid_mod > g_ol_mod) s_phaseid_mod = g_ol_mod;
            if(s_phaseid_mod < 0.0f)     s_phaseid_mod = 0.0f;
            g_dbg_phaseid_mod = s_phaseid_mod;
        }

        if(ti >= PHASE_ID_DWELL_TICKS - PHASE_ID_AVG_TICKS)
        {
            s_pid_sum[0][k] += g_isense_ch_amps[0];
            s_pid_sum[1][k] += g_isense_ch_amps[1];
            s_pid_sum[2][k] += g_isense_ch_amps[2];
        }

        if(t + 1U >= pid_ticks)             // last dwell tick: solve + commit
        {
            float avg[3][3];
            uint16_t c, kk;
            const float inv_n = 1.0f / (float)PHASE_ID_AVG_TICKS;
            for(c = 0U; c < 3U; c++)
                for(kk = 0U; kk < 3U; kk++)
                    avg[c][kk] = s_pid_sum[c][kk] * inv_n;
            if(!(adc_isense_phase_id_commit(avg) & 0x0001U))
            {
                // Rejected: no channel cleared the gates (reason in
                // g_isense_id_status / "phase_id_status"). The old map is
                // still in place but is now UNVERIFIED against the physical
                // clamps -- fault instead of running on it.
                s_phaseid_failed = true;
                sm_raise_fault(FAULT_CURRENT_SENSE);
            }
        }
    }
    else if(s_align_ticks < pid_ticks + ALIGN_SETTLE_TICKS)
    {
        // Settle: park the rotor at theta=0 before the sweeps. With iloop_en=1
        // this runs the closed-loop d-PI -- safe here because phase-ID (above)
        // has already verified and committed the channel map + polarity.
        s_align_carrier = 0.0f;                         // lock to phase-U axis
    }
#if SENSOR_BACKEND_RM44AC
    else if(s_align_ticks < pid_ticks + ALIGN_SETTLE_TICKS + cal_ticks)
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
           (s_align_ticks + 1U >= pid_ticks + ALIGN_SETTLE_TICKS + cal_ticks))
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
    else if(s_align_ticks < pid_ticks + ALIGN_SETTLE_TICKS + cal_ticks
                            + s_align_ramp_ticks)
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
    // Step injector idle. STEP_PRE_DEFAULT keeps a quarter-window of pre-step
    // baseline, enough for step_metrics() to establish ref0 and for the operator
    // to confirm the loop was actually settled before the edge.
    g_step_go        = 0U;
    g_step_axis      = STEP_AXIS_D;
    g_step_a         = 0.0f;
    g_step_pre       = STEP_PRE_DEFAULT;
    s_step_id        = 0.0f;

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
    if(st == FOC_RUN         && s_prev_state != FOC_RUN)  { fw_reset(); s_step_id = 0.0f; }
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

    // Step injector: apply the reference and arm the one-shot capture in the same
    // tick, BEFORE step 3 runs the PIs, so this tick's control -- and the sample
    // logged for it in step 7 -- already carry the step. Consumed unconditionally
    // so a request made outside RUN cannot fire later by surprise.
    if(g_step_go)
    {
        uint16_t go = g_step_go;
        g_step_go = 0U;                               // one-shot (0 = release, in the setter)
        if(go >= 2U)                                  // trigger only, any state
        {
            debug_datalog_trigger(g_step_pre);
        }
        else if(st == FOC_RUN)                        // step + trigger
        {
            if(g_step_axis == STEP_AXIS_Q)
            {
                g_dbg_iq_ref  = g_step_a;             // source (1 kHz tick re-asserts)
                s_refs.iq_ref = g_step_a;             // applied THIS tick
            }
            else
            {
                s_step_id     = g_step_a;             // survives step-3b ownership
                s_refs.id_ref = ID_REF_NOMINAL_A + s_fw_id + s_step_id;
            }
            debug_datalog_trigger(g_step_pre);
        }
    }

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
    // Phase-ID dwells force the open-loop align drive even with iloop_en=1:
    // the channel->phase map is being measured, so current feedback is
    // untrusted by definition. s_phaseid_active only changes inside
    // align_step() (step 1, this same tick), so this latch is coherent with
    // the SVGEN normalization below.
    bool ol_align = (st == FOC_ALIGN_ROTOR) && (!iloop || s_phaseid_active);
    float vmax_dyn = g_vdq_max_frac * s_refs.vbus * 0.5f;
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
    if(ol_align)
    {
        // Open-loop align drive (current PIs bypassed). With the VBUS sense
        // absent/untrusted the PI clamp above (vmax_dyn ~ 0) passes no voltage
        // and align cannot move the rotor -- so drive the align carrier the way
        // FOC_OPENLOOP does: a fixed d-axis modulation g_ol_mod ("ol_mod"
        // param) in the DUTY domain (SVGEN gets a unity bus in step 4). At the
        // slow carrier the current settles on the commanded angle (I ~ V/Rs),
        // which is all the align/calibration sweeps need. Integrators held at 0
        // so closed-loop align re-engages cleanly when iloop_en returns to 1.
        // During the phase-ID dwells the drive level is the GOVERNED duty
        // (ramped to ~g_phase_id_a of channel current, then frozen), not the
        // full ol_mod drag drive -- ol_mod is sized to move the rotor and on a
        // milliohm winding it current-limits a bench supply. Everywhere else
        // in ALIGN (settle for the cal/offset sweeps, the sweeps themselves)
        // the rotor must actually move, so ol_mod still applies.
        s_sig.Vdq.value[0] = s_phaseid_active ? s_phaseid_mod : g_ol_mod;
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
        // Commands first pass the bench current clamp: in this mode the real
        // current genuinely approaches the commanded amps (I ~= V/R), so the
        // clamp directly bounds what the supply is asked for.
        float iq_max = g_iq_cmd_max;
        float id_c = MATH_max(-iq_max, MATH_min(iq_max, s_refs.id_ref));
        float iq_c = MATH_max(-iq_max, MATH_min(iq_max, s_refs.iq_ref));
        float vd = MOTOR_RS_OHM * id_c;
        float vq = MOTOR_RS_OHM * iq_c;
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
        // The bench command clamp comes first: THIS is the choke point every
        // q-axis command source funnels through (torque cmd via the 1 kHz tick,
        // speed-PI output, step injector), so clamping here covers them all.
        float iq_cmd = s_refs.iq_ref;
        {
            float iq_max = g_iq_cmd_max;
            iq_cmd = MATH_max(-iq_max, MATH_min(iq_max, iq_cmd));
        }
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
            s_refs.id_ref = ID_REF_NOMINAL_A + s_fw_id + s_step_id;
        }
        else                           // FW disabled -> hold nominal id
        {
            fw_reset();
            s_refs.id_ref = ID_REF_NOMINAL_A + s_step_id;
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
    // Measured DC bus (real ADC, filtered) -- MONITORING path: the scope channel
    // and the "vbus" RO param read g_dbg_vbus_v so the live sensor stays visible
    // even while the control loop below runs on the override.
    float32_t vbus_meas = adc_read_vbus();
    g_dbg_vbus_v = vbus_meas;
    // BENCH override: sensor scale untrusted -> the control loop (vmax_dyn,
    // 1/vbus) and the OV/UV trips use a fixed nominal, not the live reading.
    // g_vbus_override_v = 0 switches control back to the measured bus.
    s_refs.vbus = (g_vbus_override_v > 0.0f) ? g_vbus_override_v : vbus_meas;
    // Open-loop test and open-loop align (iloop_en=0) use a synthetic unity bus
    // so g_ol_mod maps directly to duty (the bench has vbus~=0, which would blow
    // up the real 1/vbus normalization). `iloop` is the step-3 latched copy so
    // the Vdq domain and this normalization can never disagree within a tick.
    if(st == FOC_OPENLOOP || ol_align)
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
