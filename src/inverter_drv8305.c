//=============================================================================
// inverter_drv8305.c - DRV8305 gate driver bring-up over SPI-A.
//
// Configures: ISENSE amp gain, dead-time, OCP behaviour, VDS monitor.
// Datasheet section 7.6 "Programming" - register map at 0x01..0x0C.
//
// Only present when HW_BOOSTXL_DRV8305 is the active variant.
//=============================================================================
#include "driverlib.h"
#include "device.h"
#include "build_config.h"

#if defined(HW_BOOSTXL_DRV8305)

#include "board.h"                          // SysConfig-generated: DRV8305_SPI_BASE
#include "inverter_iface.h"
#include "inc/hw_spi.h"                     // SPI_O_STS / SPI_O_FFRX / SPI_O_FFTX
#include "inc/hw_types.h"                   // HWREGH

#define DRV8305_REG_WARN_STATUS     0x01
#define DRV8305_REG_OV_VDS_FAULTS   0x02
#define DRV8305_REG_IC_FAULTS       0x03
#define DRV8305_REG_VGS_FAULTS      0x04
#define DRV8305_REG_HS_GATE_DRV     0x05
#define DRV8305_REG_LS_GATE_DRV     0x06
#define DRV8305_REG_GATE_DRV_CTRL   0x07
#define DRV8305_REG_IC_OPERATION    0x09
#define DRV8305_REG_SHUNT_AMP       0x0A
#define DRV8305_REG_VOLT_REG        0x0B
#define DRV8305_REG_VDS             0x0C

static uint16_t s_last_fault_status = 0;

// TODO: Debugging DRV8305 GPIO state + SPI bring-up (Step 4/5), remove after.
volatile uint16_t g_dbg_en_gate;       // GPIO124 readback: 1 = gate driver awake
volatile uint16_t g_dbg_nfault;        // GPIO125 readback: 1 = OK, 0 = fault asserted (active-low)
volatile uint16_t g_dbg_spi_wr_shunt;  // value written to SHUNT_AMP reg
volatile uint16_t g_dbg_spi_rd_shunt;  // value read back from SHUNT_AMP reg (Step 5 must equal wr)
volatile uint16_t g_dbg_spi_warn;      // Warning & Watchdog Status (reg 0x01) after init
volatile uint16_t g_dbg_spi_ovvds;     // OV/VDS Faults (reg 0x02) after init
volatile uint16_t g_dbg_spi_icflt;     // IC Faults (reg 0x03) after init
volatile uint16_t g_dbg_spi_vgsflt;    // VGS Faults (reg 0x04) after init

// Raw SPI hardware state captured at the end of the verification read.
// Use these to triage when the readback is wrong:
//   * g_dbg_spi_sts        = SPISTS  (bit 6 INT_FLAG, bit 5 BUSY, bit 4 OVERRUN)
//   * g_dbg_spi_fftx_level = TXFFST  (words still queued in TX FIFO; 0 = drained)
//   * g_dbg_spi_ffrx_level = RXFFST  (words sitting in RX FIFO when we read)
//   * g_dbg_spi_rx_raw     = SPIRXBUF raw (no mask) from the verification read
//   * g_dbg_spi_hs_default = HS_GATE_DRV (0x05) — datasheet default 0x03FF;
//                            non-zero, non-0x290 here proves SPI is alive but
//                            our SHUNT_AMP write didn't land where we think.
volatile uint16_t g_dbg_spi_sts;
volatile uint16_t g_dbg_spi_fftx_level;
volatile uint16_t g_dbg_spi_ffrx_level;
volatile uint16_t g_dbg_spi_rx_raw;
volatile uint16_t g_dbg_spi_hs_default;

// 16-bit SPI frame layout (DRV8305 datasheet 7.5.1.4):
//   bit 15    = R/!W (1 = read, 0 = write)
//   bits 14:11 = register address
//   bits 10:0  = data
// Note: SPI_isBusy() on F2837xD only watches the TX FIFO occupancy, not
// the wire. Must wait for RX FIFO non-empty to know the transaction is done.
static uint16_t drv8305_xfer(uint16_t rw, uint16_t addr, uint16_t data)
{
    uint16_t frame = (rw << 15) | ((addr & 0x0F) << 11) | (data & 0x07FF);

    SPI_resetRxFIFO(DRV8305_SPI_BASE);      // discard any stale word

    GPIO_writePin(DRV8305_SCS_GPIO, 0);     // assert CS (active low)
    DEVICE_DELAY_US(1);                     // tSU_SCS >= 50 ns

    SPI_writeDataBlockingFIFO(DRV8305_SPI_BASE, frame);
    uint16_t r = SPI_readDataBlockingFIFO(DRV8305_SPI_BASE);
    g_dbg_spi_rx_raw = r;                   // unmasked, for triage

    DEVICE_DELAY_US(1);                     // tHD_SCS >= 30 ns
    GPIO_writePin(DRV8305_SCS_GPIO, 1);
    DEVICE_DELAY_US(1);                     // tSCS (inter-frame) >= 400 ns
    return r & 0x07FF;
}

void inverter_init(void)
{
    // Wake the DRV8305 first: EN_GATE low -> high. The gate driver needs
    // ~1 ms after EN_GATE rising before SPI is responsive (datasheet 7.5.1.1).
    GPIO_writePin(DRV8305_EN_GATE_GPIO, 0);
    DEVICE_DELAY_US(2000);
    GPIO_writePin(DRV8305_EN_GATE_GPIO, 1);
    DEVICE_DELAY_US(2000);

    // Program operating registers. Values per DRV8305 datasheet section 7.6.
    const uint16_t shunt_cfg = 0x0290;          // gain=10, blank=0.5us
    drv8305_xfer(0, DRV8305_REG_SHUNT_AMP, shunt_cfg);
    drv8305_xfer(0, DRV8305_REG_VDS,        0x0086);  // VDS = 0.18 V trip
    drv8305_xfer(0, DRV8305_REG_GATE_DRV_CTRL, 0x0080); // PWM mode 6x

    DEVICE_DELAY_US(500);

    // Verify: read SHUNT_AMP back. If SPI is wired and CS is correct, the
    // returned value matches what we wrote. Mismatch == SPI plumbing issue.
    g_dbg_spi_wr_shunt = shunt_cfg;
    g_dbg_spi_rd_shunt = drv8305_xfer(1, DRV8305_REG_SHUNT_AMP, 0);

    // Capture SPI hardware state right after the verification read so we can
    // tell hung-but-quiet (no clocks) from "wire works, DRV silent".
    g_dbg_spi_sts        = HWREGH(DRV8305_SPI_BASE + SPI_O_STS);
    g_dbg_spi_fftx_level = HWREGH(DRV8305_SPI_BASE + SPI_O_FFTX) & SPI_FFTX_TXFFST_M;
    g_dbg_spi_ffrx_level = HWREGH(DRV8305_SPI_BASE + SPI_O_FFRX) & SPI_FFRX_RXFFST_M;

    // Read HS_GATE_DRV (reg 0x05) which has datasheet default 0x03FF. Seeing
    // 0x03FF here proves the SPI bus is alive even if the SHUNT_AMP write
    // didn't land. Seeing 0 here means the bus itself is silent.
    g_dbg_spi_hs_default = drv8305_xfer(1, DRV8305_REG_HS_GATE_DRV, 0);

    // Snapshot the four fault/warning status registers so we can see in the
    // Expressions view whether any faults are latched right after init.
    g_dbg_spi_warn   = drv8305_xfer(1, DRV8305_REG_WARN_STATUS,   0);
    g_dbg_spi_ovvds  = drv8305_xfer(1, DRV8305_REG_OV_VDS_FAULTS, 0);
    g_dbg_spi_icflt  = drv8305_xfer(1, DRV8305_REG_IC_FAULTS,     0);
    g_dbg_spi_vgsflt = drv8305_xfer(1, DRV8305_REG_VGS_FAULTS,    0);
}

void inverter_enable_gate(void) { GPIO_writePin(DRV8305_EN_GATE_GPIO, 1); }
void inverter_disable_gate(void){ GPIO_writePin(DRV8305_EN_GATE_GPIO, 0); }

bool inverter_is_faulted(void)
{
    return GPIO_readPin(DRV8305_NFAULT_GPIO) == 0;
}

uint16_t inverter_fault_status(void)
{
    s_last_fault_status = drv8305_xfer(1, DRV8305_REG_WARN_STATUS, 0);
    return s_last_fault_status;
}

#endif // HW_BOOSTXL_DRV8305
