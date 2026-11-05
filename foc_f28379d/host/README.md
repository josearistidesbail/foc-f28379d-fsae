# foc_debug — PC tools for the F28379D FOC firmware

The Python side of the debug link between the PC and the motor controller: a GUI (the **"UFPR Formula
– Inverter Manager"**), a command-line tool, a small library, and the bench scripts in [`bench/`](bench/).
It talks the framed serial protocol defined in `../include/debug_proto.h` (mirrored in `proto.py`) over
the LaunchPad's XDS100v2 USB serial backchannel (SCI-A, GPIO43/42, **115200 baud, 8N1**).

New to the project? Start with the [root README](../../README.md); it covers setup, flashing and a
first bench session. This file is the reference for the tools.

## Install

```bash
cd foc_f28379d/host
python -m venv .venv
source .venv/bin/activate          # fish: source .venv/bin/activate.fish · Windows: .venv\Scripts\activate
pip install -r requirements.txt
```

Python 3.10+. `pyserial` is needed for everything; `numpy`, `pyqtgraph` and `PySide6` power the GUI and
the live viewer. The text CLI (including `scope --csv`) works with `pyserial` alone.

## Find the port

The LaunchPad's XDS100 shows up as an FT2232 with two interfaces. The first is JTAG; the **second** is
the firmware's serial link:

- **Linux:** usually `/dev/ttyUSB1`, but it can be `/dev/ttyUSB0` while CCS holds the JTAG interface.
  You need to be in the `uucp` (Arch) or `dialout` (Debian/Ubuntu) group.
- **Windows:** the second of the two XDS100 COM ports.

```bash
python -m foc_debug --list-ports
```

**Only one program can hold the port**: the GUI, a bench script, the CLI or a CCS serial terminal.
Close one before starting another.

## GUI

```bash
python -m foc_debug
```

The window opens even with no board connected.

**Connection bar.** Port list (pre-selects the likely backchannel; **↻ Ports** rescans; **All** also
lists the JTAG channel and motherboard ports), **Connect**, **Ping** (round-trip latency).

**State machine box.**
- The live state, with the decoded fault reason when in `FAULT` (e.g. `FAULT — OVERCURRENT |
  GATE_DRIVER`), and an amber `SENSORLESS (…)` banner if the drive has failed over to the observer.
- **Run** — `CALIBRATE_OFFSETS → ALIGN_ROTOR` (first time after power-up only) `→ RUN`.
- **Calibrate** — `CALIBRATE_OFFSETS → ALIGN_ROTOR → IDLE`. The motor turns for ~33 s on the EMRAX.
- **Stop** returns to IDLE; **Clear fault** is the only way out of FAULT.
- **Mode:** **Torque** (setpoint in N·m, converted to Iq with Kt = 1.5·pole pairs·flux) or **Speed**
  (setpoint in shaft rpm; the firmware works in electrical rad/s and the GUI converts with the pole
  pairs reported by the board). The **%** box switches the setpoint to % of peak torque / rated rpm.
  **Apply** writes the setpoint. Switching mode while running is bumpless.
- Read-outs: **Measured** rpm and **Vbus** (the measured bus voltage).

**Parameter tabs.**
- **References**, **Gains** (with a box that sets the d and q current-loop gains together), **Config**
  (current-sensor map and phase-ID), **Sensorless**, and **Advanced** (every parameter).
- Double-click a writable value, type, press **Enter**. The write status (`ok`, `needs_idle`, …) shows
  in the row; read-only rows aren't editable.
- **Hover a row** (ⓘ on the name) for what the parameter does, its units, limits and boot value.
- **Ctrl+F** jumps to the filter box, which hides non-matching rows on every tab.
- **Auto-refresh values** polls the values live; **Refresh values** does it once.

**Motor tab.** Motor and loop constants read from the board on connect (R, L, flux, pole pairs,
current limit, bus…). The autotuner uses them. Editing them only overrides them inside the GUI (the
firmware isn't changed); **Reset to device values** drops your edits.

**Autotune tab.** Selecting it hands the right-hand pane to a step-response panel.
- *Current loop:* model-based gains for a target bandwidth.
- *Speed loop:* symmetric-optimum gains from the inertia J (or a measured Km).
- *Field weakening:* an estimate only.
- *Manual gains:* type your own values.
- **Apply + Verify** runs a step on the board. The panel shows the response (Id, Iq, Vd, Vq, phase
  currents, bus) with rise/settle/overshoot metrics. Two diagnostics explain a missed step:
  - the peak |Vdq| as a fraction of vbus/2; near `vmax_frac` means the loop ran out of voltage;
  - the smallest mean phase current, with the phase named; near zero means that phase sat inside the
    dead-time-compensation ramp and got almost no compensation.
- Every step is logged automatically to `step_logs/steps_<stamp>.csv` (samples) and
  `steps_<stamp>_summary.csv` (one row per step, with the gains and conditions in force). **Open log
  folder** opens the folder.

**Scope pane.**
- Tick the signals to plot, then **Start scope**. **Clear** empties the history; **Save last to CSV…**
  saves the most recent capture.
- Controls: **decim** (record every Nth 10 kHz sample), **interval ms** (how often a capture is
  fetched) and **history** (how many samples the plot keeps).
- Each capture is **128 consecutive samples**, spanning 12.8 ms × decim. The plot strings captures
  together, so its x-axis is a sample count, not time, and there are gaps between captures.
- Raise decim to see a slow waveform in one capture. Use decim 1 to study noise: decimation skips
  samples without filtering them, so noise above the new sampling rate folds down to lower
  frequencies.

**File menu.** **Save Parameters…** writes every parameter to JSON; **Load Parameters…** writes them
back (read-only entries are skipped; load in IDLE so `needs_idle` ones are accepted).

**Language / Idioma menu.** English or Português (Brasil). The choice is saved
(`~/.config/UFPR Formula/foc_debug.conf` on Linux, the registry on Windows) and applies the next
time the GUI starts; **Restart now** relaunches it at once, and is only enabled while disconnected.
`python -m foc_debug --lang pt` (or `en`) overrides the saved choice for one run. On first start the
system locale decides. Firmware names stay English in both languages (states, fault bits, parameter
and signal names), so a Portuguese screen still matches the docs and the CSV logs.

To add or change GUI text: wrap the English string in `tr()` (from `foc_debug/i18n.py`; use
`tr("saved {path}", path=p)`, never an f-string) and add its Portuguese to `foc_debug/i18n_pt.py`.
`test_i18n.py` lists anything missing, stale, or passed to a Qt widget without `tr()`.

### Scope signals

The 15 signals in `proto.SCOPE_CATALOG` (mirrors `SCOPE_BIT_*` in `debug_proto.h`):

| Signal | Unit | Meaning |
|---|---|---|
| `Id`, `Iq` | A | measured d/q currents |
| `theta_elec` | rad | electrical angle used for commutation |
| `omega_elec` | elec rad/s | speed estimate (the one selected by `res_w_mode` on the resolver) |
| `Vd`, `Vq` | V | current-PI outputs |
| `Iu`, `Iv`, `Iw` | A | phase currents |
| `res_sin`, `res_cos` | ADC codes | raw encoder SIN/COS (RM44AC builds; 0 otherwise) |
| `res_w_lpf` | elec rad/s | the legacy speed estimator, for A/B against `omega_elec` (RM44AC builds) |
| `vbus` | V | measured DC-bus voltage |
| `theta_est` | rad | sensorless observer angle |
| `theta_err` | rad | observer minus sensor angle, wrapped |

## Parameters

The firmware describes its own parameter table: `list` (CLI) prints every parameter with its type,
flags and value, and the GUI shows the same with a tooltip per row. The tooltip texts live in
`foc_debug/param_docs.py`, with the Portuguese version in `foc_debug/param_docs_pt.py`;
`test_param_docs.py` fails if a firmware parameter is missing from either.

Flags: `ro` read-only, `rw` writable any time, `needs_idle` accepted only while the state machine is
in IDLE (the write returns status `needs_idle` otherwise). The ones you meet first:

| Name | What it is |
|---|---|
| `state`, `fault_code`, `warn_code` | state-machine state, latched fault bits, warning bits |
| `control_mode` | 0 torque, 1 speed |
| `iq_ref`, `omega_ref` | torque-current [A] and speed [elec rad/s] setpoints |
| `iq_max` | clamp on the commanded current [A] |
| `vmax_frac` | fraction of the bus the current loop may use (bench voltage limit) |
| `kp_d ki_d kp_q ki_q kp_w ki_w` | current- and speed-loop PI gains (`needs_idle`) |
| `align_id_a` | current used during Calibrate [A] (`needs_idle`) |
| `vbus_ovr` | bus voltage the control assumes when > 0 (bench; **must equal the real supply**) |
| `vbus` | measured bus voltage [V] |
| `phase_id_status`, `cal_status`, `align_offset` | Calibrate results (see the root README, first session) |
| `dtc_en` | dead-time compensation on/off |
| `angle_src` | 0 sensor, 1 sensorless observer, 2 automatic fail-over |

## Text CLI

For scripting or a headless machine. One-shot commands auto-connect, run and exit; `repl` gives an
interactive prompt that connects lazily (`connect`, `ports`, `disconnect` are prompt commands).

```bash
# one-shot
python -m foc_debug ping                      # latency / link check
python -m foc_debug list                      # every param with its value
python -m foc_debug read iq_ref
python -m foc_debug write iq_ref 0.5
python -m foc_debug read isr_count            # run twice ~1 s apart: +~10000
python -m foc_debug scope --csv cap.csv       # single capture -> CSV
python -m foc_debug run                       # state-machine RUN request
python -m foc_debug stop
python -m foc_debug clearfault
python -m foc_debug state

# interactive REPL (lazy connect — no flags needed)
python -m foc_debug repl
foc> ports
foc> connect /dev/ttyUSB1
foc> ping
foc> list
foc> write kp_q 0.6      # rejected (needs_idle) unless state == IDLE
foc> stop
foc> write kp_q 0.6      # ok
foc> scope cap.csv
foc> run
foc> quit
```

`--port` / `--baud` / `--timeout` are global options and must come **before** the command, e.g.
`python -m foc_debug -p /dev/ttyUSB1 read iq_ref`.

## Bus-voltage calibration (`vbuscal`)

Fits the DC-bus sense (`vbus = (code − vbus_off) × vbus_ratio × 3.0 / 4096`) from a few metered
points:

```bash
python -m foc_debug -p /dev/ttyUSB1 vbuscal          # interactive: type the metered volts per point,
                                                     # blank line ends; prints the fit + #defines
python -m foc_debug -p /dev/ttyUSB1 vbuscal --apply  # also write vbus_ratio / vbus_off live
python -m foc_debug vbuscal --fit 6.1:31,50.2:148    # offline fit of VOLTS:CODE pairs, no hardware
```

Take the points with the motor IDLE, spread as wide as the supply allows, in a non-monotonic order
with one repeat (e.g. 40, 150, 20, 90, 65, 40 V). The reasoning (range beats point count, low codes
are unreliable, never fit a quadratic) is in the "DC-bus AFFINE calibration" notes in the root
`CLAUDE.md`.

## Live viewer

```bash
python -m foc_debug.viewer --port /dev/ttyUSB1 --interval 200
```

A minimal plot window, refreshed on a timer, of whatever signals the firmware is streaming (the default
mask is `Id, Iq, theta_elec, omega_elec`). The GUI's scope pane does everything this does and more.

## Logging / troubleshooting

The GUI and CLI print errors and important events to the console (stderr), so a failing link is
visible without watching the GUI status bar. Add `-v` for per-transaction detail (retries,
dropped/oversized frames, skipped stale frames):

```bash
python -m foc_debug -v                       # verbose GUI
python -m foc_debug -v scope --csv cap.csv
FOC_DEBUG_LOG=debug python -m foc_debug      # env override (debug/info/warning/error)
```

If a scope capture is rejected on the wire, the log shows the exact reason (e.g. `frame LEN … exceeds
max …`). Copy that line when reporting an issue.

## Tests

Stdlib `unittest`, no hardware needed:

```bash
cd foc_f28379d/host
python -m unittest discover -s foc_debug -t .
python -m unittest foc_debug.test_proto_scope     # one module
```

They cover the protocol, link, API status decoding, autotuner math, step logger, `vbuscal` fit,
parameter docs, the English/Portuguese catalog and `observer_sim.py`. That last one is the offline simulation the sensorless observer
defaults come from; see `../docs/sensorless.md`.

## Library use

```python
from foc_debug import SerialLink, FocDebug
with SerialLink("/dev/ttyUSB1") as link:
    dbg = FocDebug(link)
    print(dbg.ping_latency())
    for p in dbg.list_params():
        print(p.name, dbg.read_param(p.id))
    dbg.write_param("iq_max", 5.0)
    print(dbg.state_name(dbg.sm_state()))
    cap = dbg.capture_scope()      # cap.data[ch][sample]
```

`bench/_common.py` wraps this with a `connect()` that reads `FOC_PORT`, and with `restore()`, which
puts every parameter a script touched back the way it was, even on Ctrl-C or a fault. Use it for new
bench scripts.

## Protocol summary

Frame: `AA 55 LEN_LO LEN_HI CMD SEQ <payload> CRC_LO CRC_HI`, all multi-byte fields little-endian.
CRC16-CCITT (poly `0x1021`, init `0xFFFF`) over `CMD + SEQ + payload`. The MCU echoes `SEQ`. See
`proto.py` (mirrors `debug_proto.h`); the original design is `../docs/debug_iface_plan_v1.md`
(historical).
