# PMSM FOC rewrite — handoff notes

State of work as of this hand-off. Read this first before continuing on the other machine.

---

## What was done

The auto-generated Simulink Embedded Coder output (`mcb_pmsm_fwc_qep_f28379d.c` and ~25 related files in the project root, ~6,700 LOC) was replaced by a clean hand-written implementation under **`src/`** (~1,000 LOC, 23 files). The generated files are left in place as reference but are intended to be excluded from the CCS build once `src/` is integrated.

See `src/README.md` for layout, control flow diagram, and CCS integration steps.

---

## Hardware pin map — USER-VERIFIED

This is the ground truth; trust it over anything else in the codebase or its history.

### Gate driver / SPI (DRV8305 on BoostXL site 1)
| Signal   | F28379D pin | Notes |
|----------|-------------|-------|
| EN_GATE  | GPIO124     | active-high enable |
| nFAULT   | GPIO19      | open-drain, active-low input |
| WAKE     | GPIO125     | **DO NOT configure** — leave high-Z so DRV8305 internal pull keeps chip awake |
| PWRGD    | wired to RST | not software-visible |
| SCS (CS) | GPIO61      | SPIA |
| SCLK     | GPIO60      | SPIA |
| SDI/MOSI | GPIO58      | SPIA |
| SDO/MISO | GPIO59      | SPIA |

### PWM (3-phase inverter)
| Signal | F28379D pin |
|--------|-------------|
| PWMHA / PWMLA | GPIO0 / GPIO1  (ePWM1 A/B) |
| PWMHB / PWMLB | GPIO2 / GPIO3  (ePWM2 A/B) |
| PWMHC / PWMLC | GPIO4 / GPIO5  (ePWM3 A/B) |

### ADC — all SOCs triggered by ePWM1 SOCA (simultaneous sampling)
| Signal     | ADC channel | Purpose |
|------------|-------------|---------|
| ISENA      | ADCC-IN2    | Phase A current (DRV8305 shunt amp out) |
| ISENB      | ADCB-IN2    | Phase B current |
| ISENC      | ADCA-IN2    | Phase C current |
| VSENPVDD   | ADCA-IN3    | DC bus voltage (BoostXL 169k/4.99k divider, ratio ≈ 0.0287) |
| VSENA      | ADCIN14 (ambiguous — A or B?) | Phase A voltage (back-EMF), **unused by QEP FOC** |
| VSENB      | ADCC-IN3    | Phase B voltage, unused |
| VSENC      | ADCB-IN3    | Phase C voltage, unused |

The EOC of ADC-B SOC0 fires the FOC ISR (matches the original Simulink behavior).

### Encoder (eQEP1) — from generated code, not user-confirmed
| Signal  | F28379D pin |
|---------|-------------|
| EQEP1A  | GPIO20 |
| EQEP1B  | GPIO21 |
| EQEP1I  | GPIO99 |

### LaunchPad LEDs
- BLUE = GPIO31 (active-low)
- RED  = GPIO34 (active-low)

---

## Unaddressed questions / decisions needed before flash

### High-impact (will affect correctness)

1. **DC bus voltage — what's the real operating voltage?**
   - Original Simulink `data.m` used `inverter.V_dc = 12 V`.
   - Rewrite currently sets `BASE_VOLTAGE_V = 24.0f` in `src/config/control_config.h`.
   - The PI gains were derived under one base; running with a different base shifts their effective bandwidth. **Pick one and align.**

2. **Motor electrical parameters in `src/config/motor_config.h` are unverified.**
   - `MOTOR_RS_OHM`, `MOTOR_LD_H`, `MOTOR_LQ_H`, `MOTOR_FLUX_PM_WB`, `MOTOR_RATED_CURRENT_A` are best-effort recall of Teknic 2310P datasheet values.
   - The original generated code does **not** expose these directly — they only appear baked into pole-placed gain constants. So there is no automatic way to cross-check.
   - If your motor is a different model, these must be updated.

3. **Phase-to-ePWM ordering is assumed straight 1:1.**
   - Rewrite assumes Phase A = ePWM1, Phase B = ePWM2, Phase C = ePWM3.
   - If the BoostXL routes them differently, motor will spin backwards or shake on first start.
   - Easy sanity check: spin manually slow open-loop with `id_ref = 0.1, iq_ref = 0` and a constant ramping `theta_e` — confirm rotation direction.

4. **Encoder offset `ENCODER_OFFSET_RAD = 1.0398f`.**
   - Derived as `0.1655 PU × 2π`, where 0.1655 came from the original data. PU convention assumed but not verified.
   - Must be re-measured at bring-up regardless. Method: in RUN state, command zero torque (`iq_ref = 0`), slowly turn the rotor by hand, watch `g_motor.foc.i_dq_pu.d` and `.q`. Adjust offset until d-axis current sits near zero when no external torque is applied.

5. **Current-sense gain hardcoded to 10 V/V.**
   - `src/hal/drv8305.c` sets `DRV8305_SENSE_GAIN_10VPV` (lowest).
   - Original Simulink conditionally picked 10/20/40 V/V based on `I_rated` (gain=4 if I_rated<5A, =2 if <7A, else =1).
   - If your motor needs less current full-scale than ±23 A, bump the gain up to use more ADC range.

### Behavioural deviations from original (intentional but worth knowing)

6. **State machine** in `src/app/motor_control.c` is CAL → IDLE → ALIGN → RUN.
   - Original: open-loop ramp until QEP index pulse, then closed loop.
   - Rewrite: fixed-duration `ALIGN_DURATION_S = 0.5s` Id-only alignment, zero QEP at end.
   - Both are valid; the original is more robust if the rotor is initially in motion.

7. **FWC enables at `|speed_pu| > 0.8`.**
   - Original enables based on voltage deficit (V_max − V_actual).
   - The original is more correct — FWC should activate when the voltage circle is actually saturating, not at a fixed speed. Consider porting this back: see `mcb_pmsm_fwc_qep_f28379d.c:1357-1439` in the generated code.

8. **ADC offset calibration runs at every boot for 1024 samples (~50 ms @ 20 kHz).**
   - Original triggered calibration via a separate software-triggered SOC path with a user flag.
   - Mine is simpler but less flexible.

9. **`drv8305_is_faulted()` reads nFAULT and trips into FAULT state.**
   - Original never read nFAULT.
   - Defensible improvement, but it's new behaviour. If you get spurious DRV8305 faults at startup, check if `nFAULT` has settled before init completes (add a brief `DELAY_US()` before the first read).

### Probably-but-unverified

10. **QEP register configuration differs from original.**
    - Original passes magic values: `QDECCTL=448 (0x01C0), QEPCTL=8232 (0x2028), QCAPCTL=119 (0x77)`.
    - Rewrite `src/hal/hal_qep.c` writes cleaner bit-by-bit config but may miss something (e.g. original sets the unit timer; mine doesn't — which could matter for the speed-measurement path in the original).
    - If encoder readings look wrong, dump `EQep1Regs.QDECCTL.all`, `QEPCTL.all`, etc. and compare to the magic values.

11. **SPIA pins GPIO58–61** — match the user-verified map but the SPI mode/clock-phase setting in `drv8305.c` (mode 1) was set from DRV8305 datasheet recall, not by tracing the original's `MW_SPI.c`. Worth a scope check on first comms.

12. **Vbus divider ratio 0.0287** assumed from BoostXL-DRV8305EVM rev A schematic recall. Verify against your hardware revision if Vbus readings look wrong.

---

## Bring-up checklist (recommended order)

1. **Build** in CCS with `src/` added (see `src/README.md` step-by-step).
2. **No motor connected.** Flash, confirm heartbeat LED toggles at ~1 Hz.
3. **No motor connected.** In `main.c`, comment out `motor_ctl_request_run()`. Reset, confirm state advances `CAL -> IDLE` within ~50 ms and `g_motor.adc_cal_acc_*` averaged values land near 2048 (mid-rail, ±50 counts).
4. **No motor.** Probe ePWM1A on a scope, confirm 20 kHz with ~50% duty in IDLE state. Probe dead-time ~75 ns between A and B in a leg.
5. **DRV8305 SPI comms.** Add a `drv8305_read(DRV8305_REG_GATE_DRIVE)` after init, breakpoint, confirm it returns a sensible non-zero value.
6. **Motor connected, low Vbus (12V ideal first).** Set `motor_ctl_set_speed_ref_pu(0.1f)`, call `motor_ctl_request_run()`. Expect an audible alignment click, then slow rotation. If it shakes/buzzes: phase ordering or encoder offset is wrong.
7. **Tune encoder offset** until d-axis current at no-load steady-state is near zero.
8. **Ramp up speed reference**, watch `g_motor.foc.v_mag_pu` rise. It should plateau near `V_MAX_PU = 0.95` once FWC kicks in.
9. **Re-derive PI gains** for your actual motor/bus combination: current loop bandwidth target ~1 kHz, speed loop ~50–100 Hz.

---

## File map quick reference

```
src/
├── config/
│   ├── motor_config.h      # Pole pairs, Rs/Ld/Lq/flux, ratings  (UNVERIFIED motor params)
│   ├── board_config.h      # Pin map, ADC channels, scaling      (PIN MAP VERIFIED)
│   └── control_config.h    # Sample times, PI gains, PU base     (BASE_VOLTAGE_V unresolved)
├── foc/
│   ├── pmsm_types.h        # vec_abc/ab/dq, state enums
│   ├── transforms.h        # Clarke/Park/iPark/iClarke (inline)
│   ├── pi.h                # PI w/ back-calc anti-windup (inline)
│   ├── svpwm.h             # min/max common-mode SVPWM (inline)
│   ├── encoder.h           # QEP -> theta_e + filtered speed (inline)
│   ├── speed_loop.h        # Outer speed PI (inline)
│   └── foc.{c,h}           # Current loop: Clarke -> Park -> PI -> FWC -> SVPWM
├── hal/
│   ├── hal_board.{c,h}     # Clocks, GPIO, LEDs
│   ├── hal_pwm.{c,h}       # ePWM1/2/3 init + duty write + trip-zone
│   ├── hal_adc.{c,h}       # 3 currents + Vbus, EOC IRQ
│   ├── hal_qep.{c,h}       # EQEP1 init + count read   (REGISTER BITS may differ from original)
│   └── drv8305.{c,h}       # SPIA setup + register access  (SPI mode unverified)
├── app/
│   ├── motor_control.{c,h} # State machine + speed ramp
│   └── main.c              # Boot, ISR install, super-loop
└── README.md               # Layout + CCS integration + bring-up
```

Legacy / reference (do not edit, exclude from build when switching over):
- `mcb_pmsm_fwc_qep_f28379d*.{c,h}` (generated Simulink output)
- `ert_main.c` (generated main)
- `MW_*.{c,h}` (Mathworks driver wrappers)
- `c2837xDBoard_Realtime_Support.c`, `c2837xDSchedulerTimer0.c`, `dma.c`, `sysctl.c`

Keep using (TI driverlib, the rewrite depends on these):
- `F2837xD_*.{c,h}` (TI peripheral driver library)
- `F28x_Project.h` (TI common header)
- `DSP28xx_SciUtil.{c,h}` (if you add SCI telemetry)

---

## Conversational context worth preserving

These were learned during the rewrite session and aren't obvious from the code:

- **Two explore-agent disagreements** during the initial mapping: one said the base rate was 5 kHz (wrong — it's 2 kHz Timer0 in the original, but the actual FOC ISR is ADC-EOC at 20 kHz). The rewrite collapses this dual-clock thing into a single ADC-triggered 20 kHz ISR.
- **The original Simulink design uses `MW_SPI` and `MW_c28xx_*` wrappers** which are auto-generated thin shims over TI driverlib. The rewrite skips these and calls `EPwmXRegs`, `AdcXRegs`, `EQep1Regs` directly via `F28x_Project.h`. Same underlying register hits, much less indirection.
- **The original never sampled DC bus voltage** — assumed constant. The rewrite samples it on ADCA-IN3 because the hardware is wired for it. Currently unused in the algorithm (you could feed `hal_adc_read_vbus_pu()` into a voltage-scaled SVPWM if you want correct duty-cycle even with sagging Vbus).
- **Encoder offset value `0.1655 PU`** in the original is the only number I'm not sure how it was derived in the source. Treat it as a starting point only and re-measure on the bench.
- **PI gains in `control_config.h` were copied verbatim from the original `data.c`**. They are per-unit values derived under the original motor + bus + sample-time choices. Don't trust them after any of those change.

---

## Suggested next steps on the other machine

1. Resolve Q1 (`BASE_VOLTAGE_V` vs actual bus).
2. Bench-verify the QEP register bits (#10) match what the encoder actually needs — quickest check is to manually rotate the shaft and confirm `hal_qep_read_count()` increments cleanly through `[0, QPOSMAX]`.
3. Port the original's voltage-deficit FWC enable logic (#7) — it's at `mcb_pmsm_fwc_qep_f28379d.c:1357-1439` in the generated code.
4. Once spinning, add SCI telemetry on GPIO42/43 for real-time tuning data (`g_motor.foc.i_dq_pu`, `v_mag_pu`, `speed_pu` are the useful ones).
