//=============================================================================
// pwm_iface.h - Translate SVGEN duty cycle (range [-0.5, +0.5]) into PWM
// compare-register values for the three half-bridges, and own the bridge's
// non-switching output patterns.
//
// Three output modes (pwm_iface.c tracks which one is applied):
//   RUN  - complementary switching through the SysConfig dead band (AHC).
//          Entered by pwm_set_duty().
//   OFF  - ALL SIX outputs LOW: the dead band is bypassed so EPWMxB follows the
//          (forced-LOW) action-qualifier B instead of being the inverse of A.
//          This is the pattern for IDLE, CALIBRATE, coast-FAULT and boot, and
//          therefore the pattern the gate driver sees the instant it is
//          enabled (FE_UFPR 4.0: the PrimeSTACK wants every input LOW at
//          start). Entering OFF only ever turns devices OFF, so it is safe from
//          any mode.
//   ASC  - three-phase ACTIVE SHORT: high sides LOW, low sides HIGH (A forced
//          LOW through the dead band, which inserts the dead time on the way
//          in). Used ONLY for the high-speed FAULT safe state. The HW trip-zone
//          ASC (TZA LOW / TZB HIGH) is independent of all of this.
// All callers run in the 10 kHz ISR context (the state machine is ticked from
// foc_speed_loop_tick inside the ISR), so the mode changes are serialized.
//=============================================================================
#ifndef PWM_IFACE_H
#define PWM_IFACE_H

#include "foc_types.h"

extern void pwm_init(void);
extern void pwm_force_off(void);                   // all six LOW (dead band bypassed)
extern void pwm_force_asc(void);                   // high sides LOW, low sides HIGH
extern void pwm_hold_safe(void);                   // re-assert the current OFF/ASC pattern
extern void pwm_set_duty(const FOC_Duty_t *duty);  // ISR-rate call; leaves OFF/ASC -> RUN
extern void pwm_clear_trip(void);                  // release latched HW trip-zone
extern void pwm_apply_module_tz(void);             // (dis)arm module-fault OSHT per g_module_faults_en

#endif // PWM_IFACE_H
