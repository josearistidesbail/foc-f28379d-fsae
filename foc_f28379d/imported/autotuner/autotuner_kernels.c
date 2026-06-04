/*
 * autotuner_kernels.c - thin bridge to the preserved generated math.
 *
 * Most of the numerical heavy lifting lives in the auto-generated file
 * mcb_pmsm_foc_autotuner_f28379d.c (~120 static functions doing
 * sinestream FRD, QR/LSQ, PCHIP, etc.). We keep that file as-is and just
 * route this clean step() interface into it.
 *
 * Two reasonable ways to use this file
 * ------------------------------------
 *  1. EASY -- link with mcb_pmsm_foc_autotuner_f28379d.c unchanged and
 *     forward each clean call into the matching generated step2 sub-block.
 *     Cheapest path; you keep MathWorks' math word-for-word.
 *
 *  2. CLEAN -- extract just the autotuner-related statics from the
 *     generated file into a dedicated translation unit (cull the FOC and
 *     peripheral-init code) and rename the entry function. The math itself
 *     should not be touched; only its packaging.
 *
 * The body below is written for option 1. Replace the FIXME stubs with the
 * matching generated calls/state accesses when you wire this up.
 */

#include "autotuner_kernels.h"
#include <string.h>

/* The generated DWork struct has dozens of autotuner-internal fields that
 * persist across step2 calls (sinestream sample buffers, frequency point
 * counter, plant-fit intermediates, ...). Treating the entire struct as
 * opaque storage keeps us decoupled from its layout. Adjust the size if
 * you bundle a stripped-down version. */
#define AUTOTUNER_CONTEXT_BLOB_BYTES   4096

struct AutotunerContext {
    uint8_t  blob[AUTOTUNER_CONTEXT_BLOB_BYTES];
    bool     done;            /* set by step() when full sweep finishes */
    bool     active;          /* currently injecting perturbations      */
};

void autotuner_kernels_init(AutotunerContext *ctx)
{
    memset(ctx, 0, sizeof *ctx);
}

bool autotuner_kernels_is_done(const AutotunerContext *ctx)
{
    return ctx->done;
}

/* -------------------------------------------------------------------------
 * step()
 *
 * On entry  : in->{id,iq,vd,vq}_pu are latest samples; in->start is the
 *             one-shot trigger; in->param_sel is the host's gain-select.
 * On exit   : out->vd_perturb_pu / vq_perturb_pu are the sinusoid this tick
 *             (added to the fast loop's Vd/Vq); out->tuner_active reflects
 *             whether the sweep is running; out->new_gains_ready latches
 *             true for one tick after a successful fit.
 *
 * Wiring guide (for option 1)
 * ---------------------------
 *   Call into the generated step2 body once, passing the inputs via the
 *   project's RT?/UnitDelay rate-transition buffers, then read the
 *   relevant DWork fields back out. The structure of step2 in the
 *   generated file is:
 *
 *      step2():
 *          read RT buffers              <-- map from `in`
 *          run sinestream / FRD         (functions: localGetRealImag,
 *                                                   MATLABFunction, ...)
 *          when sweep done:
 *              run LSQ plant fit        (utilLSQFixedSizeData_*)
 *              run analytic gain calc   (computePM, computeAlpha,
 *                                        generateTargetLoop)
 *              copy result -> DWork     (PI_*_K{p,i})
 *          write RT buffers             <-- map to `out` and DWork
 *
 *   The minimal hookup is therefore:
 *      mcb_pmsm_foc_autotuner_f28379_B.RT* = ... (from `in`)
 *      mcb_pmsm_foc_autotuner_f28379d_step2();
 *      out->vd_perturb_pu = mcb_pmsm_foc_autotuner_f28379_B.<perturb_block>
 *      ...
 *
 * Replace the stubs below with that hookup.
 * ------------------------------------------------------------------------- */

void autotuner_kernels_step(AutotunerContext *ctx,
                            const AutotunerStepIn *in,
                            AutotunerStepOut *out)
{
    (void)ctx;
    (void)in;

    /* FIXME: wire to mcb_pmsm_foc_autotuner_f28379d_step2() */
    out->vd_perturb_pu   = 0.0f;
    out->vq_perturb_pu   = 0.0f;
    out->tuner_active    = false;
    out->new_gains_ready = false;
    out->id_kp_new = out->id_ki_new = 0.0f;
    out->iq_kp_new = out->iq_ki_new = 0.0f;
}
