//=============================================================================
// motor_teknic_m2310p.h
//
// Teknic M-2310P-LN-04K  -- NEMA 23 brushless servo (debug motor).
// Datasheet: https://www.teknic.com/files/product_info/M-2310P-LN-04K.pdf
//
// All values are in SI units. Edit a parameter, rebuild, run.
//=============================================================================
#ifndef MOTOR_TEKNIC_M2310P_H
#define MOTOR_TEKNIC_M2310P_H

#define MOTOR_NAME              "Teknic M-2310P-LN-04K"

// ---- Electrical ---------------------------------------------------------
#define MOTOR_POLE_PAIRS        4
#define MOTOR_RS_OHM            0.36f       // line-to-line/2, datasheet typ.
#define MOTOR_LD_H              0.000235f   // 235 uH
#define MOTOR_LQ_H              0.000235f   // SPM -> Ld == Lq
#define MOTOR_FLUX_VS           0.0046f     // back-EMF constant (Vs/rad_elec, ~7.5 mVrms/krpm linev)

// ---- Ratings ------------------------------------------------------------
#define MOTOR_I_CONT_A          3.0f        // continuous phase current (rms)
#define MOTOR_I_PEAK_A          7.1f        // peak phase current
#define MOTOR_VBUS_NOM_V        48.0f
#define MOTOR_VBUS_MAX_V        75.0f
#define MOTOR_SPEED_MAX_RPM     6000.0f
#define MOTOR_SPEED_MAX_RAD_S   (MOTOR_SPEED_MAX_RPM * (2.0f * 3.14159265f) / 60.0f)

// ---- Trip thresholds (software) ----------------------------------------
#define MOTOR_OC_TRIP_A         8.0f        // > I_PEAK + headroom
#define MOTOR_OV_TRIP_V         60.0f
#define MOTOR_UV_TRIP_V         18.0f

// ---- Fault safe-state threshold (sensor-loss / fault shutdown) ----------
// Above this ELECTRICAL speed a fault shutdown applies a 3-phase ACTIVE SHORT
// (low-side on); below it the bridge coasts (tristate). Set high so the
// low-voltage bench (12 V supply, low back-EMF) always COASTS on a fault --
// gentle and correct for bring-up. Lower it once running at a bus where
// back-EMF approaches the rail.
#define FAULT_ASC_OMEGA_ELEC    6000.0f

#endif // MOTOR_TEKNIC_M2310P_H
