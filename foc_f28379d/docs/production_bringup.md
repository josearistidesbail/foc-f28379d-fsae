# Production bring-up — FE_UFPR 4.0 + EMRAX 208 + RM44AC

Build config `Production_CtrlV2_EMRAX_Resolver` (`HW_CONTROL_BOARD_V2` / `MOTOR_EMRAX_208` /
`SENSOR_RM44AC`). The names predate the FE_UFPR 4.0 board, which kept them so the CCS project did not
change. The day-by-day log (bring-ups A–K) is the "FE_UFPR 4.0 board bring-up" section of the root
`CLAUDE.md`; the board-side spec is `docs/FE_UFPR_4_0_handoff.md` and the board repo's
`S12_FIRMWARE_HANDOFF.md`. This file keeps what is done, what is left, and the bench-calibration table.
(The Control_V2 version of this file is in git history; that board's pin form is in `docs/archive/`.)

> ⚠️ **High voltage.** The EMRAX runs off a 400 V-class pack. Everything below is proven on a
> **low-voltage, current-limited bench supply first** (31 V so far). Do not connect the HV pack until
> the open items in steps 9–10 pass at low voltage and the bus sense is calibrated.

## Build prerequisites (done)

- `_LAUNCHXL_F28379D` is in the Production predefined symbols (LaunchPad = 10 MHz crystal; without it
  the CPU runs at half speed).
- `syscfg/board_boostxl_drv8305.syscfg` is excluded from the Production build (one `board.c`).
- The active build configuration can only be switched in the CCS GUI; `buildProject` builds the active one.

## Hardware status

1. **Resolver front end** rescaled on 4.0: bias ~2050 / amplitude ~1585 codes, no clipping, ~2.6° elec
   rms angle noise before the software filter (bring-up F). Baked as `RES_SINCOS_*`.
2. **Vbus sense:** design ratio 327.273 (full scale ~982 V, so the old 415 V clipping is gone). The
   offset is not fitted yet and the reading is visibly off at the bench — run `vbuscal` (table below).
3. **Current sense:** LEM LA 100-P path (`ISENSE_SOURCE_LEM 1`, board JP3–JP5 at 2-3), ±150 A range,
   software OC trip capped at 130 A. The internal module sensors don't idle at the 2.5 V the ×0.6 stage
   assumes, so that path is unusable until the stage is re-biased (bring-up E).
4. **All three phases instrumented.** `isense_recon` can still rebuild one dead channel via KCL.
5. **Gate enables:** two active-high enables (GPIO66 master, GPIO131 aux), ANDed on the board with the
   SW_MAIN interlock (JP1 1-2); no fault-reset line. Module fault flags are active-high, so their pads
   are `PULLUP_INVERT`.

## Bench aids

- **`module_faults_en` / `BENCH_NO_POWER_STAGE`** (0 now): with the DB37 unplugged the module flags
  read "fault" (fail-safe) and trip both the HW trip-zone and the software gate-driver check in any
  state. `BENCH_NO_POWER_STAGE 1` (or `module_faults_en 0` live, in IDLE) drops the OSHT trip sources and
  ignores the flags, and unlocks the `gate_en_dbg` enable override. **Must be 0 whenever the power
  stage is connected.**
- **`BENCH_LOW_VOLTAGE_DC_LINK`** (1 now): `vbus_ovr` boots at `BENCH_DC_LINK_V` (31 V — must equal the
  supply), UV trip bypassed, `iq_max` 10 A, `oc_trip_a` 40 A, `vmax_frac` 0.15. Set 0 for the HV bus
  once `vbuscal` agrees with a meter.
- **Open-loop PWM (`FOC_OPENLOOP`)**: a rotating voltage vector (Vd = 0, Vq = `ol_mod`) at `ol_freq`
  through IPARK/SVGEN with a synthetic unity bus — no current loop, no sensor. Runs with protection ON
  (since 2026-11-03); its main use is the resolver-direction check (+`ol_freq` must give a positive
  `omega_meas`).

  | Param | Meaning |
  |---|---|
  | `ol_run` | 1 = enter FOC_OPENLOOP (gate enables), 0 = stop → IDLE. Reads back the live state. |
  | `ol_freq` | electrical frequency [Hz], default 5 |
  | `ol_mod` | q-axis drive ≈ peak duty deviation, 0–0.5, EMRAX default 0.10 (a duty: the volts scale with the bus) |

## Calibrate-on-bench

Values marked RAM-only are re-measured at every calibrate (each power-up/reflash).

| Quantity | Where | Status on FE_UFPR 4.0 |
|---|---|---|
| ADC zero-current offsets | `adc_calibrate_offsets()` at CALIBRATE (RAM-only) | ✓ LEMs idle ~1996–2005 codes |
| `ISENSE_V_PER_A` | `hw_control_v2.h` | design value (23.5 Ω burden × 0.4158); gain against a metered DC current not yet checked |
| Channel map + signs | ALIGN phase-ID (RAM-only) | ✓ map 0 / inv 0 at `phase_id_a` 3 A |
| `VBUS_DIVIDER_RATIO` / `VBUS_OFFSET_CODE` | `hw_control_v2.h`, live `vbus_ratio` / `vbus_off` | **open** — `python -m foc_debug vbuscal`, ≥ 5 interleaved metered points, motor IDLE, on the 15-cycle Vbus sampling (`f8e06ef`); then bake and hand back `vbus_ovr` 0 → `uv_trip_v` → `uv_en` 1 |
| Resolver SIN/COS scale | ALIGN cal sweep (RAM-only), boot `RES_SINCOS_*` | ✓ 2050 / 1585 baked |
| Resolver direction | `res_dir_inv` | ✓ 0 (`ol_run` +5 Hz → `omega_meas` +31.1) |
| Loss window `SENSOR_RES_MAG_LOW/HIGH` | `sensor_rm44ac.h` | defaults (0.25 / 2.25), not re-tuned on 4.0 |
| Electrical offset | ALIGN bidirectional sweep (RAM-only) | ✓ 106.6–107.3° elec at `align_id_a` 8 A |
| Dead-time compensation | `dtc_v` / `dtc_ith` | ✓ 1.0 V / 0.5 A at 31 V; re-check at HV |
| Current-loop gains | `gains_emrax.h` | ✓ kp 0.5 from standstill d-axis steps; loaded q-axis steps owed |
| Speed-loop gains | `gains_emrax.h`, live `kp_w`/`ki_w` | ✓ 0.35 / 0.02 unloaded; raise with drivetrain inertia |
| Flux linkage `MOTOR_FLUX_VS` | `motor_emrax_208.h` | bench hints ~0.034 V·s vs 0.0387 datasheet; `host/bench/lambda_fit.py` pending |
| FW gains | `gains_emrax.h` | open (HV) |
| `FAULT_ASC_OMEGA_ELEC` | `motor_emrax_208.h` | open: speed where back-EMF ≈ ½·Vbus, the ASC-vs-coast boundary |

> `Isc = λpm/Ld ≈ 306 A > MOTOR_OC_TRIP_A (260 A)`: a high-speed active short may re-trip the module's
> own OC. Revisit once FW is exercised.

## Ordered sequence (low voltage first)

1. ✓ **LED heartbeat, 10 kHz ISR, ADC** — bring-ups A–E.
2. ✓ **Gate enable chain** — bring-up B (GPIO66 · GPIO131 · JP1 interlock; `sw_in`, `gate_en`). Not yet
   tested: the start input (`sw_in` bit 1).
3. ✓ **Gate signals** — bring-up C (`ol_run`, 1500 ns dead band, 120° phasing).
4. **Trip path** — bring-up D proved OC_A and OC_B at standstill (OST latch on all three phases, one
   re-trip with the fault still present, clean release). Open: OC_C, the per-pin OT/DC-OV readings, the
   protection-on boot-latch check, and a trip **while running** at low `iq` (scope EPWMxA low / EPWMxB
   high within a cycle, `tz_trip` increments, state → FAULT, `clearfault` from IDLE recovers).
5. ✓ **Resolver angle + direction** — bring-up F.
6. ✓ **Rotor alignment** — Calibrate (`g_dbg_sm_cmd=1`, or the GUI): phase-ID dwells (open-loop) →
   settle → SIN/COS scale sweep → bidirectional offset sweep, all closed-loop at `align_id_a` after
   phase-ID; ~33 s, the motor turns ~13 revs (bring-ups F, K). Healthy: `phase_id_status` 1,
   `cal_status` 1, `align_offset` 106.6–107.3°. A rejected phase-ID or scale cal latches a fault
   (CURRENT_SENSE / SENSOR_LOSS) instead of running on an unverified measurement.
7. ✓ **Closed-loop current** — torque mode, Id ≈ 0, Iq tracks (bring-ups F, J). Owed: loaded steps
   (needs a brake on the rotor).
8. ✓ **Speed loop** — speed mode on the resolver PLL estimate (bring-up I), unloaded.
9. **Sensor loss + safe state** — pull a resolver channel while driving → `FAULT_SENSOR_LOSS`;
   `g_dbg_fault_asc` picks ASC (high speed) vs coast (low speed) from the last healthy speed.
10. **Bus sense** — `vbuscal` (table above), then hand control and the UV trip back to the measured bus.
11. **Field weakening** (HV) — `fw_en=1`, ramp speed; `vmag` plateaus, `fw_id` < 0 past base speed,
    `iq_lim` shrinks.
12. **Sensorless shadow + fail-over** (see `docs/sensorless.md`) — needs the measured bus (`vbus_ovr=0`),
    `dtc_en=1`, `obs_vsrc=0`. The low-voltage bench caps the speed near the 400 elec rad/s HV
    `obs_min_speed`: set `obs_min_speed=150` live and expect only the flux observer (`obs_mode=0`) to be
    meaningful there. With `angle_src=0` (shadow) spin in torque mode and watch `theta_err`
    (wrap(θ_est − θ_resolver)): mean within ±0.1 rad, RMS ≲ 0.15. Then `angle_src=1` live (bumpless
    hand-over, `pos_trig_en=1` captures it), then `angle_src=2` + `pos_force_lost=1` → `angle_act=1`,
    `pos_status=0x63`, `warn_code=1`, RUN continues; pull one resolver channel under torque for the real
    thing. Sensorless keeps |iq| ≤ `obs_iq_max` and forces FW off. HV: re-verify the floor and the SMO's
    `obs_smo_e0`.

Only after the low-voltage items pass, raise the DC link toward the HV pack in steps, re-checking the
OC/OV trips, the bus calibration and the ASC boundary at each level.
