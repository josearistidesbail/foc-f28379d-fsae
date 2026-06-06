# Production bring-up — Control_V2 + EMRAX 208 + RM44AC

Companion to the Debug "Bring-Up Status" in `CLAUDE.md`. This is the ordered
sequence for the **Production** build config `Production_CtrlV2_EMRAX_Resolver`
(`HW_CONTROL_BOARD_V2` / `MOTOR_EMRAX_208` / `SENSOR_RM44AC`).

> ⚠️ **High voltage.** Unlike the 24 V bench BOOSTXL, this stage runs the EMRAX
> off a 400 V-class pack. Every step below is gated behind a **low-voltage /
> current-limited supply first** (e.g. 24–48 V bench PSU into the DC link) until
> the full chain is proven. Do not connect the HV pack until Steps 1–8 pass at
> low voltage.

## Prerequisites (this prep pass)

- [x] Resolver angle uses trig-free `foc_atan2()` (`sensor_rm44ac_inline.h`) —
      validated <0.0002 rad error host-side.
- [ ] `docs/control_v2_pinmap.md` filled from the schematic.
- [ ] `board_control_v2.syscfg` configured from that map (via SysConfig).
- [ ] `config/hw/hw_control_v2.h` scaling/threshold constants set.
- [ ] Production config built clean — requires, one-time in the CCS UI:
  - Add `_LAUNCHXL_F28379D` to the **Production** Predefined Symbols (Project
    Properties → Build → C2000 Compiler → Predefined Symbols). The controller is
    a LaunchPad (10 MHz crystal); without this define `device.h` configures the
    PLL for a 20 MHz crystal and the CPU runs at half speed.
  - Exclude `syscfg/board_boostxl_drv8305.syscfg` from the **Production** build
    (right-click → Resource Configurations → Exclude from Build → Production),
    else two `.syscfg` files generate a colliding `board.c`/`board.h`.
  - Set the active build configuration to **Production**.

## Control_V2 hardware caveats (resolve before HV / closed loop)

These came out of the pinmap and must be tracked — each can silently corrupt
control or hide a fault:

1. **Resolver sin/cos span 0–3.3 V > 3.0 V ADC** → the peaks clip; angle is
   distorted near them and `sin²+cos²` won't hold ~1. Conditioning-circuit
   resistor change planned to rescale into 0–3.0 V. Angle is *provisional* until
   then. (`hw_control_v2.h` RES_SINCOS_* + `adc_iface.c`.)
2. **Vbus reads clip above ~415 V** (ratio 138.46 × 3.0 V ADC) → the SW OV trip
   (460 V) and field-weakening headroom go blind above that. Add attenuation or
   cap the bus < 415 V until fixed. (`VBUS_DIVIDER_RATIO`.)
3. **Current-sense bias assumed 2.5 V** leaves only ~62 A of positive headroom on
   a 3.0 V ADC — inconsistent with a bipolar ±300 A sensor. Confirm the real bias
   (likely mid-scale ~1.5 V) and sensitivity (~8 mV/A) on the bench; runtime
   calibration captures the zero but not the span/sign.
4. **Phase W not instrumented** → reconstructed by KCL (`ISENSE_RECONSTRUCT_PHASE
   = 3`). Iu/Iv sign and scale must be correct or the synthesized Iw is wrong.
5. **Two gate enables, no fault-reset** → aux EN (GPIO131) on at init, master EN
   (GPIO66) gated by RUN; both assumed active-high (`inverter_custom_v2.c`).

## How this differs from the Debug (BOOSTXL) bring-up

| Aspect | Debug (BOOSTXL) | Production (Control_V2) |
|---|---|---|
| Gate driver | DRV8305 over SPI (register config, SPI fault readback) | discrete EN + fault GPIO(s); no SPI — `inverter_custom_v2.c` |
| Fault path | single DRV8305 nFAULT | per-flag module outputs (OC_A/B/C, OT, DCOV) |
| Angle sensor | eQEP (incremental, index) | RM44AC sin/cos (absolute, `atan2`) |
| Alignment | ramp-and-average (incremental) | settle + single-shot capture (absolute) |
| Current sense | DRV8305 SOx shunt amps | LEM / external shunt+amp (`hw_control_v2.h`) |
| HV safe-state | low-side ASC vs coast (speed-gated) | same logic; thresholds per EMRAX |

## Calibrate-on-bench (set after first power, before closed loop)

Each value has a home in code; capture the real number on the bench and commit it.

| Quantity | Where | How to get it |
|---|---|---|
| ADC zero-current bias | `adc_calibrate_offsets()` (runtime) | auto-sampled at CALIBRATE; confirm raw codes sit near mid-scale at 0 A |
| `ISENSE_AMPS_PER_CODE` | `hw_control_v2.h` (`LEM_V_PER_A` / shunt+gain) | inject a known DC current, scale codes→amps |
| `ISENSE_SIGN_U/V/W` | `hw_control_v2.h` | known +current into a phase → sign of measured Id/Iq |
| `VBUS_DIVIDER_RATIO` | `hw_control_v2.h` | measure DC link with a meter vs `g_dbg_vbus_raw` |
| Resolver sin/cos scale | `adc_read_sin_cos()` (`adc_iface.c`) | bias + amplitude from the RM44AC outputs; make `sin²+cos²≈1` |
| `SENSOR_RES_MAG_LOW/HIGH` | `sensor_rm44ac.h` | set the loss window around the measured `g_dbg_resolver_mag` |
| Electrical offset | `align` (auto, `sensor_rm44ac_capture_zero()`) | run ALIGN; verify it repeats across rotor start positions |
| Current-loop gains | `gains_emrax.h` (`GAIN_K*_ID/IQ`) | re-derive from measured Rs/Ld/Lq (param-ID) |
| Speed-loop gains | `gains_emrax.h` (`GAIN_K*_SPEED`) | tune live over serial (`kp_w`/`ki_w`) |
| FW gains | `gains_emrax.h` (`GAIN_K*_FW`) | bench-tune against real bus; default OFF |
| `FAULT_ASC_OMEGA_ELEC` | `motor_emrax_208.h` | speed where back-EMF ≈ ½·Vbus; pick ASC-vs-coast boundary |

> Note `Isc = λpm/Ld ≈ 306 A > MOTOR_OC_TRIP_A (260 A)` — a high-speed active
> short may re-trip the module's own OC. Revisit once FW is exercised.

## Ordered sequence (low voltage first)

1. **LED heartbeat** — confirm `Board_init()` + clock (crystal freq correct, see
   pinmap §10). 500 ms blink on the status GPIO.
2. **ISR @ 10 kHz** — `g_isr_count` increments; ePWM SOCA→ADCA EOC→`adcA1_isr`.
3. **ADC bias** — gate disabled, read `g_dbg_iu/iv/iw_raw` near mid-scale;
   `g_dbg_vbus_raw` tracks the bench PSU. Set scaling + signs.
4. **Resolver angle** — spin the rotor by hand; `g_resolver_theta_mech` sweeps
   0→2π smoothly and monotonically. Check `g_dbg_resolver_mag ≈ 1`; set the loss
   window. Confirm `foc_atan2` direction matches rotation.
5. **Gate enable / fault** — EN asserts; module fault GPIO(s) read "OK"; no
   spurious trip. Verify `inverter_is_faulted()` reflects a deliberately forced flag.
6. **Rotor alignment** — `g_dbg_sm_cmd=1`; ALIGN injects Id at θ=0, captures the
   electrical offset; verify it repeats within a few degrees across start positions.
7. **Closed-loop current** — small `iq_ref` in TORQUE mode; Id≈0, Iq tracks;
   `|Vdq|` (`g_dbg_vmag`) well under the bus budget.
8. **Speed loop** — SPEED mode; `omega_meas` tracks the ramped setpoint.
9. **HW trip-zone** — at low `iq`, force a module fault flag → scope shows
   EPWMxA low / EPWMxB high within a cycle (ASC), `g_dbg_tz_trip` increments,
   state → FAULT; `clearfault` from IDLE recovers (releases the OST latch).
10. **Sensor-loss + safe-state** — disconnect a resolver channel while driving
    → `g_resolver_lost`, latches `FAULT_SENSOR_LOSS`; `g_dbg_fault_asc` picks
    ASC (high speed) vs coast (low speed) off the last-healthy speed.
11. **Field weakening** (optional, HV) — `fw_en=1`, ramp speed; `g_dbg_vmag`
    plateaus, `g_dbg_fw_id<0` past base speed, `g_dbg_iq_lim` shrinks.

Only after 1–10 pass at low voltage, raise the DC link toward the HV pack in
steps, re-checking OC/OV trips and the ASC boundary at each level.
