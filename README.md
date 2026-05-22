# FOC for TMS320F28379D — Multi-Variant Project

Field Oriented Control for the LAUNCHXL-F28379D, supporting two build-time
variants out of the box:

| Variant | Inverter | Motor | Angle sensor |
|---|---|---|---|
| **Debug** | BOOSTXL-DRV8305 BoosterPack | Teknic M-2310P-LN-04K | eQEP encoder |
| **Production** | Custom `Control_Board_v2` | EMRAX 208 | RM44AC sin/cos resolver |

Code is thin C wrappers over **C2000Ware MotorControl SDK 5.04** math
libraries (`CLARKE_run`, `PARK_run`, `IPARK_run`, `SVGEN_run`, `PI_run`).
The RM44AC angle is `atan2f(sin, cos)` of the ADC-sampled SIN/COS pair.
Peripherals are configured in **SysConfig**.

## Project layout (what to edit)

```
include/        High-level interfaces (no need to edit for tuning)
config/         <-- EDIT HERE
    motor/      Rs, Ld, Lq, lambda, pole pairs, ratings
    hw/         ADC channels, PWM mapping, current-sense scaling, GPIO
    sensor/     QEP CPR, resolver PLL gains
    gains/      PI Kp/Ki and limits
src/            Implementation files (state machine, ISR, HAL)
syscfg/         One .syscfg per HW variant
```

To **change a motor parameter**: edit one `#define` in `config/motor/...h` and rebuild.
To **swap variants**: pick a different CCS build configuration (see below).

## Getting it into Code Composer Studio 11

The repo ships with `foc_f28379d.projectspec` — CCS reads it and builds the
whole project (include paths, source links, build configurations, predefined
symbols, linker cmd, ccxml, driverlib.lib) in one import.

1. Open CCS 11.
2. **File → Import → C/C++ → CCS Projects** → *Select search-directory* and
   point at `C:\Users\Jose\workspace_ccs\foc_f28379d`. The wizard will find
   `foc_f28379d` — click **Finish**.
3. The project appears with two build configurations:
   - `Debug_BOOSTXL_Teknic_QEP` (active by default — defines
     `HW_BOOSTXL_DRV8305 / MOTOR_TEKNIC_M2310P / SENSOR_QEP`)
   - `Production_CtrlV2_EMRAX_Resolver` (defines
     `HW_CONTROL_BOARD_V2 / MOTOR_EMRAX_208 / SENSOR_RM44AC`)
4. Open the `.syscfg` for the active configuration (under the project root)
   and configure the peripherals listed in the next section. SysConfig will
   regenerate `board.c` / `board.h` automatically.
5. **Build**. The bare-LED-toggle main loop should compile.

If CCS complains about a missing `C2000WARE_MC_SDK_INSTALL_DIR` or path
variable, the SDK is expected at
`C:\ti\C2000Ware_MotorControl_SDK_5_04_00_00`. Edit the `<pathVariable>`
lines in `foc_f28379d.projectspec` if yours is somewhere else, then
re-import.

## SysConfig setup (the one bit you still do by hand)

Pin/PWM/ADC wiring is hardware-specific and inherently visual — it belongs
in the SysConfig GUI, not in checked-in defines. Double-click the active
`.syscfg` file in the project explorer and add these modules.

For **`board_boostxl_drv8305.syscfg`** (debug variant):

- **ePWM1, ePWM5, ePWM6**: up-down count, 10 kHz, 500 ns deadband, SOC on
  period match (carrier peak) → ADCA SOC0.
- **ADCA**: SOC0..2 = phase currents IU/IW (channels per `hw_boostxl_drv8305.h`),
  sample window ≥ 75 ns; EOC INT1 enabled, ISR `adcA1_isr` from `src/isr.c`.
- **ADCB**: SOC1 = phase IV.
- **eQEP1**: quadrature decoder, unit timer on, GPIOs `EQEP1A`/`EQEP1B`/`EQEP1I`.
- **SPI-A**: master, 16-bit, mode 0 (CPOL=0,CPHA=0), 1 MHz, for DRV8305.
- **CMPSS1/2/3**: comparator thresholds for HW overcurrent, route to ePWM TZ1.
- **GPIO**: `DRV8305_EN_GATE_GPIO=124`, `DRV8305_NFAULT_GPIO=125`, LED on
  GPIO31, scope probe pin on a free GPIO matching `SCOPE_PIN_ISR_GPIO`.

For **`board_control_v2.syscfg`** (production variant):

- All of the above, plus:
- **ADCB** and **ADCC** wired to RM44AC SIN and COS inputs (single-ended or
  differential per your front-end). The RM44AC outputs already-demodulated
  sin/cos analog signals — no excitation carrier to generate.

## Bring-up steps (DO THESE IN ORDER)

1. **Empty bringup** — Build `Debug_BOOSTXL_Teknic_QEP`. Flash and run.
   `LED_STATUS_GPIO` should toggle at ~1 Hz, scope on `SCOPE_PIN_ISR_GPIO`
   should show a 10 kHz square wave (ISR firing).
2. **Current-sense calibration** — In CCS Expressions, watch `s_iu_offset`,
   `s_iv_offset`, `s_iw_offset` after the first `FOC_CALIBRATE_OFFSETS` run.
   Each should be ~`ISENSE_ZERO_CODE` ± 10. If far off, your ADC mapping or
   shunt amplifier polarity is wrong.
3. **Open-loop test current** — Brake the Teknic shaft. Override
   `foc_get_refs()->id_ref = 0.5f`, `iq_ref = 0`, with the rotor held by
   hand. Scope the actual phase current — it must match the command within
   ~10%. If not, fix `DRV8305_SO_GAIN_VPV`, `DRV8305_R_SHUNT_OHM`, or
   `ISENSE_SIGN_*`.
4. **Encoder check** — In RUN state with a tiny `iq_ref`, hand-spin the
   shaft and watch `g_qep_theta_elec` increment in CCS Expressions. Verify
   sign with `SENSOR_QEP_DIR_SIGN`. Run `sensor_qep_capture_zero()` after
   `ALIGN_ROTOR` holds Id steady.
5. **Closed-loop spin** — Set `foc_get_refs()->speed_ref = 50.0f` (rad/s
   mech). Expect a clean ramp. Mirror Iq onto DAC-A via
   `debug_dac_set(s->Idq.value[1], s->omega_elec, 0.1f)` to see torque vs.
   speed on a scope.
6. **RM44AC bench bringup** — *Before* the custom board, wire the RM44AC
   SIN and COS outputs into the ADC channels matching `hw_control_v2.h`.
   Hand-rotate the magnet and watch `g_resolver_theta_mech` sweep [0, 2π).
   Validate against an auxiliary encoder if you have one. No excitation
   drive is required — RM44AC outputs already-demodulated sin/cos directly.
7. **Production variant** — Build `Production_CtrlV2_EMRAX_Resolver`.
   Repeat steps 1–5 with the EMRAX on a controlled DC bus (start at 24 V).
   **Do not** energize at full bus until current-sense scaling is verified
   into a dummy resistive load.

## Live signals to watch in CCS

Add to Expressions view:

```
foc_get_signals()->theta_elec
foc_get_signals()->Idq.value[0]   // Id
foc_get_signals()->Idq.value[1]   // Iq
foc_get_signals()->omega_elec
foc_get_refs()->vbus
sm_get_state()
safety_get_latched()
g_datalog                          // graphable ring buffer
```

## Files at a glance

| File | Why you would touch it |
|---|---|
| `config/motor/motor_*.h` | Change motor parameters |
| `config/hw/hw_*.h` | Change PWM/ADC pin map, current-sense scaling |
| `config/gains/gains_*.h` | Tune PI gains |
| `config/sensor/sensor_*.h` | Change encoder CPR, resolver PLL gains |
| `include/sensor_iface.h` + `sensor_*_inline.h` | Add a new sensor backend |
| `src/foc_pipeline.c` | The FOC pipeline (rarely needs editing) |
| `src/foc_state_machine.c` | Mode logic, alignment behaviour |
| `src/isr.c` | The single fast ISR |
| `src/inverter_*.c` | Per-board gate-driver setup |

## Known risks

- **`PWM_PERIOD_COUNT_OVERRIDE`** in `pwm_iface.c` falls back to a computed
  default; the SysConfig-generated module gives a more accurate value. If
  duty looks wrong, expose the SysConfig period symbol and `#define` the
  override.
- **Trip-zone wiring** must be live before high-current testing. SysConfig
  CMPSS → ePWM TZ1 routing is not optional.
- **EMRAX 208 at 6000 rpm** = 1 kHz electrical with 10 pole pairs. The
  default 10 kHz ISR is the minimum; consider 20 kHz for production.
- **Alignment offset persistence**: today the encoder zero is captured at
  every `ALIGN_ROTOR` run. Adding a flash-API write in
  `sensor_qep_capture_zero()` / `sensor_rm44ac_capture_zero()` skips
  alignment on subsequent boots.
