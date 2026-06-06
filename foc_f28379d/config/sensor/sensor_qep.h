//=============================================================================
// sensor_qep.h - eQEP backend parameters for the Teknic M-2310P encoder.
//
// Teknic M-2310P-LN-04K: 1000 lines/rev optical incremental.
// With x4 quadrature decoding, one mech rev = 4000 counts (bench-confirmed
// 2026-06-04 by reading raw QPOSCNT over exactly one shaft revolution).
// NOTE: SENSOR_QEP_CPR_X4 must equal SysConfig QPOSMAX+1 (positionCounterMax),
// because the angle wrap in sensor_qep_inline.h corrects by only one period.
//=============================================================================
#ifndef SENSOR_QEP_H
#define SENSOR_QEP_H

#define SENSOR_NAME             "eQEP Teknic 1000-line (4000 cnt/rev)"

#define SENSOR_QEP_CPR          1000        // lines per rev
#define SENSOR_QEP_CPR_X4       (SENSOR_QEP_CPR * 4)   // counts per mech rev (=4000)
#define SENSOR_QEP_INV_CPR_X4   (1.0f / (float)SENSOR_QEP_CPR_X4)

// Set polarity if shaft direction of QEP does not match phase rotation.
#define SENSOR_QEP_DIR_SIGN     (+1)

// eQEP module + GPIO are pinned in SysConfig. Just reference the unit number
// here so src/sensor_qep.c knows which one to read.
#define SENSOR_QEP_UNIT         1           // eQEP1

// ---- Sensor-loss detection (drive-vs-response + QEPSTS) -----------------
// An incremental encoder has no absolute "is it alive?" signal, so we infer
// loss from behaviour: while we are COMMANDING torque in FOC_RUN (|iq_ref| past
// MIN_IQ) the count MUST advance. If it stalls (|dcount| below MIN_DCNT) for
// LOSS_TICKS consecutive slow-loop ticks, the feedback is presumed lost (cable
// unplugged, coupling slipped, dead channel). The QEPSTS position-counter
// (quadrature phase) error bit is an independent HW signal.
//
// We gate on the COMMANDED current, not Vq: when the angle freezes the rotor
// locks into DC injection, back-EMF collapses and Vq falls to ~Rs*iq (well
// below any useful threshold), so a |Vq| gate goes blind exactly when we need
// it. |iq_ref| stays valid regardless.
//
// NOTE: this also fires on a genuine locked rotor under torque -- an equally
// valid reason to shut down. Keep LOSS_TICKS generous so a normal RUN (motor
// accelerates from rest within the window) does not nuisance-trip.
#define SENSOR_QEP_LOSS_MIN_IQ      0.1f    // [A] |iq_ref| above this = "driving"
#define SENSOR_QEP_LOSS_TICKS       100     // detection window, slow ticks (~100 ms)
#define SENSOR_QEP_LOSS_MIN_MOVE    4       // min total |count| movement per window
                                            //   when alive (4 cnt/100 ms ~= <1 rpm)

#endif // SENSOR_QEP_H
