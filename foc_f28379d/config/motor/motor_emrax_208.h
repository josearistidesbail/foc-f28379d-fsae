//=============================================================================
// motor_emrax_208.h
//
// EMRAX 208  -- axial-flux PMSM, traction-class (production motor).
// Datasheet: EMRAX 208 datasheet v1.7,
//   https://emrax.com/wp-content/uploads/2026/08/EMRAX_208_datasheet_v1.7.pdf
//   (the old technical_data_table_graphs_4.5.pdf link is dead).
//
// Values below are the v1.7 *High-Voltage* (HV) winding, which is the one on
// the car (Rs at 25 degC). The previous set (18 mOhm, 125/130 uH, 38.3 mVs,
// labelled "MV") matched no current EMRAX document. Pole-pair count is 10 for
// every winding.
//=============================================================================
#ifndef MOTOR_EMRAX_208_H
#define MOTOR_EMRAX_208_H

#define MOTOR_NAME              "EMRAX 208 HV"

// ---- Electrical ---------------------------------------------------------
#define MOTOR_POLE_PAIRS        10
#define MOTOR_RS_OHM            0.01277f    // phase resistance at 25 degC (v1.7 HV)
#define MOTOR_LD_H              0.000110f   // 110 uH (v1.7 HV)
#define MOTOR_LQ_H              0.000115f   // 115 uH: 4.5 % saliency
#define MOTOR_FLUX_VS           0.03867f    // PM flux linkage (Vs), v1.7 HV

// ---- Ratings ------------------------------------------------------------
#define MOTOR_I_CONT_A          140.0f      // continuous phase (rms), v1.7 HV
#define MOTOR_I_PEAK_A          240.0f      // firmware current-AMPLITUDE limit. The
                                            // datasheet peak is 240 A rms (339 A
                                            // amplitude); 240 A amplitude stays under
                                            // MOTOR_OC_TRIP_A.
#define MOTOR_VBUS_NOM_V        400.0f
#define MOTOR_VBUS_MAX_V        470.0f
#define MOTOR_SPEED_MAX_RPM     6000.0f     // application limit (motor limit 7000 rpm)
#define MOTOR_SPEED_MAX_RAD_S   (MOTOR_SPEED_MAX_RPM * (2.0f * 3.14159265f) / 60.0f)

// ---- Trip thresholds (software) ----------------------------------------
#define MOTOR_OC_TRIP_A         260.0f
#define MOTOR_OV_TRIP_V         460.0f
// RAISE toward ~200 V (rated ~400 V Vbus) before running on the real DC link.

#define MOTOR_UV_TRIP_V         45.0f

// ---- Fault safe-state threshold (sensor-loss / fault shutdown) ----------
// Above this ELECTRICAL speed a lost-angle / fault shutdown applies a 3-phase
// ACTIVE SHORT (low-side on) to clamp back-EMF and prevent uncontrolled
// generation -> DC-link overvoltage; below it the bridge coasts (tristate).
// At 2600 elec rad/s the line-to-line back-EMF peak is sqrt(3)*lambda*w ~= 174 V,
// far below the ~5970 rad/s at which it exceeds a 400 V link. The margin is
// deliberate: a fault opens the shutdown circuit, the AIRs open and the
// discharge circuit pulls the link down, so the speed at which the diodes start
// to rectify falls with it. Tune on the vehicle.
// NOTE: the steady short-circuit current lambda_pm/Ld ~= 352 A exceeds
// MOTOR_OC_TRIP_A (260 A), and entering the ASC directly from zero current can
// transiently reach up to twice that (~700 A; Chen et al., IEEE TIE 2023),
// ABOVE the module's own 625 A overcurrent shutdown. Coordinate the ASC entry,
// this threshold and the current trips before the car is driven.
#define FAULT_ASC_OMEGA_ELEC    2600.0f

#endif // MOTOR_EMRAX_208_H
