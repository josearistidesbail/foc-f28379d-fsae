//=============================================================================
// inverter_iface.h - Gate-driver enable, nFAULT readback, dead-time setup.
//
// Implementation is per-hardware-variant (see src/inverter_*.c).
//=============================================================================
#ifndef INVERTER_IFACE_H
#define INVERTER_IFACE_H

#include <stdbool.h>
#include <stdint.h>

extern void inverter_init(void);            // SPI bring-up, default register set
extern void inverter_enable_gate(void);     // EN_GATE high (or equivalent)
extern void inverter_disable_gate(void);    // safe state - PWM driver tristate
extern bool inverter_is_faulted(void);      // nFAULT pin / status read
extern uint16_t inverter_fault_status(void);// last latched fault bits (HW specific)

#endif // INVERTER_IFACE_H
