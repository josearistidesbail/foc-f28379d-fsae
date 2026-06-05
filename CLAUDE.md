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
- [x] Step 6 — Rotor alignment, **ramp-and-average offset capture** (verified on HW 2026-06-05). Replaces the old single-shot `sensor_capture_zero()` snapshot, which settled off the true d-axis under cogging/stiction → ~15° electrical offset that varied **~50° across rotor start positions** (repeatable per-position ±4–8 counts, but inaccurate). New scheme is the align controller `align_step()` in `foc_pipeline.c` (runs in the ISR while `FOC_ALIGN_ROTOR`): settle 1 s at θ=0 with `ALIGN_ID_INJECT_A` (now **1.0 A**, was 0.3 — too weak to drag through detent) → sweep the commanded field open-loop through `ALIGN_RAMP_MECH_REVS` (2) whole mech revs at ~1 rev/s → **circular-average `(encoder_raw − commanded)`** electrical angle → store as the offset. Averaging over integer mech revs cancels cogging. The QEP angle now carries an **electrical-radian offset** `g_qep_theta_offset_elec` (set via `sensor_set_elec_offset()`), replacing the removed count offset `g_qep_mech_offset_cnt`; `sensor_update_isr()` exposes `g_qep_theta_raw_elec` for the averager. State machine just polls `foc_align_done()`. **Result: offset repeats within a few degrees across start positions; steady Vd dropped 0.44→~0.32 V (≈15°→~4–5° electrical); Id/Iq feedback much cleaner.** Test: `g_dbg_sm_cmd = 1` (align-only), watch the ~1 s lock + 2 slow revs, read `g_dbg_align_offset_elec` (DEGREES) — should agree across positions. **TODO (only if you ever want the last few degrees): bidirectional sweep.** The residual ~4–5° is the forward-only sweep's load-angle bias (rotor lags the moving carrier by a constant load angle that gets baked into the mean). Sweep 1 rev forward + 1 rev back and accumulate both — the +δ/−δ load angles cancel. Not worth it yet (`cos 5° ≈ 0.4%` torque). NOTE: `_LAUNCHXL_F28379D` IS in the Debug predefined symbols — full 200 MHz clock, real 115200 SCI (verified 2026-06-04); the old "half-clock / 57600" claim is stale.
- [~] Step 7 — Closed-loop current control. Iq/Id track much better after the Step-6 alignment fix. **Cross-coupling / back-EMF feedforward decoupling added** (`foc_pipeline.c`, gated by `g_dbg_decouple_en`, default OFF via `FOC_DECOUPLE_DEFAULT`): `ff_d = −ωe·Lq·iq_ref`, `ff_q = ωe·(Ld·id_ref + λpm)`, folded into the PI clamp (`±vmax_dyn − ff`) so the TI PI anti-windup stays valid. **As predicted, ~no steady-state change on this 235 µH motor at low current** (cross-coupling ≈0.07 V; back-EMF FF only redistributes Vq from PI integrator → feedforward, total Vq unchanged) — confirmed on HW (decouple on/off identical at iq=0.3, Vq≈4.9, Vd≈0.32). It earns its keep in **transients** and at **higher current/speed** (cross-coupling scales with both). Keep default-off; flip `g_dbg_decouple_en` or the `decouple_en` serial param when pushing the envelope. Confirm it engages via `g_dbg_ff_q` (≈ `ωe·λpm`). Also: `VDQ_MAX_FRACTION` raised 0.30→0.60 (bench) for more voltage headroom → higher unsaturated speed.
- [x] Step 8 — **Speed loop** (verified on HW 2026-06-05). Root cause of `omega_elec` stuck at 0: the QEP estimator `sensor_qep_update_speed_slow()` was fully written but **never called**. Renamed to the backend-contract `sensor_update_speed_slow()` (`sensor_iface.h`) and wired into `foc_speed_loop_tick()` **every 1 kHz tick in all states** — so speed is visible in torque mode/idle and the back-EMF FF finally sees real ωe. Added a **torque/speed mode selector** (`g_dbg_control_mode`, `control_mode` serial param, GUI combo): TORQUE = direct `iq_ref`; SPEED = accel-limited (`SPEED_RAMP_RAD_S2`) electrical setpoint through the existing `s_pi_spd` PI → `iq_ref`, output clamped to ±`IQ_REF_MAX_A`. Switch is **bumpless both directions** (inactive path primes `PI_setUi`=present iq and tracks present speed). Loop runs internally in **electrical rad/s**; the GUI enters/shows **shaft RPM**, converting via new RO params `pole_pairs` + `omega_meas`. The scope's red `omega_ref` overlay on the `omega_elec` trace is now unit-correct (both electrical). `speed_ref`/`omega_ref` semantics changed mechanical→**electrical rad/s**. Build clean, no flash overflow. Tune `kp_w`/`ki_w` live from the Gains tab.
- [ ] Step 9 — trip-zone HW overcurrent protection (was bundled into the old Step 8 line; still pending)

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

// src/sensor_qep.c   (operational, NOT debug — Step 6 angle-offset model)
volatile float32_t g_qep_theta_raw_elec;    // uncorrected electrical angle [rad]
volatile float32_t g_qep_theta_offset_elec; // electrical zero offset [rad], set by align
//   (replaces the removed count offset g_qep_mech_offset_cnt; theta = raw - offset)

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
//   (g_dbg_align_qep_cnt moved to foc_pipeline.c — the align controller lives there now)

// src/foc_pipeline.c        (Step 6 verification, ALIGN-only updates)
volatile float32_t g_dbg_align_id_meas;     // should approach ALIGN_ID_INJECT_A
volatile float32_t g_dbg_align_iq_meas;     // should stay near 0
volatile float32_t g_dbg_align_vd;          // Vd command — small positive at steady state
volatile float32_t g_dbg_align_offset_elec; // captured electrical offset [DEGREES]; repeat across positions
volatile int32_t   g_dbg_align_qep_cnt;     // raw QPOSCNT at finalize (varies with start position — OK)

// src/foc_pipeline.c        (Step 7 — decoupling feedforward A/B)
volatile uint16_t  g_dbg_decouple_en;       // live toggle (also "decouple_en" param); default FOC_DECOUPLE_DEFAULT=0
volatile float32_t g_dbg_ff_d;              // applied d-axis FF = -we*Lq*iq_ref  (~ -0.07 V at iq=0.3)
volatile float32_t g_dbg_ff_q;              // applied q-axis FF = we*(Ld*id_ref + lambda_pm) ≈ we*lambda_pm

// src/foc_pipeline.c        (Step 8 — speed loop + torque/speed mode)
volatile uint16_t  g_dbg_control_mode;      // 0=torque (direct iq_ref), 1=speed (s_pi_spd PI); "control_mode" param; bumpless switch
//   omega is now LIVE: g_qep_omega_elec / signals.omega_elec [elec rad/s], from sensor_update_speed_slow() in the 1 kHz tick
//   RO serial params added for the GUI's RPM conversion: pole_pairs (u16), omega_meas (f32 = signals.omega_elec, elec rad/s)
//   s_speed_cmd (static) = accel-ramped electrical setpoint; FOC_MODE_TORQUE/SPEED live in build_config.h
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
- **[2026-06-05] FLASHB is full — adding code overflows `.cinit` (linker #10099 "FAILED TO ALLOCATE").** The SDK device `.cmd` pins `.cinit : > FLASHB` (single sector) and starts `.text : >> FLASHB|FLASHC|...` in the same 0x2000 sector. `.text` now fills FLASHB almost exactly (~0x15 free), too little for `.cinit` (~0x34); adding the align controller tipped it over. **Fix (no SDK-file edit, no placement clash): in project-root `app_ebss.cmd` relocate a large function to the otherwise-empty FLASHA via its `--gen_func_subsections` name** — e.g. `.text:align_step : > FLASHA PAGE = 0, ALIGN(8)`. A named `.text:<func>` placement does NOT clash with the SDK catch-all `.text`; the named subsection just wins. FLASHA (0x1FFE) and FLASHC (0x2000) are both empty. Expect to repeat this for the next sizable function you add — flash is essentially full. (Same file already redirects `.ebss`.)
- **No `sinf`/`cosf`/`atan2f` in this build.** `#include <math.h>` resolves to the C2000 motor-control `libraries/math/include/math.h` (which provides `MATH_PI`/`MATH_Vec`, NOT the C99 float trig), so those calls compile only with an implicit-declaration warning, link to the wrong/`int`-returning symbol, AND pull RTS trig tables that overflow flash. The align averager is deliberately **trig-free** (anchor first sample + average wrapped deviations). If you need trig: the TI transform libs (`PARK_setup`/`IPARK_setup`) do their own sin/cos internally, or add a LUT (see `imported/qep-calibration/sine_table.c`).

