#include <math.h>

#include "foc.h"
#include "transforms.h"
#include "svpwm.h"
#include "config/control_config.h"

void foc_init(foc_t *f)
{
    pi_init(&f->pi_id,  PI_ID_KP,  PI_ID_KI,  -V_MAX_PU, V_MAX_PU);
    pi_init(&f->pi_iq,  PI_IQ_KP,  PI_IQ_KI,  -V_MAX_PU, V_MAX_PU);
    /* FWC integrates positive voltage-deficit into a negative Id reference. */
    pi_init(&f->pi_fwc, PI_FWC_KP, PI_FWC_KI, ID_MIN_PU, 0.0f);

    f->id_ref_pu   = 0.0f;
    f->iq_ref_pu   = 0.0f;
    f->v_max_pu    = V_MAX_PU;
    f->theta_e     = 0.0f;
    f->v_mag_pu    = 0.0f;
    f->fwc_enabled = false;
}

void foc_reset(foc_t *f)
{
    pi_reset(&f->pi_id);
    pi_reset(&f->pi_iq);
    pi_reset(&f->pi_fwc);
    f->id_ref_pu = 0.0f;
    f->iq_ref_pu = 0.0f;
}

void foc_set_iq_ref(foc_t *f, float iq_pu)    { f->iq_ref_pu = iq_pu; }
void foc_enable_fwc(foc_t *f, bool enabled)
{
    f->fwc_enabled = enabled;
    if (!enabled) { pi_reset(&f->pi_fwc); }
}

void foc_step(foc_t *f, vec_abc_t i_abc_pu, float theta_e)
{
    f->i_abc_pu = i_abc_pu;
    f->theta_e  = theta_e;

    float s = sinf(theta_e);
    float c = cosf(theta_e);

    f->i_ab_pu = clarke(i_abc_pu);
    f->i_dq_pu = park(f->i_ab_pu, s, c);

    /* Field weakening: when |V| approaches the limit, push Id negative.
     * Error is positive when we are saturated -> integrator output is
     * clamped to (ID_MIN_PU, 0], i.e. only ever a flux-weakening command. */
    float id_ref = f->id_ref_pu;
    if (f->fwc_enabled) {
        float fwc_err = f->v_mag_pu - f->v_max_pu;
        id_ref += pi_step(&f->pi_fwc, fwc_err);
    }

    f->v_dq_pu.d = pi_step(&f->pi_id, id_ref       - f->i_dq_pu.d);
    f->v_dq_pu.q = pi_step(&f->pi_iq, f->iq_ref_pu - f->i_dq_pu.q);

    /* Voltage-magnitude limit (circle clip) before SVPWM. */
    f->v_mag_pu = sqrtf(f->v_dq_pu.d * f->v_dq_pu.d + f->v_dq_pu.q * f->v_dq_pu.q);
    if (f->v_mag_pu > f->v_max_pu) {
        float k = f->v_max_pu / f->v_mag_pu;
        f->v_dq_pu.d *= k;
        f->v_dq_pu.q *= k;
        f->v_mag_pu   = f->v_max_pu;
    }

    f->v_ab_pu = ipark(f->v_dq_pu, s, c);
    f->duty    = svpwm_duties(f->v_ab_pu);
}
