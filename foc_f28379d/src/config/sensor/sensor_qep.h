//=============================================================================
// sensor_qep.h - eQEP backend parameters for the Teknic M-2310P encoder.
//
// Teknic M-2310P-LN-04K: 4000 lines/rev (CPR=4000) optical incremental.
// With x4 decoding (eQEP default), one mech rev = 16000 counts.
//=============================================================================
#ifndef SENSOR_QEP_H
#define SENSOR_QEP_H

#define SENSOR_NAME             "eQEP Teknic 4000 CPR"

#define SENSOR_QEP_CPR          4000        // lines per rev
#define SENSOR_QEP_CPR_X4       (SENSOR_QEP_CPR * 4)   // counts per mech rev
#define SENSOR_QEP_INV_CPR_X4   (1.0f / (float)SENSOR_QEP_CPR_X4)

// Set polarity if shaft direction of QEP does not match phase rotation.
#define SENSOR_QEP_DIR_SIGN     (+1)

// eQEP module + GPIO are pinned in SysConfig. Just reference the unit number
// here so src/sensor_qep.c knows which one to read.
#define SENSOR_QEP_UNIT         1           // eQEP1

#endif // SENSOR_QEP_H
