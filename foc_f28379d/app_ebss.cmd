/*=============================================================================
 * app_ebss.cmd - Supplemental linker placement for application .ebss data.
 *
 * The device linker command file actually used by the build
 * (src_device/2837xD_FLASH_lnk_cpu1.cmd, a linked resource to the C2000Ware
 * SDK file) is built for EABI and gives the .ebss output section no placement
 * directive. The debug-iface scope staging buffer (s_scope_buf, ~4 KB) plus
 * the existing g_datalog ring push .ebss past a single 4 KW RAM block, and an
 * auto-placed section cannot span blocks -- so the link failed with #10099.
 *
 * Place .ebss explicitly across several otherwise-unused global shared RAM
 * blocks (RAMGS4..GS7) with '>>' so the section may span them. MEMORY is
 * defined by the device .cmd; we only add a SECTIONS placement here. The SDK
 * file places no .ebss under EABI, so there is no duplicate-placement clash.
 *===========================================================================*/
SECTIONS
{
    .ebss : >> RAMGS4 | RAMGS5 | RAMGS6 | RAMGS7   PAGE = 1

    /* The SDK device .cmd pins both .text (>> FLASHB|FLASHC|...) and .cinit
     * (> FLASHB only) into FLASHB. .text grew to fill FLASHB exactly, leaving no
     * room for .cinit -> link failed with #10099 (".cinit FAILED TO ALLOCATE",
     * FLASHB free 0x15 < .cinit 0x34). FLASHA is otherwise unused, so relocate
     * the large align_step() function (~0x240 words) there to free FLASHB.
     * Functions are split into .text:<name> subsections (--gen_func_subsections),
     * so this explicit placement does NOT clash with the SDK's catch-all .text;
     * the named subsection simply wins for this one function. */
    .text:align_step : > FLASHA   PAGE = 0, ALIGN(8)

    /* Step 11 (field weakening) pushed .text past the end of FLASHB again
     * (#10099: .cinit 0x34 could not be placed, FLASHB 0 free). Relocate a few
     * more non-hot functions to the otherwise-empty FLASHA to free FLASHB for
     * .cinit. All chosen functions are one-time init or 1 kHz slow-loop code --
     * NOT the 10 kHz current-loop ISR -- so flash wait-state is irrelevant, and
     * none are candidates for .TI.ramfunc (so no future placement clash). Named
     * .text:<func> subsections (--gen_func_subsections) win over the SDK's
     * catch-all .text without conflicting with it. */
    .text:foc_init            : > FLASHA   PAGE = 0, ALIGN(8)
    .text:foc_speed_loop_tick : > FLASHA   PAGE = 0, ALIGN(8)
    .text:sm_tick_1khz        : > FLASHA   PAGE = 0, ALIGN(8)

    /* The read-only motor/loop autotune params (rs_ohm/ld_h/.../fw_vmax_frac in
     * debug_params.c) grew .text + the const param table just enough to spill
     * .cinit out of FLASHB again (#10099: .cinit 0x34, FLASHB 0x32 free).
     * Relocate the serial-command param accessors to FLASHA -- they run only on
     * a host request (PARAM_READ/WRITE/LIST), never in the 10 kHz ISR, so flash
     * wait-state is irrelevant and there is no .TI.ramfunc placement clash. */
    .text:param_find  : > FLASHA   PAGE = 0, ALIGN(8)
    .text:param_read  : > FLASHA   PAGE = 0, ALIGN(8)
    .text:param_write : > FLASHA   PAGE = 0, ALIGN(8)

    /* Production branch ("production settings" + "open-loop bypass for testing")
     * grew .text until it filled FLASHB to 100% (unused 0x0), so .cinit (0x3a)
     * had nowhere to land (#10099). FLASHA still had ~0x1bb6 free, so relocate
     * the largest one-time *startup* functions there. None run in the 10 kHz
     * current loop -- EPWM_init/PinMux_init/Device_enableAllPeripherals run once
     * in Board_init/Device_init, inverter_init runs once at bring-up -- so flash
     * wait-state is irrelevant and none are .TI.ramfunc (no placement clash).
     * Frees ~0x4d0 from FLASHB for lasting headroom as production code grows. */
    .text:EPWM_init                   : > FLASHA   PAGE = 0, ALIGN(8)
    .text:PinMux_init                 : > FLASHA   PAGE = 0, ALIGN(8)
    .text:Device_enableAllPeripherals : > FLASHA   PAGE = 0, ALIGN(8)
    .text:inverter_init               : > FLASHA   PAGE = 0, ALIGN(8)

    /* The one-shot datalog trigger + ISR step injector (bench PI step response)
     * refilled FLASHB again (#10099: .cinit 0x4c, FLASHB 0x0b free). Same remedy,
     * same reasoning: these are all one-time peripheral/driver init called from
     * Board_init()/main() before the 10 kHz ISR is enabled, so flash wait-state
     * cannot matter and none are .TI.ramfunc candidates. */
    .text:GPIO_init                   : > FLASHA   PAGE = 0, ALIGN(8)
    .text:myADCC_init                 : > FLASHA   PAGE = 0, ALIGN(8)
    .text:sensor_init                 : > FLASHA   PAGE = 0, ALIGN(8)
    .text:UART_DEBUG_init             : > FLASHA   PAGE = 0, ALIGN(8)

    /* The current-sense channel->phase map + ALIGN phase-ID auto-detect grew
     * adc_iface/foc_pipeline/debug_params past FLASHB again (#10099: .cinit
     * 0x4e). Relocate the phase-ID solver -- it runs ONCE per align (from ISR
     * context, like align_step which already lives in FLASHA) -- plus another
     * one-time SysConfig init function. Same non-hot / non-ramfunc reasoning. */
    .text:adc_isense_phase_id_commit  : > FLASHA   PAGE = 0, ALIGN(8)
    .text:myADCA_init                 : > FLASHA   PAGE = 0, ALIGN(8)
    .text:myADCB_init                 : > FLASHA   PAGE = 0, ALIGN(8)

    /* Dead-zone compensation feedforward (dtc_apply + its four live params) hit
     * the same wall (#10099: .cinit 0x5c, FLASHB 0x0 free). This has now recurred
     * on six consecutive features, so rather than free the minimum again, take
     * ~0x337 words at once for lasting headroom -- FLASHA still had 0x124c free.
     * NOTE all F2837xD flash banks share the same wait-state configuration, so
     * FLASHA vs FLASHB is purely an address choice with no speed cost; the only
     * rule being kept is that foc_current_loop_isr and the per-tick helpers it
     * calls stay put. Everything below runs once at startup, once per
     * calibrate/align, or on a host serial request:
     *   dispatch (0x18f)  debug_iface serial command handler, main-loop context
     *   adc_set_sincos_scale (0x87)  once per align, same as the phase-ID solver
     *   adc_init (0x55) / Device_init (0x3f) / main (0x34)  one-time startup
     *   adc_calibrate_offsets (0x39)  once per CALIBRATE, blocking spin loop */
    .text:dispatch                    : > FLASHA   PAGE = 0, ALIGN(8)
    .text:adc_set_sincos_scale        : > FLASHA   PAGE = 0, ALIGN(8)
    .text:adc_init                    : > FLASHA   PAGE = 0, ALIGN(8)
    .text:adc_calibrate_offsets       : > FLASHA   PAGE = 0, ALIGN(8)
    .text:Device_init                 : > FLASHA   PAGE = 0, ALIGN(8)
    .text:main                        : > FLASHA   PAGE = 0, ALIGN(8)
}
