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

#endif // SENSOR_QEP_H
