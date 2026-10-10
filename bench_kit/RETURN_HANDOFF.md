# Bench session return handoff — ICIT 2027 §VI-C (2026-10-09)

For the paper session on the main machine. This replaces the sentence in §VI-C that the observers and
the supervisor "had not run on hardware". Everything below was measured on the Teknic rig on
2026-10-09; the provenance for every number is `bench/LOG.md` (one line per capture with the status
words and every observer parameter in force) plus the CSVs it names.

**Read §1 and §2 first — the session found and fixed four firmware bugs, so several assumptions in the
original HANDOFF.md (48 V, λ, "do not edit firmware") no longer hold.**

---

## 1. Headline

* Both observers (flux, SMO) run on hardware, are healthy from 500 to 1500 rad/s elec, and track the
  encoder to **within 1°** (SMO at every point; flux at ≥ 1000 rad/s) with **0.15–0.46° noise**.
* All four hand-over kinds work: forced and back (blended, 50 ms linear, bumpless), AUTO on sensor loss
  (jump), AUTO on disagreement (5 ms debounce, blend).
* **A physical encoder unplug at ~1000 rad/s now rides through bumplessly** (peak current 0.53 A,
  speed unchanged) — but only after a new 0.3 ms encoder-loss detector was added. Before it, the same
  unplug ended in the sensor-loss safe state (coast, no overcurrent) — a clean layered-protection result.
* ISR cost of the whole control loop incl. both observers: **~3770 of 20 000 cycles (18.9 %)**.

## 2. What changed versus the original HANDOFF.md

| Item | Handoff assumed | Actual |
|---|---|---|
| Teknic bus | ~48 V | **24 V supply (reads 23.3–23.4 V)**, on purpose (BOOSTXL-DRV8305 is a 45 V part). Write 24 V in the paper. |
| PM flux λ | 0.0046 V·s (firmware) | **0.006067 V·s, measured** (§4.2). The old value was 32 % low and kept both observers permanently unhealthy. |
| Observer gains | firmware defaults | `obs_smo_kslide` and `obs_smo_tol` were **silently stuck** at 4.24 and 0.01 by a compiler bug (§5). Now really 2.0 and 0.5. |
| "Do not edit firmware" | — | Jose authorised the fixes; 3 commits on branch `sensorless-observer` (§5). |
| Encoder zero | trusted | carried an **11.5° friction load-angle error** from the forward-only ALIGN sweep; fixed (§4.3). |
| Bench script | as shipped | several fixes + `bench_repeat.py` (§7). |
| GUI | — | **Not used at all.** Nothing was changed by hand. The only host writes besides the scripts: `dtc_en=1` after every board reset (it boots 0), `obs_mode` for the A1 repeat. |

Rig: LAUNCHXL-F28379D + BOOSTXL-DRV8305, Teknic M-2310P-LN-04K (4 pole pairs, Rs 0.36 Ω, Ls 235 µH,
1000-line QEP), unloaded rotor. Toolchain on the bench PC: CCS at `~/ti/ccs2051`, CGT
25.11.0.LTS (note: CLAUDE.md describes the main machine's CCS 21.0.1 / CGT 25.11.1 — the miscompile in §5 was seen with 25.11.0). Build config `Debug_BOOSTXL_Teknic_QEP`. Final firmware = commit `259d21e`.

## 3. Parameters in force for all final captures

`obs_gamma 1000`, `obs_smo_kslide 2.0 V/A`, `obs_smo_e0 6.0 A`, `obs_smo_lpf_hz 20`, `obs_smo_lpf_k 1.0`,
`obs_pll_bw 40 Hz` (ζ = 1), `obs_min_speed 300 rad/s elec`, `obs_flux_tol 0.30`, `obs_smo_tol 0.50`,
`obs_err_trip 0.5 rad` (debounce 50 ticks = 5 ms), blend 500 ticks = 50 ms, `obs_iq_max 3.55 A`,
`obs_vsrc 0` (duty·vbus − dead-zone model), `dtc_en 1` (`dtc_duty 0.005`, `dtc_v 0`), `vbus_ovr 0`
(real bus), `iq_max 7.1 A`, `vmax_frac 0.8`, `qep_fast_en 1`, ISR 10 kHz.
Hand-overs run in TORQUE hold (iq ≈ 0.38–0.41 A, the 1 s average of the speed PI's output).

## 4. Results for §VI-C

### 4.1 ISR cost (A1)
| Firmware | `isr_cycles_max` over 10 s at 1000 rad/s | of 20 000 |
|---|---|---|
| final (`259d21e`) | **3776** (obs_mode 1) / **3766** (obs_mode 0) | **18.9 %** |
| before the fast detector + bidirectional align | 3615 | 18.1 % |
Both observers always run (shadow), so the number covers the whole ISR. No observer-free baseline exists in this build.

### 4.2 Measured flux linkage
Sensored SPEED holds at 300/500/700/1000/1300 rad/s elec, fit `(Vq − Rs·iq) = λ·ωe + c`:
**λ = 0.006067 V·s** (residual 7 mV, slope SE 0.15 %, intercept 0.088 V = residual dead zone).
Independent re-check after the fixes (500/1000/1500): 0.006065. Data: `bench/lambda/`, `bench/alignchk/teknic_vdq_*`.
≙ 3.11 Vrms/krpm line-to-line.

### 4.3 The 11.5° reference error and its fix
* Before the fix every shadow showed a repeatable −7…−12° `theta_err` on both observers.
* **Direction test** (`bench/dirtest/`): at ±1000 rad/s the bias kept its sign (SMO −11.70/−10.69°, flux
  −10.84/−11.71°) ⇒ the error is in the reference, not the observers (a voltage/timing error flips with
  direction). The small flux-vs-SMO split *does* flip (+0.9/−1.2°) — that is the observers' own error.
* Cause: the forward-only ALIGN sweep drags the rotor with a 1 A field; friction makes it trail by the
  load angle δ, which is baked into the encoder zero, so the encoder reads ahead by δ.
* Fix: bidirectional sweep (2 revs fwd, 0.3 s hold, 2 revs back, equal-weight mean). It also *measures* δ:
  **`align_delta` = 11.52°** (friction ≈ Kt·I·sin δ ≈ 0.036·1·0.20 ≈ 7 mN·m — plausible). After the fix
  (`bench/bidir/`): SMO −0.22/+0.74°, flux +0.74/−0.31° at ±1000 rad/s.

### 4.4 Steady shadow accuracy (A2/A3, final firmware) — the paper table
Repeatability set (`bench/repeat/`, 5 coherent 128-sample captures at decim 1 = 12.8 ms each, per point,
one RUN per observer):

| observer | ωe [rad/s] | `theta_err` mean [°] | sd across captures [°] | within-capture sd [°] | healthy |
|---|---|---|---|---|---|
| flux | 500 | +3.74 | 0.09 | 0.15 | 1 |
| flux | 1000 | +0.41 | 0.25 | 0.36 | 1 |
| flux | 1500 | −0.23 | 0.12 | 0.43 | 1 |
| flux | −1000 | −0.46 | 0.22 | 0.22 | 1 |
| SMO | 500 | −0.30 | 0.28 | 0.21 | 1 |
| SMO | 1000 | −0.59 | 0.29 | 0.43 | 1 |
| SMO | 1500 | −0.78 | 0.09 | 0.46 | 1 |
| SMO | −1000 | +0.54 | 0.18 | 0.22 | 1 |

Single-capture A2/A3 files (`bench/teknic_shadow_{flux,smo}_w{500,1000,1500}_d1.csv`) agree:
flux +4.00/+0.35/−0.11°, SMO −0.69/−0.91/−0.80°. All pass the handoff criterion (|mean| < 6°, RMS < 3°).
Convergence metrics at the captures: `obs_flux_err` 0.03–0.07, `obs_smo_err` 0.02–0.08.
**Interpretation:** the SMO is flat (< 1°) across speed; the flux observer degrades at low speed
(+3.7° at 500 rad/s = 20 % of rated), exactly its Rs-sensitivity predicted by the simulation (§6).
`theta_err` is against the encoder, which itself carries a few-tenths-of-a-degree uncertainty after the
bidirectional align — so sub-degree means are at the limit of the reference.
**1500 rad/s is at the voltage limit on 24 V** (Vq = 9.33 V = vmax_frac·vbus/2).

### 4.5 Hand-overs (A4–A7)
**Taken before the bidirectional align fix**, i.e. with an 11.5° sensor-vs-observer offset at the switch. They are
valid as hand-over demonstrations — arguably a harder case — but say so; A6 was repeated on the final firmware.

| # | event (AUTO unless noted), SMO, ~1000 rad/s | result |
|---|---|---|
| A4 | forced `angle_src` 0→1 (blend) | `angle_act 1`, RUN. Angle continuous across the switch (12.29→12.23°), blend linear, 5 % after 47.2 ms (expected 50). Iq mean 0.379→0.379 A, peak dev 2.8 pre-switch sd. 1004 rad/s. |
| A5 | forced back 1→0 (blend onto the sensor) | `angle_act 0`, RUN. 0.38° across the switch, 48 ms linear blend, Iq peak 3.2 sd, mean unchanged. 1010 rad/s. |
| A6 | `pos_force_lost` (LOSS ⇒ jump) | `pos_status 0x0063`, `warn 0x0001`, RUN. Jump = the 12.0° offset; Iq transient 0.19 A (14 sd), mean unchanged. |
| A6 final | same, **final firmware** (`bench/final/`) | jump **0.62°**, Iq peak dev 2.0 sd (8.7 %), mean 0.384→0.386 A — bumpless even as a jump. |
| A7 | `pos_inj_err = 1 rad` (DISAGREE) | `pos_status 0x0065`, RUN. Switch **4.8–5.6 ms** after the injection (= 5 ms debounce). Before the switch the drive commutates 57° off: sampled \|I\| peaks **7.3 A** (near the 8 A SW OC trip — do not inject > 1 rad). The blend starts from the bad sensor angle, so ~57° of error persists over 50 ms and speed sags 1015→859 rad/s. |

### 4.6 Physical encoder unplug (A8) — before and after the fast detector
| firmware | observer | outcome |
|---|---|---|
| before `c84d75a` | SMO | detected only by the 5 ms DISAGREE debounce; mis-commutated meanwhile, \|I\| 7.41 A; observer then lost lock ⇒ **FAULT_SENSOR_LOSS 11.2 ms after the pull ⇒ coast**, no OC trip |
| before `c84d75a` | flux | same: \|I\| 7.70 A, fault 9.6 ms after the pull, coast |
| with fast detector | SMO | **ride-through**: detected ~0.3 ms, peak \|I\| 1.06 A, speed 1042→1054 |
| with fast detector | flux | **ride-through**: ~0.7 ms (contact bounce), peak \|I\| 0.68 A, speed 960 steady |
| **final** (`bench/final/`) | SMO | **ride-through**: commutation jumps 15.4° onto the observer (= frozen-sensor drift before detection, ~2.5 ticks at 1071 rad/s), peak \|I\| 0.53 A, Iq peak dev 0.11 A (7.9 pre-switch sd) for ~1 ms, mean 0.380→0.379 A, speed 1070→1071, `pos_status 0x0063`, fault 0 |
Files: `bench/teknic_unplug_auto_{smo,flux}_w1000_d8_fault.csv` (before, frozen ~100 ms around the
fault), `..._d8.csv` (ride-through), `bench/final/teknic_unplug_auto_smo_w1000_d8.csv`.
False-trip check of the fast detector (encoder connected): speed steps 350↔1450 rad/s + three ±3 A
accelerate/brake bursts ⇒ 0 trips.
After every ride-through the scripted ramp-down runs sensorless and crosses the 300 rad/s observer floor
⇒ FAULT_SENSOR_LOSS + coast. That is the designed low-speed behaviour, not a failure.

## 5. Firmware changes (branch `sensorless-observer`, NOT pushed; patches in `firmware_patches/`)
1. **`36cdfc6`** — (a) `MOTOR_FLUX_VS` 0.0046 → 0.006067. (b) **Compiler bug**: CGT 25.11.0.LTS compiled
   `if(vol_g > c) vol_g = c;` (kslide cap) and `if(vol_g < 0.01f) vol_g = 0.01f;` (smo_tol) in
   `obs_apply_params()` into *unconditional* stores of the constant (verified in `observer.asm`), so the
   SMO could never be healthy and no host write could change either. Fixed by clamping locals. **Any SMO
   result from before this commit ran with Kslide 4.24, not 2.0.** (c) `start_blend()` used last tick's
   angle ⇒ every blended switch began with a backward step of ω·Ts (8° at 1400 rad/s, Iq +38 %); fixed.
2. **`c84d75a`** — ISR-rate QEP frozen-counter detector: counter ≤ 1 count/tick for 3 ticks right after
   averaging ≥ 4 counts/tick over 8 ticks ⇒ sensor lost ⇒ LOSS jump. Needs > 1.9·10⁵ rad/s² elec to fake
   (~3× the motor's capability). Params `qep_fast_en` (0x0073), `qep_fast_trips` RO (0x0136).
3. **`259d21e`** — bidirectional ALIGN sweep (`ALIGN_RAMP_BIDIR`, `ALIGN_REVERSE_DWELL_S`), RO `align_delta`
   (0x0137). Also updates the project CLAUDE.md Step-6 note.
4. **Uncommitted**: `host/foc_debug/observer_sim.py` Teknic λ → 0.006067
   (`firmware_patches/UNCOMMITTED_observer_sim_lambda.diff`). It makes
   `test_defaults_keep_smo_pole_monotonic_and_linear` fail: with the real λ the default `obs_smo_e0 = 6 A`
   is below the 6.44 A needed to keep the SMO linear at **rated** speed (6000 rpm). Irrelevant on the
   24 V bench (≤ 3.8 A needed at 1500 rad/s), but `OBS_SMO_E0_DEFAULT` (gains_teknic.h + sim DEFAULTS)
   should go to ~7–8 A before running near rated speed. Jose's decision.

## 6. Simulation re-run (`sim/`)
`python -m foc_debug.observer_sim --motor teknic --vbus {48,24} --csv ...` with the corrected λ, plus the
old-λ 48 V table as a baseline. Conclusions unchanged: SMO robust to Rs ±30 %, λ −10 %, bus −10 %
(< 1.5°); flux observer parameter-sensitive (Rs ±30 % → 8–10° at 48 V, 15–22° at 24 V; λ −10 % → 11–15°;
bus −10 % → diverges). Nominal cases 0.02–0.3°. The bench sits slightly above nominal (flux +3.7° at
500 rad/s ≈ a few % Rs mismatch; SMO −0.3…−0.8°). If §VI compares sim and bench, regenerate the paper's
sim figures with λ = 0.006067 and **24 V** to match the bench.

## 7. Caveats / limitations to state in the paper
* 24 V bus; 1500 rad/s is at the voltage limit; unloaded, low-inertia rotor.
* Hand-overs A4/A5/A7 were captured with an 11.5° reference offset (pre-`259d21e`); A6 and A8 have final-firmware repeats.
* **The disagreement detector can false-trip under extreme acceleration on this rig**: with ±3 A torque
  bursts (~4·10⁴ rad/s² elec) the 40 Hz type-II PLL lags > 0.5 rad for > 5 ms ⇒ AUTO fails over, the
  observer then drops health ⇒ FAULT_SENSOR_LOSS. A loaded drivetrain cannot accelerate like this; the
  fast QEP detector itself did not false-trip.
* A7 shows the cost of a 5 ms debounce on a slipped sensor (7.3 A peak) and of blending *out of* a sensor
  just judged bad (50 ms of residual error). Candidate future work: jump on DISAGREE, rate-aware debounce.
* The fast detector is QEP-specific; the resolver path (EMRAX) still relies on the sin²+cos² window and
  the 5 ms disagreement debounce — not tested today.
* Scope captures are 128 samples; decim 8 (0.8 ms/sample) cannot resolve sub-ms detection times —
  detection times quoted are bracketed from the frozen-sensor angle growth (ω·Ts per tick).

## 8. Open items (not done)
* EMRAX/v3.0 session (B1–B5): **build the Production config from this tree first** (it needs commits 1–3).
  On EMRAX `align_off_en` defaults to 0, so the bidirectional sweep only matters once that is enabled.
* Audit the rest of the firmware for the CGT volatile-clamp miscompile (`notes/foc-cgt-volatile-clamp-miscompile.md`).
* Decide `OBS_SMO_E0_DEFAULT` (§5.4) and commit the sim λ.
* Push `sensorless-observer` (3 commits) when ready.

## 9. Package contents
| path | what |
|---|---|
| `RETURN_HANDOFF.md` | this file |
| `STATS_final.txt` | `bench_stats.py` over all final + dirtest/bidir CSVs |
| `bench/LOG.md` | provenance, one line per capture + NOTE lines explaining every decision |
| `bench/teknic_*.csv` | A2/A3 (final), A4–A7, A8 (fault + ride-through) |
| `bench/repeat/` | 5×-repeat shadows + `SUMMARY.md` (the paper table) |
| `bench/final/` | A6 + A8 on the final firmware |
| `bench/bidir/`, `bench/dirtest/` | ±1000 shadows after / before the align fix |
| `bench/lambda/`, `bench/alignchk/` | λ fit data; align-vs-observer + Vd/Vq diagnostics |
| `bench/regress/` | A6 regression after the fast detector |
| `bench/superseded_pre_fix/` | everything taken before a fix (`*_PREBLENDFIX`, `*_PREBIDIR`, wrong-λ shadows) — evidence, not paper data |
| `sim/` | simulation tables (new λ at 48/24 V, old λ at 48 V) |
| `scripts/bench_capture.py`, `bench_stats.py` | updated kit scripts (see below) |
| `scripts/bench_repeat.py` | new: repeatability shadows |
| `scripts/diagnostics/` | `lambda_meas.py`, `align_vs_obs.py`, `falsetrip*.py` |
| `firmware_patches/` | `git format-patch` of the 3 commits + the uncommitted sim diff |
| `notes/` | session notes: bench summary, compiler-bug note, inverter dead-zone background |
| `data/bench/` | the original HANDOFF.md / README.md, unchanged |

Kit script changes: `shutdown()` STOPs from CAL/ALIGN too; TORQUE hold holds the 1 s average iq
(the snapshot let speed drift 15–40 %); `hold` freezes and saves the scope on a fault; `status --clear`
also clears a fault word latched in IDLE; `bench_stats.py` locates the switch from the `trig_idx` in
LOG.md, measures a hand-BACK blend against the sensor angle, and reports Iq deviation in pre-switch sd.
Regenerate: `python scripts/bench_stats.py bench/teknic_*.csv bench/final/*.csv` (from the kit root).
