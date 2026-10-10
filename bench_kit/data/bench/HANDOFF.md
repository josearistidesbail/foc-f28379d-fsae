# Bench capture handoff (for the session on the bench computer)

Written 2026-10-09 for the ICIT 2027 paper *Bumpless Sensored-to-Sensorless Fail-Over and Layered
Protection for a Formula SAE PMSM Traction Inverter* (Jose, UFPR Formula SAE). The paper is due
12 Oct 2026. Its §VI-C currently says the observers and the supervisor "had not run on hardware at the
time of writing". The job of this session is to produce the bench captures that let the paper replace
that sentence with measured numbers. Nothing else: do not tune gains, do not edit firmware, do not
write paper text here.

Jose is the operator. They flash the board, arm the rig, hold the E-stop, pull cables. This session
runs the capture commands one at a time and reports each result. Never start the motor without Jose
saying the rig is armed and clear. If anything looks wrong (fault, unexpected speed, odd numbers),
stop and ask before continuing.

## 1. The kit

Four files, from the paper repo (`Artigo/paper/`):

| File | Purpose |
|---|---|
| `scripts/bench_capture.py` | drives the captures over the firmware's serial debug link (uses the firmware's own `foc_debug` package) |
| `scripts/bench_stats.py` | prints the paper numbers from the CSVs |
| `data/bench/README.md` | the capture list with file names and settings |
| `data/bench/HANDOFF.md` | this file |

Put the two scripts in one directory and run them from there, with an output directory for the CSVs
(`--out` in the examples below is `./bench`). All outputs go back to Jose's main machine at
`Artigo/paper/data/bench/`.

## 2. Setup on this computer

1. Firmware repo location: find the directory that contains `foc_debug/` (it is `host/` inside
   `foc_f28379d/`), and export it:
   ```
   export FOC_HOST=/path/to/foc-f28379d-fsae/foc_f28379d/host
   ```
   Check with `ls $FOC_HOST/foc_debug/api.py`.
2. Python with pyserial. The GUI already runs here, so use the same interpreter or venv the GUI uses.
   Verify: `python -c "import serial; print(serial.__version__)"`.
3. Serial port: the LaunchPad/XDS probe appears as `/dev/ttyUSB*` (Linux) or a COM port. The script
   auto-detects an XDS100/XDS110/FTDI probe; otherwise pass `--port`. On Linux the user must be able
   to open the port (group `uucp` on Arch, `dialout` on Debian/Ubuntu).
4. **Close the foc_debug GUI** before running any command. One client on the port at a time.
5. Firmware build: the flashed image must include the sensorless step (`src/observer.c`,
   `src/pos_src.c`). Jose builds it in CCS. If `status` fails with `unknown parameter 'angle_src'`,
   the wrong image is flashed; stop and tell Jose.

Smoke test (read-only, motor stays off):
```
python bench_capture.py --out ./bench status
```
Expected: `connected on <port>, ISR 10000 Hz, state IDLE`, then a parameter dump. Check in the dump:
`vbus_ovr 0.0`, `dtc_en 1`, `obs_vsrc 0`, `angle_src 0`, `fault_code 0x0000`, `vbus` close to the
real bus (about 48 V on the Teknic rig, 24 V on the EMRAX rig). If `vbus_ovr`, `dtc_en` or `obs_vsrc`
are wrong the other commands refuse to run; Jose fixes them in the GUI, or with the firmware CLI:
```
python -m foc_debug --port <port> write vbus_ovr 0
```

## 3. How the capture script behaves

- Each command connects, does one thing, then always ramps the speed to zero, STOPs, clears the bench
  aids (`pos_force_lost`, `pos_inj_err`, `pos_trig_en`, `angle_src` back to 0) and releases the scope,
  including on error or Ctrl-C. A latched FAULT is left latched so it can be read; clear it with
  `status --clear`.
- Speed is reached in SPEED mode on the sensor. Before a hand-over the script switches to TORQUE mode
  live (the firmware holds the applied iq, so the speed stays), so the speed loop is never closed on
  the observer's PLL.
- Each run request may pass through calibration and a rotor-alignment sweep first (a few seconds of
  slow rotation). That is normal.
- One hand-over per RUN cycle is the firmware rule; each command is its own RUN cycle, so that is
  automatic.
- Every capture is 128 samples. `--decim 1` is a 12.8 ms window (steady shadow), `--decim 8` a 102 ms
  window with 16 pretrigger samples (hand-overs; the blend lasts 50 ms).
- Every capture writes `<bench>_<kind>_..._d<decim>.csv` plus one line in `bench/LOG.md` containing the
  status words and every observer parameter at that moment. Keep LOG.md; it is the provenance.

## 4. Teknic M-2310P at 48 V (quadrature encoder) — the priority

Speeds are electrical rad/s (4 pole pairs: 1000 rad/s elec = 2390 rpm). The observer floor on this
build is `obs_min_speed`, 300 rad/s by default; stay above 500. Run these in order, one at a time,
and paste each command's output to Jose.

```
# A1  ISR cost (both observers always run in shadow; the number is the whole ISR)
python bench_capture.py --out ./bench isr --w 1000 --secs 10

# A2  flux observer in shadow, three speeds
python bench_capture.py --out ./bench shadow --w 500  --obs flux
python bench_capture.py --out ./bench shadow --w 1000 --obs flux
python bench_capture.py --out ./bench shadow --w 1500 --obs flux

# A3  SMO in shadow, same speeds
python bench_capture.py --out ./bench shadow --w 500  --obs smo
python bench_capture.py --out ./bench shadow --w 1000 --obs smo
python bench_capture.py --out ./bench shadow --w 1500 --obs smo

# A4  forced hand-over to the observer (blended), and A5 back to the sensor
python bench_capture.py --out ./bench handover --kind forced --w 1000 --obs smo
python bench_capture.py --out ./bench handover --kind back   --w 1000 --obs smo

# A6  AUTO mode, forced sensor loss (jump, no blend)
python bench_capture.py --out ./bench handover --kind lost --w 1000 --obs smo

# A7  AUTO mode, injected 1 rad sensor error (disagreement path, 5 ms debounce then blend)
python bench_capture.py --out ./bench handover --kind disagree --w 1000 --obs smo

# A8  optional: physical encoder unplug under torque. The script holds speed with the trigger armed
#     and waits up to 60 s; Jose pulls the encoder A/B when told. Needs iq above 0.1 A for the
#     QEP detector; the disagreement path catches it anyway.
python bench_capture.py --out ./bench hold --w 1000 --src auto --obs smo --secs 60
```

What "good" looks like (from the firmware's own bench notes and the paper's simulation):

| Capture | Pass |
|---|---|
| isr | `isr_cycles_max` well under the 20 000 budget; record the number |
| shadow | `theta_err` mean within ±6° (0.1 rad), RMS under 3° (0.05 rad), `obs_healthy 1` in the LOG line |
| forced / back | `angle_act` 1 after forced, 0 after back; state RUN; the blend offset decays linearly to zero in about 50 ms; Iq disturbance under 10 % |
| lost | `angle_act 1`, `pos_status 0x0063`, `warn_code 0x0001`, state RUN, `theta_err` small |
| disagree | `angle_act 1`, state RUN, hand-over fires after about 5 ms |

If the flux observer is unhealthy at 500 rad/s (the script says "observer not healthy"), repeat at
1000 and note it. If a hand-over command reports FAULT, read the words it prints, run
`status --clear`, and ask Jose before retrying. Do not raise `iq_max`, `obs_iq_max` or `vmax_frac`.

## 5. EMRAX 208 at 24 V on the v3.0 board (optional, tomorrow)

Rules: the v3.0 current sensing is unreliable, so only angle and speed quantities count. Never
report Id or Iq from this rig. The EMRAX at 24 V tops out near 250 rad/s electrical, below the SMO
floor, so only the flux observer is used and `obs_min_speed` must be lowered to 150 first (GUI, or
`python -m foc_debug --port <port> write obs_min_speed 150`). The flux observer needs d-axis
injection here (the paper predicts 12° error without it and 0.3° with −20 A), which the script
applies through the firmware step injector with `--id -20`.

```
# B1  flux shadow without injection, three speeds
python bench_capture.py --bench emrax --out ./bench shadow --w 150 --obs flux
python bench_capture.py --bench emrax --out ./bench shadow --w 200 --obs flux
python bench_capture.py --bench emrax --out ./bench shadow --w 240 --obs flux
# B2  same with −20 A d-axis injection
python bench_capture.py --bench emrax --out ./bench shadow --w 150 --obs flux --id -20
python bench_capture.py --bench emrax --out ./bench shadow --w 200 --obs flux --id -20
python bench_capture.py --bench emrax --out ./bench shadow --w 240 --obs flux --id -20
# B3/B4  hand-overs with injection, flux observer
python bench_capture.py --bench emrax --out ./bench handover --kind lost     --w 220 --obs flux --id -20
python bench_capture.py --bench emrax --out ./bench handover --kind disagree --w 220 --obs flux --id -20
# B5  sin/cos loss detector, physical: pull one sensor channel while the script holds speed.
#     Above the floor in AUTO: expect a hand-over. Then below the floor (w 100) with --src sensor:
#     expect FAULT (sensor-loss safe state); the script records the fault word.
python bench_capture.py --bench emrax --out ./bench hold --w 220 --src auto   --obs flux --id -20 --secs 60
python bench_capture.py --bench emrax --out ./bench hold --w 100 --src sensor --obs flux --id -20 --secs 60
```

## 6. After the captures

Run the stats over everything and paste the output to Jose:
```
python bench_stats.py ./bench/*.csv
```
Then send the whole `./bench/` directory (CSVs + LOG.md) back to Jose's main machine, into
`Artigo/paper/data/bench/`. The paper session there folds the numbers into §VI-C.

Report at the end, in plain words: which captures succeeded, which failed and why, the ISR number,
the observer parameters that were in force, and anything Jose changed in the GUI during the session.
