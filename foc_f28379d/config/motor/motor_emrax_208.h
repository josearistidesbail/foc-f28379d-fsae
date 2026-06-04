//=============================================================================
// motor_emrax_208.h
//
// EMRAX 208  -- axial-flux PMSM, traction-class (production motor).
// Datasheet: https://emrax.com/wp-content/uploads/2020/03/emrax_208_technical_data_table_graphs_4.5.pdf
//
// Values below are for the *Medium-Voltage* (MV) variant; edit if you have
// the LV or HV winding. Pole-pair count is fixed at 10 across all variants.
//=============================================================================
#ifndef MOTOR_EMRAX_208_H
#define MOTOR_EMRAX_208_H

#define MOTOR_NAME              "EMRAX 208 MV"

// ---- Electrical ---------------------------------------------------------
#define MOTOR_POLE_PAIRS        10
#define MOTOR_RS_OHM            0.018f      // phase resistance, line-to-line/2
#define MOTOR_LD_H              0.000125f   // 125 uH
#define MOTOR_LQ_H              0.000130f   // slight saliency
#define MOTOR_FLUX_VS           0.0383f     // back-EMF constant (Vs/rad_elec)

// ---- Ratings ------------------------------------------------------------
#define MOTOR_I_CONT_A          100.0f      // continuous phase (rms)
#define MOTOR_I_PEAK_A          240.0f      // peak phase
#define MOTOR_VBUS_NOM_V        400.0f
#define MOTOR_VBUS_MAX_V        470.0f
#define MOTOR_SPEED_MAX_RPM     6000.0f
#define MOTOR_SPEED_MAX_RAD_S   (MOTOR_SPEED_MAX_RPM * (2.0f * 3.14159265f) / 60.0f)

// ---- Trip thresholds (software) ----------------------------------------
#define MOTOR_OC_TRIP_A         260.0f
#define MOTOR_OV_TRIP_V         460.0f
#define MOTOR_UV_TRIP_V         200.0f

#endif // MOTOR_EMRAX_208_H
