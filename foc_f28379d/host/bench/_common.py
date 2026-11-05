"""Shared helpers for the bench scripts in this folder (FE_UFPR 4.0 bring-up, 2026-11-06).

Port:   FOC_PORT env var (e.g. /dev/ttyUSB1 on Linux, COM5 on Windows). Unset = auto-detect.
Output: FOC_BENCH_OUT env var, default ./out next to this file (gitignored).

Every script that changes a device parameter restores it on exit via `restore()`:
a script that silently leaves e.g. kp_d or vmax_frac changed has already cost a
bench session once (2026-11-06: a leftover iloop_en -- since removed -- broke a
GUI calibrate).
The debug GUI and these scripts cannot share the serial port -- close one.
"""
import contextlib
import json
import os
import sys
import time

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.dirname(HERE))          # host/ -> import foc_debug

from foc_debug.link import SerialLink              # noqa: E402
from foc_debug.api import FocDebug, fault_reason   # noqa: E402,F401

PORT = os.environ.get("FOC_PORT") or None
OUT = os.environ.get("FOC_BENCH_OUT", os.path.join(HERE, "out"))

ST_IDLE, ST_CAL, ST_ALIGN, ST_RUN, ST_FAULT, ST_OPENLOOP = 0, 1, 2, 3, 4, 5
TRIG_DONE = 2

# EMRAX 208 + FE_UFPR 4.0 constants used by the analysis (firmware headers).
RS = 0.01277          # MOTOR_RS_OHM
LD, LQ = 110e-6, 115e-6
LAM_DATASHEET = 0.03867  # MOTOR_FLUX_VS. Bench data says ~0.034 -- see CLAUDE.md bring-up H.
POLE_PAIRS = 10


@contextlib.contextmanager
def connect():
    link = SerialLink(PORT)
    try:
        d = FocDebug(link)
        d.list_params()
        yield d
    finally:
        link.close()


def out_path(name):
    os.makedirs(OUT, exist_ok=True)
    return os.path.join(OUT, name)


def save_json(name, obj):
    with open(out_path(name), "w") as f:
        json.dump(obj, f, default=float)


def wait_state(d, target, timeout=10.0):
    t0 = time.monotonic()
    while True:
        st = d.read_param("state")
        if st == target:
            return
        if st == ST_FAULT and target != ST_FAULT:
            raise RuntimeError(f"FAULT: {fault_reason(d.read_param('fault_code'))}")
        if time.monotonic() - t0 > timeout:
            raise RuntimeError(f"timeout waiting for state {target} (now {st})")
        time.sleep(0.05)


def stop(d):
    """Leave RUN/ALIGN for IDLE (does NOT clear a fault -- that stays visible)."""
    try:
        if d.read_param("state") in (ST_RUN, ST_ALIGN, ST_OPENLOOP):
            d.request_stop()
            time.sleep(0.3)
    except Exception as e:  # noqa: BLE001
        print("stop failed:", e)


@contextlib.contextmanager
def restore(d, *names):
    """Snapshot params, run the body, stop the motor, write them back.

    NEEDS_IDLE params can only be written in IDLE, hence the stop() first. In a
    latched FAULT those writes are refused: the failures are printed, not hidden.
    """
    saved = {n: d.read_param(n) for n in names}
    try:
        yield saved
    finally:
        stop(d)
        bad = []
        for n, v in saved.items():
            try:
                d.write_param(n, v)
            except Exception as e:  # noqa: BLE001
                bad.append(f"{n} ({e})")
        st = d.read_param("state")
        fc = d.read_param("fault_code")
        print(f"[restore] state {st}, fault {fault_reason(fc)}; restored {len(saved) - len(bad)}/{len(saved)}"
              + (f" -- NOT restored: {', '.join(bad)}" if bad else ""))


def capture_now(d, mask, decim=1, pre=16, timeout=2.0):
    """Coherent gap-free 128-sample capture via the one-shot trigger (step_go=2), any state."""
    d.scope_config(decim=int(decim), mask=int(mask))
    d.write_param("step_go", 0)
    d.write_param("step_pre", int(pre))
    time.sleep(0.02)
    d.write_param("step_go", 2)
    wait_trigger(d, timeout + 128 * decim * 1e-4)
    c = d.capture_scope(timeout=2.0, retries=1)
    d.write_param("step_go", 0)
    return {n: c.data[i] for i, n in enumerate(c.names)}


def wait_trigger(d, timeout=2.0):
    t = time.monotonic()
    while d.read_param("trig_state") != TRIG_DONE:
        if time.monotonic() - t > timeout:
            raise RuntimeError("scope trigger did not complete")
        st = d.read_param("state")
        if st == ST_FAULT:
            raise RuntimeError(f"FAULT: {fault_reason(d.read_param('fault_code'))}")
        time.sleep(0.01)


def bits(*names):
    from foc_debug import proto
    idx = {n: b for b, n in proto.SCOPE_CATALOG}
    m = 0
    for n in names:
        m |= 1 << idx[n]
    return m
