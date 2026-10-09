# FE_UFPR 4.0 → firmware handoff (answers `control_v2_pinmap.md` line by line)

Board: **FE_UFPR_4_0**, schematic freeze `v4.0-schematic-freeze`, release tag `v4.0-release` (S12, 2026-09-23).
Target files on the firmware side: `docs/control_v2_pinmap.md` (this file answers it), `config/hw/hw_control_v2.h`
(§13 lists every define that changes), `board_control_v2.syscfg` (pinmux — the GPIO numbers below are unchanged
from Control_V2 except where marked **NEW**).

Every value was re-read from the **4.0 schematic netlist** on 2026-09-23 (`kicad-cli sch export netlist` = `golden.net`)
and the header pins against **SPRUI77 Tables 1–4**; the design derivation is in the session doc named in each row.
Legend: ✓ = unchanged from what the firmware has today · **CHANGE** = the firmware constant/assumption must change ·
**NEW** = not in the firmware yet · **bench** = only the bench can settle it.

---

## 1. Power-stage PWM

| Signal | EPWM | GPIO | LaunchPad pin | Board path | |
|---|---|---|---|---|---|
| U high | EPWM4A | 6 | J8-80 | `PWM_UH_3V3` → U5 UCC27524 ch B → 100 Ω → DB37-21 (`PWM_UH_15V`) | ✓ |
| U low | EPWM4B | 7 | J8-79 | U5 ch A → DB37-20 | ✓ |
| V high | EPWM5A | 8 | J8-78 | U6 ch B → DB37-4 | ✓ |
| V low | EPWM5B | 9 | J8-77 | U6 ch A → DB37-3 | ✓ |
| W high | EPWM6A | 10 | J8-76 | U7 ch B → DB37-24 | ✓ |
| W low | EPWM6B | 11 | J8-75 | U7 ch A → DB37-23 | ✓ |

- Switching frequency 10 kHz, dead-band 1500 ns — ✓ unchanged (the module's own input network is 10 kΩ + 1 nF, fitted at the DB37).
- **High-side ON = EPWMxA HIGH** ✓. The UCC27524 is non-inverting; the module's inputs are logic-high = on (0–1.5 V LOW, 11–15 V HIGH; the board delivers 12.95–13.62 V from the `+13V5_GATE` rail). No polarity change anywhere in the chain.
- Each 3.3 V input has a 4.7 kΩ pull-down (R36–R41): a tri-stated MCU pin reads OFF.

## 2. Gate-driver control

| Function | GPIO | LaunchPad pin | Active level | Board |
|---|---|---|---|---|
| Master EN | 66 | J6-59 | **HIGH** (CHANGE: was "assumed") | U8 SN74LVC1G11 input A (`DRV_EN_3V3`) |
| Aux EN | 131 | J6-58 | **HIGH** | U8 input B (`DRV_EN_AUX_3V3`), 4.7 kΩ pull-down R31 |
| Per-leg enables | — | — | — | none: U8's output `GATE_EN_3V3` drives the EN pins of all three UCC27524 (pins 1 and 8) |

- The **PrimeSTACK has no enable pin**; both enables are board-local. Gate outputs are held low (drivers disabled) unless GPIO66 **AND** GPIO131 **AND** the interlock term are all HIGH.
- Third AND input = `GATE_ILOCK_3V3`, selected by solder jumper **JP1**: 1-2 (factory default) = `SW_MAIN_3V3` from the cockpit main switch; 2-3 = tied to +3V3 (bench bypass). Firmware needs no change for either position, but with JP1 at 1-2 the gates cannot arm unless GPIO29 also reads HIGH (§12).
- LED D9 (silk `GATE_EN`) mirrors `GATE_EN_3V3`. Test point `GATE_EN_3V3` (TP16).

## 3. Power-module fault flags

| Flag | GPIO | LaunchPad pin | Active level | Wired | HW trip-zone | DB37 pin |
|---|---|---|---|---|---|---|
| OC_A | 25 | J6-51 | **HIGH** | Y | **Y** (X-BAR INPUT1 → OSHT1) | 2 |
| OC_B | 27 | J6-52 | **HIGH** | Y | **Y** (INPUT2 → OSHT2) | 22 |
| OC_C | 26 | J6-53 | **HIGH** | Y | **Y** (INPUT3 → OSHT3) | 5 |
| OT | 64 | J6-54 | **HIGH** | Y | N (software) | 6 |
| DCOV | 52 | J5-48 | **HIGH** | Y | N (software) | 16 |

- **CHANGE: `MODULE_FAULT_ACTIVE_LOW 1 → 0`** and invert the Input X-BAR polarity. Datasheet p.2: outputs are open collector, "logic low = no fault", so **fault = released = HIGH**. The board pulls each line up with 4.7 kΩ to `+13V5_GATE`, divides 10 k / 4.7 k and buffers through an SN74LVC2G17 Schmitt (U9–U11) → a clean 3.3 V logic level, same sense: **HIGH = fault**.
- No internal MCU pull-up needed (the Schmitt output drives the pin). Harmless if left enabled.
- **Fail-safe:** DB37 unplugged or module unpowered → all five read HIGH = fault. This is what `BENCH_NO_POWER_STAGE 1` is for on a bare control board.
- ⚠ The module asserts **all three OC pins on any leg's overcurrent** — the three bits do **not** identify the phase. Treat OC_A|OC_B|OC_C as one "module OC" event in diagnostics.
- No combined fault line. The RC at each DB37 pin (1 nF) plus the Schmitt adds < 1 µs; the module's own OC shutdown (625 A_pk, 15 µs) is independent of these pins.

## 4. Status LED

GPIO31, LaunchPad D9 — ✓ nothing on the board.

## 5. ADC map (VREFHI = 3.0 V, every input has R + 22 nF C0G at the pin)

| Signal | Module.ch | LaunchPad pin | Net | Anti-alias | |
|---|---|---|---|---|---|
| **Iu** (phase A) | **ADC-A ch 5** (ADCINA5) | **J7-66** | `ISNS_A_ADC` | 100 Ω + 22 nF | **CHANGE** (was B4) |
| **Iv** (phase B) | ADC-C ch 4 (ADCINC4) | J7-67 | `ISNS_B_ADC` | 100 Ω + 22 nF | ✓ |
| **Iw** (phase C) | **ADC-B ch 4** (ADCINB4) | **J7-68** | `ISNS_C_ADC` | 100 Ω + 22 nF | **NEW** (Control_V2 had no Iw) |
| Vbus | ADC-C ch 2 (ADCINC2) | J3-27 | `VBUS_ADC` | 3.3 kΩ + 22 nF | ✓ |
| SIN | ADC-A ch 2 (ADCINA2) | J3-29 | `ENC_SIN_ADC` | 100 Ω + 22 nF | ✓ |
| COS | ADC-B ch 2 (ADCINB2) | J3-28 | `ENC_COS_ADC` | 100 Ω + 22 nF | ✓ |
| I offset ref (A-side) | ADC-A ch 4 (ADCINA4) | J7-69 | `ISNS_REF_A_ADC` = buffered `ISNS_VREF` | 100 Ω + 22 nF | ✓ kept |
| I offset ref (B-side) | ADC-B ch 5 (ADCINB5) | J7-65 | `ISNS_REF_B_ADC` = same node | 100 Ω + 22 nF | ✓ kept |
| **Module NTC** | **ADC-C ch 3** (ADCINC3) | **J3-24** | `NTC_1_ADC` | 3.3 kΩ + 22 nF | **NEW** |
| **Motor temp (KTY81-210)** | **ADC-B ch 3** (ADCINB3) | **J3-25** | `MOT_TEMP_ADC` | 3.3 kΩ + 22 nF, BAT54S clamp | **NEW** |
| **+3V3 rail monitor** | **ADC-A ch 3** (ADCINA3) | **J3-26** | `MOT_TEMP_REF_ADC` | 22 nF | **NEW** |

- **`ISENSE_NUM_CHANNELS 2 → 3`.** All three phases are instrumented; KCL reconstruction becomes optional (keep it as a cross-check).
- **A↔C swap (2026-09-22):** the routing put phase A on J7-66 (ADCINA5) and phase C on J7-68 (ADCINB4). The old `ADC_BASE_IU ADCB_BASE / ADC_CH_ADCIN4` now measures **phase C**. §13 has the define changes.
- Suggested SOC allocation: ADC-A: SOC0 = SIN, SOC1 = Iu (A5), SOC2 = REF_A (A4), SOC3 = 3V3 monitor (A3, slow). ADC-B: SOC0 = Iw (B4), SOC1 = COS, SOC2 = REF_B (B5), SOC3 = motor temp (B3, slow). ADC-C: SOC0 = Iv, SOC1 = Vbus (EOC → ISR, unchanged), SOC2 = NTC (C3, slow). The three slow channels can be sampled at a divided rate.
- The two offset refs read the **same node** through two converters: their difference is a live ADC-A vs ADC-B gain/offset cross-check (should be 0 ± a few codes after `adc_calibrate_offsets`).

## 6. Current-sense scaling — two sources, selected per phase by solder jumper (JP3/JP4/JP5: 1-2 = internal, factory default; 2-3 = LEM)

| | Internal (PrimeSTACK sensors, DB37 30/31/32) | External LEM LA 100-P (remote board, J3) |
|---|---|---|
| Sensor | module: 4.7/4.9/5.0 V at 300 A_RMS, bias **assumed 2.5 V** (datasheet gives no bias/polarity) | closed-loop, 1 : 2000, ±150 A peak range |
| Board stage | U12–U14 ch 1: differential ×0.600 (20.0 k / 12.0 k 0.1 %), reference GND | U12–U14 ch 2: burden 47.0 Ω ‖ 47.0 Ω = **23.5 Ω** (0.1 %, on this board), differential ×0.4158 (12.0 k / 4.99 k 0.1 %), reference `ISNS_VREF` |
| **Sensitivity at the ADC** | **4.800 mV/A** if the module is 8.00 mV/A (4.9 V at 300 A *instantaneous*); **3.396 mV/A** if it is 5.66 mV/A (4.9 V at 424 A_pk) — **bench** | **4.886 mV/A** (fixed by the burden; +1.8 % vs internal) |
| `LEM_V_PER_A` | **0.004800** (re-derive after bench item #3) | **0.004886** |
| `ISENSE_AMPS_PER_CODE` | 0.1526 A/code | 0.1499 A/code |
| Zero-current bias | 0.600 × 2.5 V = **1.500 V ≈ 2048 codes** | **1.4685 V ≈ 2005 codes** (12.0 k / 4.99 k from +5 V, buffered by U15) |
| Full scale | **±312 A** (ADC-limited at 4.8 mV/A; ±441 A if 5.66) → SW OC trip at 260 A fires before saturation | **±150 A** (sensor-limited: 0.736…2.201 V) → the SW OC trip is **inert** on this path by decision (S6: LEM is a validation instrument; the module HW OC covers it) |
| Sign (positive current into the motor) | **bench** — DB37 pins 30/31/32 polarity not in the datasheet | **bench** — depends on LEM arrow vs cable direction |

- Firmware structure: **one constant per source**, chosen at boot from a build/param flag that mirrors the jumper positions (the board cannot report them). Moving a jumper without a CALIBRATE leaves a ~31 mV (≈ 6 A) zero error — the bias points differ by design.
- `ISENSE_ZERO_CODE` stays a placeholder (`adc_calibrate_offsets()` captures the true zero); pre-cal seed 2048 (internal) / 2005 (LEM).
- **Resolve the 0.0075 vs 78.6 mV/A contradiction in `hw_control_v2.h`**: both belong to the bench Control_V2 board; neither applies here. Replace with the two values above.
- Sensor faults: LEM unplugged → LEM stages read the bias (no rail-stuck output); internal sensor unpowered → 0 V → reads −312 A: a plausibility check on |I| at gate-off catches a missing DB37.

## 7. Vbus

- Module sensor: 6.5 V at 900 V (6.4 / 6.5 / 6.6), load ≤ 5 mA → board divider **R57 2.20 kΩ / R58 1.50 kΩ (0.1 %)** to the Kelvin return `VBUS_RTN` (DB37-11, tied to GND at net-tie NT3 only) → 3.3 kΩ + 22 nF → ADCINC2.
- **`VBUS_DIVIDER_RATIO 297.14 → 341.538`** (= 900/6.5 × 3.70/1.50). `VBUS_VOLTS_PER_CODE` = **0.250150 V/code**; full scale **1024.6 V** → the 415 V clipping caveat in `production_bringup.md` is **fixed**. `VBUS_OFFSET_CODE` → re-measure (the old 11.4 was the Control_V2 divider's).
- Resolution 0.25 V/code is fine for control; the sensor floor below ~40 V (module behaviour) is unchanged — keep `vbus_ovr` for the 24 V bench until measured.

## 8. Encoder (RM44AC, order code `01S`, 1 sin/cos cycle per mech rev)

- Board receiver: differential ×1.20 (10.0 k / 12.0 k 0.1 %) against a 3.00 k / 4.99 k / 12.0 k reference chain, matched 2.2 nF C0G on both channels, BAT54S clamps, 100 Ω + 22 nF at the pin. SIN and COS are drawn identically.
- **`RES_SINCOS_BIAS_CODE 3072 → 2039`** (1.4934 V) · **`RES_SINCOS_AMPL_CODE 990 → 1745`** (1.2782 V at the nominal 2.2 Vpp source, including the sensor's 720 Ω output impedance). Worst-case source (2.4 Vpp) spans 0.099…2.888 V: **no clipping** — `production_bringup.md` caveat 1 is fixed. `MAG_LOW/MAG_HIGH` windows can stay; the ALIGN cal sweep re-measures min/max anyway.
- Electrical poles 1 ✓, already demodulated sin/cos ✓ (no excitation). The lag from the matched RC (≈ 2.2 kHz) is a pure angle delay, identical on both channels.
- Encoder supply `ENC_VDD` = +5 V through FB1, own test point (TP44).

## 9. SCI · 10. Clock

Unchanged: USB backchannel (XDS100v2, GPIO42/43), `_LAUNCHXL_F28379D`, 10 MHz. ISR scope probe **GPIO67 → J1-5 → TP48 `ISR_PROBE_3V3`** (verified in SPRUI77 Table 1 and the netlist; the "unverified" note can go).

## 11. NEW — temperatures

| | Module NTC (DB37-29) | Motor KTY81-210 (J4 cavities 6/7) |
|---|---|---|
| Channel | ADCINC3 (J3-24) | ADCINB3 (J3-25), rail on ADCINA3 (J3-26) |
| Front end | 12 kΩ / 4.7 kΩ divider (÷3.553), rated for the module's 10 V output, returns to GND | 2.20 kΩ 0.1 % pull-up from +3V3, 3.3 kΩ + 22 nF, BAT54S clamp; rail through 10.0 k / 10.0 k 0.1 % |
| Scaling | `V_ntc = 3.553 · V_adc`; 10.000 V (module: T_NTC = 82 °C) → 2.814 V → **code ≈ 3842**. Module NTC: **hotter = LOWER** voltage per the datasheet curve (take the curve from DS p.2) | `V_rail = 2 · V_adc(A3)`; **`R_KTY = 2200 · V_adc(B3) / (V_rail − V_adc(B3))`** Ω; then the KTY81-210 table (2000 Ω at 25 °C, ≈ 3392 Ω at 100 °C). PTC: **hotter = HIGHER code** — opposite sense to the module NTC |
| Suggested constants | `NTC_DIVIDER_RATIO 3.553` | `MOT_TEMP_R_TOP 2200.0f`; **fault window: code < 1400 or > 3100 → stop the motor** (open/short sensor or over-temperature; EMRAX requires a stop) |
| Sample rate | slow SOC (every N ISRs) | slow SOC |

## 12. NEW — vehicle I/O

| Function | GPIO | LaunchPad pin | Board | Level |
|---|---|---|---|---|
| **CAN-A TX** | 4 | J4-36 | `CAN_TX_3V3` → U18 SN65HVD230 (10 kΩ pull-up), RS through 10 kΩ to GND (slope-controlled), ACT45B choke, PSM712 TVS, **120 Ω termination on JP6 (bridged by default — open it if the bus is terminated elsewhere)** → J5 cavities 1 (H) / 8 (L) | CAN-A only; **CAN-B is not routable** on this board |
| **CAN-A RX** | 5 | J4-35 | `CAN_RX_3V3` | |
| **Main switch** | **29** | J2-11 | `SW_MAIN_3V3`: opto LTV-817 → 2.2 kΩ pull-down → Schmitt U21. Cockpit 12 V present → **HIGH** = run permitted; 0 V or open → LOW = withheld (also gates the hardware enable via JP1 1-2) | input, active HIGH |
| **Start** | **59** | J2-14 | `SW_START_3V3`, same conditioning | input, active HIGH |

Neither switch has a firmware define yet; suggested `SW_MAIN_GPIO 29U`, `SW_START_GPIO 59U`, both read as plain GPIO inputs (no pull needed, the Schmitt drives them).

## 13. `hw_control_v2.h` — every line that changes

```c
#define HW_NAME                 "FE_UFPR_4_0"          // was "Control_Board_v2"  (proposed; coordinate the bump)
// ADC: A<->C swap + third channel
#define ADC_BASE_IU             ADCA_BASE               // was ADCB_BASE
#define ADC_CH_IU               ADC_CH_ADCIN5           // was ADCIN4   (phase A = ADCINA5, J7-66)
#define ADC_BASE_IV             ADCC_BASE               // unchanged    (phase B = ADCINC4, J7-67)
#define ADC_CH_IV               ADC_CH_ADCIN4
#define ADC_BASE_IW             ADCB_BASE               // NEW          (phase C = ADCINB4, J7-68)
#define ADC_CH_IW               ADC_CH_ADCIN4
#define ADC_RESULT_BASE_IU      ADCARESULT_BASE         // + SOC indices per the allocation chosen in §5
#define ADC_RESULT_BASE_IW      ADCBRESULT_BASE         // was "unused (KCL)"
#define ISENSE_NUM_CHANNELS     3                       // was 2
// current scaling: per source
#define ISENSE_V_PER_A_INTERNAL 0.004800f               // module 8 mV/A assumed x0.600 -- bench item #3
#define ISENSE_V_PER_A_LEM      0.004886f               // 23.5 R burden x0.4158
#define ISENSE_ZERO_CODE        2048                    // internal seed; LEM path seeds 2005
// Vbus
#define VBUS_DIVIDER_RATIO      341.538f                // was 297.14
#define VBUS_OFFSET_CODE        0.0f                    // re-measure (was 11.4, Control_V2 divider)
// encoder
#define RES_SINCOS_BIAS_CODE    2039.0f                 // was 3072
#define RES_SINCOS_AMPL_CODE    1745.0f                 // was 990
// faults
#define MODULE_FAULT_ACTIVE_LOW 0U                      // was 1U  -- and invert the Input X-BAR polarity in SysConfig
// new channels / pins
#define ADC_BASE_NTC            ADCC_BASE   /* ADCINC3 */   #define NTC_DIVIDER_RATIO   3.553f
#define ADC_BASE_MOT_TEMP       ADCB_BASE   /* ADCINB3 */   #define MOT_TEMP_R_TOP      2200.0f
#define ADC_BASE_RAIL_3V3       ADCA_BASE   /* ADCINA3 */   #define MOT_TEMP_CODE_MIN   1400U   #define MOT_TEMP_CODE_MAX 3100U
#define CAN_TX_GPIO 4U   #define CAN_RX_GPIO 5U   /* CAN-A */
#define SW_MAIN_GPIO 29U #define SW_START_GPIO 59U
// unchanged: PWM_*_BASE, PWM_FREQ_HZ, PWM_DEADBAND_NS, GATE_DRV_EN_GPIO 66, GATE_DRV_EN2_GPIO 131 (both ACTIVE-HIGH, now confirmed),
//            LED_STATUS_GPIO 31, SCOPE_PIN_ISR_GPIO 67 (now verified), MODULE_*_GPIO 25/27/26/64/52, ADC_VREF_V 3.0
```

## 14. Things only the bench can settle (in the order the bring-up sheet hits them)

1. Internal sensor bias (assumed 2.5 V → 1.500 V at the ADC) and sensitivity (8.00 vs 5.66 mV/A) — DC current through one phase with a clamp-meter reference. If 5.66: one resistor per channel (R65/R76/R88) restores full range; until then the firmware constant carries it.
2. Sign of each current channel (both sources).
3. `VBUS_OFFSET_CODE` and the sensor's low-voltage floor.
4. Encoder amplitude at the connector (decides whether the S7 §9.1 gain bump is worth fitting).
5. KTY81-210 reading vs a thermometer at room temperature (sanity of `MOT_TEMP_R_TOP` + the rail cancellation).
