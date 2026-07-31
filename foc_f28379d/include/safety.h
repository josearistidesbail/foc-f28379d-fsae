//=============================================================================
// safety.h - Latched-fault registry and ISR-side trip checks.
//
// HW-level overcurrent goes through ePWM trip-zone (configured in SysConfig
// + per-variant inverter_*.c). This module owns the SW-side latch.
//=============================================================================
#ifndef SAFETY_H
#define SAFETY_H

#include <stdint.h>
#include <stdbool.h>

typedef enum {
    FAULT_NONE          = 0,
    FAULT_OVERCURRENT   = (1u << 0),
    FAULT_OVERVOLTAGE   = (1u << 1),
    FAULT_UNDERVOLTAGE  = (1u << 2),
    FAULT_OVERTEMP      = (1u << 3),
    FAULT_GATE_DRIVER   = (1u << 4),
    FAULT_SENSOR_LOSS   = (1u << 5),
    FAULT_WATCHDOG      = (1u << 6),
    FAULT_CURRENT_SENSE = (1u << 7),   // ALIGN phase-ID rejected: current-sense
                                       // channel->phase wiring unverifiable
} Fault_Bits_t;

extern void     safety_init(void);
extern void     safety_check_isr(void);          // call last in foc ISR
extern void     safety_latch(uint16_t bits);     // OR into latched mask
extern bool     safety_is_clear(void);
extern uint16_t safety_get_latched(void);
extern void     safety_clear(void);              // only callable from IDLE

// Bench bypass: when 0, the module-fault paths (HW trip-zone OVERCURRENT +
// SW gate-driver check) are ignored so a board with no power stage stays in
// IDLE. Seeded from BENCH_NO_POWER_STAGE; live-toggled via "module_faults_en".
extern volatile uint16_t g_module_faults_en;

// Bench bypass for the SW undervoltage trip: when 0, the UV check is skipped
// (used while the DC-bus sensor scale is untrusted). Seeded from
// UV_FAULT_EN_DEFAULT; live-toggled via "uv_en". OVERVOLTAGE stays armed.
extern volatile uint16_t g_uv_fault_en;

// Undervoltage trip threshold [V]: seeded from MOTOR_UV_TRIP_V in safety_init(),
// live via the "uv_trip_v" param because the useful threshold is a fraction of
// whatever bus is actually connected. Debounced by UV_TRIP_DEBOUNCE_TICKS and
// armed only in FOC_RUN. OVERVOLTAGE stays compile-time (MOTOR_OV_TRIP_V).
extern volatile float g_uv_trip_v;

#endif // SAFETY_H
