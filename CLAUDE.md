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
- **Vbus divider**: header says 1/17.74 but bench measurement shows ~1/13.1 (the ratio is a divider property, supply-independent; at the 24 V bench that's ~2496 codes → 24·4096/(3.0·2496) ≈ 13.1). `VBUS_DIVIDER_RATIO` needs recalibration once Step 4 is fully closed.
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

> The steps below are the **Debug** (BOOSTXL/Teknic/QEP) bring-up. For the
> **Production** (Control_V2/EMRAX/RM44AC) variant see `foc_f28379d/docs/production_bringup.md`
> (ordered sequence + bench-calibration) and `foc_f28379d/docs/control_v2_pinmap.md`
> (schematic pin/parameter map to fill).

- [x] Step 1 — LED heartbeat blink — confirmed on hardware
- [x] Step 2 — ePWM + ADC pipeline — ISR confirmed firing at 10 kHz
- [~] Step 3 — eQEP1: QPOSCNT changes with rotation ✓, but **`QEPSTS` first-index bit and `QPOSILAT` stay at 0** (likely Z wire / differential routing issue), and **direction flag flips while spinning steadily one way** (likely hand-dither at quadrature edges or A/B phase issue). Resume by physically verifying Z wire to J14 index pin, optionally toggle SysConfig `inputPolarity` "Invert Index", and watch `g_dbg_qep_status` bits 0x01 (POS_CNT_ERROR) and 0x04 (CAP_DIR_ERROR) for HW-flagged quadrature errors.
- [~] Step 4 — DRV8305 awake, EN_GATE high, nFAULT clear, **SO2 and SO3 biased correctly on B2/A2 (~2290 codes ≈ 1.68 V)**, Vbus tracks supply on A3. **SO1 dead on bench BOOSTXL** — see "Bench-Specific Hardware Quirks". Step is effectively closed for the alive channels; revisit Iu when SO1 hardware is fixed. **[2026-05-28] nFAULT later regressed to stuck-low (gate driver "not enabling"); root-caused to four bugs (ISR switching in IDLE + three mis-encoded `drv8305_xfer()` writes) and fixed/verified on HW — nFAULT high, EN_GATE stays high, SO bias ~2300. See Pitfalls "DRV8305 nFAULT stuck low".**
- [x] Step 5 — DRV8305 SPI alive over SPIA. SHUNT_AMP write/readback verified (`g_dbg_spi_rd_shunt == 0x0040` matches the write); status registers all 0; nFAULT clear. SysConfig SPI mode is **POL0PHA0** (the C2000 mode naming does not match standard SPI conventions — TI's reference uses POL0PHA0 for DRV8305). CS on its own GPIO61/SPISTEA pin (not EN_GATE). `drv8305_xfer()` uses `SPI_writeDataBlockingFIFO()` + `SPI_readDataBlockingFIFO()`; `SPI_isBusy()` on F2837xD only watches TX FIFO occupancy, not actual transmission completion — do NOT use it for sync.
- [x] Step 6 — Rotor alignment, **ramp-and-average offset capture** (verified on HW 2026-06-05). Replaces the old single-shot `sensor_capture_zero()` snapshot, which settled off the true d-axis under cogging/stiction → ~15° electrical offset that varied **~50° across rotor start positions** (repeatable per-position ±4–8 counts, but inaccurate). New scheme is the align controller `align_step()` in `foc_pipeline.c` (runs in the ISR while `FOC_ALIGN_ROTOR`): settle 1 s at θ=0 with `ALIGN_ID_INJECT_A` (now **1.0 A**, was 0.3 — too weak to drag through detent) → sweep the commanded field open-loop through `ALIGN_RAMP_MECH_REVS` (2) whole mech revs at ~1 rev/s → **circular-average `(encoder_raw − commanded)`** electrical angle → store as the offset. Averaging over integer mech revs cancels cogging. The QEP angle now carries an **electrical-radian offset** `g_qep_theta_offset_elec` (set via `sensor_set_elec_offset()`), replacing the removed count offset `g_qep_mech_offset_cnt`; `sensor_update_isr()` exposes `g_qep_theta_raw_elec` for the averager. State machine just polls `foc_align_done()`. **Result: offset repeats within a few degrees across start positions; steady Vd dropped 0.44→~0.32 V (≈15°→~4–5° electrical); Id/Iq feedback much cleaner.** Test: `g_dbg_sm_cmd = 1` (align-only), watch the ~1 s lock + 2 slow revs, read `g_dbg_align_offset_elec` (DEGREES) — should agree across positions. **TODO (only if you ever want the last few degrees): bidirectional sweep.** The residual ~4–5° is the forward-only sweep's load-angle bias (rotor lags the moving carrier by a constant load angle that gets baked into the mean). Sweep 1 rev forward + 1 rev back and accumulate both — the +δ/−δ load angles cancel. Not worth it yet (`cos 5° ≈ 0.4%` torque). NOTE: `_LAUNCHXL_F28379D` IS in the Debug predefined symbols — full 200 MHz clock, real 115200 SCI (verified 2026-06-04); the old "half-clock / 57600" claim is stale.
- [~] Step 7 — Closed-loop current control. Iq/Id track much better after the Step-6 alignment fix. **Cross-coupling / back-EMF feedforward decoupling added** (`foc_pipeline.c`, gated by `g_dbg_decouple_en`, default OFF via `FOC_DECOUPLE_DEFAULT`): `ff_d = −ωe·Lq·iq_ref`, `ff_q = ωe·(Ld·id_ref + λpm)`, folded into the PI clamp (`±vmax_dyn − ff`) so the TI PI anti-windup stays valid. **As predicted, ~no steady-state change on this 235 µH motor at low current** (cross-coupling ≈0.07 V; back-EMF FF only redistributes Vq from PI integrator → feedforward, total Vq unchanged) — confirmed on HW (decouple on/off identical at iq=0.3, Vq≈4.9, Vd≈0.32). It earns its keep in **transients** and at **higher current/speed** (cross-coupling scales with both). Keep default-off; flip `g_dbg_decouple_en` or the `decouple_en` serial param when pushing the envelope. Confirm it engages via `g_dbg_ff_q` (≈ `ωe·λpm`). Also: `VDQ_MAX_FRACTION` raised 0.30→0.60 (bench) for more voltage headroom → higher unsaturated speed.
- [x] Step 8 — **Speed loop** (verified on HW 2026-06-05). Root cause of `omega_elec` stuck at 0: the QEP estimator `sensor_qep_update_speed_slow()` was fully written but **never called**. Renamed to the backend-contract `sensor_update_speed_slow()` (`sensor_iface.h`) and wired into `foc_speed_loop_tick()` **every 1 kHz tick in all states** — so speed is visible in torque mode/idle and the back-EMF FF finally sees real ωe. Added a **torque/speed mode selector** (`g_dbg_control_mode`, `control_mode` serial param, GUI combo): TORQUE = direct `iq_ref`; SPEED = accel-limited (`SPEED_RAMP_RAD_S2`) electrical setpoint through the existing `s_pi_spd` PI → `iq_ref`, output clamped to ±`IQ_REF_MAX_A`. Switch is **bumpless both directions** (inactive path primes `PI_setUi`=present iq and tracks present speed). Loop runs internally in **electrical rad/s**; the GUI enters/shows **shaft RPM**, converting via new RO params `pole_pairs` + `omega_meas`. The scope's red `omega_ref` overlay on the `omega_elec` trace is now unit-correct (both electrical). `speed_ref`/`omega_ref` semantics changed mechanical→**electrical rad/s**. Build clean, no flash overflow. Tune `kp_w`/`ki_w` live from the Gains tab.
- [~] Step 9 — **HW trip-zone (CPU-independent fault shutdown)**. Built + generated, HW test pending. Debug: SysConfig routes DRV8305 **nFAULT (GPIO19) → Input X-BAR INPUT1 → ePWM1/2/3 one-shot TZ1**, action **TZA=LOW / TZB=HIGH** = low-side **active short (ASC)**, so the bridge clamps the instant nFAULT asserts, with the CPU halted. TZ one-shot interrupt registered on PWM_U → `epwm_tz_isr` (`src/isr.c`), PIE group 2: it only records `g_dbg_tz_trip` + `sm_raise_fault(FAULT_OVERCURRENT)` (the HW already latched ASC) and clears the TZ *interrupt* flag — the **OST latch is left set** (holds the bridge) and is released by `pwm_clear_trip()` (`src/pwm_iface.c`) on the next `enter(FOC_IDLE)` after the fault is cleared. **TZ action design: A=LOW + B=HIGH gives ASC because TZ acts post-deadband; AQCSFRC `pwm_force_safe()` gives the *same* ASC via the AQ→DB chain (force A low → DB makes B high) when the gate is enabled — two independent paths, one clamp.** Production: same framework extended to the 6PS04512E43W39693 flags (OC_A/B/C, OT, DC-OV) — **needs the schematic GPIO numbers + polarity** (placeholders in `hw_control_v2.h`; X-BAR not yet wired). Test on bench: RUN at low iq, force nFAULT low → scope shows EPWMxA low / EPWMxB high within a cycle, `g_dbg_tz_trip` increments, state→FAULT; `clearfault` from IDLE recovers.
- [~] Step 10 — **Position-sensor-loss detection + FW-safe shutdown** (new; built, HW test pending). Detection is backend-specific via `sensor_is_lost()` (sensor_iface contract): **resolver** = `sin²+cos²` magnitude window per ISR (`sensor_rm44ac_inline.h`, thresholds `SENSOR_RES_MAG_LOW/HIGH`, debounce `SENSOR_RES_LOSS_TICKS`); **QEP** = drive-vs-response + `QEPSTS` POS_CNT_ERROR in the 1 kHz slow loop (`sensor_qep.c`: in RUN with **|iq_ref|>`SENSOR_QEP_LOSS_MIN_IQ`**, if total count movement over a `SENSOR_QEP_LOSS_TICKS` window is < `SENSOR_QEP_LOSS_MIN_MOVE` → lost; also catches locked rotor). **Gate on COMMANDED current, NOT Vq** — when the angle freezes the rotor locks into DC injection and Vq collapses to ~Rs·iq, so a Vq gate goes blind exactly when you disconnect at low current (the first cut used |Vq| and failed to trip in torque mode — fixed 2026-06-05). Windowed motion accumulator (not consecutive-stall) rides out noise edges on floating lines. `safety_check_isr()` latches `FAULT_SENSOR_LOSS` in RUN/ALIGN. **Shutdown is speed-dependent** (`enter(FOC_FAULT)`): above `FAULT_ASC_OMEGA_ELEC` (per-motor) keep the gate ON → low-side **ASC** to clamp back-EMF (prevents uncontrolled generation → DC-link overvoltage in field-weakening); below it **coast** (gate off, tristate). Uses **last-healthy** speed (`sensor_get_healthy_speed()`) since the live estimate is garbage after loss. `g_dbg_fault_asc` shows which path. **This made ALL faults' safe-state speed-dependent** (previously every fault disabled the gate = coast, which would fight the HW TZ's ASC at speed). EMRAX threshold 2600 elec rad/s; Teknic 6000 (bench always coasts). FW controller itself deferred — `id_ref` pinned to nominal with `TODO[FW]` hooks (clamp + OC check already tolerate negative Id). **Caveat carried in motor header: EMRAX Isc=λpm/Ld≈306 A > 260 A OC trip, so a high-speed ASC may re-trip the module OC.** **[noise]** The resolver SIN/COS analog lines also carry a software matched-IIR low-pass (`sensor_rm44ac_inline.h`, before atan2) for HW noise that can't be filtered analog-side — **now default ON at 200 Hz with lag compensation**, live-tunable via `res_filt_en`/`res_filt_hz`/`res_filt_comp`; loss-of-signal stays on the RAW magnitude. See the `g_resolver_filt_*` debug-globals block below.
  **[2026-07-15 — THE RESOLVER NOW COMMUTATES; the motor spins.]** Three compounding faults, all fixed:
  1. **`RES_SINCOS_BIAS/AMPL_CODE` were guesses and catastrophically wrong** (2253/2253 assumed; bench-measured
     **3072 / 990** — scope on the SIN pin: DC 2.25 V, 1.45 Vpp, spans 1.53–2.98 V). With the old numbers the
     normalized sin/cos traced a circle of radius **0.44 centred at (0.36, 0.36)** — distance from origin **0.51 >
     0.44**, so **the circle never enclosed the origin and atan2 could not wrap 2π**: the angle swept ~−14°..+104°
     and reversed. `sin²+cos²` ranged 0.006–0.91, never ≈1 → permanent SENSOR_LOSS. Now baked into hw_control_v2.h.
  2. **~26° ELECTRICAL RMS angle noise.** Angle error ≈ σ_noise/amplitude = 33.5 mV / 725 mV ≈ 2.65° on the SENSOR,
     ×10 pole pairs = ~26° electrical (peaks ~±100°). Fixed by `res_filt_en=1 @ 200 Hz` (~4× reduction → ~6.5°).
  3. **The align offset was garbage** because it averaged the above → `align_off_en=0` on production.
  **HW TODO (the real fix for #2):** the front-end sits ~0.75 V too high and swings ~2× too small, using only 48% of
  the ADC range with its positive peak **25 mV** under VREFHI, so noise peaks CLIP. Rescale the conditioning to a
  **1.5 V bias / ~1.4 V amplitude**: that halves the angle noise at the source and removes the clipping, and would
  let fc back off to 500–1000. Also consider an **analog RC at each ADC pin** — the ADC samples at 10 kHz, so noise
  above 5 kHz aliases into baseband *at the conversion instant* and NO software filter can undo it; `res_filt_en`
  only smooths what already survived aliasing. (The old header note claiming a "0..3.3 V span that clips" was never
  measured and is wrong in both bias and amplitude.)
- [~] Step 11 — **Field weakening** (built, Teknic Debug links clean; HW test pending). Fills the Step-10 `TODO[FW]` hooks. **Voltage-feedback regulator** `s_pi_fw` runs in the current-loop ISR (`foc_pipeline.c` step 3b, RUN only, gated by `g_dbg_fw_en`/`fw_en` param, default `FW_DEFAULT=0`): a TI `PI_run` on the **squared** voltage-margin error (`ref = vmax_fw²`, `fbk = |Vdq|²`) winds `s_fw_id` negative (clamped `[FW_ID_MIN_A, 0]`) when the inverter saturates, relaxing to 0 with headroom. **Squared error keeps the path sqrt-free** (no C99 `sqrtf` in this build); the squared-error loop gain (~`2·vmax`) is folded into the tuned `GAIN_KI_FW·GAIN_KP_FW` (TI PI is *series* form — **both Kp and Ki must be nonzero** or the integrator is dead). `vmax_fw = FW_VMAX_FRACTION·vbus·0.5` reuses the per-axis PI-clamp budget; **`FW_VMAX_FRACTION` must be < `VDQ_MAX_FRACTION`** so FW reacts just before the q-axis clamp bites (`|Vdq| ≥ |Vq|`). **`id_ref` ownership moved to the ISR**: `id_ref = ID_REF_NOMINAL_A + s_fw_id` each RUN tick (removed the old `id_ref = NOMINAL` line from `foc_speed_loop_tick`); reset on RUN entry via the `s_prev_state` transition. **Flux-priority current-circle limit**: before the q-PI, clamp `iq` to `±√(I_PEAK² − id²)` via a self-contained `foc_fast_sqrt()` (inverse-sqrt bit-trick + 2 Newton steps — **no RTS trig/sqrt tables**, same flash-pressure reason as the trig-free align averager) so `id²+iq² ≤ I_PEAK²` stays under `MOTOR_OC_TRIP_A`. **Drive-by fix**: `gains_emrax.h` was missing `FOC_DECOUPLE_DEFAULT` (referenced unconditionally in `foc_init` → the Production/EMRAX config didn't compile); added. **Flash**: relocated `foc_init`/`foc_speed_loop_tick`/`sm_tick_1khz` to FLASHA in `app_ebss.cmd` (FLASHB was 100% full; #10099). Test on bench: `fw_en=1`, ramp speed (SPEED mode), watch `g_dbg_vmag` plateau at `≈FW_VMAX_FRACTION·vbus·0.5`, `g_dbg_fw_id`<0 past base speed, `g_dbg_iq_lim` shrink as `|id|` grows. **TODO[FW] remaining**: per-motor gain tuning on real hardware (current values are conservative placeholders), MTPA (still `ID_REF_NOMINAL_A=0`), and revisit `FAULT_ASC_OMEGA_ELEC` against the real bus once FW is exercised (EMRAX `Isc≈306 A > OC 260 A`). Production/EMRAX config not built through the harness (buildProject can't switch the active config) — verified statically that every shared-code macro is defined in the EMRAX include chain.

## Temporary Debug Globals + Hacks (remove before production)

```c
// src/isr.c
volatile uint32_t g_isr_count;      // ISR firing counter

// src/adc_iface.c
volatile uint16_t g_dbg_iu_raw;     // raw ADC Iu (~2048 at zero current with hardware connected)
volatile uint16_t g_dbg_iv_raw;
volatile uint16_t g_dbg_iw_raw;
volatile uint16_t g_dbg_vbus_raw;
volatile uint16_t g_dbg_sin_raw;    // raw resolver SIN ADC code (last adc_read_sin_cos); DC=bias ~2253, jitter*0.732=mV
volatile uint16_t g_dbg_cos_raw;    // raw resolver COS ADC code; 0 on non-RM44AC builds
//   Host: scope channels res_sin/res_cos (SCOPE_BIT_RES_SIN/COS 0x200/0x400, datalog cols 10/11) plot these raw
//   codes over time; RO params sin_raw/cos_raw (0x0119/0x011A) + res_mag (0x011B = g_dbg_resolver_mag, ~1.0 healthy)
//   give the static readout. Added to diagnose resolver angle noise (theta jitter vs analog-scope mV).

// src/foc_pipeline.c        (DC-bus voltage scope channel)
volatile float32_t g_dbg_vbus_v;    // measured DC-bus [V], = s_refs.vbus every ISR (real adc_read_vbus,
//   even in open-loop modes that feed SVGEN a synthetic unity bus). Host: scope channel "vbus"
//   (SCOPE_BIT_VBUS 0x1000, datalog col 13, all backends); static RO param "vbus" 0x0115 reads the same source.
//   Use it to size MOTOR_UV_TRIP_V: RUN + torque, watch the bus SAG under phase current on the bench supply.
//   The UV trip (safety.c) is INSTANTANEOUS (no debounce) and fires only in FOC_RUN, comparing this exact value
//   to MOTOR_UV_TRIP_V — so set the trip BELOW the observed noisy MINIMUM, not the mean. NOTE the scope is
//   burst-captured (128 samples = 12.8 ms at decim=1, then a ~237 ms gap); raise decim to widen each contiguous
//   window if a fast dip falls in the gap, or hold steady torque and read the sustained level.
//   [2026-07-23] vbus read WRONG (compressed at rest, ~10V at real 23V under the align/cal drive) was NOT the
//   74.18 divider — it was the ADC acquisition window: myADCC SOC1 (Vbus=ADCINC2) had only a 15-cycle (75 ns)
//   sample window and is sampled right after SOC0=Iv (low-Z) on the same ADC-C. The high-Z divider (~30 kOhm)
//   can't charge the S/H in 75 ns, so vbus charge-shared with the prior Iv sample (~15% gain; dragged by Iv when
//   current flows). FIXED via SysConfig: myADCC.soc1SampleWindow 15->512 (2.56 us). DURABLE HW fix still wanted:
//   ~1-10 nF from ADCINC2 to AGND (charge reservoir + noise filter).
//   [2026-07-23 part 2] SCALE was ALSO wrong: the PrimeSTACK "Analog DC link voltage sensor output" is a SENSOR
//   (6.5 V @ 900 V per datasheet), THEN a /2 external divider (two 69k) -> ADCINC2. So VBUS_DIVIDER_RATIO =
//   (900/6.5)*2 = 276.92, NOT 74.18 (cal'd against the settling-corrupted reading; the older 138.46 was the sensor
//   factor alone, missing the /2). Verified: firmware saw 106 mV at the pin at 30 V, model says 108. Bench bus
//   floors at ~6 V (inverter logic supply back-feeds the DC link) -> never reads 0 V; 24-30 V is ~3% of the 900 V
//   range so it's low-res/noisy and scope-probe loading skews mV reads -- trust g_dbg_vbus_raw codes. Still TODO:
//   trim VBUS_DIVIDER_RATIO vs a meter near the real bus. See memory foc-vbus-adc-acqwindow.

// src/adc_iface.c          (DC-bus voltage low-pass — variant-agnostic)
volatile uint16_t g_vbus_filt_en;      // "vbus_filt_en" param 0x0046, LIVE; default VBUS_FILT_DEFAULT_EN=1
volatile float32_t g_vbus_filt_hz;     // "vbus_filt_hz" param 0x0047, LIVE [Hz]; setter recomputes alpha; default 50
volatile float32_t g_vbus_filt_alpha;  // derived IIR coeff = clamp(2*pi*fc*Ts, 0..1) (VBUS_FILT_ALPHA in build_config.h)
volatile float32_t g_vbus_filt;        // IIR state [V], updated EVERY ISR in adc_read_vbus() (primed on 1st read)
//   First-order IIR on the measured bus, applied in adc_read_vbus() so the UV/OV trips, the vmax_dyn PI clamp AND
//   the vbus scope/param all see the de-noised value (raw bus is spike-noisy on the high-Z sensor divider and was
//   nuisance-tripping the INSTANTANEOUS UV compare in safety.c). State runs every ISR regardless of en -> toggling
//   vbus_filt_en is bumpless and A/Bs raw-vs-filtered on the "vbus" scope channel. Both params live in the GUI
//   Advanced tab (auto-discovered). If it still nuisance-trips after the filter + the HW RC cap: lower vbus_filt_hz,
//   or add a debounce / lower MOTOR_UV_TRIP_V. NOTE the filter also lags a REAL bus collapse by ~1/(2*pi*fc) (~3 ms
//   at 50 Hz) -- fine for a bench UV backstop; the HW trip-zone still handles fast events.

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

// src/foc_pipeline.c        (current-loop bypass / open-loop resistive voltage mode)
volatile uint16_t  g_dbg_iloop_en;          // 1=current PIs enforced (default FOC_ILOOP_DEFAULT=1), 0=open-loop resistive; "iloop_en" param; live toggle
//   When 0 (RUN only): the d/q PIs are bypassed and the operator's id_ref/iq_ref (still AMPS) are applied as
//   Vd=MOTOR_RS_OHM*id_ref, Vq=MOTOR_RS_OHM*iq_ref using the live sensor angle — no PI, no integrator, NO back-EMF FF.
//   Use control_mode=torque so iq_ref flows directly. id_ref is NOT overwritten by the FW/id-ownership block while open-loop.
//   Vd/Vq clamped to the inverter budget; phase OC trip stays armed. WARNING: ignores back-EMF — low/zero speed ONLY.
//   When 0 in ALIGN_ROTOR: OPEN-LOOP ALIGN DRIVE — fixed d-axis modulation g_ol_mod ("ol_mod" param) in the DUTY
//   domain (unity SVGEN bus, same mechanism as FOC_OPENLOOP), so align + the SIN/COS cal sweep work with the VBUS
//   sense disconnected (otherwise the PI clamp vmax_dyn = frac·vbus/2 ≈ 0 passes 0 V and the rotor never moves —
//   bench symptom 2026-07-14: align "runs" but no spin, cal rejects, SENSOR_LOSS on re-arm). The flag is latched
//   once per ISR (`iloop` local) so the Vdq domain and SVGEN normalization always agree within a tick.
//   EMRAX align carrier slowed to 0.5 mech rev/s (5 Hz elec, gains_emrax.h) to stay inside the bench-proven
//   open-loop drag envelope (ol_mod=0.11 @ 6 Hz elec); align-only sequence is ~9 s / 3 mech revs (cal sweep only).
//   **g_ol_mod default is now PER-MOTOR** (`OL_MOD_DEFAULT` in gains_*.h): **0.11 on EMRAX** (the bench-proven drag
//   value, was a shared 0.20), 0.20 on Teknic (unchanged — never characterized there, so left alone deliberately).

// src/sensor_rm44ac.c       (resolver direction; SENSOR_RM44AC only)
volatile uint16_t  g_resolver_dir_inv;  // 1 = mirror mech angle th→2π−th ("res_dir_inv" param 0x003A, NEEDS_IDLE;
//   default SENSOR_RES_DIR_INV_DEFAULT=0). The RM44AC backend had NO direction handling (QEP has
//   SENSOR_QEP_DIR_SIGN) — if the resolver counts opposite to the U→V→W sequence, RUN makes zero average torque
//   (noise only) and the align offset is garbage/non-repeatable. Bench test: ol_run at +ol_freq spins +electrical
//   by construction → omega_meas must read ≈ +2π·ol_freq; negative ⇒ set res_dir_inv=1. RE-RUN ALIGN after
//   changing it (offset belongs to the direction it was captured with).

// [RESTORED 2026-07-23] The bench VBUS override (g_vbus_override_v / "vbus_ovr"
//   0x0043) and the SW undervoltage-trip bypass (g_uv_fault_en / "uv_en" 0x0037)
//   are BACK (they were deleted 2026-07-22 when the sense was first connected).
//   Reason: the PrimeSTACK sensor scale isn't trusted at low bench voltage (see
//   the g_vbus_filt / VBUS_DIVIDER_RATIO=276.92 saga) and the noisy reading
//   nuisance-trips UV. **Key difference from the old design:** MONITORING is now
//   split from CONTROL. adc_read_vbus() -> vbus_meas -> g_dbg_vbus_v: the scope
//   channel AND the "vbus" RO param 0x0115 always show the MEASURED bus. But
//   s_refs.vbus (used by vmax_dyn, 1/vbus SVGEN, and the OV/UV trips) = the fixed
//   override when g_vbus_override_v > 0, else vbus_meas. So you keep watching the
//   live sensor while the control loop + trips run on a safe fixed nominal.
//   Defaults are BENCH-gated: VBUS_OVERRIDE_DEFAULT_V = (BENCH_NO_POWER_STAGE ?
//   24 : 0), UV_FAULT_EN_DEFAULT = (BENCH_NO_POWER_STAGE ? 0 : 1) -- both in
//   hw_control_v2.h with build_config.h fallbacks (0.0f / 1U). So at the bench:
//   control uses a fixed 24 V and UV is bypassed; in production: measured bus,
//   UV armed. Set vbus_ovr=0 + uv_en=1 to switch control/UV back to the measured
//   bus once the sensor is calibrated. OV stays always-armed against s_refs.vbus.
//   MOTOR_UV_TRIP_V still 18 V (24 V bench; raise toward ~200 V for the HV bus).
//   BENCH_NO_POWER_STAGE / "module_faults_en" UNCHANGED (power stage still off).

// src/isr.c                 (Step 9 — HW trip-zone)
volatile uint32_t g_dbg_tz_trip;        // count of ePWM one-shot trip-zone events (nFAULT→TZ1)

// src/foc_state_machine.c   (Step 10 — fault safe-state)
volatile uint16_t g_dbg_fault_asc;      // FOC_FAULT safe-state: 1=ACTIVE SHORT (high speed), 0=COAST (low speed)

// src/sensor_qep.c          (Step 10 — QEP loss detection; SENSOR_QEP only)
volatile uint32_t g_dbg_qep_loss_move;  // total |count| movement in the current ~100 ms window
volatile int32_t  g_dbg_qep_dcnt;       // per-1 kHz-tick raw count delta (0 = frozen/disconnected)
//   Detection: in RUN with |iq_ref|>SENSOR_QEP_LOSS_MIN_IQ, if window movement < MIN_MOVE → lost.
//   (gated on COMMANDED current, not Vq — Vq collapses to ~Rs*iq once the angle freezes)
//   g_qep_lost (u16) = loss flag; g_qep_omega_healthy (f32) = last trusted elec speed

// src/sensor_rm44ac.c       (Step 10 — resolver loss detection; SENSOR_RM44AC only)
volatile float32_t g_dbg_resolver_mag;  // latest sin^2+cos^2 (healthy ≈ 1.0; out of [LOW,HIGH] → lost) — RAW, pre-filter
//   g_resolver_lost (u16) = loss flag; g_resolver_omega_healthy (f32) = last trusted elec speed

// src/sensor_rm44ac.c + sensor_rm44ac_inline.h  (speed estimator — SENSOR_RM44AC only)
volatile uint16_t  g_resolver_w_mode;   // "res_w_mode" 0x003D, LIVE: 0=diff+LPF (legacy), 1=type-II observer (PLL). DEFAULT 0
volatile float32_t g_resolver_pll_bw_hz;// "res_pll_bw" 0x003E, LIVE [Hz], clamp [1,200], default 40; setter derives Ts·Kp AND Ts·Ki
volatile float32_t g_resolver_wlpf_hz;  // "res_wlpf_hz" 0x0045, LIVE [Hz]; legacy LPF cutoff. DEFAULT NOW 50 (was 500)
volatile float32_t g_resolver_omega_lpf;// legacy estimator's mech-speed state; RO param "res_w_lpf" 0x0121 (×pole_pairs, elec rad/s)
//   Fixes a noisy omega_elec (±100 elec rad/s band, spikes to −700). Root cause: the old estimator differentiates the
//   angle once per 100 µs (noise gain fs=10000) and the only cleanup was a 500 Hz LPF (real cutoff 599 Hz — the α≈2πfc·Ts
//   approx is 16% off there, same failure mode as the old 1000 Hz res_filt_hz). BOTH estimators run every ISR (bumpless
//   A/B like the sin/cos IIR); g_resolver_omega_mech carries the SELECTED one → lag comp + omega_elec. Two shipped fixes:
//   legacy default 500→50 Hz (~11x quieter, one-liner), and the observer (res_w_mode=1) beside it, default OFF.
//   **Observer (ATO/PLL):** type-II tracker, ζ=1 fixed, one knob (res_pll_bw). It does NOT difference the angle — the
//   measurement is only a bounded loop error, so vs diff+LPF at equal bandwidth it is ~16x quieter (2/√(ωn·Ts)) and ~64x
//   better on glitches (1/(ωn·Ts)); still ~3.9x/~7.8x at MATCHED phase lag. **NOT true:** type-II does NOT give zero
//   accel speed error — the speed transfer is a plain 2nd-order LP ωn²/(s²+2ζωn s+ωn²), MORE phase lag than the 1-pole
//   it replaces. Keep **f_bw ≤ res_filt_hz/5** (default 40 vs res_filt=200) so it doesn't chase the sin/cos IIR.
//   **Why omega matters beyond telemetry:** it feeds the lag comp, so it enters the COMMUTATION angle as
//   Δθ_elec = ω_elec_noise/(2π·res_filt_hz) — at res_filt=200 the ±100 band was ±4.6° elec and the −700 spikes −32°.
//   Cleaning the speed cleans the angle (and ff_q=ω·λ) for free. Bench payoff test: A/B res_w_mode 0↔1 at a few hundred
//   rpm with decouple_en=1 — steady Vd should drop (same signature as the Step-6 align fix). Scope A/B: new col 12
//   "res_w_lpf" (SCOPE_BIT 0x0800) always carries the LEGACY estimator; col 5 omega_elec carries the SELECTED one — so
//   res_w_mode=0 ⇒ the two are identical (plumbing check), res_w_mode=1 ⇒ side-by-side on one capture.
//   ⚠️ **HARD GATE before FOC_MODE_SPEED:** the speed loop closes around omega. GAIN_KP_SPEED=1.5 crosses ~47 Hz on the
//   bare rotor, where a 40 Hz observer adds ≈−93° → UNSTABLE. Any bandwidth cut (LPF or PLL) costs that phase. RE-TUNE
//   kp_w for crossover ≤ f_bw/4 (start ≈0.31) before enabling speed mode. TORQUE mode has no loop around omega — safe.
//   Once bench-proven, flip SENSOR_RES_W_MODE_DEFAULT → _PLL (document DEFAULT NOW 1 with date, like res_filt_en).

// src/sensor_rm44ac.c       (SIN/COS input low-pass — software noise reduction; SENSOR_RM44AC only)
volatile uint16_t  g_resolver_filt_en;     // 0=bypass, 1=filter; "res_filt_en" param. DEFAULT NOW 1 (was 0)
volatile float32_t g_resolver_filt_hz;     // -3 dB cutoff [Hz]; "res_filt_hz" recomputes alpha AND lag_k. DEFAULT NOW 200 (was 1000)
volatile float32_t g_resolver_filt_alpha;  // derived IIR coeff = clamp(2π·fc·Ts, 0..1)
volatile float32_t g_resolver_sin_filt;    // IIR state, updated EVERY ISR (kept primed → en toggle is bumpless)
volatile float32_t g_resolver_cos_filt;    // IIR state, cos channel
volatile uint16_t  g_resolver_filt_comp;   // 1=add the filter's lag back to the angle; "res_filt_comp" 0x003C, LIVE, default 1
volatile float32_t g_resolver_filt_lag_k;  // = 1/(2π·fc), precomputed with alpha (ISR stays division-free)
//   Matched 1st-order LPF on sin/cos applied before atan2 (sensor_rm44ac_inline.h); loss-of-signal still on RAW mag.
//   **[2026-07-15] en=1 @ 200 Hz is what FIRST MADE THE MOTOR COMMUTATE.** 200 Hz ≈ 4x noise-amplitude reduction
//   (1st-order noise BW = (π/2)·fc ≈ 314 Hz vs the ADC's 5 kHz Nyquist) vs only ~1.8x at the old 1000 Hz default.
//   200 Hz also keeps alpha ≈ 2π·fc·Ts honest (0.126 vs exact 0.118); at 1000 Hz it's ~35% off so the REAL cutoff
//   was well above the label — another reason the old default underperformed.
//   **LAG COMPENSATION (why 200 Hz is now safe).** The matched IIR is a PURE angle delay: sin/cos get the same gain
//   and phase, the gain cancels inside atan2, leaving a rotation by φ = atan(f_mech/fc). In ELECTRICAL terms it is
//   just **lag_elec [rad] ≈ f_elec / fc** (the ×pole_pairs cancels against f_elec = pole_pairs·f_mech). On the EMRAX
//   at fc=200: ~2.9° @ 60 rpm, ~28.7° @ 600 rpm, and **90° — zero torque, positive feedback beyond — at ~1885 rpm.**
//   So a low fc is fine at crawl and DANGEROUS at speed. The comp adds it back (theta += ωmech·lag_k·sensor_poles).
//   Three placement rules, do not reorder: (1) AFTER the speed estimate — the angle diff runs on the UNcompensated
//   angle so a constant lag cancels out of it and the correction can't feed back into its own input; (2) AFTER the
//   dir_inv mirror — mirroring flips the sign of both th and ωmech so the signed product still points right;
//   (3) scaled by sensor_poles — th is the SENSOR angle; downstream this cancels against elec_ratio, leaving the
//   electrical lag at exactly ωe/(2π·fc) for ANY res_poles. Exact in steady state; residual only while accelerating.
//   Test: A/B res_filt_comp at a few hundred rpm — steady Vd should drop toward 0 (same signature as the Step 6 fix).
//   If it makes things WORSE at speed the sign is inverted → suspect res_dir_inv first.
//   All three params are LIVE (no NEEDS_IDLE) so they can be A/B'd on the bench. IDs 0x0035/0x0036/0x003C.

// src/foc_pipeline.c + src/adc_iface.c  (SIN/COS scale calibration during ALIGN; SENSOR_RM44AC only)
volatile uint16_t  g_res_cal_en;        // 1=ALIGN prepends the cal sweep (default SENSOR_RES_CAL_DEFAULT_EN=1); "res_cal_en" param 0x0039, NEEDS_IDLE
volatile uint16_t  g_res_cal_sin_min;   // raw ADC extremes captured by the cal sweep; RO params cal_sin_min/max,
volatile uint16_t  g_res_cal_sin_max;   //   cal_cos_min/max (0x011C–0x011F). Sentinels 0xFFFF/0 until the sweep runs.
volatile uint16_t  g_res_cal_cos_min;   //   Bake into hw_control_v2.h RES_SINCOS_* once stable (values are RAM-only).
volatile uint16_t  g_res_cal_cos_max;
volatile uint16_t  g_res_cal_status;    // "cal_status" 0x0120: low nibble 0=never ran, 1=applied, 2=rejected (kept old scale);
                                        //   clip flags 0x10 sin-low, 0x20 sin-high, 0x40 cos-low, 0x80 cos-high
volatile float     g_res_sin_bias, g_res_sin_ampl_inv, g_res_cos_bias, g_res_cos_ampl_inv; // runtime per-channel scale
                                        //   (adc_iface.c; seeded from RES_SINCOS_BIAS/AMPL_CODE in adc_init, ampl as reciprocal)
volatile uint16_t  g_resolver_loss_inhibit; // loss check held reset from ALIGN entry until the scale commits (untrusted
                                        //   normalization would false-trip); force-cleared on ANY ALIGN exit (fault/stop too)
//   Align ladder (production, 2026-07-15): settle 3 s → CAL sweep **3 mech revs** (SENSOR_RES_CAL_MECH_REVS, was 1)
//   at 0.5 rev/s = 6 s → finalize. **~9 s total; the offset sweep no longer runs** (align_off_en=0, see below).
//   Only ≥1 rev is needed mathematically (1 mech rev = 1 full sin/cos cycle), but under the iloop_en=0 open-loop
//   drag the rotor cogs and can stall/skip, so one rev may never reach part of the cycle → short min/max. Extra revs
//   only ever widen them. Need NOT be an integer (unlike the offset sweep, where integer revs cancel cogging).
//   Captured amplitude runs ~18% WIDE because min/max latch noise peaks (~±3.9σ) not the true crest — this barely
//   grows with rev count (extreme value ~ sqrt(2·ln N)) and is HARMLESS: an equal overestimate on both channels
//   leaves atan2 unaffected (amplitude-independent). Only a sin-vs-cos MISMATCH distorts the angle.
//   **A REJECTED CAL NOW FAULTS** (foc_pipeline.c): adc_set_sincos_scale's return value used to be discarded via
//   `(void)`, so a reject silently kept the OLD scale, swept the offset on a garbage angle, and reported align
//   SUCCESS into RUN. It now sets s_cal_failed → sm_raise_fault(FAULT_SENSOR_LOSS) and FREEZES the carrier (the
//   fault only lands on the next 1 kHz tick, so without the freeze up to 10 ISRs would sweep anyway).
//   align_reset() also clears a possibly boot-latched g_resolver_lost (one-way latch + wrong default scale).

// src/foc_pipeline.c        (ALIGN offset capture — BOTH backends)
volatile uint16_t  g_align_offset_en;   // "align_off_en" 0x0044, NEEDS_IDLE; latched at ALIGN entry (like res_cal_en).
//   Default is PER-MOTOR: ALIGN_OFFSET_CAPTURE_DEFAULT = **0 on EMRAX/production**, 1 on Teknic.
//   0 = skip the ramp sweep entirely and pin the electrical offset to **0** (theta_elec = RAW sensor angle). Pinned
//   EXPLICITLY, not just skipped — a previous align's offset must not survive. Disabled on production because the
//   resolver front-end is still mis-scaled + noisy (~26° elec RMS pre-filter), so the swept average was garbage and
//   the bench demonstrably runs BETTER on a plain zero offset (2026-07-15). Re-enable once the analog is rescaled.
//   Teknic stays 1: the QEP is INCREMENTAL and has no usable zero without the sweep — unlike the absolute resolver
//   it genuinely cannot run offset-free. The SIN/COS cal sweep (res_cal_en) is INDEPENDENT and still runs.

// src/inverter_custom_v2.c  (Step 9/10 — production module faults; HW_CONTROL_BOARD_V2 only)
volatile uint16_t g_dbg_module_fault;   // MODULE_FLT_* bitfield snapshot at fault entry (OC_A/B/C,OT,DCOV)

// src/debug_hooks.c + src/foc_pipeline.c   (one-shot scope trigger + step injector)
volatile uint16_t g_dl_trig_state;   // DL_TRIG_OFF/ARMED/DONE; RO param "trig_state" 0x0122
volatile uint16_t g_dl_trig_idx;     // chronological index of the trigger sample; RO "trig_idx" 0x0123
volatile uint16_t g_step_go;         // "step_go" 0x0048: 0=release freeze, 1=step+trigger (RUN only), 2=trigger only (any state)
volatile uint16_t g_step_axis;       // "step_axis" 0x0049: 0=d, 1=q
volatile float32_t g_step_a;         // "step_a" 0x004A: reference value at the step [A]
volatile uint16_t g_step_pre;        // "step_pre" 0x004B: pre-trigger samples kept (default 32, clamped to 126)
//   WHY: the datalog was a free-running ring and the host polls a capture every 250 ms, so at decim=1 only
//   12.8 ms in every 250 ms is even recorded -- a commanded step was visible ~5% of the time and at a random
//   offset. Host-side timing CANNOT fix this (a PARAM_WRITE lands with ms of serial+scheduler jitter against a
//   12.8 ms window). debug_datalog_trigger() keeps the pretrig samples already in the ring as the baseline,
//   records the rest, then FREEZES -- which also makes the snapshot tear-free (the ISR stops writing).
//   ATOMICITY is the whole point: the injector runs at the TOP of foc_current_loop_isr, before step 3's PIs,
//   so the step and the trigger land in the same tick and trig_idx IS the first stepped sample.
//   Both axes needed care because NEITHER reference is host-owned in RUN:
//     d -- step 3b rewrites s_refs.id_ref EVERY tick (ID_REF_NOMINAL_A + s_fw_id), so a host "id_ref" write is
//          clobbered before the PI sees it. s_step_id (static) is folded into that expression; cleared on RUN entry.
//     q -- s_refs.iq_ref is refreshed from g_dbg_iq_ref by the 1 kHz foc_speed_loop_tick, so writing only the
//          source quantizes the edge by up to 10 samples. The injector writes BOTH; the 1 kHz tick then
//          re-asserts the same value in torque mode, so they never fight.
//   ==> This also means the OLD host at_run_step (write "id_ref", sleep, capture) could never have produced a
//       d-axis step in closed-loop RUN. Only the q path half-worked, and only by luck of timing.
//   step_go=2 (trigger only, any state) gives a COHERENT gap-free 128-sample window with no reference change --
//   use it for noise-floor work, where the stitched-burst artifact otherwise destroys the frequency structure.
//   RACE NOTE: g_dl_trig_state is written ONLY from ISR context. debug_datalog_free_run() (called by the
//   step_go=0 setter in main-loop context) just raises s_dl_release, which the ISR consumes -- otherwise a
//   release racing the ISR's ARMED->DONE could leave the ring frozen and silently stop the live scope.
//   Host: at_run_step() (gui.py) drives axis/value/pre -> step_go -> polls trig_state -> capture -> reads
//   trig_idx -> step_go=0 in a finally. autotune.step_metrics() takes the known i_step instead of guessing the
//   edge from a 50% crossing (the guess latches onto pre-step noise; see test_known_i_step_rejects_pre_step_noise).
//   The Autotune plot's x-axis is now relative to the trigger, with a dashed marker at t=0.

// src/foc_pipeline.c        (Step 11 — field weakening)
volatile uint16_t  g_dbg_fw_en;         // live toggle (also "fw_en" param); default FW_DEFAULT=0
volatile float32_t g_dbg_fw_id;         // applied FW d-axis current [A], <=0 (also "fw_id" RO param)
volatile float32_t g_dbg_vmag;          // requested |Vdq| [V] held to ≈FW_VMAX_FRACTION*vbus*0.5 (also "vmag" RO param)
volatile float32_t g_dbg_iq_lim;        // flux-priority current-circle limit on |iq| [A] = sqrt(I_PEAK^2 - id^2)
//   s_fw_id (static) = FW PI output added to ID_REF_NOMINAL_A each RUN tick (ISR owns id_ref now).
//   Tunable serial params: fw_en (u16), kp_fw/ki_fw (f32, NEEDS_IDLE). RO: fw_id, vmag.
//   foc_fast_sqrt() (static) = trig/RTS-free sqrt for the iq circle limit.
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
- **[2026-07-15] The host GUI scope plot is BURST-captured and its x-axis is NOT time — this reads as "the ADC is broken" and isn't.** `DATALOG_LEN_SAMPLES = 128`, so one `SCOPE_CAPTURE` = **128 samples = 12.8 ms** at decim=1; the worker (`gui.py`, `_scope_interval = 0.25`) requests one only **every 250 ms**; `_on_capture` `extend`s each block into a `maxlen=8000` deque and `_render_scope` draws `setData(np.arange(n), y)` — a **sample counter**. So an 8000-wide plot = ~62 blocks of 12.8 ms glued end-to-end with **~237 ms of deleted dead time between each**: ~15.6 s of wall clock holding 0.8 s of data. 127 of every 128 gaps are 100 µs; the 128th is ~2400× wider and drawn the same width. On a slow signal you get flat noisy plateaus (within 12.8 ms a 1 Hz sine moves ≤80 codes — less than the ~344-code noise floor, so its slope is buried) separated by big vertical jumps (the sine advanced ~85° during the gap), aliasing into fake uneven "cycles". **Tell: every plateau is exactly 128 samples wide — count them.** To actually see the waveform, raise the **decim** spinbox: one capture spans `128·decim/10000` s, so decim≈78 puts a full 1 Hz cycle in one block. **But go back to decim=1 to diagnose NOISE** — `debug_datalog_push` stores an instantaneous sample (no averaging, no anti-alias filter), so decimating folds everything above `5 kHz/decim` down and destroys the noise's frequency structure. decim costs nothing in CPU (early return) or link (always 128 samples); it only trades resolution for span.
- **[Step 9] ePWM one-shot trip-zone (OST) latch ≠ interrupt flag.** Two separate flags: the **OST flag** holds the forced output state (ASC) and **must be cleared manually** by `EPWM_clearTripZoneFlag(base, EPWM_TZ_FLAG_OST)` — a CPU/JTAG restart does NOT clear it; the **interrupt flag** (`EPWM_TZ_INTERRUPT`) only re-arms the ISR. In `epwm_tz_isr` clear ONLY the interrupt flag and leave OST latched (that's what keeps the bridge safe while the SW state machine catches up); clearing OST is deferred to `pwm_clear_trip()` on `enter(FOC_IDLE)` after the operator clears the fault. If RUN produces no PWM after a trip, you forgot to clear OST. Also: TZ acts **after** the dead-band, so ASC needs **TZA=LOW + TZB=HIGH** (forcing both low = coast, not a short). TZ inputs are **active-low** (trip on logic-low), which matches nFAULT/open-collector module flags directly — no Input X-BAR inversion needed for active-low sources.

