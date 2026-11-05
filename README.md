# FOC inverter firmware — TMS320F28379D (UFPR Formula SAE)

Field-oriented control (FOC) firmware for the team's electric drive, plus the PC tools used to run,
tune and debug it.

- **The car / production setup:** a TI **LAUNCHXL-F28379D** LaunchPad (CPU1 only) on the team's
  **FE_UFPR 4.0** inverter board, driving an Infineon **PrimeSTACK 6PS04512E43W39693** power module and
  an **EMRAX 208** motor, with an **RM44AC** sin/cos magnetic encoder for rotor angle and **LEM LA 100-P**
  current sensors.
- **The desk setup:** the same LaunchPad with a **BOOSTXL-DRV8305** BoosterPack and a small **Teknic
  M-2310P** motor with a quadrature encoder. It's low-power and quick to set up, so use it to learn the
  code and test changes.
- **The PC side:** a Python GUI, the **"UFPR Formula – Inverter Manager"** (`python -m foc_debug`). It
  talks to the running firmware over USB: start/stop the motor, read and write every parameter live,
  watch a 10 kHz oscilloscope of internal signals, and autotune the control loops.

**Where things stand:** on the low-voltage bench (31 V, current-limited supply), the FE_UFPR 4.0 +
EMRAX setup calibrates itself and runs closed-loop in torque and speed mode. Nothing has run on the
high-voltage pack yet. The current to-do list is the "NEXT SESSION — START HERE" section of
[`CLAUDE.md`](CLAUDE.md).

> ⚠️ **Safety — read before powering anything.**
> - The car's battery pack is **400 V-class**. All work so far runs on a **low-voltage,
>   current-limited bench supply**. Don't connect the HV pack until
>   [`production_bringup.md`](foc_f28379d/docs/production_bringup.md) says the low-voltage steps pass.
> - **The motor turns on its own during Calibrate** (~33 s, about 13 revolutions). Keep hands, cables
>   and tools clear of the rotor.
> - The bus-voltage measurement isn't calibrated yet, so the bench firmware doesn't control from it.
>   It uses the `vbus_ovr` parameter instead (31 V by default). **`vbus_ovr` must equal your real
>   supply voltage** whenever the motor runs. If it doesn't, every voltage the controller commands is
>   off by the ratio of the two.
> - `BENCH_NO_POWER_STAGE` in `hw_control_v2.h` turns hardware protection off for bench tests. It
>   **must be 0** whenever the power module is connected.
> - Loaded tests need a brake on the rotor (10 A of torque current ≈ 6 N·m). Never hold it by hand.
> - Don't plug or unplug the encoder cable with the board powered: it knocks the debug probe off USB.

---

## Contents

1. [Repository map](#1-repository-map)
2. [How the firmware works](#2-how-the-firmware-works)
3. [Build variants](#3-build-variants)
4. [Setup: tools, build, flash](#4-setup-tools-build-flash)
5. [Your first session on the bench](#5-your-first-session-on-the-bench)
6. [The GUI](#6-the-gui)
7. [Command line and bench scripts](#7-command-line-and-bench-scripts)
8. [Common tasks](#8-common-tasks)
9. [Troubleshooting](#9-troubleshooting)
10. [Further reading](#10-further-reading)
11. [Glossary](#11-glossary)
12. [Working with Claude Code (optional)](#12-working-with-claude-code-optional)

---

## 1. Repository map

```
foc-f28379d-fsae/
├── README.md                  ← you are here
├── CLAUDE.md                  engineering log: bring-up history, every debug variable, pitfalls, next steps
├── bench_kit/, *.tar.gz       archived scripts, notes and data from the 2026-10-09 sensorless tests (reference only)
└── foc_f28379d/               the Code Composer Studio project — import THIS folder
    ├── src/                   firmware sources (.c)
    ├── include/               headers; build_config.h selects the hardware variant
    ├── config/
    │   ├── hw/                board: pins, ADC channels, current/voltage scaling, bench switches
    │   ├── motor/             motor: resistance, inductance, flux, pole pairs, trip limits
    │   ├── sensor/            angle sensor: encoder counts, resolver filters and loss thresholds
    │   └── gains/             control-loop gains and other boot-time defaults
    ├── syscfg/                SysConfig peripheral/pin setup, one file per board
    ├── ti_lib/, libraries/    TI MotorControl SDK math (Clarke, Park, PI, SVGEN)
    ├── src_device/            TI device startup files, linked from C2000Ware
    ├── app_ebss.cmd           linker placement (flash is nearly full, see §8)
    ├── targetConfigs/         debug-probe configuration (XDS100v2)
    ├── imported/              cleaned-up MathWorks reference examples; NOT built, reading only
    ├── docs/                  design notes and bring-up documents (§10)
    └── host/                  Python tools
        ├── foc_debug/         the GUI, command-line tool, serial protocol, unit tests
        └── bench/             one-purpose bench scripts (calibrate, noise, step tests…)
```

| I want to change… | Edit |
|---|---|
| A motor constant (R, L, flux, pole pairs, limits) | `foc_f28379d/config/motor/motor_*.h` |
| The value a gain or setting has at power-up | `foc_f28379d/config/gains/gains_*.h` (tune it live in the GUI first, §8) |
| Board scaling, ADC mapping, bench switches | `foc_f28379d/config/hw/hw_*.h` |
| A pin or a peripheral setting | the `.syscfg` file, **only through the SysConfig editor** (§8) |
| How the control works | `foc_f28379d/src/foc_pipeline.c` (fast loop) and `foc_state_machine.c` (modes) |

---

## 2. How the firmware works

New to FOC? The [glossary](#11-glossary) explains the terms. Everything below happens on the LaunchPad;
the PC only reads and writes parameters.

```
                 every 100 µs (10 kHz), triggered by the PWM
 ┌────────────────────────────────────────────────────────────────────────────┐
 │ ADC: 3 phase currents, DC-link voltage, encoder sin/cos                    │
 │   → Clarke → Park ──→ Id, Iq ──→ PI(d), PI(q) ──→ Vd, Vq                   │
 │                ↑                                     │                     │
 │      rotor angle (sensor, or the sensorless          ↓                     │
 │      observer if the sensor fails: pos_src.c)   inverse Park → SVGEN       │
 │                                                  → dead-time comp → PWM    │
 │ + safety checks (overcurrent, bus voltage, sensor loss) every cycle        │
 └────────────────────────────────────────────────────────────────────────────┘
                 every 1 ms (1 kHz), in the background
 ┌────────────────────────────────────────────────────────────────────────────┐
 │ speed measurement + speed PI (speed mode) → Iq reference, state machine    │
 └────────────────────────────────────────────────────────────────────────────┘
                 main loop
 ┌────────────────────────────────────────────────────────────────────────────┐
 │ serial debug link (115200 baud over the LaunchPad's USB) → the PC GUI      │
 └────────────────────────────────────────────────────────────────────────────┘
```

**State machine** (`src/foc_state_machine.c`); the GUI shows the current state:

| State | What happens |
|---|---|
| `IDLE` | Power stage off (all six switches off). The safe resting state. |
| `CALIBRATE_OFFSETS` | ~0.2 s: measures the current sensors' zero with no current flowing. |
| `ALIGN_ROTOR` | ~33 s, **motor turns**: checks the current-sensor wiring and signs (*phase-ID*), calibrates the encoder amplitude, measures the rotor angle offset. |
| `RUN` | Closed-loop control: **torque mode** (you command current/torque) or **speed mode** (you command rpm). |
| `FAULT` | A protection tripped. The power stage goes to a safe state (switches off at low speed, a short across the motor phases at high speed). You leave it only with **Clear fault**. |
| `OPENLOOP` | Bench tool: spins a voltage vector with no feedback (`ol_run`); only used to check wiring/direction. |

- **Run** from IDLE goes `CALIBRATE_OFFSETS → (ALIGN_ROTOR the first time after power-up) → RUN`.
- **Calibrate** goes `CALIBRATE_OFFSETS → ALIGN_ROTOR → IDLE`.
- **Calibration lives in RAM only.** It's lost at every power-up or reflash, so calibrate again each time.
- **Units:** inside the firmware, speeds are **electrical** rad/s. The EMRAX has 10 pole pairs, so
  30 elec rad/s ≈ 29 rpm at the shaft. The GUI converts to rpm for you; the bench scripts and raw
  parameters don't.

---

## 3. Build variants

One source tree, two CCS build configurations. `include/build_config.h` picks the matching
`config/` headers from the preprocessor defines.

| CCS build configuration | Defines | Hardware |
|---|---|---|
| `Production_CtrlV2_EMRAX_Resolver` | `HW_CONTROL_BOARD_V2`, `MOTOR_EMRAX_208`, `SENSOR_RM44AC` | FE_UFPR 4.0 + PrimeSTACK + EMRAX 208 + RM44AC — **the car** |
| `Debug_BOOSTXL_Teknic_QEP` | `HW_BOOSTXL_DRV8305`, `MOTOR_TEKNIC_M2310P`, `SENSOR_QEP` | BOOSTXL-DRV8305 + Teknic M-2310P + quadrature encoder — **the desk** |

- The Production names (`CtrlV2`, `HW_CONTROL_BOARD_V2`, `hw_control_v2.h`, `board_control_v2.syscfg`)
  come from the previous board, Control_V2. FE_UFPR 4.0 kept them on purpose so the project didn't
  change. They all mean FE_UFPR 4.0 now.
- Both configurations also define `_LAUNCHXL_F28379D` (the LaunchPad has a 10 MHz crystal). Don't
  remove it, or the CPU runs at half speed.
- PWM is 10 kHz in both. The dead time is 500 ns on the BOOSTXL and 1500 ns on FE_UFPR 4.0.
- The desk variant has open items of its own (Bring-Up Status in `CLAUDE.md`). Also, the BOOSTXL on
  our bench has a dead phase-U current amplifier (SO1), which firmware works around: it computes Iu
  from the other two currents (`ISENSE_RECONSTRUCT_U_FROM_KCL` in `hw_boostxl_drv8305.h`). Set it to 0
  on a healthy BOOSTXL.

---

## 4. Setup: tools, build, flash

### 4.1 Install

| Tool | Version in use | Notes |
|---|---|---|
| [Code Composer Studio (CCS)](https://www.ti.com/tool/CCSTUDIO) | **21.0.1** | Install with C2000 support. Used with C2000 compiler 25.11.1.LTS and SysConfig 1.28.1. |
| [C2000Ware](https://www.ti.com/tool/C2000WARE) | **26.01** | device headers, driverlib |
| [C2000Ware MotorControl SDK](https://www.ti.com/tool/C2000WARE-MOTORCONTROL-SDK) | **6.00** | The project files still say 5.04, but 6.00 has been checked compatible. |
| Python | **3.10+** | for the GUI and scripts |

On Linux, also install TI's USB rules once, or the debug probe fails with **error -151**:

```bash
sudo ~/ti/ccs2101/ccs/install_scripts/install_drivers.sh   # adjust to your CCS install folder
# then unplug and replug the LaunchPad (and restart CCS if it was open)
```

Also add yourself to the serial-port group, then log out and back in: `sudo usermod -aG uucp $USER` on
Arch-based distributions, `sudo usermod -aG dialout $USER` on Debian/Ubuntu.

### 4.2 Import the project into CCS

1. Clone this repository anywhere.
2. In CCS: **File → Import Projects…**, select the `foc_f28379d/` folder of the clone.
   **Uncheck "Copy projects into workspace".** The project must stay a *link* to the repository. A copy
   would build from a stale snapshot outside git.

### 4.3 Point the project at your TI installs (do this once per machine)

The project stores five paths **hard-coded to the original author's Linux machine**
(`/home/jose/ti/c2000/...`). Until you change them it won't build anywhere else. Set them to your own
install locations:

| Variable | Point it at |
|---|---|
| `C2000WARE_ROOT` | your C2000Ware folder, e.g. `…/C2000Ware_26_01_00_00` |
| `C2000WARE_DEVICE_SUPPORT_ROOT` | `<C2000Ware>/device_support/f2837xd` |
| `C2000WARE_DLIB_ROOT` | `<C2000Ware>/driverlib/f2837xd/driverlib` |
| `SDK_ROOT` | your MotorControl SDK folder, e.g. `…/C2000Ware_MotorControl_SDK_6_00_00_00` |
| `APP_ROOT` | the `foc_f28379d/` folder of your clone |

Each one exists twice, and both copies must be changed:

- as a **build variable**: project **Properties → Build → Variables**;
- as a **linked-resource path variable**: project **Properties → Resource → Linked Resources → Path
  Variables**. These let CCS find the TI files that are linked into the project (`driverlib.lib`,
  device startup, the SDK transforms).

Notes:

- Change them through CCS, **not** by editing `.project` / `.cproject` by hand.
- The CCS 21 Properties dialog has thrown an error on this project before ("Cannot read properties
  of undefined"). If it does for you, a Linux-only fallback is to make the hard-coded paths exist
  with symlinks to your real installs:

  ```
  /home/jose/ti/c2000/C2000Ware_26_01_00_00                 → your C2000Ware 26.01
  /home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00 → your MotorControl SDK 6.00
  ```

  (`sudo` is needed if your user isn't `jose`). A stale `APP_ROOT` is harmless: the project's own
  `include/`, `config/` and `imported/` folders are searched first. On Windows there is no such
  shortcut, so the variables have to be changed in CCS. Whoever
  fixes this for good should make the project portable.
- The menu names above come from TI's CCS documentation and may be worded slightly differently in
  your CCS version.

### 4.4 Build

1. Choose the active build configuration: **Production_CtrlV2_EMRAX_Resolver** for the car or
   **Debug_BOOSTXL_Teknic_QEP** for the desk motor. It can only be switched in the CCS GUI.
2. Build the project. SysConfig runs as part of the build and generates `board.c` / `board.h` in the
   build folder.
3. Sanity check: the build folder's `.d` files must not mention `workspace_ccstheia`. If they do, the
   project was imported as a copy or `APP_ROOT` still points at the old machine.

### 4.5 Flash

1. Connect the LaunchPad by USB. Its on-board XDS100v2 probe provides both the JTAG and the serial
   port.
2. Start a **debug session** on the project. CCS builds if needed, programs the flash and stops at
   `main`.
3. **Resume/Continue** to start the firmware, then **Terminate** the debug session. The firmware keeps
   running (it's in flash, so it survives power cycles), and the probe is free again.

The firmware's heartbeat is the LaunchPad's red LED **D9**, which toggles every 0.5 s.

### 4.6 Install the PC tools

```bash
cd foc_f28379d/host
python -m venv .venv
source .venv/bin/activate          # fish: source .venv/bin/activate.fish · Windows: .venv\Scripts\activate
pip install -r requirements.txt    # pyserial, numpy, pyqtgraph, PySide6
python -m foc_debug                # opens the GUI
```

**Which serial port?** The XDS100 shows up as two USB serial interfaces: the first is JTAG, the
**second** is the firmware's serial link.

- **Linux:** `/dev/ttyUSB1`. While CCS holds the JTAG interface it can show up as `/dev/ttyUSB0`
  instead, so check `ls /dev/ttyUSB*`.
- **Windows:** the second of the two XDS100 COM ports in Device Manager.
- The GUI pre-selects the most likely port. `python -m foc_debug --list-ports` lists them all.
- Only one program can hold the port at a time (GUI, script, or CCS serial terminal).

---

## 5. Your first session on the bench

This walkthrough is for the **FE_UFPR 4.0 + EMRAX** bench. The desk motor works the same way, minus
the power-up fault.

**Before power:** the power supply is set to the value in `vbus_ovr` (31 V by default) with a
**current limit** (~5 A was used). The rotor is free to turn and nothing is touching it. The gate
enable needs board jumper **JP1**: position 1-2 routes it through the cockpit switch SW_MAIN, 2-3
bypasses the switch. If you wire the SW_MAIN input, read bring-up B in `CLAUDE.md` first: **J5 pin 2
is not the switch input**.

1. **Power the inverter board before, or together with, the LaunchPad.**
2. Open the GUI (`python -m foc_debug`), pick the port, press **Connect**. The state label comes to
   life.
3. Every power-up starts in **`FAULT — OVERCURRENT | GATE_DRIVER`** (0x11). That's expected: the
   module's fault lines settle after the CPU boots. Press **Clear fault**, twice if needed → `IDLE`.
4. Check the bus. The **Vbus** label shows the *measured* bus voltage, which isn't calibrated yet on
   this board (it reads ~18 V at 31 V). Control uses `vbus_ovr` instead. Type `vbus_ovr` in the
   **Filter** box and make sure it equals your supply voltage.
5. Press **Calibrate**. **The motor turns for about 33 s** and the GUI returns to `IDLE`. Then check
   (Filter box again):
   - `phase_id_status` = 1 (current-sensor wiring verified);
   - `cal_status` = 1 (encoder amplitude calibrated);
   - `align_offset` ≈ 106.6–107.3° (rotor angle offset).

   A rejected check latches a FAULT (CURRENT_SENSE or SENSOR_LOSS) instead of running on a bad
   measurement.
6. **Torque mode:** set *Mode* to **Torque**, type a small torque (e.g. 1 N·m ≈ 1.7 A) and press
   **Apply**, then **Run**. Friction alone takes about 0.5 N·m. The unloaded rotor speeds up until the
   bench voltage limit (`vmax_frac`) holds it at roughly 50–60 rpm.
7. **Scope:** tick `Id`, `Iq`, `Vd`, `Vq` and press **Start scope**. Iq should follow the command and
   Id stay near zero.
8. **Stop** returns to `IDLE` (power stage off).
9. **Speed mode:** set *Mode* to **Speed**, type an rpm (e.g. 30), **Apply**, **Run**. Switching modes
   while running is smooth (the firmware handles the hand-over).
10. **File → Save Parameters…** saves every parameter to a JSON file. **Load Parameters…** writes them
    back; do it in IDLE so the `needs_idle` ones are accepted too.

The values that matter for this bench are set at boot (calibration current `align_id_a` 8 A, current
limit `iq_max` 10 A, voltage limit `vmax_frac` 0.15, software overcurrent trip `oc_trip_a` 40 A…). The
full list is in "Bench procedure" in [`CLAUDE.md`](CLAUDE.md).

---

## 6. The GUI

`python -m foc_debug` from `foc_f28379d/host`. You can open it without a board connected.

| Area | What it's for |
|---|---|
| **Connection bar** | Port list (**All** also shows the JTAG/motherboard ports), **Connect**, **Ping** (link latency). |
| **State machine box** | Live state with the fault reason; **Run**, **Calibrate**, **Stop**, **Clear fault**. *Mode* Torque/Speed with a setpoint in **N·m** or **rpm** (or **%** of peak torque / rated rpm) and **Apply**. **Measured** rpm and **Vbus**. An amber **SENSORLESS** banner appears if the drive switched to the sensorless observer. |
| **Parameter tabs** | **References** (setpoints), **Gains** (PI gains, `vmax_frac`; a box sets the d and q gains together), **Config** (current-sensor map/phase-ID), **Sensorless** (observer), **Advanced** (every parameter). Double-click a value, type, press **Enter** to write it. Parameters marked `needs_idle` are only accepted in IDLE. **Hover a row for an explanation** (units, limits, boot value). **Ctrl+F** filters every tab by name. **Auto-refresh values** keeps them live. |
| **Motor tab** | Motor/loop constants read from the board, used by the autotuner. Edits are local to the GUI; the firmware isn't changed. |
| **Autotune tab** | Computes current-loop gains (from a target bandwidth), speed-loop gains (symmetric optimum, from inertia) and a field-weakening estimate; **Apply + Verify** runs a step test and shows the response, with metrics and diagnostics, in the right-hand pane. Manual gains box for trying your own values. Every step is logged to `foc_f28379d/host/step_logs/`. |
| **Scope pane** | Tick any of 15 signals (currents, voltages, angles, speeds, raw encoder, bus voltage, observer error), **Start scope**, **Save last to CSV…**. |

**How to read the scope:** each capture is 128 consecutive samples taken every 100 µs × **decim**
(12.8 ms at decim 1), and the GUI fetches one capture every **interval** ms. The plot glues the
captures together, so its x-axis counts samples, not time, and there are gaps between captures.
- To see a slow waveform, raise **decim**, which stretches each capture over a longer time.
- To look at noise, keep decim at 1: decimation skips samples without filtering them first, so noise
  above the new sampling rate folds down to lower frequencies.

More detail (CLI, REPL, logging, protocol): [`foc_f28379d/host/README.md`](foc_f28379d/host/README.md).

---

## 7. Command line and bench scripts

The same tool works from a terminal, which is handy for scripting:

```bash
cd foc_f28379d/host
python -m foc_debug ping                     # is the link alive?
python -m foc_debug list                     # every parameter with its current value
python -m foc_debug read fault_code
python -m foc_debug -p /dev/ttyUSB1 write iq_max 5   # -p goes BEFORE the command
python -m foc_debug clearfault
python -m foc_debug scope --csv cap.csv      # one scope capture to CSV
python -m foc_debug repl                     # interactive prompt
python -m foc_debug vbuscal                  # interactive DC-bus voltage calibration
```

`foc_f28379d/host/bench/` has one-purpose scripts used during bring-up: calibrate and report, ADC
noise, current-loop steps, speed steps, flux-linkage fit, and more. Several of them **spin the
motor**. Each one restores the parameters it changes when it finishes. See
[`host/bench/README.md`](foc_f28379d/host/bench/README.md) for the table of what each one does.
Close the GUI first: they need the serial port.

---

## 8. Common tasks

**Tune something live, then make it the default.** Change the parameter in the GUI and test it. When
you're happy, put the value in the matching header (`config/gains/gains_emrax.h` for most EMRAX boot
defaults), then rebuild and flash. Live changes are lost at power-off.

**Change a motor constant.** Edit `config/motor/motor_emrax_208.h` (or `motor_teknic_m2310p.h`),
rebuild, flash.

**Change pins or peripherals.** Open `foc_f28379d/syscfg/board_control_v2.syscfg` (or
`board_boostxl_drv8305.syscfg`) in CCS's **SysConfig editor**. Never edit `.syscfg` files in a text
editor, and never edit the generated `board.c`/`board.h`: they're rewritten at every build.

**Add a parameter to the GUI.**
1. Register it in `src/debug_params.c` (look at how a neighbouring one is done).
2. Add its tooltip text to `host/foc_debug/param_docs.py`. A unit test fails if a parameter has no
   entry.
3. The GUI discovers it automatically on connect.

**Flash is nearly full.** If the linker fails with `#10099 … FAILED TO ALLOCATE`, move a large function
to the free FLASHA/FLASHC sectors in `app_ebss.cmd`. That file has examples.

**Run the PC-side unit tests** (no hardware needed):

```bash
cd foc_f28379d/host
python -m unittest discover -s foc_debug -t .
```

**Before committing:** build both configurations if you touched shared code, and commit only the
files you meant to change. Build folders are git-ignored.

---

## 9. Troubleshooting

| Symptom | Cause / fix |
|---|---|
| CCS can't reach the probe, **error -151** (Linux) | TI USB rules missing: run `install_drivers.sh` (§4.1), replug, restart CCS. |
| `Permission denied` on `/dev/ttyUSB*` | You aren't in the `uucp`/`dialout` group yet (§4.1); log out and back in after adding yourself. |
| GUI won't connect / no reply | Wrong interface (use the *second* XDS100 port), or another program holds the port (a bench script, a CCS serial terminal). Close it and retry. |
| Build can't find `driverlib.lib`, `device.c`, SDK headers | The path variables still point at the original machine (§4.3). |
| Build uses old/stale files | The project was imported as a copy, or `APP_ROOT` is stale (§4.2–4.4). |
| `FAULT (OVERCURRENT \| GATE_DRIVER)` right after power-up | Normal on FE_UFPR 4.0: **Clear fault** (sometimes twice). |
| FAULT comes straight back after Clear fault | The fault is still present: read the reason next to the state, fix the cause. If protection was switched on live and won't let go, reset the LaunchPad. |
| Calibrate ends in `CURRENT_SENSE` fault | Phase-ID couldn't make sense of the currents: supply current limit too low, motor lead open, or a sensor problem. Read `phase_id_status` (its tooltip decodes it). |
| Everything runs at half speed, serial garbage | `_LAUNCHXL_F28379D` missing from the build configuration's predefined symbols. |
| Linker `#10099 FAILED TO ALLOCATE` | Flash full: see §8. |
| The probe disappears from USB | Encoder cable hot-plugged, or a grounding problem between the PC and the bench. Unplug/replug USB. |
| Motor behaves "stronger/weaker" than expected | `vbus_ovr` ≠ the real supply voltage (§5 step 4). |
| The scope plot looks like steps with jumps | That's the burst capture (§6), not a broken ADC. Raise decim. |

The full list of problems already solved (with root causes) is "Pitfalls Already Hit" in
[`CLAUDE.md`](CLAUDE.md). Read it before debugging anything strange.

---

## 10. Further reading

| Document | What's in it |
|---|---|
| [`foc_f28379d/docs/production_bringup.md`](foc_f28379d/docs/production_bringup.md) | Car-setup status: what's verified, what's left, calibration table, the ordered test sequence toward HV |
| [`foc_f28379d/docs/FE_UFPR_4_0_handoff.md`](foc_f28379d/docs/FE_UFPR_4_0_handoff.md) | FE_UFPR 4.0 board ↔ firmware spec: pins, ADC map, scaling |
| [`foc_f28379d/docs/infineon.md`](foc_f28379d/docs/infineon.md) | PrimeSTACK power-module summary |
| [`foc_f28379d/docs/sensorless.md`](foc_f28379d/docs/sensorless.md) | Sensorless observers and automatic fail-over when the encoder is lost |
| [`foc_f28379d/host/README.md`](foc_f28379d/host/README.md) | GUI/CLI reference |
| [`foc_f28379d/host/bench/README.md`](foc_f28379d/host/bench/README.md) | Bench scripts |
| [`CLAUDE.md`](CLAUDE.md) | The engineering log: day-by-day bring-up (A–L), every debug variable, pitfalls, next steps |
| `FE_UFPR_4_0` KiCad repository | Schematic and board-side notes (a separate repository; ask the team) |

`docs/debug_iface_plan_v1.md` and `docs/archive/` are historical: they describe earlier designs and
the previous board.

---

## 11. Glossary

| Term | Meaning |
|---|---|
| **FOC** | Field-oriented control: control the motor currents in a frame that rotates with the rotor, where they become two DC values. |
| **Id / Iq** | The current split into a flux part (d axis; kept at 0 here) and a torque part (q axis). Torque ≈ Kt × Iq. |
| **Vd / Vq** | The voltages the current controllers ask for, in the same rotating frame. |
| **Clarke / Park / inverse Park** | Math that converts between three phase currents, two stationary axes (α, β) and the rotating d/q frame. |
| **SVGEN** | Space-vector modulation: turns the voltage command into three PWM duty cycles. |
| **PI** | Proportional-integral controller (gains `kp_*`, `ki_*`). The current loop has one PI per axis (d, q); speed mode adds a speed PI (`kp_w`, `ki_w`) on top. |
| **Electrical vs mechanical** | Electrical angle/speed = mechanical × pole pairs (EMRAX 10, Teknic 4). |
| **Align / electrical offset** | Measuring where the rotor's magnetic zero sits relative to the encoder reading. |
| **Phase-ID** | The first part of Calibrate: checks which current sensor sits on which phase, and its sign. |
| **Dead time / DTC** | A short pause the inverter leaves between switching one transistor of a leg off and the other on, so the two never conduct together. It distorts the output voltage; dead-time compensation (`dtc_*`) cancels it. |
| **FW** | Field weakening: negative Id to go faster than the battery voltage alone allows. Built, not yet tested on HV. |
| **ASC / coast** | Fault safe states: ASC (active short circuit) short-circuits the three motor phases through the low-side switches, which is safe at high speed; coast switches everything off, used at low speed. |
| **Trip zone (TZ) / OST** | PWM hardware that forces the safe state on a fault signal without waiting for software; OST is its latch, cleared by Clear fault. |
| **PLL** | Phase-locked loop: here, a filter that estimates angle and speed smoothly from the encoder. |
| **Flux observer / SMO** | Two sensorless angle estimators (no encoder needed) that take over if the encoder fails. |
| **`needs_idle`** | A parameter that can only be written while the drive is in IDLE. |

---

## 12. Working with Claude Code (optional)

The repository is set up for [Claude Code](https://claude.com/claude-code):

- [`CLAUDE.md`](CLAUDE.md) is the agent's handoff and the team's most detailed engineering record.
- `.mcp.json` and `.claude/ccs.settings.md` point the CCS MCP servers (build, debug, SysConfig, serial)
  at a CCS install. They hold the original machine's paths, so adjust them locally and don't commit
  your own paths back by accident.
- After restarting CCS, reconnect the MCP servers with `/mcp` if tools return `fetch failed`.
