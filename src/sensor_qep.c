//=============================================================================
// sensor_qep.c - eQEP backend non-ISR side.
//
// The hot path (per-ISR angle update) lives in include/sensor_qep_inline.h.
// Here we own the speed estimator (run at 1 kHz from the slow loop), the
// alignment-offset capture, and the boot-time init.
//=============================================================================
#include "F28x_Project.h"
#include "build_config.h"

#if SENSOR_BACKEND_QEP

#include "sensor_iface.h"
#include "libraries/math/include/math.h"

volatile float32_t g_qep_theta_elec   = 0.0f;
volatile float32_t g_qep_omega_elec   = 0.0f;
volatile int32_t   g_qep_mech_offset_cnt = 0;

static int32_t s_last_cnt;
static float   s_omega_lpf;

void sensor_init(void)
{
    // eQEP1 is configured by SysConfig (unit + decoder + pin mux).
    // Here we just zero the integrator and capture the boot count.
    EQep1Regs.QPOSCNT  = 0;
    EQep1Regs.QPOSINIT = 0;
    s_last_cnt   = 0;
    s_omega_lpf  = 0.0f;
}

// Called from the slow loop (1 kHz) to update the filtered speed.
void sensor_qep_update_speed_slow(void)
{
    int32_t cnt = (int32_t)EQep1Regs.QPOSCNT;
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
}

// Called by the state machine when entering FOC_ALIGN_ROTOR after the
// align current has been injected long enough.
void sensor_qep_capture_zero(void)
{
    g_qep_mech_offset_cnt = (int32_t)EQep1Regs.QPOSCNT;
}

#endif // SENSOR_BACKEND_QEP
