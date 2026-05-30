//=============================================================================
// debug_iface.h - PC <-> MCU debug link over SCIA backchannel UART.
//
// Step 2 (bare echo): debug_iface_init() configures the SCI RX ISR to push
// bytes into a software ring; debug_iface_poll() drains the ring back out
// the TX FIFO. Later steps layer frame parsing, parameter access, and scope
// capture on top of the same RX ring / TX path.
//=============================================================================
#ifndef DEBUG_IFACE_H
#define DEBUG_IFACE_H

#include <stdint.h>

extern void debug_iface_init(void);
extern void debug_iface_poll(void);

#endif // DEBUG_IFACE_H
