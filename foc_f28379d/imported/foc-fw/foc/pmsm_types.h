#ifndef PMSM_TYPES_H
#define PMSM_TYPES_H

#include <stdint.h>
#include <stdbool.h>

typedef struct { float a, b, c; } vec_abc_t;   /* 3-phase quantities */
typedef struct { float alpha, beta; } vec_ab_t; /* stationary frame */
typedef struct { float d, q; } vec_dq_t;        /* rotor frame */

typedef enum {
    MOTOR_STATE_IDLE = 0,
    MOTOR_STATE_CALIBRATING_ADC,
    MOTOR_STATE_ALIGN,
    MOTOR_STATE_RUN,
    MOTOR_STATE_FAULT
} motor_state_t;

typedef enum {
    FAULT_NONE       = 0,
    FAULT_OVERCURRENT= 1U << 0,
    FAULT_OVERVOLT   = 1U << 1,
    FAULT_UNDERVOLT  = 1U << 2,
    FAULT_DRV8305    = 1U << 3,
    FAULT_ENCODER    = 1U << 4,
    FAULT_OVERSPEED  = 1U << 5,
    FAULT_ISR_OVERRUN= 1U << 6
} fault_flag_t;

#endif
