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
}
