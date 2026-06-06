//=============================================================================
// sensor_qep.c - eQEP backend non-ISR side.
//
// The hot path (per-ISR angle update) lives in include/sensor_qep_inline.h.
// Here we own the speed estimator (run at 1 kHz from the slow loop), the
// alignment-offset capture, and the boot-time init.
//=============================================================================
#include "driverlib.h"
#include "device.h"
#include "build_config.h"

#if SENSOR_BACKEND_QEP

#include "sensor_iface.h"
#include "foc_pipeline.h"           // foc_get_signals() for the drive-vs-response check
#include "foc_state_machine.h"      // sm_get_state()
#include "libraries/math/include/math.h"

volatile float32_t g_qep_theta_elec        = 0.0f;
volatile float32_t g_qep_theta_raw_elec    = 0.0f;
volatile float32_t g_qep_omega_elec        = 0.0f;
volatile float32_t g_qep_theta_offset_elec = 0.0f;   // electrical zero offset [rad]

// Sensor-loss state (see sensor_iface.h contract). g_qep_omega_healthy is the
// last speed latched while the encoder was trusted; the fault shutdown uses it
// to pick active-short vs coast.
volatile float32_t g_qep_omega_healthy     = 0.0f;
volatile uint16_t  g_qep_lost              = 0U;
// TODO: Debugging Step 9, remove after. Total |count| movement accumulated in
// the current detection window, and the per-slow-tick raw count delta (frozen
// ~0 = clean disconnect; jittering = noise on floating lines). Read both on a
// disconnect test to see why/whether the loss detector arms.
volatile uint32_t  g_dbg_qep_loss_move;
volatile int32_t   g_dbg_qep_dcnt;

// TODO: Debugging QEP (Step 3 verification), remove after
volatile uint32_t g_dbg_qep_count;        // QPOSCNT - should change with rotation
volatile uint32_t g_dbg_qep_index_latch;  // QPOSILAT - count latched on index pulse
volatile uint16_t g_dbg_qep_status;       // QEPSTS bits: 0x20=fwd dir, 0x02=1st idx seen
volatile int16_t  g_dbg_qep_direction;    // +1 forward, -1 reverse

static int32_t  s_last_cnt;
static float    s_omega_lpf;
static uint16_t s_loss_ticks;       // slow ticks elapsed in the current detection window
static uint32_t s_loss_move;        // total |count delta| accumulated this window

void sensor_init(void)
{
    // eQEP1 is configured by SysConfig (unit + decoder + pin mux).
    // Here we just zero the integrator and capture the boot count.
    EQEP_setPosition(EQEP1_BASE, 0U);
    s_last_cnt    = 0;
    s_omega_lpf   = 0.0f;
    s_loss_ticks  = 0U;
    s_loss_move   = 0U;
    g_qep_lost    = 0U;
    g_qep_omega_healthy = 0.0f;
}

// Called from the slow loop (1 kHz) to update the filtered speed.
void sensor_update_speed_slow(void)
{
    int32_t cnt = (int32_t)EQEP_getPosition(EQEP1_BASE);
    int32_t dcnt = cnt - s_last_cnt;
    s_last_cnt = cnt;

    // Wrap dcnt into +/- half-rev
    if(dcnt >  SENSOR_QEP_CPR_X4/2) dcnt -= SENSOR_QEP_CPR_X4;
    if(dcnt < -SENSOR_QEP_CPR_X4/2) dcnt += SENSOR_QEP_CPR_X4;

    // omega_mech = dcnt / CPR_X4 * 2*pi / Ts_slow
    float omega_mech = (float)dcnt * SENSOR_QEP_INV_CPR_X4
                       * (2.0f * MATH_PI) / SPEED_LOOP_TS;
    // simple 1st-order LPF
    s_omega_lpf += 0.2f * (omega_mech - s_omega_lpf);
    g_qep_omega_elec = s_omega_lpf * (float)MOTOR_POLE_PAIRS * (float)SENSOR_QEP_DIR_SIGN;

    // ---- Sensor-loss detection (drive-vs-response + QEPSTS) -------------
    // Only meaningful while actually COMMANDING torque in RUN. Over a window of
    // LOSS_TICKS slow ticks we accumulate the total |count movement|; if we were
    // pushing |iq_ref| > MIN_IQ the whole window but the count moved less than
    // MIN_MOVE, the feedback is gone (or the rotor is locked -- also a
    // shutdown-worthy condition). Accumulating (vs requiring every tick to be
    // stalled) rides out the occasional noise edge on floating lines. We gate on
    // the COMMAND, not Vq: once the angle freezes the rotor locks into DC
    // injection and Vq collapses to ~Rs*iq, so a Vq gate goes blind exactly when
    // we need it; |iq_ref| stays valid.
    float iq_ref = foc_get_refs()->iq_ref;
    if(iq_ref < 0.0f) iq_ref = -iq_ref;
    int32_t adcnt = (dcnt < 0) ? -dcnt : dcnt;
    g_dbg_qep_dcnt = dcnt;
    if((sm_get_state() == FOC_RUN) && (iq_ref > SENSOR_QEP_LOSS_MIN_IQ))
    {
        s_loss_ticks++;
        s_loss_move += (uint32_t)adcnt;
        if(s_loss_ticks >= SENSOR_QEP_LOSS_TICKS)
        {
            if(s_loss_move < (uint32_t)SENSOR_QEP_LOSS_MIN_MOVE) g_qep_lost = 1U;
            s_loss_ticks = 0U;
            s_loss_move  = 0U;
        }
    }
    else
    {
        s_loss_ticks = 0U;
        s_loss_move  = 0U;
    }
    g_dbg_qep_loss_move = s_loss_move;

    // Independent HW signal: an illegal quadrature transition (noise/half-open
    // channel) sets the position-counter error flag.
    if(EQEP_getStatus(EQEP1_BASE) & EQEP_STS_POS_CNT_ERROR) g_qep_lost = 1U;

    // Latch the speed only while the encoder is still trusted; the fault
    // shutdown reads this to choose active-short vs coast.
    if(!g_qep_lost) g_qep_omega_healthy = g_qep_omega_elec;
}

// Store the electrical zero offset (radians), wrapped to [0, 2*pi). The align
// controller in foc_pipeline.c computes it as the circular mean of
// (raw_encoder_elec - commanded_elec) over the ramp sweep.
void sensor_set_elec_offset(float32_t rad)
{
    while(rad < 0.0f)             rad += 2.0f * MATH_PI;
    while(rad >= 2.0f * MATH_PI)  rad -= 2.0f * MATH_PI;
    g_qep_theta_offset_elec = rad;
}

// Single-shot fallback (kept for the sensor_iface contract). Sets the offset so
// the current rotor position reads theta_elec = 0. The ramp-and-average path in
// foc_pipeline.c is used instead for QEP alignment.
void sensor_capture_zero(void) { sensor_set_elec_offset(g_qep_theta_raw_elec); }

#endif // SENSOR_BACKEND_QEP
