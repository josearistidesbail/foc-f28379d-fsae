"""steplog.py - per-session CSV log of every step-response capture.

Bench results on this rig vary with rotor position, bus sag and dead-zone
compensation, so a single capture on screen is not enough to reason about the
spread: you need every step of a session side by side. The GUI therefore writes
each step to disk automatically, into two files per session:

    steps_<stamp>.csv           one row per SAMPLE, tagged with its step index
    steps_<stamp>_summary.csv   one row per STEP: metrics + the conditions

"Session" is one run of the GUI, so a fresh launch never appends to (or
overwrites) the previous bench session's data -- the stamp is taken once at
construction, not per step.

Design notes:

* Both files are opened LAZILY on the first step, so a session that never steps
  leaves no empty files behind.
* Both are flushed after every step. A bench session ends with a yanked USB
  cable or a killed window at least as often as it ends cleanly, and a log that
  only materializes on a graceful exit is the one you do not have when you need
  it.
* The sample file carries the FULL channel superset with blanks for channels a
  given capture did not request, rather than a header that depends on the first
  step written. A current step (Id/Iq/Vd/Vq/Iabc/vbus/theta) and a speed step
  (omega only) can then live in one file and load as a single table.

Pure stdlib on purpose (no numpy, no Qt) so it is unit-testable headless, like
autotune.py.
"""

from __future__ import annotations

import csv
import pathlib
import time

# One row per step. Ordered for reading left-to-right at a terminal: what was
# asked, what happened, then why it might not have.
SUMMARY_FIELDS = [
    "time",             # wall clock, ISO-ish, so steps can be matched to notes
    "which",            # which experiment ran ("current", "manual current", ...)
    "chan",             # the measured channel the metrics were computed on
    "target",           # commanded level
    "final",            # measured level at the end of the window
    "err",              # final - target
    "err_pct",
    "peak",
    "overshoot_pct",
    "t_rise_ms",
    "t_settle_ms",
    "settled",          # False => t_settle_ms is a window edge, not a settling time
    "bw_hz",
    "noise",
    "ok",               # step_metrics could analyze it
    "reason",           # why not, when ok is False
    # Drive health, sampled while still in RUN. `tz_tripped` is the one that
    # matters: a hardware trip zone latches the bridge into active-short, so the
    # PI integrates open-loop into zero current and the capture looks exactly
    # like a tuning problem until you notice the volts never reached the motor.
    "tz_tripped",       # the TZ counter moved DURING this step
    "tz_trip",          # cumulative count after the step
    "module_fault",     # MODULE_FLT_* bitfield (OC_A/B/C, OT, DC-OV)
    "state",            # FSM state at the end of the run (4 = FAULT)
    # Conditions. theta_elec is here because the failure under investigation is
    # rotor-position dependent: with it logged, "varies wildly" becomes a
    # scatter plot of outcome vs angle instead of an impression.
    "theta_at_step",
    "theta_at_end",
    "vbus",
    "vmag_max",         # peak |Vdq| on the post-step plateau
    "vmag_frac",        # ... as a fraction of vbus/2, i.e. directly vs vmax_frac
    "iph_min",          # smallest mean |phase current| -- the dtc_ith ramp tell
    "iph_min_name",
    # Loop gains in force for this step, so a summary file is self-describing.
    "kp_d", "ki_d", "kp_q", "ki_q", "kp_w", "ki_w",
    # Capture geometry.
    "dt_s", "n_samples", "i_step",
]


class StepLog:
    """Append-only CSV pair for one GUI session. See module docstring."""

    def __init__(self, directory, channels, stamp=None):
        self.dir = pathlib.Path(directory)
        self.channels = list(channels)
        self.stamp = stamp or time.strftime("%Y%m%d_%H%M%S")
        self.n_steps = 0
        self._samples_fh = None
        self._summary_fh = None
        self._samples_w = None
        self._summary_w = None

    @property
    def samples_path(self):
        return self.dir / f"steps_{self.stamp}.csv"

    @property
    def summary_path(self):
        return self.dir / f"steps_{self.stamp}_summary.csv"

    def _open(self):
        if self._samples_fh is not None:
            return
        self.dir.mkdir(parents=True, exist_ok=True)
        self._samples_fh = open(self.samples_path, "w", newline="")
        self._summary_fh = open(self.summary_path, "w", newline="")
        self._samples_w = csv.writer(self._samples_fh)
        self._summary_w = csv.writer(self._summary_fh)
        self._samples_w.writerow(["step", "sample", "t_ms"] + self.channels)
        self._summary_w.writerow(["step"] + SUMMARY_FIELDS)

    def append(self, names, data, dt, i_step, summary):
        """Log one capture; returns its 1-based step index.

        `names`/`data` are a ScopeCapture's channel names and parallel sample
        rows; `i_step` is the device-reported trigger sample, so t_ms is
        relative to the step edge and directly comparable across captures taken
        at different decimations. Unknown keys in `summary` are ignored, and
        missing ones are written blank -- callers should not have to care which
        diagnostics a given capture could produce.
        """
        self._open()
        self.n_steps += 1
        step = self.n_steps

        col_of = {n: i for i, n in enumerate(names)}
        n_samples = len(data[0]) if data else 0
        for i in range(n_samples):
            row = [step, i, f"{(i - i_step) * dt * 1e3:.6g}"]
            for name in self.channels:
                c = col_of.get(name)
                row.append("" if c is None else f"{data[c][i]:.6g}")
            self._samples_w.writerow(row)

        self._summary_w.writerow(
            [step] + [_fmt(summary.get(f)) for f in SUMMARY_FIELDS])
        self._samples_fh.flush()
        self._summary_fh.flush()
        return step

    def close(self):
        for fh in (self._samples_fh, self._summary_fh):
            if fh is not None:
                fh.close()
        self._samples_fh = self._summary_fh = None
        self._samples_w = self._summary_w = None


def _fmt(v):
    """CSV cell: blank for absent, %.6g for floats, str otherwise.

    %g rather than repr so a column of floats stays readable in a terminal and
    still round-trips through any CSV reader at more precision than the 12-bit
    ADC behind it can justify.
    """
    if v is None:
        return ""
    if isinstance(v, bool):
        return "1" if v else "0"
    if isinstance(v, float):
        return f"{v:.6g}"
    return str(v)
