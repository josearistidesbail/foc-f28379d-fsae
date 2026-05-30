//=============================================================================
// debug_iface.c - SCIA driver glue. v1 step 2: bare echo loop.
//
// RX ISR pushes bytes into a software ring (RX_RING_LEN, pow-of-2).
// debug_iface_poll() drains the ring and echoes each byte back to the host.
// Frame parsing / dispatch are added in step 3.
//=============================================================================
#include "driverlib.h"
#include "device.h"
#include "board.h"
#include "debug_iface.h"

#define RX_RING_LEN  256U
#define RX_RING_MASK (RX_RING_LEN - 1U)

#pragma DATA_SECTION(s_rx_ring, ".ebss")
static volatile uint16_t s_rx_ring[RX_RING_LEN];
static volatile uint16_t s_rx_head;     // written by ISR
static volatile uint16_t s_rx_tail;     // read by super-loop

void debug_iface_init(void)
{
    s_rx_head = 0;
    s_rx_tail = 0;
    // SCI peripheral, pinmux, FIFO levels, and RX FIFO interrupt are
    // configured by SysConfig in Board_init(). Interrupt vector is registered
    // in INTERRUPT_init() and enabled in PIE; we just need EINT/ERTM (done in
    // main.c after sm_init()).
}

void debug_iface_poll(void)
{
    while (s_rx_tail != s_rx_head)
    {
        // Wait until TX FIFO has space.
        if (SCI_getTxFIFOStatus(UART_DEBUG_BASE) >= SCI_FIFO_TX15)
        {
            return;     // come back next poll; no blocking in super-loop
        }
        uint16_t b = s_rx_ring[s_rx_tail];
        s_rx_tail = (s_rx_tail + 1U) & RX_RING_MASK;
        SCI_writeCharNonBlocking(UART_DEBUG_BASE, b);
    }
}

__interrupt void sciA_rx_isr(void)
{
    // Drain whatever the RX FIFO has (at least the FIFO interrupt level worth
    // of bytes is sitting there).
    while (SCI_getRxFIFOStatus(UART_DEBUG_BASE) != SCI_FIFO_RX0)
    {
        uint16_t b = SCI_readCharNonBlocking(UART_DEBUG_BASE) & 0xFFU;
        uint16_t next = (s_rx_head + 1U) & RX_RING_MASK;
        if (next != s_rx_tail)
        {
            s_rx_ring[s_rx_head] = b;
            s_rx_head = next;
        }
        // else: ring full -> byte dropped silently in v1.
    }

    SCI_clearOverflowStatus(UART_DEBUG_BASE);
    SCI_clearInterruptStatus(UART_DEBUG_BASE, SCI_INT_RXFF);
    Interrupt_clearACKGroup(INT_UART_DEBUG_RX_INTERRUPT_ACK_GROUP);
}
