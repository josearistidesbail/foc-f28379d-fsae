# foc_debug — host tooling for the F28379D FOC debug serial link

Python host side of the PC↔MCU debug interface (see
`../docs/debug_iface_plan_v1.md`). Talks the framed serial protocol defined in
`../include/debug_proto.h` over the LaunchPad's XDS100v2 backchannel UART
(SCI-A, GPIO43/42, **115200 baud, 8N1**).

## Install

```bash
cd host
python -m venv .venv && source .venv/bin/activate   # optional
pip install -r requirements.txt
```

`pyserial` is required for everything; `numpy`, `pyqtgraph`, and `PySide6` power
the GUI and live viewer. The text CLI's `scope --csv` works with `pyserial` alone.

## GUI (default — no flags, no typed commands)

```bash
python -m foc_debug
```

This opens the control panel. Everything is point-and-click:

- **Port** dropdown + **Connect** (auto-detect pre-selects the likely backchannel;
  hit **↻ Ports** to rescan). No `--port` flag needed.
- **State machine** row: live state label + **Run** / **Stop** / **Clear fault**.
- **Parameters** table: every param with its value. Double-click a writable value,
  type, press **Enter** to write — the status (`ok` / `needs_idle` / …) shows in the
  row. Read-only rows aren't editable. **Auto-refresh values** polls them live.
- **Scope** panel: **Start scope** streams the four channels into live plots; set
  **decim** and **interval**, and **Save last to CSV…**.
- **Ping** button shows round-trip latency.

The board must be flashed and connected for Connect to succeed; until then you can
still open the window, list ports, etc.

## Find the port (if you need it)

The LaunchPad enumerates an FT2232 with two interfaces; the **second** is the
SCI backchannel (e.g. `/dev/ttyUSB1` on Linux, a higher `COMx` on Windows).

```bash
python -m foc_debug --list-ports
```

If auto-detect picks the wrong one in the GUI, choose it from the dropdown; for
the CLI, pass `--port`.

## Logging / troubleshooting

Both the GUI and CLI print errors and important events to the console (stderr),
so a failing link is visible without watching the GUI status bar. Add `-v` for
per-transaction DEBUG detail (retries, dropped/oversized frames, skipped stale
frames):

```bash
python -m foc_debug -v                 # verbose GUI
python -m foc_debug -v scope --csv cap.csv
FOC_DEBUG_LOG=debug python -m foc_debug   # env override (debug/info/warning/error)
```

If a scope capture is being rejected on the wire, the log shows the exact reason
(e.g. `frame LEN … exceeds max …`). Copy that line when reporting an issue.

## Text CLI (optional)

For scripting or a headless box. One-shot commands auto-connect, run, and exit;
`repl` gives an interactive prompt that connects lazily (`connect`, `ports`,
`disconnect` are prompt commands).

```bash
# one-shot
python -m foc_debug ping                      # latency / link check
python -m foc_debug list                       # enumerate the param table + values
python -m foc_debug read iq_ref
python -m foc_debug write iq_ref 0.5
python -m foc_debug read isr_count             # run twice ~1 s apart: +~10000
python -m foc_debug scope --csv cap.csv        # single capture -> CSV
python -m foc_debug run                         # state-machine RUN request
python -m foc_debug stop
python -m foc_debug state

# interactive REPL (lazy connect — no flags needed)
python -m foc_debug repl
foc> ports
foc> connect /dev/ttyUSB1
foc> ping
foc> list
foc> write kp_q 5.0      # rejected (needs_idle) unless state == IDLE
foc> stop
foc> write kp_q 5.0      # ok
foc> scope cap.csv
foc> run
foc> quit
```

Note: `--port` / `--baud` / `--timeout` are global options and must precede the
command, e.g. `python -m foc_debug -p /dev/ttyUSB1 read iq_ref`.

## Live viewer

```bash
python -m foc_debug.viewer --port /dev/ttyUSB1 --interval 200
```

Plots the four scope channels (`Id, Iq, theta_elec, omega_elec`) refreshed on a
timer. Spin the encoder by hand in IDLE to see `theta_elec` ramp.

## Parameters (v1)

| name        | type | flags        | notes                                   |
|-------------|------|--------------|-----------------------------------------|
| `id_ref`    | f32  | rw           | d-axis current ref (forced in RUN/ALIGN)|
| `iq_ref`    | f32  | rw           | live torque command (`g_dbg_iq_ref`)    |
| `omega_ref` | f32  | rw           | speed ref (`refs.speed_ref`)            |
| `kp_d ki_d kp_q ki_q kp_w ki_w` | f32 | needs_idle | PI gains; writes only when state==IDLE |
| `state`     | u16  | ro           | FOC state-machine state                 |
| `isr_count` | u32  | ro           | 10 kHz ISR counter                      |

`needs_idle` writes return status `needs_idle` unless the state machine is in
`IDLE`. Single-value refs may be written live.

## Library use

```python
from foc_debug import SerialLink, FocDebug
with SerialLink("/dev/ttyUSB1") as link:
    dbg = FocDebug(link)
    print(dbg.ping_latency())
    for p in dbg.list_params():
        print(p.name, dbg.read_param(p.id))
    cap = dbg.capture_scope()      # cap.data[ch][sample]
```

## Protocol summary

Frame: `AA 55 LEN_LO LEN_HI CMD SEQ <payload> CRC_LO CRC_HI`, all multi-byte
fields little-endian. CRC16-CCITT (poly `0x1021`, init `0xFFFF`) over
`CMD + SEQ + payload`. The MCU echoes `SEQ`. See `proto.py` (mirrors
`debug_proto.h`).
