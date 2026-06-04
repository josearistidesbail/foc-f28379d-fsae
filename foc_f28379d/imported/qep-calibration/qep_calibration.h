/*
 * qep_calibration.h - PMSM QEP encoder-offset calibration for F28379D
 *
 * Drives the motor with a slow, open-loop voltage vector while watching the
 * QEP encoder. After a short ramp the commanded electrical angle is held at
 * zero; whatever angle the encoder reports at that moment IS the encoder's
 * mechanical offset against the rotor's electrical zero.
 *
 * Hand-rewritten for readability from Simulink/Embedded-Coder output of the
 * model 'mcb_pmsm_qep_offset_f28379d' (R2022a).
 */

#ifndef QEP_CALIBRATION_H_
#define QEP_CALIBRATION_H_

#include <stdbool.h>
#include <stdint.h>

/* -------------------------------------------------------------------------
 * Physical setup
 * ------------------------------------------------------------------------- */
#define MOTOR_POLE_PAIRS        4
#define QEP_COUNTS_PER_REV      4000U

/* Control-loop ISR rate (PWM frequency / 1 in this build). */
#define ISR_FREQ_HZ             20000.0f
#define ISR_PERIOD_S            (1.0f / ISR_FREQ_HZ)        /* 50 us */

/* PWM module timer period. CMPA values are written in 0..PWM_PERIOD. */
#define PWM_PERIOD              5000U

/* -------------------------------------------------------------------------
 * Calibration sequence (all times measured in ISR ticks)
 *
 *   t=0       Enable command received via SCI.
 *   0..2s     ALIGN  - drive Vd at electrical angle 0 so rotor locks to it.
 *   2..10s    RAMP   - ramp commanded speed from 0 up to CALIB_SPEED_CMD.
 *  10..15s    CAPTURE- hold electrical angle at 0 again, sample encoder
 *                      position. That fractional reading == offset.
 *  >15s      DONE   - drop PWM, wait for next enable.
 * ------------------------------------------------------------------------- */
#define ALIGN_END_TICKS         40000U     /*  2 s @ 20 kHz */
#define RAMP_END_TICKS          200000U    /* 10 s @ 20 kHz */
#define CALIB_END_TICKS         300000U    /* 15 s @ 20 kHz */

/* Open-loop d-axis voltage used to spin the motor (per-unit, 0..1). */
#define CALIB_VD_PU             0.15f

/* Maximum speed command, in normalized electrical-angle units per ISR tick.
 * The ramp's saturation value (4.0) and gain (5e-5) come from the Simulink
 * 'motor.calibSpeed' parameter. */
#define CALIB_SPEED_RAMP_LIMIT  4.0f
#define CALIB_SPEED_GAIN        5.0e-5f
#define CALIB_SPEED_RAMP_STEP   0.001f    /* per-tick increment of saturation input */

/* -------------------------------------------------------------------------
 * Public API
 * ------------------------------------------------------------------------- */
void calibration_init(void);

/* Wired to ePWM1 ADC-EOC interrupt; runs at ISR_FREQ_HZ. */
void calibration_isr(void);

/* Wired to SCI-A RX interrupt; sets the enable flag when host writes nonzero. */
void serial_rx_isr(void);

/* Result of the most recent calibration (mechanical revs, 0..1/pole_pairs).
 * Valid after the CAPTURE phase has run at least once. */
extern volatile float g_qep_offset_rev;

/* Heartbeat LED toggle (called from the scheduler base rate). */
void heartbeat_tick(void);

#endif /* QEP_CALIBRATION_H_ */
