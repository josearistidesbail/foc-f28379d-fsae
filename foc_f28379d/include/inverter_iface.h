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
extern void inverter_clear_faults(void);         // send CLR_LATCH (or equivalent) to gate driver
extern void inverter_snapshot_fault_regs(void);  // read fault registers into g_dbg_fault_* globals
extern bool inverter_is_faulted(void);      // nFAULT pin / status read
extern uint16_t inverter_fault_status(void);// last latched fault bits (HW specific)

#if defined(HW_CONTROL_BOARD_V2)
// FE_UFPR 4.0 board I/O (src/inverter_custom_v2.c).
extern uint16_t inverter_gate_en_readback(void);   // bit0 GPIO66 master, bit1 GPIO131 aux
extern void     inverter_dbg_set_gates(uint16_t mask); // BENCH: drive both enables (same bits)
extern uint16_t board_switch_inputs(void);         // bit0 main GPIO29, bit1 start GPIO59
#endif

#endif // INVERTER_IFACE_H
