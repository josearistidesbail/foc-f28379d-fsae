#ifndef FOC_H
#define FOC_H

#include "pmsm_types.h"
#include "pi.h"

typedef struct {
    /* References (set from outside, e.g. speed loop). */
    float id_ref_pu;
    float iq_ref_pu;
    float v_max_pu;            /* modulation envelope */

    /* Measured / computed. */
    vec_abc_t i_abc_pu;
    vec_ab_t  i_ab_pu;
    vec_dq_t  i_dq_pu;
    vec_dq_t  v_dq_pu;
    vec_ab_t  v_ab_pu;
    vec_abc_t duty;            /* 0..1 per leg */

    float theta_e;
    float v_mag_pu;

    /* Inner PI controllers. */
    pi_ctrl_t pi_id;
    pi_ctrl_t pi_iq;
    pi_ctrl_t pi_fwc;          /* drives Id_ref negative when V saturates */
    bool      fwc_enabled;
} foc_t;

void  foc_init(foc_t *f);
void  foc_reset(foc_t *f);
void  foc_set_iq_ref(foc_t *f, float iq_pu);
void  foc_enable_fwc(foc_t *f, bool enabled);

/*
 * Run one current-loop iteration.
 *   i_abc_raw : raw phase currents (per-unit, after ADC scaling and offset)
 *   theta_e   : electrical angle (radians)
 * Populates f->duty with the three leg duty cycles in [0, 1].
 */
void foc_step(foc_t *f, vec_abc_t i_abc_pu, float theta_e);

#endif
