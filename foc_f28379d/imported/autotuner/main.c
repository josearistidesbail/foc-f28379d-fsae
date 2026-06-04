/*
 * main.c - rate-monotonic scheduler + main loop.
 *
 * Equivalent of the generated ert_main.c, but the dispatch is collapsed
 * into the loop body where you can actually read it.
 *
 * Tick layout:
 *   tid0    50 us  20 kHz  base   - fast_loop_step
 *   tid1   500 us   2 kHz  /10    - speed_loop_step
 *   tid2     5 ms 200 Hz   /100   - autotuner_step
 *   tid3   100 ms  10 Hz   /2000  - mode_chart_step
 *   tid4   500 ms   2 Hz   /10000 - heartbeat_step
 */

#include "autotuner.h"

extern void c2000_flash_init(void);
extern void enableADCInterrupt1(void);
extern void disableADCInterrupt1(void);
extern void globalInterruptDisable(void);
extern void globalInterruptEnable(void);
extern void enable_interrupts(void);

/* These are set by the ADCINT1 ISR -- one bit per tid means "next loop
 * iteration must run this rate group". */
static volatile uint8_t pending = 0;
#define PEND_BIT(n)    (1U << (n))

/* The ADCINT1 ISR (mapped to PIE int1.1 by the F2837xD vector table)
 * just sets the base-rate flag and increments counters. */
void adc_int1_isr(void)
{
    static uint16_t c1 = 0, c2 = 0, c3 = 0, c4 = 0;

    pending |= PEND_BIT(0);

    if (++c1 >=    10U) { c1 = 0; pending |= PEND_BIT(1); }
    if (++c2 >=   100U) { c2 = 0; pending |= PEND_BIT(2); }
    if (++c3 >=  2000U) { c3 = 0; pending |= PEND_BIT(3); }
    if (++c4 >= 10000U) { c4 = 0; pending |= PEND_BIT(4); }
}

void scheduler_run_forever(void)
{
    for (;;) {
        uint8_t snap;

        /* Atomically grab and clear pending flags. The ISR only ORs in
         * new bits so this is safe with a single read+write. */
        globalInterruptDisable();
        snap = pending;
        pending = 0;
        globalInterruptEnable();

        if (snap & PEND_BIT(0)) fast_loop_step();
        if (snap & PEND_BIT(1)) speed_loop_step();
        if (snap & PEND_BIT(2)) autotuner_step();
        if (snap & PEND_BIT(3)) mode_chart_step();
        if (snap & PEND_BIT(4)) heartbeat_step();
    }
}

int main(void)
{
    c2000_flash_init();
    board_init();

    globalInterruptDisable();
    enableADCInterrupt1();
    enable_interrupts();
    globalInterruptEnable();

    scheduler_run_forever();
    return 0;
}
