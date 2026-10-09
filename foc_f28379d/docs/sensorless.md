# Sensorless mode (Step 12): flux observer + SMO, position-source supervisor, AUTO fail-over

Status (2026-09-22): **built and compile-checked in both configurations, offline-simulated, not yet run on
hardware.** The CCS build (flash `.map` check), the ISR cycle baseline and every bench test in the
"Bench procedure" section are still open. Source: `src/observer.c`, `src/pos_src.c`,
`include/foc_math_inline.h`, `host/foc_debug/observer_sim.py`.

## What it does

The drive can now commutate from a model-based estimate of the rotor electrical angle instead of the
physical sensor. Two estimators run every current-loop ISR and a supervisor decides which source the FOC
pipeline, the speed loop, the safety layer and the fault safe-state see:

| `angle_src` | behaviour |
|---|---|
| 0 SENSOR | today's behaviour; both observers run in shadow so the scope can compare them against the sensor |
| 1 OBSERVER | forced sensorless: engages as soon as the observer is healthy (`REQ_PENDING` until then), the sensor's own loss flag is then ignored |
| 2 AUTO | sensor by default; **one-way fail-over per RUN cycle** to the observer on hard sensor loss OR a debounced sensor-vs-observer disagreement, only while the observer is healthy |

`angle_src` is LIVE. Every hand-over is bumpless (the angle and speed offsets at the switch decay linearly to
zero over `OBS_BLEND_TICKS` = 50 ms; a LOSS switch jumps, since the sensor angle it would blend from is
already garbage). A fail-over raises `WARN_SENSORLESS_FAILOVER` in the new warning word (`warn_code`), never
a fault, and the GUI banner turns amber `SENSORLESS (OBS_ACTIVE | SENSOR_LOST | FAILOVER_DONE | DEGRADED)`.

Not in this pass (hooks only): I/f open-loop start from standstill (`POS_ST_IF_ACTIVE` reserved) and HFI.
Sensorless works only above `obs_min_speed`; below it there is no back-EMF to observe.

## ISR order (foc_current_loop_isr)

1. state + entry edges
2. phase currents → Clarke (moved BEFORE the angle select: the observers need this tick's `i_ab`)
3. `obs_voltage_ab()`: last tick's final duty (post-SVGEN, post-dead-time-compensation) × the bus SVGEN
   normalized with, minus the dead-zone model `(dtc_duty·vbus + dtc_v)·sat(i_phase/dtc_ith)` (`obs_vsrc`
   0; 1 = raw duty·vbus; 2 = commanded Vab). CMPA is shadow-loaded at counter zero, where the ADC also
   samples, so last tick's duty is the one applied over (k, k+1], not (k−1, k]. The ISR therefore holds
   the result for one tick (`s_obs_vhold`) and feeds the observers the voltage over (k−1, k] with i[k].
   Without the hold the observers would see the voltage one tick early (an angle lead of ~ω·Ts, 36° at
   6000 rpm); found in the 2026-10-09 paper fact-check, not yet run on hardware.
4. `obs_update_isr()` in RUN / ALIGN / OPENLOOP (shadow in the last two), `obs_reset()` elsewhere
5. `pos_src_update_isr()`: reads the sensor, decides, blends, publishes `g_pos_theta/omega/lost`
6. angle select: ALIGN carrier / OPENLOOP ramp / `pos_src_get_theta()`; ω always `pos_src_get_omega()`
7. Park, PIs (with the sensorless |iq| clamp and FW forced off), IPark, SVGEN, DTC, PWM, 1 kHz tick,
   `safety_check_isr()` (now `pos_src_is_lost()`), datalog.

Redirected sensor readers: `foc_pipeline.c` theta/omega + speed loop, `foc_state_machine.c`
(`pos_src_get_healthy_speed()` for ASC-vs-coast, `pos_src_clear_loss()` on fault clear), `safety.c`
(`pos_src_is_lost()`). `align_step()` stays a direct sensor client (raw angle, resolver cal globals).

## Observers (src/observer.c; Ts = 100 µs; all coefficients derived in `obs_apply_params()` at setter time)

**Flux observer (Ortega nonlinear observer; `obs_mode = 0`)** on the stator flux `x = ∫(v − Rs·i)`:

    x   += Ts·(v − Rs·(i + i_prev)/2)            propagate (ZOH voltage, trapezoidal Rs drop)
    η    = x − Ls·i                              rotor-flux vector at THIS instant
    err  = clamp(λ² − |η|², ±λ²)
    x   += 0.5·(γ/λ²)·Ts·err·η                   radial correction (γ = obs_gamma [1/s])
    θ    = atan2(η_b, η_a)

`Ls = (Ld+Lq)/2`, `λ = MOTOR_FLUX_VS`. `obs_gamma/λ²` is the radial correction rate: the discrete radial pole
is `1 − obs_gamma·Ts`, hence the clamp [10, 5000]. Health metric `obs_flux_err = (|η|² − λ²)/λ²`.
**Propagate first, then correct on a consistent η**: correcting from `x_old − Ls·i_new` mixes two instants and
the spurious `Ls·Δi` term (5 % of λ at 72 A and 0.2 rad/tick on the EMRAX) turns the "radial" correction
tangential — a 1.5° bias proportional to γ and iq, found by the offline sim and removed by the ordering above.

**Sliding-mode observer (classic form; `obs_mode = 1`)**:

    î   = F·î + G·(v − z)          F = exp(−Rs·Ts/Ls) (5-term series), G = (1−F)/Rs
    d   = î − i
    z   = Kslide·sat(d, ±E0)       TI convention: error in amps saturated, then scaled by V/A
    ê  += α·(z − ê)                α = min(wc·Ts, 0.5),  wc = max(obs_smo_lpf_k·|ω̂|, 2π·obs_smo_lpf_hz)
    θ   = atan2(−ê_a, ê_b) (+π if ω̂ < 0) + φ(ω̂)

`ê` is deliberately NOT fed back into the current model. TI's eSMO does (`v − Ealpha − Zalpha`), which makes
z and ê each settle at half the back-EMF and turns the closed-loop phase into that of `H/(1+H)`; harmless
for atan2 but the textbook lag compensation then over-corrects (~18° at fc = fe). Without the feedback the
boundary-layer chain is exactly linear, `Ê/E = Kslide·G·α·z^1.5 / ((z − p)(z − q))` with `p = F − G·Kslide`,
`q = 1 − α`, `z = e^{jωTs}` (the z^0.5: the back-EMF drives the current model as its average over the tick;
the other z: the LPF consumes this tick's z), so the compensation is the exact discrete phase

    φ = angle(z − p) + angle(z − q) − 1.5·ω·Ts        (two TMU atan2 on sin/cos of ω·Ts)

whose small-angle limit is the continuous-time `atan(ωLs/(Rs+Kslide)) + atan(ω/wc)`. At the EMRAX's 0.63 rad
per tick that is ~32° off and even the half sample is 7° at Teknic top speed. The usual filter-only
`atan(ω/wc)` (TI's eSMO, the SMO literature) lands within a few degrees only for p ≈ 0.1–0.2. The same transfer's
magnitude gives the health metric `obs_smo_err = |ê|²/predicted(ω̂)² − 1` (0 converged, −1 no back-EMF;
assumes the linear regime |d| < E0). `obs_smo_ierr = |d|` [A] sizes E0. Design rules: `|p| < 1` for
stability (the setter caps Kslide at 0.9·(1+F)/G), `p ≥ 0` for a monotonic error decay, and
`E0 ≥ G·e_max / |z − p|` keeps it linear up to top speed (the continuous `e_max / |Kslide + Rs + jωLs|`
underestimates it by ~15 % at 0.63 rad per tick) (a smaller E0 gives a true bang-bang
sliding mode — available for the bench A/B, the LPF then has to average the chatter).

**Common PLL** (the resolver ATO, ζ = 1, `obs_pll_bw` Hz): `perr = clamp(wrap(θ_in − th), ±0.5)`,
`w += wn²·Ts·perr` (clamped ±1.5·rated), `θ_est = th + 2·wn·Ts·perr`, `th = θ_est + Ts·w`. The published
estimate is for THIS sample; publishing the one-step-ahead state would make `theta_est` lead the sensor by
`ω·Ts` (0.63 rad at 6283 rad/s), enough alone to trip the disagreement detector.

**Health** (`obs_healthy`): |ω̂| > `obs_min_speed` AND |perr| < 0.3 AND the selected metric inside
`obs_flux_tol` / `obs_smo_tol`; 200 consecutive ok ticks (20 ms) to trust, 50 not-ok ticks (5 ms) to drop.
`obs_seed()` starts both observers converged from the sensor on RUN entry.

## Supervisor decision table (src/pos_src.c, AUTO, sensor active, no fail-over yet this RUN)

| condition | action |
|---|---|
| sensor lost & observer healthy | switch → OBSERVER (jump, no blend), status `OBS_ACTIVE\|SENSOR_LOST\|DEGRADED\|FAILOVER_DONE`, `warn_code=1` |
| sensor lost & observer unhealthy | `pos_src_is_lost()` = true → today's `FAULT_SENSOR_LOSS` (speed-dependent ASC/coast) |
| disagreement & observer healthy | switch → OBSERVER (blend), status `…\|DISAGREE\|…`, warn |
| disagreement & observer unhealthy | no switch (cannot tell who is wrong); `DISAGREE` reported only |

"Sensor lost" = the backend latch (resolver sin²+cos² window, QEP drive-vs-response) or `pos_force_lost`.
"Disagreement" = |wrap(θ_sensor − θ_est)| > `obs_err_trip` for `OBS_ERR_DEBOUNCE_TICKS` = 50 consecutive
ticks (any in-band tick resets; the UV-trip pattern). Loss while the observer is active (health lost) →
`pos_src_is_lost()` latches (one-way, cleared by fault clear / IDLE) → `FAULT_SENSOR_LOSS`, with
`pos_src_get_healthy_speed()` = the observer's last healthy speed. A live `angle_src` change re-arms the
one-way fail-over; IDLE clears everything including the bench aids. While sensorless: |iq| ≤ `obs_iq_max`
(50 % of IQ_REF_MAX) at the q-axis choke point, field weakening forced into its reset branch.

## Parameters (all LIVE; boot values in `config/gains/gains_*.h`, fallbacks in `build_config.h`)

| param | id | unit | Teknic | EMRAX | meaning |
|---|---|---|---|---|---|
| obs_mode | 0x0060 | – | 0 | 0 | 0 flux / 1 SMO feeds the PLL (both always run) |
| obs_vsrc | 0x0061 | – | 0 | 0 | 0 duty·vbus − dead-zone model / 1 duty·vbus / 2 cmd Vab |
| obs_gamma | 0x0062 | 1/s | 1000 | 1000 | flux radial correction rate, clamp [10, 5000] |
| obs_smo_kslide | 0x0063 | V/A | 2.0 | 1.0 | p = F − G·Kslide = +0.07 / +0.21; setter caps at 0.9(1+F)/G |
| obs_smo_e0 | 0x0064 | A | 6 | 200 | boundary layer; ≥ e_max/\|Kslide+Rs+jωLs\| (4.8 A / 185 A at top speed) |
| obs_smo_lpf_hz | 0x0065 | Hz | 20 | 10 | back-EMF LPF cutoff floor |
| obs_smo_lpf_k | 0x0066 | – | 1.0 | 1.0 | LPF cutoff = k·\|ω̂\| (TI Kslf) |
| obs_pll_bw | 0x0067 | Hz | 40 | 40 | PLL bandwidth, clamp [1, 200] |
| obs_min_speed | 0x0068 | rad/s | 300 | 400 | health floor (EMRAX 24 V bench: set 150) |
| obs_flux_tol / obs_smo_tol | 0x0069/6A | pu | 0.30 / 0.5 | 0.30 / 0.5 | convergence tolerances |
| obs_rs / obs_ls | 0x006B/6C | Ω / H | motor | motor | model params for ±30 % sensitivity A/B |
| angle_src | 0x006D | – | 0 | 0 | SENSOR / OBSERVER / AUTO |
| obs_err_trip | 0x006E | rad | 0.5 | 0.6 | disagreement trip (resolver noise ~0.11 rad RMS → > 5σ) |
| obs_iq_max | 0x006F | A | 0.5·IQ_REF_MAX | same | \|iq\| clamp while sensorless |
| pos_force_lost / pos_inj_err / pos_trig_en | 0x0070/71/72 | – / rad / – | 0 | 0 | bench aids (auto-cleared in IDLE) |
| isr_cyc_rst | 0x0059 | – | – | – | any write zeroes `isr_cycles_max` |

Read-only: `isr_cycles` 0x0128, `isr_cycles_max` 0x0129 (SYSCLK cycles, budget 20,000), `theta_est` 0x012A,
`omega_est` 0x012B, `theta_err` 0x012C, `obs_flux_err` 0x012D, `obs_smo_err` 0x012E, `obs_dtheta` 0x012F
(flux − SMO), `angle_act` 0x0130, `pos_status` 0x0131, `obs_healthy` 0x0132, `obs_resets` 0x0133,
`warn_code` 0x0134, `obs_smo_ierr` 0x0135. Scope: bit 0x2000 `theta_est` (ring col 6, the old write-only
state column), bit 0x4000 `theta_err` = wrap(θ_est − θ_sensor) (col 14) — 15 channels total, the cap.
GUI: "Sensorless" tab, dropdowns for `angle_src`/`obs_mode`/`obs_vsrc`, amber banner while `OBS_ACTIVE`.

## Offline comparison (host/foc_debug/observer_sim.py)

Stdlib-only model at the firmware tick: αβ PMSM with prescribed speed, current sampled with noise, BOTH
observers + PLL (the same discrete equations as the C — `test_observer_sim.py` is the oracle, 14 tests),
dq current PI closed on the true angle (shadow, like `angle_src=0`) or on the estimate (`closed`), inverter
with a one-tick computation delay (the duty computed at k is applied over (k+1, k+2], as on the
hardware), duty quantization, per-phase dead zone and optional dead-time compensation; the
observer is fed the voltage the firmware would reconstruct (`obs_vsrc`), never the true applied voltage.
Columns: lock = first time |err| < 5° held 50 ms; healthy = first `obs_healthy`; mean/rms/max of the angle
error [deg elec] over the last 30 % (max after 0.1 s); w_rms = speed-estimate RMS error [rad/s].
Scenarios: plateaus at % of rated speed (skipped when the bus cannot spin them), 0→50 % ramp, ramp through
zero, Rs/Ls ±30 %, λ −10 %, bus belief −10 %, dead zone without compensation (`dz_nodtc`, and `_vs1` with
raw duty·vbus), noise 0/1/3 % of I_peak, loop closed on the estimate.

**Reading the tables:**

- **Flux observer**: locks instantly from the sensor seed, steady error ≤ 0.5° with correct parameters,
  works down to 2 % speed in the ideal model, no speed-sign ambiguity, sane through zero. But it is
  **parameter-sensitive**: Rs ±30 % → 10–22° at 20 % Teknic speed (the Rs·i drop is a large share of the
  voltage on a 0.36 Ω motor; on the 18 mΩ EMRAX about 1°), λ −10 % → 9–13°, a 10 % bus-voltage belief
  error → 8–30°, an unmodelled dead zone with raw duty·vbus → ~20°. Its floor on hardware is set by how
  well `dtc_duty`/`dtc_v`, `obs_rs` and the bus reading are known, not by noise.
- **SMO**: **robust** to Rs/λ/bus error (< 2°), steady error 0.1–0.5°, but needs 5–100 ms to lock (longer
  on ramps), needs the speed sign (the ±178° excursions through zero), and dies below its LPF floor; on the
  EMRAX 24 V bench (≤ 250 rad/s, 2 % of rated) it does not work at all except closed-loop at 75 rad/s.
- Both: Ls ±30 % → 1–5°; 3 % current noise → 0.5–1.8° RMS; the closed loop on the estimate is stable.

**Recommendation**: keep the flux observer as the boot default (`obs_mode=0`) for the bench comparison and
the EMRAX 24 V work, where only it can run; once the SMO's `E0`/`Kslide` are confirmed on hardware above
~10 % speed, make the **SMO the AUTO fail-over source**: a fail-over is exactly the case where Rs (hot
winding), λ (hot magnets) and the bus reading are least trustworthy, and its 5–100 ms lock is hidden behind
the 20 ms health dwell anyway. Consider the flux observer's Rs sensitivity the argument for an online Rs
estimate later.

```
# teknic: vbus=48 V, rated w_e=2513 rad/s, bus-reachable w_e~4174 rad/s, min_speed=300
scenario      mode    lock_ms healthy_ms mean_deg  rms_deg  max_deg    w_rms
w002          flux          0        n/a     4.51     4.55      6.0      0.6
w002          smo          73        n/a     0.16     2.58      7.6      4.8
w005          flux          0        n/a     0.61     0.93      2.2      0.6
w005          smo          28        n/a     0.03     0.67      2.5      1.2
w010          flux          0        n/a     0.26     0.48      1.6      0.6
w010          smo          22        n/a    -0.06     0.33      1.2      0.6
w020          flux          0         20     0.06     0.28      0.8      0.5
w020          smo           7         22     0.02     0.19      0.7      0.4
w050          flux          0         20     0.13     0.18      0.5      0.2
w050          smo           4         20     0.10     0.14      0.4      0.2
w100          flux          0         20     0.23     0.24      0.4      0.1
w100          smo           2         20     0.21     0.22      0.4      0.1
ramp0_50      flux          0        267     0.12     0.16      1.6      0.2
ramp0_50      smo          45        267     0.09     0.12      2.8      0.2
thru0         flux          0         20     0.82     0.89      4.0      6.7
thru0         smo           7         22     1.07     1.12    178.7      6.7
rs+30         flux        n/a         20   -13.39    13.40     14.5      0.7
rs+30         smo           7         22     0.01     0.21      0.8      0.4
rs-30         flux        n/a         20    10.31    10.31     10.9      0.4
rs-30         smo           7         21     0.02     0.17      0.7      0.3
ls+30         flux          0         20    -1.75     1.77      2.4      0.5
ls+30         smo           7         22    -1.85     1.86      2.3      0.4
ls-30         flux          0         20     1.99     2.01      2.8      0.5
ls-30         smo           8         21     1.88     1.89      2.6      0.4
lam-10        flux        n/a         20    11.32    11.32     12.0      0.4
lam-10        smo           7         21     0.02     0.19      0.7      0.4
vbus-10       flux        n/a        n/a   -20.57    20.58     21.8      0.8
vbus-10       smo           7         22    -0.69     0.72      1.2      0.4
dz_nodtc      flux          0         20     0.06     0.28      0.8      0.5
dz_nodtc      smo           7         22     0.02     0.19      0.7      0.4
dz_nodtc_vs1  flux        n/a        n/a    20.52    20.52     21.0      0.3
dz_nodtc_vs1  smo           7        n/a    -0.27     0.30      0.6      0.3
noise3        flux          0         20     0.35     0.91      2.7      1.4
noise3        smo           7         22    -0.04     0.55      2.1      1.1
noise0        flux          0         20     0.06     0.06      0.1      0.0
noise0        smo           7         22     0.04     0.04      0.0      0.0
closed        flux          0         20     0.13     0.23      0.6      0.4
closed        smo           6         21     0.09     0.16      0.5      0.3
```

```
# teknic: vbus=24 V, rated w_e=2513 rad/s, bus-reachable w_e~2087 rad/s, min_speed=300
scenario      mode    lock_ms healthy_ms mean_deg  rms_deg  max_deg    w_rms
w002          flux          0        n/a     3.92     3.96      5.3      0.6
w002          smo          73        n/a     0.15     2.34      7.0      4.3
w005          flux          0        n/a     0.43     0.78      1.9      0.6
w005          smo          28        n/a     0.02     0.61      2.3      1.0
w010          flux          0        n/a     0.21     0.43      1.5      0.5
w010          smo          22        n/a    -0.05     0.30      1.1      0.5
w020          flux          0         20     0.05     0.26      0.8      0.4
w020          smo           7         22     0.02     0.17      0.7      0.3
w050          flux          0         20     0.13     0.17      0.4      0.2
w050          smo           4         20     0.10     0.13      0.4      0.2
ramp0_50      flux          0        316     0.11     0.16      1.5      0.2
ramp0_50      smo          47        315     0.08     0.12      2.4      0.2
thru0         flux          0         20     0.99     1.17      4.1      5.5
thru0         smo           8         22     0.90     0.95    178.8      5.6
rs+30         flux        n/a        n/a   -22.48    22.48     24.1      1.0
rs+30         smo           8         22     0.07     0.24      0.7      0.5
rs-30         flux        n/a         20    13.53    13.53     14.1      0.4
rs-30         smo           8         22     0.07     0.19      0.6      0.4
ls+30         flux          0         20    -1.66     1.68      2.4      0.5
ls+30         smo          15         22    -1.80     1.81      2.5      0.4
ls-30         flux          0         20     2.09     2.11      2.8      0.5
ls-30         smo           8         22     1.93     1.94      2.5      0.4
lam-10        flux        n/a         20    12.77    12.77     13.4      0.4
lam-10        smo           8         22     0.07     0.22      0.6      0.4
vbus-10       flux        n/a        n/a   -29.49    29.50     31.9      1.7
vbus-10       smo           8         22    -0.65     0.68      1.4      0.4
dz_nodtc      flux          0         20     0.14     0.33      0.8      0.5
dz_nodtc      smo           8         22     0.07     0.22      0.6      0.4
dz_nodtc_vs1  flux        n/a        142    21.39    21.39     21.9      0.3
dz_nodtc_vs1  smo           8        n/a    -0.17     0.23      0.7      0.3
noise3        flux          0         20     0.63     1.10      2.7      1.5
noise3        smo           8         22     0.12     0.62      2.0      1.2
noise0        flux          0         20     0.05     0.05      0.0      0.0
noise0        smo           8         22     0.04     0.04      0.0      0.0
closed        flux          0         20     0.11     0.24      0.7      0.4
closed        smo           6         21     0.05     0.15      0.5      0.3
```

```
# emrax: vbus=400 V, rated w_e=6283 rad/s, bus-reachable w_e~4178 rad/s, min_speed=400
scenario      mode    lock_ms healthy_ms mean_deg  rms_deg  max_deg    w_rms
w002          flux          0        n/a     0.52     0.61      1.3      0.3
w002          smo          54        n/a    -0.07     1.71      5.6      2.9
w005          flux          0        n/a     0.04     0.36      1.1      0.5
w005          smo          18        n/a    -0.06     0.76      2.6      1.4
w010          flux          0         20     0.01     0.31      0.9      0.5
w010          smo           6         21    -0.03     0.40      1.2      0.7
w020          flux          0         20    -0.02     0.22      0.8      0.4
w020          smo           4         21    -0.04     0.22      0.7      0.4
w050          flux          0         20     0.03     0.13      0.5      0.3
w050          smo           1         20     0.02     0.12      0.4      0.2
ramp0_50      flux          0        220     0.03     0.20      2.5      0.4
ramp0_50      smo          97        220     0.02     0.18      4.0      0.3
thru0         flux          0         20     1.13     1.18      2.1     11.1
thru0         smo           5         21     1.57     1.64     44.8     11.1
rs+30         flux          0         20    -0.85     0.91      1.8      0.6
rs+30         smo           5         21    -0.01     0.32      1.1      0.6
rs-30         flux          0         20     0.90     0.95      2.0      0.6
rs-30         smo           5         21    -0.01     0.32      1.1      0.6
ls+30         flux          0         20    -3.89     3.90      4.8      0.6
ls+30         smo          14         21    -4.12     4.14      5.2      0.6
ls-30         flux        105         20     4.32     4.33      5.5      0.6
ls-30         smo           5         21     4.10     4.11      5.3      0.6
lam-10        flux        n/a         20     7.77     7.77      8.8      0.5
lam-10        smo           5         21    -0.01     0.32      1.1      0.6
vbus-10       flux        n/a         20    -9.10     9.11     10.2      0.7
vbus-10       smo           5         21    -1.54     1.58      2.6      0.6
dz_nodtc      flux          0         20     0.14     0.28      1.1      0.4
dz_nodtc      smo           5         21     0.10     0.28      1.3      0.5
dz_nodtc_vs1  flux        n/a        n/a    17.45    17.45     17.8      0.2
dz_nodtc_vs1  smo           5        n/a     0.47     0.49      0.9      0.3
noise3        flux          0         20     0.26     0.72      2.1      1.3
noise3        smo           5         21     0.03     0.73      2.2      1.4
noise0        flux          0         20     0.01     0.01      0.0      0.0
noise0        smo           5         21     0.01     0.01      0.0      0.0
closed        flux          0         20    -0.00     0.25      1.0      0.5
closed        smo           4         20    -0.01     0.24      0.9      0.5
```

```
# emrax: vbus=24 V, rated w_e=6283 rad/s, bus-reachable w_e~251 rad/s, min_speed=400
scenario      mode    lock_ms healthy_ms mean_deg  rms_deg  max_deg    w_rms
w002          flux          0        n/a     0.10     0.19      0.7      0.2
w002          smo          51        n/a    -0.02     0.31      1.3      0.5
ramp0_50      flux          0        n/a     0.07     0.14      0.8      0.2
ramp0_50      smo         554        n/a    -0.03     0.29     44.4      0.5
thru0         flux          0        n/a     1.33     1.33      1.7      0.7
thru0         smo         n/a        n/a   -11.85    43.38    178.7     55.6
rs+30         flux        n/a        n/a    -2.97    74.40    180.0     41.0
rs+30         smo         n/a        n/a    -3.49    20.21     40.3     36.5
rs-30         flux        n/a        n/a    31.36    31.36     32.0      0.3
rs-30         smo         n/a        n/a    -3.36    20.31     39.6     36.8
ls+30         flux          0        n/a    -1.51     1.52      3.5      0.2
ls+30         smo         n/a        n/a    -6.98    21.04     43.6     36.4
ls-30         flux          0        n/a     6.77     6.77      7.2      0.2
ls-30         smo         n/a        n/a     1.18    19.77     35.4     36.2
lam-10        flux        n/a        n/a    23.51    23.51     24.2      0.3
lam-10        smo         n/a        n/a    -2.91    20.45     40.4     36.8
vbus-10       flux        n/a        n/a    -1.84    74.71    179.9     41.2
vbus-10       smo         n/a        n/a    -5.00    20.44     41.3     36.4
dz_nodtc      flux          0        n/a     0.93     0.94      1.3      0.2
dz_nodtc      smo         n/a        n/a     5.30    39.02    180.0     59.3
dz_nodtc_vs1  flux        n/a        n/a    51.18    51.19     53.1      2.6
dz_nodtc_vs1  smo         n/a        n/a    -3.70    20.52     43.0     37.1
noise3        flux          0        n/a     3.42     3.45      4.8      0.6
noise3        smo         n/a        n/a    -4.35    20.47     41.5     36.7
noise0        flux          0        n/a     0.00     0.00      0.0      0.0
noise0        smo         n/a        n/a    -3.40    20.28     39.7     36.8
closed        flux          0        n/a     0.12     0.18      0.6      0.2
closed        smo         100        n/a    -0.13     0.53      5.1      0.8
```

## Bench procedure (Teknic/QEP first, then EMRAX/resolver at 24 V)

Precautions: `iq_max`/`vmax_frac` at the proven bench clamps, `module_faults_en=1` on EMRAX, unloaded
rotor, E-stop manned; on the 24 V bench every FAULT coasts. Sensorless needs the REAL bus: `vbus_ovr=0`,
`dtc_en=1`, `obs_vsrc=0`. The EMRAX at 24 V tops out near 250 elec rad/s (back-EMF = bus/2), below the
400 rad/s HV floor: `obs_min_speed=150` live, flux observer only, results bench-only.

1. `isr_cycles_max` baseline (record in CLAUDE.md), delta after enabling nothing else changes (both
   observers already run in shadow; expect +500–900 cycles of 20,000).
2. Shadow (`angle_src=0`): TORQUE mode at 3–4 speeds above the floor; scope `theta_elec, theta_est,
   theta_err, omega_elec, Iq` at decim 1 and 8. Pass: `theta_err` mean within ±0.1 rad, RMS < 0.05 (Teknic)
   / < 0.15 (resolver noise); `omega_est` within 2 %. Sweep `obs_mode` 0/1 × `obs_vsrc` 0/1/2 × `dtc_en`
   0/1 × `obs_rs` 0.7/1.0/1.3 → the bench half of the comparison; read `obs_dtheta`.
3. Floor: descend speed until `theta_err` RMS > 0.3 rad; set `obs_min_speed ≥ 1.3×` that (compare 5·Vdt/λ).
4. Forced hand-over: `angle_src=1` live at speed with `pos_trig_en=1`: the one-shot capture shows
   `theta_elec − theta_est` decaying linearly to 0 over 500 samples, Iq disturbance < 10 %, `angle_act=1`;
   `step_go` q-axis steps vs sensored; `angle_src=0` back, equally bumpless.
5. AUTO: `angle_src=2`, `pos_force_lost=1` at speed → `angle_act=1`, `pos_status=0x63`, `warn_code=1`, state
   stays RUN, `theta_err` stays small. Then physically: unplug encoder A/B under torque (the QEP detector
   needs |iq_ref| > 0.1 A and ~100 ms; the DISAGREE path catches a frozen encoder even at zero torque);
   resolver: pull one channel (0.5 ms). `pos_inj_err=1.0` → DISAGREE switch after 5 ms.
6. Loss while sensorless: torque 0, coast below the floor → `FAULT_SENSOR_LOSS`, `pos_status` has
   `LOST|BELOW_MIN_SPD`, `g_dbg_fault_asc=0`.
7. Sensor lost below the floor: `pos_force_lost=1` at low rpm → today's FAULT path,
   `pos_status = SENSOR_LOST|OBS_UNHEALTHY|BELOW_MIN_SPD`.
8. Speed mode only after re-tuning `kp_w` for crossover ≤ `obs_pll_bw`/4 (the loop now closes on the PLL).

## Build / verification notes

- Both configs compile-checked with `cl2000` (CGT 25.11.1.LTS, `--tmu_support=tmu0 --fp_mode=relaxed`)
  against C2000Ware 26.01 + MotorControl SDK 6.00 into the scratchpad; no errors, only the pre-existing
  volatile-qualifier / enum warnings. `observer.asm` shows `SINPUF32/COSPUF32` (4), `ATANPUF32/QUADF32` (8),
  `DIVF32` (4) and no RTS trig calls. The recipe is a bash script (the tool shell is zsh, which does not
  word-split); the real build must still go through CCS `buildProject`.
- Flash: `app_ebss.cmd` places `foc_current_loop_isr`, all `obs_*` and all `pos_src_*` functions in FLASHC
  (previously empty). After the first CCS build check the `.map`: FLASHC populated, `.cinit` fits in FLASHB.
- Toolchain: CCS 21.0.1 at `~/ti/ccs2101`; project path variables satisfied by symlinks under `~/ti/c2000/`
  (the 5.04 SDK name → the 6.00 install). Still owed through CCS (never by hand-editing project files):
  re-point the two path variables, fix the `.project` link for `board_control_v2.syscfg`, regenerate
  `board.c/h` with SysConfig 1.28.1 and diff them.

## Risks / open items

- Voltage alignment: CMPA shadow-loads at CTR=ZERO with the SOC there, so the duty written in ISR k−1 is
  applied over (k, k+1]; `s_obs_vhold` delays it one tick. Any residual misalignment shows as a
  speed-proportional `theta_err` bias in shadow mode (one tick = ω·Ts).
- The dead-zone model IS the low-speed floor (bias ∝ Vdt/(λω)); the flux observer also inherits any bus
  reading error one-for-one in angle at low speed.
- PLL bandwidth vs speed loop (above); SMO speed-sign ambiguity below the floor is by design → FAULT.
- EMRAX current-sense map (2 LEMs + KCL): run phase-ID before sensorless tests; a wrong map flips the
  observer direction. HV: re-verify the floor and `obs_smo_e0`.
- ISR budget unknown until measured; fallback if tight: run the non-selected observer every other tick.
