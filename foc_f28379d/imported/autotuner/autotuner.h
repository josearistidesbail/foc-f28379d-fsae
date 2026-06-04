/*
 * autotuner.h - PMSM FOC current-loop autotuner for F28379D
 *
 * What it does
 * ------------
 * Runs a standard field-oriented-control current loop on a PMSM, plus an
 * online autotuner that perturbs the loop with a sinestream, fits the plant
 * frequency response, and computes new Kp/Ki for the Id and Iq PI
 * controllers. Computed gains are loaded back into the running loop on the
 * next reset edge.
 *
 * Multi-rate structure (all timing measured from base 50 us tick)
 * --------------------------------------------------------------
 *   fast_loop       step0   50 us  (20 kHz)  FOC: QEP -> Park -> PI -> SVPWM
 *   speed_loop      step1   500 us ( 2 kHz)  outer speed PI
 *   autotuner_step  step2   5 ms  (200 Hz)  sinestream FRD + LSQ + gain calc
 *   mode_chart      step3   100 ms (10 Hz)  state machine (NotTuning/Tuning/Done)
 *   heartbeat       step4   500 ms ( 2 Hz)  LED toggle
 *
 * Hand-rewritten for readability from Simulink/Embedded-Coder output of the
 * model 'mcb_pmsm_foc_autotuner_f28379d' (R2022a).
 */

#ifndef AUTOTUNER_H_
#define AUTOTUNER_H_

#include <stdbool.h>
#include <stdint.h>

/* -------------------------------------------------------------------------
 * Motor / hardware constants
 * ------------------------------------------------------------------------- */
#define MOTOR_POLE_PAIRS        4
#define QEP_COUNTS_PER_REV      4000U

/* QEP offset captured by the qep_calibration project. Loaded here as a
 * compile-time constant so the closed-loop FOC has a correct rotor angle. */
#define QEP_INDEX_OFFSET_REV    0.17f

/* PWM period (TBPRD value). Duty cycles are written in 0..PWM_PERIOD. */
#define PWM_PERIOD              5000U

/* ADC reads two phase currents through shunt amplifiers.
 *   counts -> volts        : 3.3 V / 4503 counts = 7.326e-4 V/cnt
 *   volts  -> amps         : 14.2857 A/V (= 1 / (R_shunt * gain))
 *   amps   -> per-unit     : / I_MAX_AMP = 0.04666 = 1/21.43 */
#define ADC_VOLTS_PER_COUNT     0.000732600747f
#define ADC_VOLTS_TO_AMPS       14.2857141f
#define I_MAX_AMP               21.4285717f
#define I_AMPS_TO_PU            (1.0f / I_MAX_AMP)

/* Open-loop ramp + closed-loop transition (rotor alignment phase). */
#define OPENLOOP_VD_PU          0.15f
#define OPENLOOP_RAMP_RATE      0.0001f   /* per ISR tick */

/* -------------------------------------------------------------------------
 * SCI-RX framing (matches the Simulink bit-packed protocol)
 *
 *   word[0] (float32) : commanded speed reference, per-unit
 *   word[1] (uint16)  : packed control bits:
 *                         bit 0      = enable
 *                         bits 4-7   = debug-signal select (0..15)
 *                         bit 8      = start autotuner
 *                         bit 9      = param-select (loaded vs initial gains)
 * ------------------------------------------------------------------------- */
#define SCI_BIT_ENABLE          0x0001U
#define SCI_MASK_DEBUG          0x00F0U
#define SCI_SHIFT_DEBUG         4
#define SCI_BIT_START_TUNER     0x0100U
#define SCI_BIT_PARAM_SELECT    0x0200U

/* -------------------------------------------------------------------------
 * Public types
 * ------------------------------------------------------------------------- */
typedef struct {
    float kp;
    float ki;
} PiGains;

typedef struct {
    float integral;     /* integrator state (already weighted by Ts*Ki) */
    float prev_input;   /* for any filter terms; unused here */
} PiState;

typedef enum {
    TUNER_NOT_TUNING = 0,
    TUNER_RUNNING,
    TUNER_APPLY_RESULT,
    TUNER_DONE
} TunerMode;

/* -------------------------------------------------------------------------
 * Shared run-time state (accessed across rate groups via rate transitions
 * in the original; here we just keep them as plain volatile globals and
 * trust the rate-monotonic scheduler to prevent races).
 * ------------------------------------------------------------------------- */
extern volatile bool      g_enable;             /* user enable from SCI */
extern volatile bool      g_start_tuner;        /* one-shot tuner start */
extern volatile bool      g_param_select;       /* false=initial, true=tuned */
extern volatile uint8_t   g_debug_select;       /* which signal to log */
extern volatile float     g_speed_ref_pu;       /* user speed reference */

extern volatile PiGains   g_pi_id;              /* d-axis current PI gains */
extern volatile PiGains   g_pi_iq;              /* q-axis current PI gains */
extern volatile PiGains   g_pi_speed;           /* speed-loop PI gains */

extern volatile float     g_iq_ref_pu;          /* from outer speed loop */
extern volatile bool      g_closed_loop_active; /* set after QEP index seen */

extern volatile uint16_t  g_ia_offset_counts;   /* current-sensor zero-cal */
extern volatile uint16_t  g_ib_offset_counts;

/* -------------------------------------------------------------------------
 * Public API
 * ------------------------------------------------------------------------- */
void board_init(void);          /* one-shot peripheral configuration */
void scheduler_run_forever(void);/* main loop, dispatched by ADCINT1 */

void fast_loop_step(void);      /* 50 us  - FOC pipeline */
void speed_loop_step(void);     /* 500 us - outer speed PI */
void autotuner_step(void);      /* 5 ms   - sinestream + plant fit + gains */
void mode_chart_step(void);     /* 100 ms - mode state machine */
void heartbeat_step(void);      /* 500 ms - LED toggle */

void serial_rx_isr(void);       /* SCI-A RX (host -> board) */

#endif /* AUTOTUNER_H_ */
