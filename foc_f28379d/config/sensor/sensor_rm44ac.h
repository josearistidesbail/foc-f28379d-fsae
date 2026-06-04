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

#endif // SENSOR_RM44AC_H
