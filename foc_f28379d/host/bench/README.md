# Bench scripts (FE_UFPR 4.0 + EMRAX 208 bring-up)

Small one-purpose scripts used during the 2026-11-06 bench session (bring-ups G–K in the
repo-root `CLAUDE.md`). They talk to the firmware over the same serial protocol as the GUI
(`foc_debug`), so **close the debug GUI first** — only one program can hold the port.

```
cd foc_f28379d/host
python -m venv .venv && source .venv/bin/activate      # fish: .venv/bin/activate.fish; Windows: .venv\Scripts\activate
pip install -r requirements.txt
cd bench
export FOC_PORT=/dev/ttyUSB1      # Linux: XDS100 interface B (ttyUSB0 if CCS holds interface A); Windows: set FOC_PORT=COM5
python status.py --clear          # every power-up boots into FAULT 0x11 -> clear (sometimes twice)
```

Results also go to `bench/out/*.json` (gitignored; `FOC_BENCH_OUT` overrides).
Every script restores the parameters it changes, including on Ctrl-C or a fault
(`_common.restore`). If a restore is refused (a param that needs IDLE while the board is in
FAULT) it prints what was NOT restored: clear the fault and fix it by hand.

| script | moves the motor? | what for |
|---|---|---|
| `status.py [--clear] [names]` | no | read params; `--clear` sends clearfault first |
| `noise.py [ncap] [tag]` | no (IDLE) | ADC noise per channel, cross-correlation, Iα/Iβ (bring-up G) |
| `calibrate.py [8,5,3]` | **yes, ~33 s each** | ALIGN at given `align_id_a`; offset, load angle, I·sin δ (bring-up K) |
| `run_noise.py [ncap] [iq]` | energized, holds still at iq 0 | closed-loop Id/Iq/Vd/Vq noise and clamp margin |
| `id_steps.py [levels] [kp] [dtc_v]` | energized, should not turn | λ-free dead-time null (Vd − Rs·Id) + current-loop steps (H/J) |
| `dtc_sweep.py vmax iq points` | **spins ~100 rpm** | dead-time comp A/B while voltage-clamped (its "leftover" assumes λ!) |
| `vmax_steps.py [iq] [steps]` | **spins** | clamp-limited speed per `vmax_frac` |
| `speed_step.py [kp_w] [ki_w] [refs] [mode]` | **spins** | speed-loop ramp steps (bring-up I) |
| `lambda_fit.py [speeds]` | **spins ≤ ~100 rpm** | PM flux linkage from the Vq-vs-ω slope. **Not run yet.** |

Calibration lives in RAM: after every power-up or reflash, run `calibrate.py` (or the GUI's
calibrate) before RUN. Speeds are **electrical** rad/s (10 pole pairs: 30 ≈ 29 rpm).
Phase current ≠ supply current: at standstill 20 A of phase current drew ~1 A from the 31 V
supply (the inverter is a buck converter; DC power ≈ 1.5·Vd·Id).
