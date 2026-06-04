/*
 * serial_rx.c - SCI-A receive ISR.
 *
 * The host sends 8 bytes per frame:
 *   word[0..1]: float32  speed reference (per-unit)
 *   word[2]   : uint16   packed control bits
 *                  bit 0     enable
 *                  bits 4-7  debug-signal select (0..15)
 *                  bit 8     start autotuner (one-shot)
 *                  bit 9     param-select (use tuned gains)
 *   word[3]   : padding / unused
 */

#include "autotuner.h"
#include <string.h>

#include "DSP28xx_SciUtil.h"     /* scia_rcv, NOERROR, PARTIALDATA */

void serial_rx_isr(void)
{
    uint16_t buf[4] = {0, 0, 0, 0};
    int err = scia_rcv(buf, 8, 4);

    if (err != NOERROR && err != PARTIALDATA) {
        return;
    }

    /* Bytes 0..3 == float32 speed reference. */
    float speed_ref;
    memcpy(&speed_ref, buf, sizeof speed_ref);
    g_speed_ref_pu = speed_ref;

    uint16_t flags = buf[2];
    g_enable       = (flags & SCI_BIT_ENABLE) != 0;
    g_start_tuner  = (flags & SCI_BIT_START_TUNER) != 0;
    g_param_select = (flags & SCI_BIT_PARAM_SELECT) != 0;
    g_debug_select = (uint8_t)((flags & SCI_MASK_DEBUG) >> SCI_SHIFT_DEBUG);
}
