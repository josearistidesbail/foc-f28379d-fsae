"""vbuscal.py - bench calibration of the DC-bus voltage sense.

The firmware maps the ADC code to bus volts AFFINELY:

    vbus = (code - vbus_off) * vbus_ratio * VREF / 4096

Why an affine fit and not just "trim the ratio": a single-point trim forces the
line through the origin, so any real zero-offset in the analog chain (sensor zero
output, divider bias, ADC leakage / residual charge-share) comes back as a GAIN
error that grows with distance from the calibration point. That is exactly how a
reading calibrated at 30 V ends up 40% low at 50 V. Two points separate the two
terms; three or more also tell you whether the chain is linear at all and give an
honest error bar to extrapolate with.

Fit on the RAW ADC code (the ``vbus_raw`` param), never on the scaled volts --
the scaled value already carries the gain you are trying to measure, and it is
also IIR-filtered. The raw code additionally distinguishes the two failure modes:

  * code moves ~proportionally with the bus, wrong slope  -> calibration fixes it
  * code barely moves between two bus voltages            -> ANALOG problem
    (sensor output loaded by the divider, acquisition window too short for the
    source impedance, open wire). No gain/offset fit can rescue that.

Usage::

    python -m foc_debug vbuscal                  # interactive capture + fit
    python -m foc_debug vbuscal --apply          # ... and write the result live
    python -m foc_debug vbuscal --fit 6.1:31,50.2:148     # offline fit, no HW
"""

from __future__ import annotations

import logging
import math
from dataclasses import dataclass, field

log = logging.getLogger(__name__)

# ADC reference and full scale must match the firmware's ADC_VREF_V /
# ADC_FULL_SCALE_CODE (config/hw/hw_*.h) or the reported ratio will be off by
# their quotient. Overridable from the CLI for a board with a different VREFHI.
DEFAULT_VREF = 3.0
FULL_SCALE_CODE = 4096.0

# A fit over a tiny code span is dominated by noise. At the 900 V-class
# PrimeSTACK scale a 50 V bench bus is only ~150 codes, so warn rather than
# refuse -- but say how bad it is.
MIN_USEFUL_SPAN_CODES = 20.0


@dataclass
class CalPoint:
    """One calibration point: metered bus volts vs averaged raw ADC code."""

    volts: float
    code: float
    sigma: float = 0.0      # std-dev of the individual samples [codes]
    n: int = 1              # samples averaged
    code_min: float = 0.0
    code_max: float = 0.0

    @property
    def sigma_mean(self) -> float:
        """Standard error of this point's mean code."""
        return self.sigma / math.sqrt(self.n) if self.n > 1 else self.sigma


@dataclass
class CalFit:
    """Least-squares affine fit of metered volts against raw ADC code."""

    vpc: float                          # volts per code (the slope)
    off_code: float                     # code at 0 V (the x-intercept)
    ratio: float                        # -> VBUS_DIVIDER_RATIO
    vref: float
    points: list = field(default_factory=list)
    residuals: list = field(default_factory=list)
    sigma_vpc: float = 0.0              # 1-sigma uncertainty on the slope
    span_codes: float = 0.0

    def volts_at(self, code: float) -> float:
        return (code - self.off_code) * self.vpc

    def code_at(self, volts: float) -> float:
        return self.off_code + volts / self.vpc

    def uncertainty_at(self, volts: float) -> float:
        """1-sigma error [V] when extrapolating the fitted slope to `volts`.

        Slope-only propagation: the offset is anchored near the measured points,
        so far from them the gain uncertainty dominates and this is the term that
        matters when asking "can I trust a 400 V reading fitted at 50 V".
        """
        return abs(volts) * (self.sigma_vpc / self.vpc) if self.vpc else float("inf")


def fit(points, vref: float = DEFAULT_VREF) -> CalFit:
    """Ordinary least squares of volts = vpc * (code - off_code).

    Needs >= 2 points with distinct codes. With exactly 2 the slope uncertainty
    is propagated from the two points' standard errors (there is no residual to
    measure); with >= 3 it comes from the fit residuals, which also folds in
    meter error and any real nonlinearity.
    """
    pts = list(points)
    if len(pts) < 2:
        raise ValueError("need at least 2 calibration points to separate gain from offset")

    n = len(pts)
    cbar = sum(p.code for p in pts) / n
    vbar = sum(p.volts for p in pts) / n
    sxx = sum((p.code - cbar) ** 2 for p in pts)
    if sxx <= 0.0:
        raise ValueError(
            "all points have the same ADC code — the sense is not tracking the bus "
            "(analog problem, not a scale problem)"
        )
    sxy = sum((p.code - cbar) * (p.volts - vbar) for p in pts)
    vpc = sxy / sxx
    if vpc <= 0.0:
        raise ValueError(
            f"fitted slope is non-positive ({vpc:.6g} V/code) — the reading falls as "
            "the bus rises; check for an inverted sense or swapped points"
        )
    intercept = vbar - vpc * cbar          # volts at code 0
    off_code = -intercept / vpc            # code at 0 V

    residuals = [p.volts - (vpc * p.code + intercept) for p in pts]
    if n >= 3:
        s = math.sqrt(sum(r * r for r in residuals) / (n - 2))
        sigma_vpc = s / math.sqrt(sxx)
    else:
        dc = abs(pts[1].code - pts[0].code)
        sig = math.hypot(pts[0].sigma_mean, pts[1].sigma_mean)
        sigma_vpc = (vpc * sig / dc) if dc > 0.0 else float("inf")

    return CalFit(
        vpc=vpc,
        off_code=off_code,
        ratio=vpc * FULL_SCALE_CODE / vref,
        vref=vref,
        points=pts,
        residuals=residuals,
        sigma_vpc=sigma_vpc,
        span_codes=max(p.code for p in pts) - min(p.code for p in pts),
    )


def tracking_warnings(pts) -> list:
    """Sanity checks that catch a sense which is not really following the bus."""
    warn = []
    pts = sorted(pts, key=lambda p: p.volts)
    span_c = pts[-1].code - pts[0].code
    span_v = pts[-1].volts - pts[0].volts
    if span_c < MIN_USEFUL_SPAN_CODES:
        warn.append(
            f"code span is only {span_c:.1f} codes over {span_v:.1f} V — the fit is "
            f"noise-dominated. Widen the bus range if the supply allows."
        )
    slopes = [
        (b.code - a.code) / (b.volts - a.volts)
        for a, b in zip(pts, pts[1:])
        if b.volts != a.volts
    ]
    if slopes:
        med = sorted(slopes)[len(slopes) // 2]
        for (a, b), sl in zip(zip(pts, pts[1:]), slopes):
            if med > 0 and (sl < 0.3 * med or sl > 3.0 * med):
                warn.append(
                    f"segment {a.volts:.1f}->{b.volts:.1f} V has slope {sl:.2f} "
                    f"codes/V vs {med:.2f} median — nonlinear or a bad point"
                )
    for p in pts:
        if p.n > 1 and p.sigma > 0.25 * max(1.0, abs(span_c)):
            warn.append(
                f"point {p.volts:.1f} V noise (sigma {p.sigma:.1f} codes) is a large "
                f"fraction of the whole {span_c:.1f}-code span"
            )
    # Drift check. Re-measuring one voltage LAST is the cheapest way to tell real
    # nonlinearity from a chain whose offset wandered between captures -- both bend
    # the residuals the same way, and only a repeat separates them.
    for a, b in zip(pts, pts[1:]):
        if abs(b.volts - a.volts) < 0.05:
            tol = 3.0 * math.hypot(a.sigma_mean, b.sigma_mean) or 1.0
            if abs(b.code - a.code) > tol:
                warn.append(
                    f"the two {a.volts:.1f} V points differ by {b.code - a.code:+.1f} "
                    f"codes (> 3 sigma = {tol:.1f}) — the sense DRIFTED between "
                    f"captures; any curvature in this fit may be that drift"
                )
    return warn


def report(f: CalFit, targets=(), old_ratio=None, old_off=None) -> str:
    """Human-readable fit summary, including the header lines to paste.

    Warnings go FIRST and gate the paste-ready #define block: a least-squares fit
    always returns *something*, and a 4-codes-over-20 V flat-line happily yields a
    plausible-looking ratio that is pure noise amplification. The numbers are still
    printed (they are the diagnostic) but explicitly marked not to bake in.
    """
    warns = tracking_warnings(f.points)
    out = []
    if warns:
        out.append("!" * 66)
        out.append("!! FIT NOT TRUSTWORTHY — diagnose the analog side before using it:")
        for w in warns:
            out.append(f"!!   {w}")
        out.append("!" * 66)
        out.append("")
    out.append(f"{'meter [V]':>10}  {'code':>9}  {'sigma':>7}  {'fit [V]':>9}  {'resid [V]':>10}")
    out.append("-" * 54)
    for p, r in zip(f.points, f.residuals):
        out.append(
            f"{p.volts:10.3f}  {p.code:9.2f}  {p.sigma_mean:7.2f}  "
            f"{f.volts_at(p.code):9.3f}  {r:+10.3f}"
        )
    out.append("")
    out.append(f"slope        {f.vpc:.6g} V/code   ({1.0 / f.vpc:.2f} codes/V)")
    out.append(f"zero offset  {f.off_code:+.2f} codes at 0 V bus")
    out.append(f"span         {f.span_codes:.1f} codes")
    have_sigma = f.sigma_vpc > 0.0 and math.isfinite(f.sigma_vpc)
    if have_sigma:
        out.append(f"slope 1-sigma {f.sigma_vpc:.4g} V/code ({100.0 * f.sigma_vpc / f.vpc:.2f} %)")
    else:
        # 0.0 would read as "perfectly known", which is the opposite of the truth
        # for hand-entered points or two noise-free ones.
        out.append("slope 1-sigma unknown (no per-point noise recorded / only 2 exact points)")
    out.append("")
    if old_ratio is not None:
        out.append(f"device now:  vbus_ratio = {old_ratio:.4f}   vbus_off = {old_off:+.2f}")
    out.append(f"FITTED:      vbus_ratio = {f.ratio:.4f}   vbus_off = {f.off_code:+.2f}")
    out.append("")
    if warns:
        out.append("*** DO NOT BAKE THIS IN *** (see the warnings above) — would be:")
    else:
        out.append("bake into config/hw/hw_*.h once stable:")
    out.append(f"    #define VBUS_DIVIDER_RATIO      {f.ratio:.2f}f")
    out.append(f"    #define VBUS_OFFSET_CODE        {f.off_code:.1f}f")
    if targets:
        out.append("")
        if have_sigma:
            out.append("extrapolation (1-sigma from the slope uncertainty alone):")
        else:
            out.append("extrapolation (error bar unavailable — capture points on hardware):")
        for v in targets:
            err = f.uncertainty_at(v)
            tail = ""
            if have_sigma:
                tail = f"   +/- {err:.1f} V" + (f" ({100.0 * err / v:.1f} %)" if v else "")
            out.append(f"    {v:7.1f} V  -> code {f.code_at(v):7.1f}{tail}")
    return "\n".join(out)


# ---- device interaction ---------------------------------------------------

def sample_raw(dbg, n: int = 300, progress=None) -> CalPoint:
    """Average `n` reads of the raw DC-bus ADC code.

    The code is refreshed every ISR (10 kHz) while the host polls every few ms,
    so consecutive reads are effectively independent noise samples and the mean
    converges as 1/sqrt(n) -- which is what makes a ~150-code reading with ~12
    codes of noise calibratable at all. Volts are deliberately NOT used here.
    """
    try:
        dbg.read_param("vbus_raw")
    except KeyError as e:
        raise RuntimeError(
            "firmware does not expose 'vbus_raw' — flash a build that includes the "
            "DC-bus calibration params (vbus_ratio / vbus_off / vbus_raw)"
        ) from e

    vals = []
    for i in range(n):
        vals.append(float(dbg.read_param("vbus_raw")))
        if progress and (i % 50 == 49):
            progress(i + 1, n)
    m = sum(vals) / len(vals)
    var = sum((v - m) ** 2 for v in vals) / (len(vals) - 1) if len(vals) > 1 else 0.0
    return CalPoint(
        volts=float("nan"),
        code=m,
        sigma=math.sqrt(var),
        n=len(vals),
        code_min=min(vals),
        code_max=max(vals),
    )


def apply_fit(dbg, f: CalFit) -> list:
    """Write the fitted calibration to the device. Returns [(name, status)]."""
    out = []
    for name, val in (("vbus_ratio", f.ratio), ("vbus_off", f.off_code)):
        out.append((name, dbg.write_param(name, val)))
    return out


def points_from_scope_csv(spec: str, capture_ratio: float, vref: float = DEFAULT_VREF,
                          filt_hz: float = 50.0, isr_hz: float = 10000.0) -> list:
    """Build CalPoints from saved "vbus" scope-capture CSVs.

    `spec` is ``"40:vbus_40v.csv,65:vbus_65v.csv"`` — metered volts : file. The CSV
    holds the SCALED volts the firmware reported, so the raw code is recovered by
    dividing by the volts-per-code that was ACTIVE AT CAPTURE TIME
    (`capture_ratio`); pass the ratio the device had then, not the fitted one.

    The captures are IIR-filtered, so consecutive samples are NOT independent: the
    filter's correlation time is ~1/alpha samples, giving n_eff ~ n*alpha/2. Using
    the raw sample count here would understate the standard error by ~8x at the
    default 50 Hz, which then understates the whole fit's uncertainty.
    """
    vpc_cap = vref * capture_ratio / FULL_SCALE_CODE
    alpha = 2.0 * math.pi * filt_hz / isr_hz
    pts = []
    for chunk in spec.replace(";", ",").split(","):
        chunk = chunk.strip()
        if not chunk:
            continue
        try:
            volts_s, path = chunk.split(":", 1)
            volts = float(volts_s)
        except ValueError as e:
            raise ValueError(f"bad entry {chunk!r} — expected VOLTS:PATH.csv") from e
        codes = _read_scope_csv(path, vpc_cap)
        if not codes:
            raise ValueError(f"{path}: no 'vbus' samples found")
        m = sum(codes) / len(codes)
        var = sum((c - m) ** 2 for c in codes) / (len(codes) - 1) if len(codes) > 1 else 0.0
        n_eff = max(1, int(len(codes) * alpha / 2.0)) if alpha > 0 else len(codes)
        pts.append(CalPoint(volts=volts, code=m, sigma=math.sqrt(var), n=n_eff,
                            code_min=min(codes), code_max=max(codes)))
    return pts


def _read_scope_csv(path: str, vpc_cap: float) -> list:
    """Raw codes from a scope CSV with a 'vbus' column (or a 2-column sample,value)."""
    import csv as _csv

    with open(path, newline="") as fh:
        rows = list(_csv.reader(fh))
    if not rows:
        return []
    header = [h.strip() for h in rows[0]]
    try:
        col = header.index("vbus")
        body = rows[1:]
    except ValueError:
        # No 'vbus' header: assume the last column is the value, skip a text header.
        col = len(header) - 1
        body = rows[1:] if not _is_number(header[col]) else rows
    out = []
    for r in body:
        if len(r) > col and _is_number(r[col]):
            out.append(float(r[col]) / vpc_cap)
    return out


def _is_number(s: str) -> bool:
    try:
        float(s)
        return True
    except (TypeError, ValueError):
        return False


def parse_pairs(spec: str) -> list:
    """Parse ``"6.1:31,50.2:148"`` into CalPoints (offline fit, no hardware)."""
    pts = []
    for chunk in spec.replace(";", ",").split(","):
        chunk = chunk.strip()
        if not chunk:
            continue
        try:
            v, c = chunk.split(":")
            pts.append(CalPoint(volts=float(v), code=float(c)))
        except ValueError as e:
            raise ValueError(f"bad point {chunk!r} — expected VOLTS:CODE") from e
    return pts
