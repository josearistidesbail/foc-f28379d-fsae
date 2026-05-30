# PC↔MCU debug interface for foc_f28379d (v1)

## Context

The FOC firmware on the F28379D LaunchPad currently has no host-facing I/O. Internal debug
visibility relies on the existing `g_datalog[256][7]` ring buffer (filled in the 10 kHz ISR)
plus DAC-A/B oscilloscope mirroring and a scope-probe GPIO. To tune gains, drive references,
and observe transients without rebuilding, we need a PC↔MCU serial link.

User-confirmed constraints:
- **Performance-critical**: FOC ISR at 10 kHz must remain undisturbed.
- **Initial scope channels**: `Iq, Id, theta_elec, omega_elec` (4 of the existing 7 in `g_datalog`).
- **Selectable scope channels** is a future feature — frame protocol must already carry a channel mask so v2 only changes firmware-side capture logic.
- **Paired-gain writes** require the FOC state machine to be in `FOC_IDLE`. Single-value writes (references, scalars) may happen live.
- **CPU2 not used** — runs on CPU1 super-loop. The CPU1 super-loop is currently idle (`DEVICE_DELAY_US(500000)` + LED toggle); ISR preempts it, so comms work in the loop costs the FOC nothing.
- **Host-side Python tooling is part of this work**.

## Architecture overview

```
                                                                  10 kHz
+--------- CPU1 super-loop -----------+      +---- adcA1_isr() ---+--+
|                                     |      |                       |
|  debug_iface_poll()                 |<-----+ foc_current_loop_isr()|
|   - drain SCI RX ring -> parser     |      |   debug_datalog_push()|<-- existing
|   - dispatch CMDs                   |      |   (writes g_datalog)  |
|   - encode + write SCI TX           |      +-----------------------+
|   - on SCOPE_CAPTURE: snapshot      |
|     g_datalog -> frame -> TX        |
|                                     |
|  tick-based LED heartbeat (no       |
|  blocking delay)                    |
+-------------------------------------+
        |                ^
   SCI-A TX         SCI-A RX FIFO IRQ -> sw ring
   GPIO29           GPIO28
        |                ^
        v                |
   XDS100v2 backchannel UART -> USB COM port
        |                ^
        v                |
   +-------- PC: foc_debug.py --------+
   |  - frame codec, CRC, retry       |
   |  - CLI: read/write/scope_capture |
   |  - pyqtgraph live viewer         |
   +----------------------------------+
```

## Transport and frame format (locked from conversation)

- **SCI-A**: GPIO43 (RX) / GPIO42 (TX), **115 200 baud**, 8N1, 16-deep TX+RX FIFOs.
  - GPIO43/42 is the LAUNCHXL-F28379D XDS100v2 backchannel UART routing
    (per board doc). The original plan listed GPIO28/29 — those go to the
    BoosterPack headers on this board, not to the FTDI bridge, so the link
    would not have reached the host.
  - Originally specced at 921 600; dropped to 115 200 because the on-board XDS100v2
    backchannel UART is not reliable above ~230 400. If we later need higher bandwidth
    (continuous scope streaming), options are (a) external XDS110 or (b) external
    USB-UART (FTDI/CP2102) wired to the SCI pins, bypassing the emulator.
- **RX**: FIFO half-full interrupt → ISR pushes bytes into a software ring buffer.
- **TX**: super-loop polls FIFO space and writes; no TX IRQ in v1.
- **Frame** (both directions):

  ```
  [0xAA] [0x55] [LEN_LO] [LEN_HI] [CMD] [SEQ] [PAYLOAD...] [CRC_LO] [CRC_HI]
  ```

  - LEN = payload byte count (0..2048).
  - SEQ echoed by responder.
  - CRC16-CCITT (poly 0x1021, init 0xFFFF) over CMD + SEQ + PAYLOAD.

## Command set (v1)

| CMD  | Name | Direction | Payload (request) | Payload (response) |
|------|------|-----------|-------------------|--------------------|
| 0x01 | PARAM_LIST   | host→mcu | start_idx:u16 | for each entry: id:u16, type:u8, flags:u8, name[16] |
| 0x02 | PARAM_READ   | host→mcu | id:u16 | id:u16, type:u8, value (4 B) |
| 0x03 | PARAM_WRITE  | host→mcu | id:u16, value (4 B) | status:u8 (0=ok, 1=ro, 2=needs_idle, 3=bad_id) |
| 0x10 | SCOPE_CONFIG | host→mcu | channel_mask:u16, decim:u16 | status:u8 |
| 0x11 | SCOPE_CAPTURE| host→mcu | — | n_samples:u16, n_channels:u8, channel_mask:u16, samples (n*nch*f32) |
| 0x20 | SM_CMD       | host→mcu | op:u8 (1=run, 2=stop, 3=clear_fault) | state:u8 |
| 0x21 | SM_STATE     | host→mcu | — | state:u8 |
| 0x7E | PING         | host→mcu | — | echoes payload (used for latency/baud check) |
| 0x7F | NACK         | mcu→host | err:u8, ctx:u8 | bad CRC, unknown CMD, bad LEN |

`channel_mask` is sent in v1 but the firmware accepts only `0x000F` (all 4 default channels);
mask handling is wired through the frame so v2 channel selection is purely firmware work.

## Scope capture mechanism

Reuses existing `g_datalog`:
- ISR continues calling `debug_datalog_push()` every FOC cycle (or every Nth if decimation > 1 — new counter in `debug_hooks.c`).
- On `SCOPE_CAPTURE`, super-loop snapshots `g_datalog` + current `g_datalog_idx` into a TX staging buffer (256 × 4 ch × 4 B = 4 kB).
  - Snapshot is `memcpy` of ~7 kB; takes ~10 µs on C28x — does not perturb 100 µs ISR cadence.
  - Index captured first, then data — host reorders to chronological order.
- TX time at 921 600 baud ≈ 45 ms for the 4-channel snapshot. Acceptable single-shot rate.

Trigger and per-channel selection are deferred to v2.

## Parameter registry

New file `src/debug_params.c` defines a single `const param_entry_t g_param_table[]`.
Initial entries (host editable later by changing the table):

| id   | name (≤15 chars) | type | flags        | source                                        |
|------|------------------|------|--------------|-----------------------------------------------|
| 0x0001 | id_ref         | f32  | live         | `foc_get_refs()->id_ref`                      |
| 0x0002 | iq_ref         | f32  | live         | `foc_get_refs()->iq_ref`                      |
| 0x0003 | omega_ref      | f32  | live         | `foc_get_refs()->omega_ref`                   |
| 0x0010 | kp_d           | f32  | needs_idle   | gain struct (see `config/gains/gains_teknic.h`)|
| 0x0011 | ki_d           | f32  | needs_idle   | "                                             |
| 0x0012 | kp_q           | f32  | needs_idle   | "                                             |
| 0x0013 | ki_q           | f32  | needs_idle   | "                                             |
| 0x0020 | kp_w           | f32  | needs_idle   | speed loop gain                               |
| 0x0021 | ki_w           | f32  | needs_idle   | speed loop gain                               |
| 0x0100 | state          | u16  | read_only    | `sm_get_state()`                              |
| 0x0101 | isr_count      | u32  | read_only    | `g_isr_count`                                 |

`needs_idle` writes are rejected with status=2 unless `sm_get_state() == FOC_IDLE`.

The exact gain-struct field paths will be filled in during implementation by reading
`config/gains/gains_teknic.h` and the PI controller initializers in `foc_pipeline.c` —
the table is mechanical to extend; only field paths need to be located.

## Files to add / modify

### New firmware files (in `C:\Users\Jose\source\repos\foc_f28379d\`)

- `include/debug_iface.h` — public API: `debug_iface_init()`, `debug_iface_poll()`, `debug_iface_rx_isr()`.
- `src/debug_iface.c` — SCI-A driver glue, RX ring buffer, frame parser, dispatcher, TX framer.
- `include/debug_proto.h` — frame constants, CMD enum, NACK error codes (shared with host via comment).
- `src/debug_params.c` — `g_param_table[]` definition (see above).
- `include/debug_params.h` — `param_entry_t` struct, registry export, `param_read()` / `param_write()` helpers.

### Modified firmware files

- `src/main.c`:
  - Add `debug_iface_init()` call in init sequence (after `sm_init()`, before `EINT/ERTM`).
  - Replace blocking super-loop body with a tick-based scheme:
    ```c
    uint32_t last_led_tick = 0;
    while (1) {
        debug_iface_poll();
        uint32_t now = CpuTimer_getCount(...); // or g_isr_count as a coarse tick source
        if ((now - last_led_tick) > LED_TICK_PERIOD) {
            GPIO_togglePin(LED_STATUS_GPIO);
            last_led_tick = now;
        }
    }
    ```
    Use `g_isr_count` (already declared in `src/isr.c`) as the tick source — 10 kHz → divide by 5000 for 500 ms.

- `src/debug_hooks.c`:
  - Add `g_datalog_decim` counter (init 1) so push frequency is configurable from host via `SCOPE_CONFIG`.
  - Expose `debug_datalog_snapshot(float *dst, uint16_t *out_head)` for the comms path to call without TXing inside `_iface.c`.

- `syscfg/board_boostxl_drv8305.syscfg` (via **SysConfig MCP — never edit directly**):
  - Add SCI module instance `UART_DEBUG`:
    - SCI base: SCIA
    - Pinmux: GPIO28 RX, GPIO29 TX
    - Baud 921 600, 8N1
    - TX FIFO + RX FIFO enabled
    - RX FIFO interrupt level (4 chars) → ISR registered as `sciA_rx_isr` (handler implemented in `src/debug_iface.c`).

### Host-side files (new — proposed location `C:\Users\Jose\source\repos\foc_f28379d\host\`)

- `host/foc_debug/__init__.py` — package.
- `host/foc_debug/proto.py` — frame encode/decode, CRC16-CCITT, command constants. Mirrors `debug_proto.h`.
- `host/foc_debug/link.py` — `SerialLink` class wrapping `pyserial`: send request, wait for response with matching SEQ, timeout/retry.
- `host/foc_debug/api.py` — high-level: `list_params()`, `read_param(name)`, `write_param(name, value)`, `capture_scope()`, `request_run()` / `request_stop()`.
- `host/foc_debug/cli.py` — `python -m foc_debug` interactive REPL (`read iq_ref`, `write iq_ref 1.5`, `scope`, `run`, `stop`).
- `host/foc_debug/viewer.py` — pyqtgraph live viewer: triggers `capture_scope()` on a timer, plots 4 channels.
- `host/requirements.txt` — `pyserial`, `pyqtgraph`, `PySide6`.
- `host/README.md` — install + run instructions.

## Implementation order

Each step is a verifiable milestone — stop and test before moving on.

1. **SysConfig: add SCIA `UART_DEBUG`** (SysConfig MCP). Build, confirm `Board_init()` generates SCI setup, confirm `sciA_rx_isr` symbol expected.
2. **Bare echo loop**: stub `debug_iface_init/poll`, RX ISR pushes to ring, super-loop echoes any byte back. Verify via PuTTY at 921 600 — type `x`, see `x` back. Confirm 921 600 actually works on this XDS100v2.
3. **Frame parser + PING**: implement frame state machine, CRC16. Wire `0x7E PING` to echo payload. Add `host/foc_debug/proto.py` + `link.py` + a `ping` CLI command. Verify round-trip.
4. **Param registry**: implement `debug_params.[ch]` with the 3 live params (id_ref/iq_ref/omega_ref). Add PARAM_LIST / PARAM_READ / PARAM_WRITE handlers. Verify `read iq_ref`, `write iq_ref 0.5` in CLI.
5. **State machine commands**: implement SM_CMD / SM_STATE wired to `sm_request_run/stop/clear_fault/get_state`. Verify `run`/`stop` from CLI move the state machine.
6. **Scope capture**: implement `debug_datalog_snapshot()`, SCOPE_CONFIG (decim only, mask ignored / forced to 0x000F), SCOPE_CAPTURE. Verify single-shot capture in CLI (dump 256 samples to stdout). Wire pyqtgraph viewer.
7. **Gain params with `needs_idle`**: add remaining 6 gain entries after locating their actual storage in `gains_teknic.h` / PI struct fields. Verify writes are rejected when state ≠ IDLE and accepted in IDLE.

## Existing utilities to reuse

- `debug_datalog_push()` in `src/debug_hooks.c:22` — call site already exists in `foc_pipeline.c`; just add a decimation counter alongside it.
- `foc_get_refs()` in `include/foc_pipeline.h:14` — exclusive write path for live reference params.
- `sm_request_run/stop/clear_fault/get_state` in `include/foc_state_machine.h` — direct mapping to SM_CMD.
- `.ebss` placement (`#pragma DATA_SECTION`) already used in `debug_hooks.c:11`. The TX staging buffer (≥4 kB) and RX ring (256 B) follow the same pattern.

## Verification

Per-step verification is listed in **Implementation order**. End-to-end smoke test once
all steps are complete:

1. Build `Debug_BOOSTXL_Teknic_QEP` via the project MCP `buildProject`.
2. Flash and launch debug; via CCS Expressions, confirm `g_isr_count` still increments at ~10 kHz (no regression in ISR rate).
3. From host: `python -m foc_debug ping` — confirm sub-ms round trip.
4. From host: `list` — confirm param table enumerates.
5. From host: `read isr_count` twice, verify it advances by ~10 000 per second of wall time.
6. From host: `scope` (single capture) — confirm 256 samples plotted, theta ramping if encoder spun by hand in idle mode.
7. From host: `run` (after rotor-align prerequisites manually completed) — confirm state transitions to `FOC_RUN`, Iq/Id traces visible in live viewer.
8. From host: `write kp_q 5.0` while running — expect `status=needs_idle`. `stop`, retry, expect `ok`. `run` again, confirm new gain in effect via current step response.

## Out of scope (deferred to v2)

- Selectable per-channel scope capture (frame protocol already carries channel mask; firmware just always returns 4 channels in v1).
- Hardware triggers / capture-on-state-change.
- Continuous (free-running) scope streaming.
- Parameter persistence to flash (NVM).
- Authentication / safety-critical command gating beyond `needs_idle`.
- Migrating any of this to CPU2 (revisit only if profiling shows real ISR jitter from comms — not expected).
