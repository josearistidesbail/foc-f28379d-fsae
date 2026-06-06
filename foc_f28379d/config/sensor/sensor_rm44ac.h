//=============================================================================
// sensor_rm44ac.h - RM44AC sin/cos sensor parameters.
//
// The RM44AC outputs analog SIN and COS signals 90 deg apart (already
// demodulated). Angle = atan2f(sin, cos). No excitation drive is needed.
//=============================================================================
#ifndef SENSOR_RM44AC_H
#define SENSOR_RM44AC_H

#define SENSOR_NAME                 "RM44AC sin/cos magnetic sensor"

// RM44AC is a 1-pole-pair angle sensor (one electrical rev per mech rev).
// Electrical (motor) angle = (mech_angle * MOTOR_POLE_PAIRS) wrapped.
#define SENSOR_RES_SENSOR_POLES     1

// Speed estimate uses a 1st-order low-pass on the differentiated angle.
// fc = -ln(1 - alpha) * fs / (2*pi); approx alpha = 2*pi*fc/fs for fc << fs.
#define SENSOR_RES_SPEED_LPF_HZ     500.0f
#define SENSOR_RES_SPEED_LPF_ALPHA  (2.0f * 3.14159265f \
                                     * SENSOR_RES_SPEED_LPF_HZ * FOC_ISR_TS)

// Default electrical-offset captured during ALIGN_ROTOR (mech radians).
// Persist to flash later if you want repeatable boots.
#define SENSOR_RES_DEFAULT_OFFSET   0.0f

// ---- Sensor-loss detection (sin^2 + cos^2 magnitude window) ------------
// Va/Vb are bias-removed and scaled to ~[-1, +1], so a healthy sin/cos pair
// gives sin^2 + cos^2 ~= 1 at EVERY angle. A broken/unplugged channel collapses
// the vector (mag -> ~0) or rails it (mag large); either leaves the window. We
// debounce over LOSS_TICKS ISRs (~tens of microseconds each) to ride out noise.
// This is the standard loss-of-signal check for resolver / sin-cos sensors.
#define SENSOR_RES_MAG_LOW          0.25f   // amplitude < ~0.5 of nominal -> lost
#define SENSOR_RES_MAG_HIGH         2.25f   // amplitude > ~1.5 of nominal -> lost
#define SENSOR_RES_LOSS_TICKS       5       // consecutive out-of-window ISRs (0.5 ms)

#endif // SENSOR_RM44AC_H
