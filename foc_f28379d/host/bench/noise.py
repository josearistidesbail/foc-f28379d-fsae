"""IDLE ADC noise: coherent gap-free captures, per-channel rms, cross-correlation, alpha/beta.
`python noise.py [ncap=20] [tag=idle]`. Safe: gate off, no motion. (bring-up G)"""
import sys
import numpy as np
from _common import connect, restore, capture_now, bits, save_json

ncap = int(sys.argv[1]) if len(sys.argv) > 1 else 20
tag = sys.argv[2] if len(sys.argv) > 2 else "idle"
NAMES = ["Iu", "Iv", "Iw", "res_sin", "res_cos", "vbus"]
CODES_PER = {"Iu": 6.67, "Iv": 6.67, "Iw": 6.67, "res_sin": 1.0, "res_cos": 1.0, "vbus": 1 / 0.2397}  # LEM / raw / V
with connect() as d, restore(d, "vbus_filt_en"):
    if d.read_param("state") != 0:
        raise SystemExit("not IDLE")
    d.write_param("vbus_filt_en", 0)
    caps = [capture_now(d, bits(*NAMES)) for _ in range(ncap)]
X = {n: np.array([c[n] for c in caps]) for n in NAMES}
A = {n: (X[n] - X[n].mean(1, keepdims=True)).ravel() * CODES_PER[n] for n in NAMES}
print(f"[{tag}] {ncap} x 128 coherent samples, noise in ADC codes (per-capture mean removed)")
for n in NAMES:
    print(f"  {n:8s} mean {X[n].mean() * CODES_PER[n]:9.2f}  rms {A[n].std():5.2f}")
print("  corr  " + " ".join(f"{n:>8s}" for n in NAMES))
for a in NAMES:
    print(f"  {a:6s}" + " ".join(f"{np.corrcoef(A[a], A[b])[0, 1]:8.2f}" for b in NAMES))
u, v, w = [(X[n] - X[n].mean(1, keepdims=True)).ravel() for n in ("Iu", "Iv", "Iw")]
print(f"  I_alpha rms {((2 * u - v - w) / 3).std():.3f} A  I_beta rms {((v - w) / np.sqrt(3)).std():.3f} A"
      f"  independent floor (Iv-Iw)/sqrt2 {np.std(v - w) / np.sqrt(2):.3f} A")
save_json(f"noise_{tag}.json", {n: X[n].tolist() for n in NAMES})
