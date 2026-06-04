/*
 * autotuner_kernels.h - clean wrapper around the preserved numerical
 * machinery for the Closed-Loop PID Autotuner.
 *
 * Why this file exists
 * --------------------
 * The original generated code ships ~120 static functions implementing the
 * sinestream frequency-response estimator, complex magnitude / phase, LSQ
 * fit with QR (xgeqp3, xorgqr, xgemv, xgerc, xnrm2), PCHIP interpolation,
 * logspace, and the analytic loop-shape gain solver (computePM,
 * computeAlpha, blkdiag_*, computeZ_*, utilLSQFixedSizeData_*).
 *
 * That math is dense and not worth rewriting by hand. The user picked
 * "outer structure only", so it stays in autotuner_kernels.c verbatim.
 *
 * What we expose here is a clean step interface that the 5 ms loop calls.
 * One context struct holds everything the kernel needs across calls.
 */

#ifndef AUTOTUNER_KERNELS_H_
#define AUTOTUNER_KERNELS_H_

#include <stdbool.h>
#include <stdint.h>

/* Opaque-by-convention; defined in autotuner_kernels.c so the dense
 * generated DWork struct doesn't leak into the rest of the project. */
typedef struct AutotunerContext AutotunerContext;

typedef struct {
    float id_pu;            /* latest d-axis current measurement   */
    float iq_pu;            /* latest q-axis current measurement   */
    float vd_pu;            /* latest commanded Vd (closed-loop)   */
    float vq_pu;            /* latest commanded Vq (closed-loop)   */
    bool  start;            /* one-shot: begin sinestream sweep    */
    bool  param_sel;        /* host-side "use tuned gains" flag    */
} AutotunerStepIn;

typedef struct {
    float vd_perturb_pu;    /* feed-forward to fast_loop_step()    */
    float vq_perturb_pu;    /* (usually 0)                         */
    bool  tuner_active;     /* sinestream currently running        */
    bool  new_gains_ready;  /* set once when LSQ+gain-calc done    */
    float id_kp_new;        /* freshly-tuned d-axis PI gains       */
    float id_ki_new;
    float iq_kp_new;        /* freshly-tuned q-axis PI gains       */
    float iq_ki_new;
} AutotunerStepOut;

void autotuner_kernels_init(AutotunerContext *ctx);

void autotuner_kernels_step(AutotunerContext *ctx,
                            const AutotunerStepIn *in,
                            AutotunerStepOut *out);

bool autotuner_kernels_is_done(const AutotunerContext *ctx);

#endif /* AUTOTUNER_KERNELS_H_ */
