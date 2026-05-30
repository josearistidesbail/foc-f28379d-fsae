//=============================================================================
// foc_state_machine.h - Top-level mode logic.
//
//   IDLE -> CALIBRATE_OFFSETS -> ALIGN_ROTOR -> RUN
//                                                 \-> FAULT (latched)
//=============================================================================
#ifndef FOC_STATE_MACHINE_H
#define FOC_STATE_MACHINE_H

#include <stdint.h>
#include <stdbool.h>

typedef enum {
    FOC_IDLE = 0,               // PWM off, gate driver disabled
    FOC_CALIBRATE_OFFSETS,      // average ADC zero-current bias (low side shorted)
    FOC_ALIGN_ROTOR,            // inject Id, set encoder zero (QEP) or capture offset (resolver)
    FOC_RUN,                    // closed-loop FOC active
    FOC_FAULT                   // latched; clear with sm_clear_fault()
} FOC_State_t;

extern void         sm_init(void);
extern FOC_State_t  sm_get_state(void);

// Called at 1 kHz from the speed-loop tick.
extern void         sm_tick_1khz(void);

// External requests.
extern void         sm_request_run(void);
extern void         sm_request_stop(void);
extern void         sm_request_align(void);     // CALIBRATE -> ALIGN -> IDLE
extern void         sm_clear_fault(void);

// Raise a fault from anywhere (incl. ISR). Goes to FAULT next tick.
extern void         sm_raise_fault(uint16_t fault_code);

#endif // FOC_STATE_MACHINE_H
