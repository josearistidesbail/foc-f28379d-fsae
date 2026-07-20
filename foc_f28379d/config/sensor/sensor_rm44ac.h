//=============================================================================
// sensor_rm44ac.h - RM44AC sin/cos sensor parameters.
//
// The RM44AC outputs analog SIN and COS signals 90 deg apart (already
// demodulated). Angle = atan2f(sin, cos). No excitation drive is needed.
//=============================================================================
#ifndef SENSOR_RM44AC_H
#define SENSOR_RM44AC_H

#define SENSOR_NAME                 "RM44AC sin/cos magnetic sensor"

// Sensor speed: sin/cos cycles per MECHANICAL revolution. Bench-verified 1
// (one full sin/cos cycle per marked hand revolution, 2026-07-14). Elec angle
// = sensor_angle * (MOTOR_POLE_PAIRS / SENSOR_POLES); at 1 this is the
// classic mech*pole_pairs. Runtime-switchable via the "res_poles" param
// (NEEDS_IDLE) should the sensing arrangement ever change; RE-RUN ALIGN after
// changing it.
#define SENSOR_RES_SENSOR_POLES     1

// Speed estimate uses a 1st-order low-pass on the differentiated angle.
// fc = -ln(1 - alpha) * fs / (2*pi); approx alpha = 2*pi*fc/fs for fc << fs.
#define SENSOR_RES_SPEED_LPF_HZ     500.0f
#define SENSOR_RES_SPEED_LPF_ALPHA  (2.0f * 3.14159265f \
                                     * SENSOR_RES_SPEED_LPF_HZ * FOC_ISR_TS)

// Default electrical-offset captured during ALIGN_ROTOR (mech radians).
// Persist to flash later if you want repeatable boots.
#define SENSOR_RES_DEFAULT_OFFSET   0.0f

// Angle direction. The resolver must count POSITIVE in the same rotation
// direction as the electrical phase sequence (U->V->W); which way it actually
// counts depends on magnet face / wiring, and there is no way to know without
// the bench test: spin open-loop (ol_run, +electrical by construction) and
// check the sign of omega_meas. 1 = mirror the mechanical angle (th -> 2pi-th),
// flipping both angle and speed sign consistently. Runtime-switchable via the
// "res_dir_inv" param (NEEDS_IDLE); RE-RUN ALIGN after changing it -- the
// captured offset is only valid for the direction it was captured with.
// (QEP equivalent: SENSOR_QEP_DIR_SIGN.)
#define SENSOR_RES_DIR_INV_DEFAULT  0U

// ---- Sensor-loss detection (sin^2 + cos^2 magnitude window) ------------
// Va/Vb are bias-removed and scaled to ~[-1, +1], so a healthy sin/cos pair
// gives sin^2 + cos^2 ~= 1 at EVERY angle. A broken/unplugged channel collapses
// the vector (mag -> ~0) or rails it (mag large); either leaves the window. We
// debounce over LOSS_TICKS ISRs (~tens of microseconds each) to ride out noise.
// This is the standard loss-of-signal check for resolver / sin-cos sensors.
#define SENSOR_RES_MAG_LOW          0.25f   // amplitude < ~0.5 of nominal -> lost
#define SENSOR_RES_MAG_HIGH         2.25f   // amplitude > ~1.5 of nominal -> lost
#define SENSOR_RES_LOSS_TICKS       5       // consecutive out-of-window ISRs (0.5 ms)

// ---- Sin/Cos input filtering (software noise reduction) ----------------
// The analog SIN/COS lines pick up board noise that can't be filtered in HW
// right now. A MATCHED 1st-order IIR low-pass on each channel (run every ISR,
// before atan2) knocks it down. Because SIN and COS share the same coefficient,
// a steady angle is preserved; the speed-dependent lag it adds is characterized
// and compensated in the next block, so fc no longer has to stay far above the
// running electrical frequency. Tune/defeat live via the "res_filt_en" /
// "res_filt_hz" debug params. (The loss-of-signal check stays on the RAW sin/cos
// magnitude, so the filter can't mask a dropout.)
// Defaults ON at 200 Hz (bench-proven 2026-07-15: this is what first made the
// motor commutate). 200 Hz gives ~4x noise-amplitude reduction -- a 1st-order
// LPF has noise bandwidth (pi/2)*fc, so ~314 Hz against the ADC's 5 kHz Nyquist
// -- versus only ~1.8x at the old 1000 Hz default. 200 Hz also keeps the
// alpha ~= 2*pi*fc*Ts approximation honest (alpha 0.126 vs the exact 0.118);
// at 1000 Hz it is ~35% off, so the real cutoff was well above the label.
// Safe to run this low ONLY because the lag is compensated below.
#define SENSOR_RES_FILT_DEFAULT_EN  1U        // 0 = bypass at boot, 1 = filter on
#define SENSOR_RES_FILT_DEFAULT_HZ  200.0f    // -3 dB cutoff used when enabled [Hz]
// alpha = 1 - exp(-2*pi*fc*Ts) ~= 2*pi*fc*Ts for fc << fs (same form as the speed
// LPF above). Expanded at use-site only, where FOC_ISR_TS is in scope.
#define SENSOR_RES_FILT_ALPHA(hz)   (2.0f * 3.14159265f * (hz) * FOC_ISR_TS)

// ---- Filter lag compensation -------------------------------------------
// The matched IIR is a PURE angle delay: sin and cos get the same gain and the
// same phase, the gain cancels inside atan2 (amplitude-independent), so all that
// survives is a rotation by phi = atan(f_mech/fc) ~= omega_mech/(2*pi*fc). That
// lag is systematic and analytically known, so add it back rather than pay it.
// It matters because the pole-pair multiply scales it up: in ELECTRICAL terms
// the lag is simply
//        lag_elec [rad] ~= f_elec / fc
// (the x pole_pairs cancels against f_elec = pole_pairs * f_mech). On the EMRAX
// at fc=200 that is ~2.9 deg at 60 rpm but ~28.7 deg at 600 rpm, reaching 90 deg
// -- zero torque, and positive feedback beyond -- at only ~1885 rpm. Without
// compensation a low fc is usable at crawl and dangerous at speed.
// Exact in steady state; a residual remains only while accelerating.
// lag_k = 1/(2*pi*fc) is precomputed so the ISR stays division-free.
#define SENSOR_RES_FILT_COMP_DEFAULT_EN 1U    // "res_filt_comp" param
#define SENSOR_RES_FILT_LAG_K(hz)   (((hz) > 0.0f) \
                                     ? (1.0f / (2.0f * 3.14159265f * (hz))) : 0.0f)

// ---- SIN/COS scale calibration (runs during FOC_ALIGN_ROTOR) ------------
// The hw_*.h RES_SINCOS_BIAS/AMPL_CODE values are analog-design guesses; the
// real front-end neither spans the full ADC range nor is guaranteed
// channel-matched. Before the offset-capture sweep, the align controller drags
// the rotor through CAL_MECH_REVS open-loop mech rev(s) (= full sin/cos cycles,
// the sensor is 1-speed) while tracking raw min/max codes per channel, then
// applies bias=(min+max)/2 and ampl=(max-min)/2 at runtime. Captured extremes
// are readable via the cal_* serial params to bake into the hw header later.
#define SENSOR_RES_CAL_DEFAULT_EN      1U      // 0 = keep hw_*.h constants
// 3 revs (was 1). Only >=1 is needed mathematically -- one mech rev is one full
// sin/cos cycle, so one pass already visits both extremes -- but under the
// iloop_en=0 open-loop drag the rotor cogs and can stall or skip, so a single
// rev may never actually reach part of the cycle and the captured min/max come
// out short. Extra revs are cheap insurance: at 0.5 rev/s this costs 6 s instead
// of 2 s, and min/max only ever widen. It does NOT need to be an integer (unlike
// the offset sweep, where integer revs are what cancels cogging from the mean).
// Note the captured amplitude is inherently ~18% wide because min/max latch the
// noise peaks (~+/-3.9 sigma over a sweep) rather than the true crest -- but that
// barely grows with rev count (extreme value scales as sqrt(2*ln N)), and an
// equal overestimate on BOTH channels leaves atan2 unaffected since it is
// amplitude-independent. Only a sin-vs-cos MISMATCH distorts the angle.
#define SENSOR_RES_CAL_MECH_REVS       3.0f    // >=1 mech rev = 1 full sin/cos cycle
#define SENSOR_RES_CAL_MIN_AMPL_CODES  200.0f  // reject span < ~0.15 V (stall/dead channel)
#define SENSOR_RES_CAL_MAX_MISMATCH    0.30f   // reject |ampl_sin-ampl_cos| > 30% of larger
#define SENSOR_RES_CAL_CLIP_LO_CODE    8U      // min at/below -> "clipped low" status flag
#define SENSOR_RES_CAL_CLIP_HI_CODE    4087U   // max at/above -> "clipped high" status flag

#endif // SENSOR_RM44AC_H
