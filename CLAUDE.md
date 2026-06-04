<!-- DO NOT EDIT - This part is automatically generated. -->

# Claude Code Guidelines

## MANDATORY Pre-Task Steps (DO NOT SKIP)

**CRITICAL - NO EXCEPTIONS**: Before ANY CCS/Texas Instruments-related task (even simple ones), you MUST complete these steps IN ORDER. Do NOT call any ccs-project, ccs-debug, ccs-sysconfig, or ccs-serial MCP tools until both steps are complete.

1. Read `.claude/ccs.settings.md` to get the CCS installation directory
2. Read `{installation_directory}/ccs/theia/resources/ai/CCS.md` using the installation directory from step 1. This file includes information on how to interact with CCS as well as device-specific information (UART backchannel pins, LED setup, transmit best practices, etc.).
3. ONLY THEN proceed with CCS MCP tool calls or any other task work

Do NOT parallelize these steps with task work. Do NOT skip step 2 regardless of task complexity.


<!-- DO NOT EDIT - This part is automatically generated. -->

<!-- User instructions should be added below this line -->

# FOC F28379D — Project Context

## What This Is

Field-Oriented Control firmware for a TMS320F28379D (F2837xD dual-core). CPU1 only.
Two independent hardware variants share the same source tree, selected at build time.


## Build Configurations

| CCS Config | Preprocessor Defines | Hardware | Motor | Sensor |
|---|---|---|---|---|
| `Debug_BOOSTXL_Teknic_QEP` | `HW_BOOSTXL_DRV8305`, `MOTOR_TEKNIC_M2310P`, `SENSOR_QEP`, `_DEBUG`, `_FLASH`, `CPU1`, `_F2837X`, `F2837x_DEVICE`, `_DUAL_HEADERS`, `LARGE_MODEL` | BOOSTXL-DRV8305EVM on LaunchPad | Teknic M-2310P-LN-04K | eQEP1 encoder |
| `Production_CtrlV2_EMRAX_Resolver` | `HW_CONTROL_BOARD_V2`, `MOTOR_EMRAX_208`, `SENSOR_RM44AC`, … | Custom inverter board | EMRAX 208 | RM44AC resolver |

**Important**: `_LAUNCHXL_F28379D` must be defined for the LaunchPad (10 MHz crystal vs 20 MHz
on the controlCARD). Verify it is in the Debug config Predefined Symbols if the CPU runs at half speed.

## Source Layout

```
src/             main.c, isr.c, foc_pipeline.c, foc_state_machine.c, adc_iface.c,
                 pwm_iface.c, sensor_qep.c, sensor_rm44ac.c, inverter_drv8305.c,
                 inverter_custom_v2.c, safety.c, debug_hooks.c
include/         Public headers (build_config.h, foc_types.h, foc_pipeline.h, …)
config/hw/       Hardware variant headers (hw_boostxl_drv8305.h, hw_control_v2.h)
config/motor/    Motor parameter headers (motor_teknic_m2310p.h, motor_emrax_208.h)
config/sensor/   Sensor parameter headers (sensor_qep.h, sensor_rm44ac.h)
config/gains/    PI gain headers (gains_teknic.h, gains_emrax.h)
syscfg/          SysConfig source files (.syscfg) — never edit generated board.c/h here
src_device/      TI device startup (F2837xD_CodeStartBranch, GlobalVariableDefs, device)
ti_lib/          Copied TI Motor Control SDK transform sources (clarke, park, ipark, pi, svgen)
libraries/       TI Motor Control SDK header-only math (path-matched to SDK install)
```

`build_config.h` is the single include funnel — it pulls in the correct hw/motor/sensor headers.

## SysConfig (Debug Variant)

**Source file**: `syscfg/board_boostxl_drv8305.syscfg`
**Always configure via SysConfig MCP** — never edit `.syscfg` files directly.

### Configured modules

| Instance | Peripheral | Pins | Role |
|---|---|---|---|
| `LED_STATUS` | GPIO31 | — | D9 Red LED, heartbeat |
| `PWM_U` | EPWM1 | GPIO0/1 | Phase U, master — generates ADCSOCA |
| `PWM_V` | EPWM2 | GPIO2/3 | Phase V |
| `PWM_W` | EPWM3 | GPIO4/5 | Phase W |
| `myADCA` | ADCA | A2/A3 | SOC2=Iw, SOC3=Vbus; INT1→`adcA1_isr` |
| `myADCB` | ADCB | B2 | SOC1=Iv |
| `myADCC` | ADCC | C2 | SOC0=Iu |
| `myADCA1_INT` | INT_ADCA_1 | — | Registered to `adcA1_isr`, PIE group 1 |
| `QEP_SENSOR` | EQEP1 | GPIO10/11/23 | Teknic 4000CPR encoder A/B/I, QPOSMAX=15999 |

**ePWM**: Up-down, TBPRD=5000 (10 kHz at EPWMCLK=100 MHz), AHC dead-band 50 counts (500 ns).
**ADC**: 50 MHz (/4 prescaler), 15-count sample window, all SOCs triggered by EPWM1 SOCA.

## Startup Flow

```
Device_init() → Device_initGPIO() → Interrupt_initModule/VectorTable() → Board_init()
→ debug_init() → safety_init() → adc_init() → pwm_init() → sensor_init()
→ inverter_init()   ← SPI config, gate driver stays DISABLED here
→ foc_init() → sm_init()   ← starts in FOC_IDLE
→ EINT/ERTM   ← adcA1_isr starts firing at 10 kHz
→ super-loop (500 ms LED toggle)
```

## Key Hardware Facts (Debug Variant)

- **Current sense**: DRV8305 SO1/SO2/SO3, gain=10 V/V, shunt=7 mΩ, bias≈1.65 V → ~2048 codes at zero current
- **ADC channel mapping (verified against official BOOSTXL + LAUNCHXL pinout JSON)**:
  - Iu (ISENSE_A / SO1) → BP27 → **C2** (ADCC SOC0)
  - Iv (ISENSE_B / SO2) → BP28 → **B2** (ADCB SOC1)
  - Iw (ISENSE_C / SO3) → BP29 → **A2** (ADCA SOC2)
  - Vbus (VSENSE_VDD)   → BP26 → **A3** (ADCA SOC3)
- **Vbus divider**: header says 1/17.74 but bench measurement shows ~1/13.1 (12 V supply → 1248 codes). `VBUS_DIVIDER_RATIO` needs recalibration once Step 4 is fully closed.
- **Gate enable (EN_GATE)**: GPIO124 active-high — stays low until state machine enables it (currently held high in `main.c` for bring-up Step 4)
- **WAKE**: GPIO125 — driven HIGH by SysConfig `Board_init()` for normal (non-sleep) operation. Keeping WAKE high means the DRV8305 stays awake even when EN_GATE is low, so a latched fault holds nFAULT asserted until explicitly cleared. **This pin is WAKE, not nFAULT** (earlier docs had this wrong).
- **nFAULT**: **GPIO19** active-low, configured input + pull-up (open-drain fault output from the DRV8305). Earlier docs said GPIO125 — that was the WAKE pin; corrected per bench mapping.
- **Encoder**: J14 connector (5V TXB0106 level shifters) → GPIO10/11/23 (EQEP1A/B/I)
- **SPI for DRV8305**: SPIA — SDI/PICO=GPIO58, SDO/POCI=GPIO59, SCLK=GPIO60, SCS=GPIO61 (CS driven manually on GPIO61, see Step 5)
- **XDS100v2 backchannel UART**: GPIO43 (SCIARX) / GPIO42 (SCIATX) — wired through the FTDI bridge. GPIO28/29 are NOT the backchannel on this LaunchPad; they go to BoosterPack headers.

### BOOSTXL-DRV8305 ↔ LAUNCHXL-F28379D pin map (bench-confirmed)

| DRV8305 signal | F28379D pin | | DRV8305 signal | F28379D pin |
|---|---|---|---|---|
| FAULT (nFAULT) | GPIO19 | | PWMHA / PWMLA | GPIO0 / GPIO1 (EPWM1A/B) |
| ENGATE | GPIO124 | | PWMHB / PWMLB | GPIO2 / GPIO3 (EPWM2A/B) |
| WAKE | GPIO125 | | PWMHC / PWMLC | GPIO4 / GPIO5 (EPWM3A/B) |
| SCS | GPIO61 | | ISENA (Iu) | ADCIN-C2 |
| SCLK | GPIO60 | | ISENB (Iv) | ADCIN-B2 |
| SDI | GPIO58 | | ISENC (Iw) | ADCIN-A2 |
| SDO | GPIO59 | | VSEN_PVDD (Vbus) | ADCIN-A3 |
| PWRGD | RST net | | VSENA / VSENB / VSENC | ADCIN14 / ADCIN-C3 / ADCIN-B3 |

(VSENA/B/C are phase-voltage-sense channels, not yet used by firmware.)

## Bring-Up Status

- [x] Step 1 — LED heartbeat blink — confirmed on hardware
- [x] Step 2 — ePWM + ADC pipeline — ISR confirmed firing at 10 kHz
- [~] Step 3 — eQEP1: QPOSCNT changes with rotation ✓, but **`QEPSTS` first-index bit and `QPOSILAT` stay at 0** (likely Z wire / differential routing issue), and **direction flag flips while spinning steadily one way** (likely hand-dither at quadrature edges or A/B phase issue). Resume by physically verifying Z wire to J14 index pin, optionally toggle SysConfig `inputPolarity` "Invert Index", and watch `g_dbg_qep_status` bits 0x01 (POS_CNT_ERROR) and 0x04 (CAP_DIR_ERROR) for HW-flagged quadrature errors.
- [~] Step 4 — DRV8305 awake, EN_GATE high, nFAULT clear, **SO2 and SO3 biased correctly on B2/A2 (~2290 codes ≈ 1.68 V)**, Vbus tracks supply on A3. **SO1 dead on bench BOOSTXL** — see "Bench-Specific Hardware Quirks". Step is effectively closed for the alive channels; revisit Iu when SO1 hardware is fixed. **[2026-05-28] nFAULT later regressed to stuck-low (gate driver "not enabling"); root-caused to four bugs (ISR switching in IDLE + three mis-encoded `drv8305_xfer()` writes) and fixed/verified on HW — nFAULT high, EN_GATE stays high, SO bias ~2300. See Pitfalls "DRV8305 nFAULT stuck low".**
- [x] Step 5 — DRV8305 SPI alive over SPIA. SHUNT_AMP write/readback verified (`g_dbg_spi_rd_shunt == 0x0040` matches the write); status registers all 0; nFAULT clear. SysConfig SPI mode is **POL0PHA0** (the C2000 mode naming does not match standard SPI conventions — TI's reference uses POL0PHA0 for DRV8305). CS on its own GPIO61/SPISTEA pin (not EN_GATE). `drv8305_xfer()` uses `SPI_writeDataBlockingFIFO()` + `SPI_readDataBlockingFIFO()`; `SPI_isBusy()` on F2837xD only watches TX FIFO occupancy, not actual transmission completion — do NOT use it for sync.
- [~] Step 6 — Rotor alignment current injection (FOC_ALIGN_ROTOR). Code path implemented: state machine runs CALIBRATE → ALIGN → (IDLE if align-only, RUN otherwise); pipeline forces `theta_elec = 0` during ALIGN; `sensor_capture_zero()` latches the settled rotor count at end of ALIGN. **Bench verification pending.** NOTE: `_LAUNCHXL_F28379D` **IS** in the Debug_BOOSTXL_Teknic_QEP predefined symbols (`.cproject` line ~76, that config only) — clock is the full 200 MHz and the SCI runs at the real 115200 (verified on HW 2026-06-04 via the debug link). The earlier "symbol missing → all timing scales 2x / runs at 57600" claim is **stale and no longer true**; do not assume half-clock. To test: set `g_dbg_sm_cmd = 1` (align-only) from CCS Expressions view, watch the rotor snap to alignment, then check `g_dbg_align_id_meas ≈ ALIGN_ID_INJECT_A` and `g_dbg_align_qep_cnt` reflects the new encoder zero.
- [ ] Step 7 — Closed-loop current control, verify Iq/Id tracks reference
- [ ] Step 8 — Speed loop, trip-zone HW overcurrent protection

## Temporary Debug Globals + Hacks (remove before production)

```c
// src/isr.c
volatile uint32_t g_isr_count;      // ISR firing counter

// src/adc_iface.c
volatile uint16_t g_dbg_iu_raw;     // raw ADC Iu (~2048 at zero current with hardware connected)
volatile uint16_t g_dbg_iv_raw;
volatile uint16_t g_dbg_iw_raw;
volatile uint16_t g_dbg_vbus_raw;

// src/sensor_qep.c   (Step 3 verification)
volatile uint32_t g_dbg_qep_count;        // QPOSCNT
volatile uint32_t g_dbg_qep_index_latch;  // QPOSILAT — stuck at 0 on bench (index wiring issue)
volatile uint16_t g_dbg_qep_status;       // QEPSTS bits; watch 0x01, 0x02, 0x04, 0x20
volatile int16_t  g_dbg_qep_direction;    // +1 / -1 — flips erratically on bench

// src/inverter_drv8305.c   (Step 4 verification)
volatile uint16_t g_dbg_en_gate;    // GPIO124 readback
volatile uint16_t g_dbg_nfault;     // GPIO19 readback (1 = OK, 0 = fault asserted)

// src/inverter_drv8305.c   (Step 5 verification)
volatile uint16_t g_dbg_spi_wr_shunt;     // 0x0040 written to SHUNT_AMP
volatile uint16_t g_dbg_spi_rd_shunt;     // should read back == g_dbg_spi_wr_shunt
volatile uint16_t g_dbg_spi_hs_default;   // reg 0x05 — non-zero proves SPI bus is alive
volatile uint16_t g_dbg_spi_warn;         // 0x01 — Warning/Watchdog Status
volatile uint16_t g_dbg_spi_ovvds;        // 0x02 — OV/VDS Faults
volatile uint16_t g_dbg_spi_icflt;        // 0x03 — IC Faults
volatile uint16_t g_dbg_spi_vgsflt;       // 0x04 — VGS Faults
volatile uint16_t g_dbg_spi_sts;          // SPISTS raw (bit 6 INT_FLAG, bit 5 BUSY, bit 4 OVERRUN)
volatile uint16_t g_dbg_spi_fftx_level;   // TX FIFO occupancy post-transaction
volatile uint16_t g_dbg_spi_ffrx_level;   // RX FIFO occupancy post-transaction
volatile uint16_t g_dbg_spi_rx_raw;       // raw last RXBUF, no mask

// src/foc_state_machine.c   (Step 6 control + verification)
volatile uint16_t g_dbg_sm_cmd;        // 1=align-only, 2=run, 3=stop, 4=clear-fault
                                       //   auto-resets to 0 once latched
volatile uint16_t g_dbg_state;         // mirrors FOC_State_t for the Expressions view
volatile int32_t  g_dbg_align_qep_cnt; // QPOSCNT at the moment of zero-capture

// src/foc_pipeline.c        (Step 6 verification, ALIGN-only updates)
volatile float32_t g_dbg_align_id_meas;   // should approach ALIGN_ID_INJECT_A
volatile float32_t g_dbg_align_iq_meas;   // should stay near 0
volatile float32_t g_dbg_align_vd;        // Vd command — small positive at steady state
```

**Code hacks pending removal:**

- `src/main.c` — temporary `inverter_enable_gate()` call right after `sm_init()` (guarded by `HW_BOOSTXL_DRV8305`). Holds DRV8305 awake so current-amp bias can be verified without engaging PWM. Remove once state machine drives EN_GATE through its proper transitions.

## Pitfalls Already Hit — Don't Repeat

- **ADC instance naming**: Naming an instance "ADCA" makes SysConfig generate `#define ADCA_BASE ADCA_BASE` (circular, build error). Use "myADCA" or similar.
- **ePWM sync slave direction**: `phaseEnable=true` + `phaseShift=0` in up-down mode requires `counterModeAfterSync` = "Count up" — "Count down" is invalid and errors.
- **Dead-band AHC**: Both RED and FED inputs must be ePWMxA; B complement comes from `polarityFED=inverted`. Do not set FED input to "output of RED" (DEDB_MODE).
- **SysConfig first save**: The build output `syscfg/` directory must exist before saving. Create it with PowerShell `New-Item -ItemType Directory -Force <path>` if the project has never been built.
- **Debugger expressions**: Macros like `ADCARESULT_BASE` cannot be evaluated — use named `volatile` globals or raw addresses. Function calls from the Expressions view (e.g. `inverter_enable_gate()`) are also flaky — prefer a code-side temporary call.
- **BOOSTXL-DRV8305 ADC pinout**: the original `hw_boostxl_drv8305.h` had the wrong channels (Iu→A0, Iv→B1, Iw→A1, Vbus→A2). Correct per the official BOOSTXL JSON + LAUNCHXL JSON is Iu→C2, Iv→B2, Iw→A2, Vbus→A3. The BOOSTXL is on Site 1 (J1–J4); BP standard pin 27→C2 (R3), 28→B2 (V3), 29→A2 (U2), 26→A3 (T2). Now also requires `myADCC` in SysConfig.
- **Safety phase OC check loop trap**: `safety_check_isr()` was tripping FAULT_OVERCURRENT in IDLE because uncalibrated offsets (= ISENSE_ZERO_CODE = 2048) minus raw 0 codes (DRV8305 SO outputs tri-stated when EN_GATE low) yields a perceived ~−21 A. The phase OC check must only run in states where current is actually flowing (`FOC_RUN`, `FOC_ALIGN_ROTOR`).
- **EN_GATE re-used as SPI CS**: `drv8305_xfer()` in `src/inverter_drv8305.c` originally toggled `DRV8305_EN_GATE_GPIO` as if it were the SPI chip select. That put the DRV8305 back into sleep on every SPI transaction. Fixed in Step 5: SCS is on its own GPIO61 / SPISTEA pin (`DRV8305_SCS_GPIO`).
- **F2837xD `SPI_isBusy()` is a TX-FIFO check, not a transmission-completion check.** Its implementation reads `SPI_O_FFTX.TXFFST_M` — it goes to 0 the moment TX FIFO drains into the shift register, long before bits leave the pin. The `while(SPI_isBusy()){} ; rx = SPI_readDataNonBlocking()` pattern races and reads stale RXBUF (= 0). Use `SPI_writeDataBlockingFIFO()` + `SPI_readDataBlockingFIFO()` (waits on RX FIFO non-empty) when FIFO is enabled.
- **C2000 SPI mode names ≠ standard SPI CPOL/CPHA conventions.** For DRV8305 (datasheet says SDI latched on falling SCLK), my from-the-datasheet derivation pointed at C2000 Mode 1 (POL0PHA1). That wired clock + CS correctly but MISO came back all zeros. TI's own DRV8305 reference uses POL=0/PHA=0 (`SPI_PROT_POL0PHA0` → SysConfig "Mode 0"); copying that mode immediately fixed reads. Always cross-check SPI mode against a working TI reference, never derive solely from the slave datasheet.
- **Iu via KCL while SO1 is dead**: the BOOSTXL on this bench reads Iu ≈ 0 (SO1 hardware fault). Without compensation, 3-sensor Clarke gives `alpha = Iu/3 actual`, so the Id measurement is ~1/3 the real current and the current PI pushes ~3x what was commanded. `hw_boostxl_drv8305.h` defines `ISENSE_RECONSTRUCT_U_FROM_KCL=1`, and `adc_read_phase_currents()` reconstructs `Iu = -Iv - Iw` after scaling. Flip the flag to 0 once SO1 is replaced.
- **[2026-05-28] DRV8305 nFAULT stuck low — four separate bugs, all fixed & verified.** Symptom: `g_dbg_nfault=0`, `g_dbg_en_gate=0`, fault snapshot reg 0x01=`0x420` (`FAULT`+`VDS_STATUS`), reg 0x02=`0x2A0` (`VDS_LA/LB/LC` = low-side VDS OC on all phases). Root causes, all in `src/`:
  1. **ISR switched the bridge in IDLE.** `foc_current_loop_isr()` called `pwm_set_duty()` every tick regardless of state; SVGEN's zero-voltage vector = 50% duty on all legs, and `pwm_set_duty()` releases the `AQCSFRC` safe-force — so the bridge switched at 50% in IDLE with EN_GATE forced high, tripping VDS. Fixed: gate the IPARK/SVGEN/`pwm_set_duty` block to `FOC_RUN`/`FOC_ALIGN_ROTOR`, else `pwm_force_safe()` (`foc_pipeline.c`).
  2. **`inverter_clear_faults()` wrote `0x0001` to IC_OPERATION (0x09)** = `SET_VCPH_UV` (bit 0), NOT the fault clear. `CLR_FLTS` is **bit 1 = `0x0002`** (Table 16). The clear never cleared anything.
  3. **Gate Drive Control (0x07) wrote `0x0080`** → PWM_MODE=`01` (3 inputs, not the "6x" the comment claimed) and **TBLANK=0/TVDS=0** (zero VDS blank/deglitch). With no blanking the low-side VDS comparators false-tripped at rest. Fixed to **`0x0216`** (6x, 1.75 µs blank, 3.5 µs deglitch — the datasheet default).
  4. **VDS Sense Control (0x0C) wrote `0x0086`** → VDS_MODE=`b'110` (RESERVED; Table 19 defines only 000/001/010). Fixed to `0x0080` (VDS_LEVEL 0.403 V, VDS_MODE=000 latched). NOTE: level is still loose (~0.4 V); tighten toward the intended ~0.18–0.2 V (e.g. `0x0030`) before closed-loop RUN.
  - **Ordering lesson**: a CPU/JTAG restart does **not** reset the external DRV8305 — it keeps its registers and latched faults. So `inverter_clear_faults()` must run **after** the gate-drive/VDS config, or a stale bad-blanking config re-latches VDS the instant you clear. Always decode `drv8305_xfer()` values against datasheet SLVSCX2 Tables 9/10/16/19 — never trust the inline comment.

