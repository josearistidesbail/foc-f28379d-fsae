# Bench captures for ICIT 2027 §VI-C (runbook, 2026-10-09)

Every capture is one GUI "Save last to CSV" (or CLI `scope file.csv`): `sample,<channels…>`,
128 samples, channels in catalog bit order. Put the files here with the names below, and
write one line per file in `LOG.md` (date, variant, bus V, speed, decim, params changed).
Then `python scripts/bench_stats.py data/bench/*.csv` from `paper/` prints the paper numbers.

Precautions (sensorless.md "Bench procedure"): real bus (`vbus_ovr=0`), `dtc_en=1`,
`obs_vsrc=0`, unloaded rotor, E-stop manned, `iq_max`/`vmax_frac` at the proven clamps.

Scope channel set for all captures (GUI tick these; mask 0x600F):
`Id, Iq, theta_elec, omega_elec, theta_est, theta_err`.
`theta_elec` is the commutation angle (supervisor output), `theta_est` the observer PLL angle,
`theta_err = wrap(theta_est − theta_sensor)`. The sensor angle is recovered as
`theta_est − theta_err`, the blend offset as `wrap(theta_elec − theta_est)`.

## A. Teknic M-2310P, 48 V, QEP (today)

| # | File | What | Settings |
|---|---|---|---|
| A1 | `LOG.md` only | ISR cost | `isr_cyc_rst=1`, run 10 s in TORQUE at ~1000 rad/s, read `isr_cycles_max`. Record it. (Baseline without observers is not available in this build; report the total of 20 000 budget.) |
| A2 | `teknic_shadow_flux_w{500,1000,1500}_d1.csv` | flux observer shadow | `angle_src=0`, `obs_mode=0`, TORQUE, steady speed, decim 1, free-run capture |
| A3 | `teknic_shadow_smo_w{500,1000,1500}_d1.csv` | SMO shadow | same, `obs_mode=1` |
| A4 | `teknic_handover_forced_d8.csv` | forced hand-over, blend | `angle_src=0`, `obs_mode=1` (or 0), `step_pre=16`, `pos_trig_en=1`, `config 8`, then write `angle_src=1` at ~1000 rad/s; wait 1 s; capture (buffer is frozen); `step_go=0` to release; `angle_src=0` |
| A5 | `teknic_handover_back_d8.csv` | hand-over back to sensor | same, trigger fires on `angle_src=0` |
| A6 | `teknic_auto_lost_d8.csv` | AUTO, forced loss (jump) | `angle_src=2`, `pos_trig_en=1`, `config 8`; write `pos_force_lost=1` at speed; capture; read `pos_status`, `warn_code`, `angle_act`; state must stay RUN |
| A7 | `teknic_auto_disagree_d8.csv` | AUTO, injected disagreement | new RUN cycle (fail-over is once per run), `angle_src=2`, `pos_trig_en=1`; write `pos_inj_err=1.0`; capture; read `pos_status` |
| A8 | `teknic_auto_unplug_d8.csv` | physical encoder unplug under torque | optional; `angle_src=2`, iq_ref > 0.1 A, pull A/B |

Decim 8 at 10 kHz gives a 102 ms window (16 pretrigger samples = 13 ms before the switch,
89 ms after), enough to see the whole 50 ms blend. Decim 1 is 12.8 ms, fine for steady shadow.

Also record once, in `LOG.md`: `obs_min_speed`, `obs_err_trip`, `obs_iq_max`, `obs_smo_kslide`,
`obs_smo_e0`, `obs_pll_bw`, `obs_gamma`, `iq_ref` used, `vbus` read.

## B. EMRAX 208, 24 V, v3.0 board, sin/cos (tomorrow, optional; angle and speed only)

`obs_min_speed=150`, `obs_mode=0` (SMO cannot reach its floor at 24 V), `id_ref=-20` for the
observer captures (the 24 V current-sense prediction in `data/sim/emrax24_isense.csv` says the flux
observer needs the injection). Never report Id/Iq from this rig.

| # | File | What | Settings |
|---|---|---|---|
| B1 | `emrax_shadow_flux_w{150,200,240}_id0_d1.csv` | flux shadow, no injection | `angle_src=0`, `id_ref=0`, decim 1 |
| B2 | `emrax_shadow_flux_w{150,200,240}_id-20_d1.csv` | flux shadow, injection | `id_ref=-20` |
| B3 | `emrax_auto_lost_d8.csv` | AUTO forced loss at ~220 rad/s | as A6, `id_ref=-20` |
| B4 | `emrax_auto_disagree_d8.csv` | AUTO injected disagreement | as A7 |
| B5 | `LOG.md` only | sin/cos loss detector | pull one sensor channel at speed above the floor with `angle_src=2`: expect fail-over; below the floor with `angle_src=0`: expect `FAULT_SENSOR_LOSS`, coast. Note what happened and the `pos_status` word. |
