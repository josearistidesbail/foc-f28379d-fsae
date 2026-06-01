;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Sun May 31 21:09:06 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src/foc_pipeline.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen Unix v25.11.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("debug_isr_scope_high")
	.dwattr $C$DW$1, DW_AT_linkage_name("debug_isr_scope_high")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/debug_hooks.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x19)
	.dwattr $C$DW$1, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$1


$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("adc_read_phase_currents")
	.dwattr $C$DW$2, DW_AT_linkage_name("adc_read_phase_currents")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/adc_iface.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x11)
	.dwattr $C$DW$2, DW_AT_decl_column(0x0e)
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$109)

	.dwendtag $C$DW$2


$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("pwm_set_duty")
	.dwattr $C$DW$4, DW_AT_linkage_name("pwm_set_duty")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/pwm_iface.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$4, DW_AT_decl_column(0x0d)
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$108)

	.dwendtag $C$DW$4


$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("pwm_force_safe")
	.dwattr $C$DW$6, DW_AT_linkage_name("pwm_force_safe")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/pwm_iface.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$6, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$6


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("safety_check_isr")
	.dwattr $C$DW$7, DW_AT_linkage_name("safety_check_isr")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/safety.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x19)
	.dwattr $C$DW$7, DW_AT_decl_column(0x11)
	.dwendtag $C$DW$7


$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("debug_datalog_push")
	.dwattr $C$DW$8, DW_AT_linkage_name("debug_datalog_push")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/debug_hooks.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x12)
	.dwattr $C$DW$8, DW_AT_decl_column(0x0d)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$60)

$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$41)

	.dwendtag $C$DW$8


$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("debug_isr_scope_low")
	.dwattr $C$DW$11, DW_AT_linkage_name("debug_isr_scope_low")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/debug_hooks.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$11, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$11


$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("sm_tick_1khz")
	.dwattr $C$DW$12, DW_AT_linkage_name("sm_tick_1khz")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x19)
	.dwattr $C$DW$12, DW_AT_decl_column(0x15)
	.dwendtag $C$DW$12

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("g_dbg_qep_status")
	.dwattr $C$DW$13, DW_AT_linkage_name("g_dbg_qep_status")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x17)
	.dwattr $C$DW$13, DW_AT_decl_column(0x1a)

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("g_dbg_qep_direction")
	.dwattr $C$DW$14, DW_AT_linkage_name("g_dbg_qep_direction")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x18)
	.dwattr $C$DW$14, DW_AT_decl_column(0x1a)

	.bss	||s_decim||,1,1,0
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("s_decim")
	.dwattr $C$DW$15, DW_AT_linkage_name("s_decim")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_addr ||s_decim||]
	.dwattr $C$DW$15, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$15, DW_AT_decl_column(0x1f)


$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("sm_get_state")
	.dwattr $C$DW$16, DW_AT_linkage_name("sm_get_state")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x16)
	.dwattr $C$DW$16, DW_AT_decl_column(0x15)
	.dwendtag $C$DW$16

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("g_qep_theta_elec")
	.dwattr $C$DW$17, DW_AT_linkage_name("g_qep_theta_elec")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h")
	.dwattr $C$DW$17, DW_AT_decl_line(0x10)
	.dwattr $C$DW$17, DW_AT_decl_column(0x1b)

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("g_qep_omega_elec")
	.dwattr $C$DW$18, DW_AT_linkage_name("g_qep_omega_elec")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h")
	.dwattr $C$DW$18, DW_AT_decl_line(0x11)
	.dwattr $C$DW$18, DW_AT_decl_column(0x1b)

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("g_qep_mech_offset_cnt")
	.dwattr $C$DW$19, DW_AT_linkage_name("g_qep_mech_offset_cnt")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0x12)
	.dwattr $C$DW$19, DW_AT_decl_column(0x1b)

$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("g_dbg_qep_count")
	.dwattr $C$DW$20, DW_AT_linkage_name("g_dbg_qep_count")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0x15)
	.dwattr $C$DW$20, DW_AT_decl_column(0x1a)

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("g_dbg_qep_index_latch")
	.dwattr $C$DW$21, DW_AT_linkage_name("g_dbg_qep_index_latch")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0x16)
	.dwattr $C$DW$21, DW_AT_decl_column(0x1a)

	.bss	||s_clarke||,2,1,1
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("s_clarke")
	.dwattr $C$DW$22, DW_AT_linkage_name("s_clarke")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr ||s_clarke||]
	.dwattr $C$DW$22, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0x20)
	.dwattr $C$DW$22, DW_AT_decl_column(0x16)

	.bss	||s_park||,2,1,1
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("s_park")
	.dwattr $C$DW$23, DW_AT_linkage_name("s_park")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr ||s_park||]
	.dwattr $C$DW$23, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x21)
	.dwattr $C$DW$23, DW_AT_decl_column(0x16)

	.bss	||s_ipark||,2,1,1
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("s_ipark")
	.dwattr $C$DW$24, DW_AT_linkage_name("s_ipark")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_addr ||s_ipark||]
	.dwattr $C$DW$24, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$24, DW_AT_decl_line(0x22)
	.dwattr $C$DW$24, DW_AT_decl_column(0x16)

	.bss	||s_svgen||,2,1,1
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("s_svgen")
	.dwattr $C$DW$25, DW_AT_linkage_name("s_svgen")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_addr ||s_svgen||]
	.dwattr $C$DW$25, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$25, DW_AT_decl_line(0x23)
	.dwattr $C$DW$25, DW_AT_decl_column(0x16)

	.bss	||s_pi_id||,2,1,1
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("s_pi_id")
	.dwattr $C$DW$26, DW_AT_linkage_name("s_pi_id")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_addr ||s_pi_id||]
	.dwattr $C$DW$26, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$26, DW_AT_decl_line(0x24)
	.dwattr $C$DW$26, DW_AT_decl_column(0x16)

	.bss	||s_pi_iq||,2,1,1
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("s_pi_iq")
	.dwattr $C$DW$27, DW_AT_linkage_name("s_pi_iq")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr ||s_pi_iq||]
	.dwattr $C$DW$27, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0x25)
	.dwattr $C$DW$27, DW_AT_decl_column(0x16)

	.bss	||s_pi_spd||,2,1,1
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("s_pi_spd")
	.dwattr $C$DW$28, DW_AT_linkage_name("s_pi_spd")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_addr ||s_pi_spd||]
	.dwattr $C$DW$28, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$28, DW_AT_decl_line(0x26)
	.dwattr $C$DW$28, DW_AT_decl_column(0x16)

	.global	||g_dbg_align_id_meas||
	.bss	||g_dbg_align_id_meas||,2,1,1
$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("g_dbg_align_id_meas")
	.dwattr $C$DW$29, DW_AT_linkage_name("g_dbg_align_id_meas")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_addr ||g_dbg_align_id_meas||]
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$29, DW_AT_decl_line(0x33)
	.dwattr $C$DW$29, DW_AT_decl_column(0x14)

	.global	||g_dbg_align_iq_meas||
	.bss	||g_dbg_align_iq_meas||,2,1,1
$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("g_dbg_align_iq_meas")
	.dwattr $C$DW$30, DW_AT_linkage_name("g_dbg_align_iq_meas")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_addr ||g_dbg_align_iq_meas||]
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$30, DW_AT_decl_line(0x34)
	.dwattr $C$DW$30, DW_AT_decl_column(0x14)

	.global	||g_dbg_align_vd||
	.bss	||g_dbg_align_vd||,2,1,1
$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("g_dbg_align_vd")
	.dwattr $C$DW$31, DW_AT_linkage_name("g_dbg_align_vd")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_addr ||g_dbg_align_vd||]
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$31, DW_AT_decl_line(0x35)
	.dwattr $C$DW$31, DW_AT_decl_column(0x14)

	.global	||g_dbg_openloop_vd||
	.bss	||g_dbg_openloop_vd||,2,1,1
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("g_dbg_openloop_vd")
	.dwattr $C$DW$32, DW_AT_linkage_name("g_dbg_openloop_vd")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_addr ||g_dbg_openloop_vd||]
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$32, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$32, DW_AT_decl_column(0x14)

	.global	||g_dbg_openloop_vq||
	.bss	||g_dbg_openloop_vq||,2,1,1
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("g_dbg_openloop_vq")
	.dwattr $C$DW$33, DW_AT_linkage_name("g_dbg_openloop_vq")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_addr ||g_dbg_openloop_vq||]
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$33, DW_AT_decl_line(0x43)
	.dwattr $C$DW$33, DW_AT_decl_column(0x14)


$C$DW$34	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$34, DW_AT_name("CLARKE_init")
	.dwattr $C$DW$34, DW_AT_linkage_name("CLARKE_init")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0x74)
	.dwattr $C$DW$34, DW_AT_decl_column(0x01)
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$3)

$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$76)

	.dwendtag $C$DW$34


$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("PARK_init")
	.dwattr $C$DW$37, DW_AT_linkage_name("PARK_init")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h")
	.dwattr $C$DW$37, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$37, DW_AT_decl_column(0x01)
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$3)

$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$76)

	.dwendtag $C$DW$37


$C$DW$40	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$40, DW_AT_name("IPARK_init")
	.dwattr $C$DW$40, DW_AT_linkage_name("IPARK_init")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$40, DW_AT_declaration
	.dwattr $C$DW$40, DW_AT_external
	.dwattr $C$DW$40, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$40, DW_AT_decl_column(0x01)
$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$3)

$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$76)

	.dwendtag $C$DW$40


$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("SVGEN_init")
	.dwattr $C$DW$43, DW_AT_linkage_name("SVGEN_init")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$43, DW_AT_declaration
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0xee)
	.dwattr $C$DW$43, DW_AT_decl_column(0x01)
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$3)

$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$76)

	.dwendtag $C$DW$43


$C$DW$46	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$46, DW_AT_name("PI_init")
	.dwattr $C$DW$46, DW_AT_linkage_name("PI_init")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$46, DW_AT_declaration
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x122)
	.dwattr $C$DW$46, DW_AT_decl_column(0x01)
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$3)

$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$76)

	.dwendtag $C$DW$46


$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("adc_read_vbus")
	.dwattr $C$DW$49, DW_AT_linkage_name("adc_read_vbus")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$49, DW_AT_declaration
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/adc_iface.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x12)
	.dwattr $C$DW$49, DW_AT_decl_column(0x0e)
	.dwendtag $C$DW$49

	.bss	||s_park_obj||,4,0,1
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("s_park_obj")
	.dwattr $C$DW$50, DW_AT_linkage_name("s_park_obj")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_addr ||s_park_obj||]
	.dwattr $C$DW$50, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$50, DW_AT_decl_line(0x19)
	.dwattr $C$DW$50, DW_AT_decl_column(0x16)

	.bss	||s_ipark_obj||,4,0,1
$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("s_ipark_obj")
	.dwattr $C$DW$51, DW_AT_linkage_name("s_ipark_obj")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_addr ||s_ipark_obj||]
	.dwattr $C$DW$51, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$51, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$51, DW_AT_decl_column(0x16)

	.bss	||s_svgen_obj||,4,0,1
$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("s_svgen_obj")
	.dwattr $C$DW$52, DW_AT_linkage_name("s_svgen_obj")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_addr ||s_svgen_obj||]
	.dwattr $C$DW$52, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$52, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$52, DW_AT_decl_column(0x16)

	.bss	||s_clarke_obj||,6,0,1
$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("s_clarke_obj")
	.dwattr $C$DW$53, DW_AT_linkage_name("s_clarke_obj")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_addr ||s_clarke_obj||]
	.dwattr $C$DW$53, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$53, DW_AT_decl_line(0x18)
	.dwattr $C$DW$53, DW_AT_decl_column(0x16)

	.bss	||s_refs||,8,0,1
$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("s_refs")
	.dwattr $C$DW$54, DW_AT_linkage_name("s_refs")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_addr ||s_refs||]
	.dwattr $C$DW$54, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$54, DW_AT_decl_line(0x29)
	.dwattr $C$DW$54, DW_AT_decl_column(0x1f)

	.bss	||s_pi_id_obj||,16,0,1
$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("s_pi_id_obj")
	.dwattr $C$DW$55, DW_AT_linkage_name("s_pi_id_obj")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_addr ||s_pi_id_obj||]
	.dwattr $C$DW$55, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$55, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$55, DW_AT_decl_column(0x16)

	.bss	||s_pi_iq_obj||,16,0,1
$C$DW$56	.dwtag  DW_TAG_variable
	.dwattr $C$DW$56, DW_AT_name("s_pi_iq_obj")
	.dwattr $C$DW$56, DW_AT_linkage_name("s_pi_iq_obj")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_addr ||s_pi_iq_obj||]
	.dwattr $C$DW$56, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$56, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$56, DW_AT_decl_column(0x16)

	.bss	||s_pi_spd_obj||,16,0,1
$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("s_pi_spd_obj")
	.dwattr $C$DW$57, DW_AT_linkage_name("s_pi_spd_obj")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_addr ||s_pi_spd_obj||]
	.dwattr $C$DW$57, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$57, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$57, DW_AT_decl_column(0x16)

	.bss	||s_sig||,32,0,1
$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("s_sig")
	.dwattr $C$DW$58, DW_AT_linkage_name("s_sig")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_addr ||s_sig||]
	.dwattr $C$DW$58, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$58, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$58, DW_AT_decl_column(0x1f)

	.sblock	".bss"
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TIagzXcUlTL /tmp/TIagzQcCvXK --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TIagz1nhR5j 
	.sect	".text:PI_run"
	.clink

$C$DW$59	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$59, DW_AT_name("PI_run")
	.dwattr $C$DW$59, DW_AT_low_pc(||PI_run||)
	.dwattr $C$DW$59, DW_AT_high_pc(0x00)
	.dwattr $C$DW$59, DW_AT_linkage_name("PI_run")
	.dwattr $C$DW$59, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0x281)
	.dwattr $C$DW$59, DW_AT_decl_column(0x01)
	.dwattr $C$DW$59, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 643,column 1,is_stmt,address ||PI_run||,isa 0

	.dwfde $C$DW$CIE, ||PI_run||
$C$DW$60	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$60, DW_AT_name("handle")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg12]

$C$DW$61	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$61, DW_AT_name("refValue")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_name("fbackValue")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_name("pOutValue")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg14]


;***************************************************************
;* FNAME: PI_run                        FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

||PI_run||:
;* AR4   assigned to handle
$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("handle")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg12]

;* R0    assigned to refValue
$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("refValue")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to fbackValue
$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("fbackValue")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_regx 0x2f]

;* AR5   assigned to pOutValue
$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("pOutValue")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg14]

;* R5    assigned to Up
$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("Up")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x3f]

;* R2    assigned to Ui
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("Ui")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_regx 0x33]

;* R4    assigned to outMax
$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("outMax")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x3b]

;* R3    assigned to outMin
$C$DW$71	.dwtag  DW_TAG_variable
	.dwattr $C$DW$71, DW_AT_name("outMin")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x37]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 240,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |240| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 223,column 5,is_stmt,isa 0
        MOVB      XAR1,#14              ; [CPU_ALU] |223| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 655,column 5,is_stmt,isa 0

        MOV32     *SP++,R5H             ; [CPU_FPU] 
||      SUBF32    R4H,R0H,R1H           ; [CPU_FPU] |655| 

	.dwcfi	save_reg_to_mem, 63, 6
	.dwcfi	cfa_offset, -8
        MOV32     R2H,*+XAR4[0]         ; [CPU_FPU] |655| 
        MPYF32    R5H,R4H,R2H           ; [CPU_FPU] |655| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 661,column 5,is_stmt,isa 0
        MOV32     R3H,*+XAR4[2]         ; [CPU_FPU] |661| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 486,column 5,is_stmt,isa 0

        MPYF32    R4H,R5H,R3H           ; [CPU_FPU] |661| 
||      MOV32     *+XAR4[6],R0H         ; [CPU_FPU] |486| 

	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 661,column 5,is_stmt,isa 0
        MOV32     R2H,*+XAR4[4]         ; [CPU_FPU] |661| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 240,column 5,is_stmt,isa 0

        MOV32     R3H,*+XAR4[AR0]       ; [CPU_FPU] |240| 
||      ADDF32    R2H,R2H,R4H           ; [CPU_FPU] |661| 

	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 311,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |311| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 223,column 5,is_stmt,isa 0
        MOV32     R4H,*+XAR4[AR1]       ; [CPU_FPU] |223| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 661,column 5,is_stmt,isa 0
        MAXF32    R2H,R3H               ; [CPU_FPU] |661| 
        MINF32    R2H,R4H               ; [CPU_FPU] |661| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 311,column 5,is_stmt,isa 0

        ADDF32    R5H,R5H,R2H           ; [CPU_FPU] |675| 
||      MOV32     *+XAR4[AR0],R1H       ; [CPU_FPU] |311| 

	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 507,column 5,is_stmt,isa 0
        MOV32     *+XAR4[4],R2H         ; [CPU_FPU] |507| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 675,column 5,is_stmt,isa 0
        MAXF32    R5H,R3H               ; [CPU_FPU] |675| 
        MINF32    R5H,R4H               ; [CPU_FPU] |675| 
        MOV32     *+XAR5[0],R5H         ; [CPU_FPU] |675| 
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 59
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$59, DW_AT_TI_end_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h")
	.dwattr $C$DW$59, DW_AT_TI_end_line(0x2a7)
	.dwattr $C$DW$59, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$59

	.sect	".text:foc_speed_loop_tick"
	.clink
	.global	||foc_speed_loop_tick||

$C$DW$73	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$73, DW_AT_name("foc_speed_loop_tick")
	.dwattr $C$DW$73, DW_AT_low_pc(||foc_speed_loop_tick||)
	.dwattr $C$DW$73, DW_AT_high_pc(0x00)
	.dwattr $C$DW$73, DW_AT_linkage_name("foc_speed_loop_tick")
	.dwattr $C$DW$73, DW_AT_external
	.dwattr $C$DW$73, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$73, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$73, DW_AT_decl_column(0x06)
	.dwattr $C$DW$73, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../src/foc_pipeline.c",line 209,column 1,is_stmt,address ||foc_speed_loop_tick||,isa 0

	.dwfde $C$DW$CIE, ||foc_speed_loop_tick||

;***************************************************************
;* FNAME: foc_speed_loop_tick           FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

||foc_speed_loop_tick||:
;* AR4   assigned to $O$C1
;* R5    assigned to omega_mech
$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("omega_mech")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x3f]

;* R4    assigned to refValue
$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("refValue")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x3b]

;* R3    assigned to Up
$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("Up")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_regx 0x37]

;* R0    assigned to Ui
$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("Ui")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_regx 0x2b]

;* R4    assigned to outMax
$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("outMax")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_regx 0x3b]

;* R1    assigned to outMin
$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("outMin")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_regx 0x2f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 4
	.dwcfi	cfa_offset, -6
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 6
	.dwcfi	cfa_offset, -8
	.dwpsn	file "../src/foc_pipeline.c",line 210,column 5,is_stmt,isa 0
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("sm_get_state")
	.dwattr $C$DW$80, DW_AT_TI_call

        LCR       #||sm_get_state||     ; [CPU_ALU] |210| 
        ; call occurs [#||sm_get_state||] ; [] |210| 
        CMPB      AL,#3                 ; [CPU_ALU] |210| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |210| 
        ; branchcc occurs ; [] |210| 
        MOVW      DP,#||s_sig||+30      ; [CPU_ARAU] 
	.dwpsn	file "../src/foc_pipeline.c",line 213,column 26,is_stmt,isa 0
        MOV32     R0H,@||s_sig||+30     ; [CPU_FPU] |213| 
        MOVW      DP,#||s_pi_spd||      ; [CPU_ARAU] 
        MPYF32    R5H,R0H,#16000        ; [CPU_FPU] |213| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 240,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |240| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 223,column 5,is_stmt,isa 0
        MOVL      XAR4,@||s_pi_spd||    ; [CPU_ALU] |223| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 643,column 1,is_stmt,isa 0
        MOV32     R4H,@||s_refs||+4     ; [CPU_FPU] |643| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 223,column 5,is_stmt,isa 0
        MOVB      XAR1,#14              ; [CPU_ALU] |223| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 655,column 5,is_stmt,isa 0
        SUBF32    R2H,R4H,R5H           ; [CPU_FPU] |655| 
        MOV32     R0H,*+XAR4[0]         ; [CPU_FPU] |655| 
        MPYF32    R3H,R2H,R0H           ; [CPU_FPU] |655| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 661,column 5,is_stmt,isa 0
        MOV32     R1H,*+XAR4[2]         ; [CPU_FPU] |661| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 486,column 5,is_stmt,isa 0

        MPYF32    R2H,R3H,R1H           ; [CPU_FPU] |661| 
||      MOV32     *+XAR4[6],R4H         ; [CPU_FPU] |486| 

	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 661,column 5,is_stmt,isa 0
        MOV32     R4H,*+XAR4[4]         ; [CPU_FPU] |661| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 240,column 5,is_stmt,isa 0

        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |240| 
||      ADDF32    R0H,R2H,R4H           ; [CPU_FPU] |661| 

	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 311,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |311| 
	.dwpsn	file "../src/foc_pipeline.c",line 217,column 9,is_stmt,isa 0
        ZERO      R2H                   ; [CPU_FPU] |217| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 223,column 5,is_stmt,isa 0
        MOV32     R4H,*+XAR4[AR1]       ; [CPU_FPU] |223| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 661,column 5,is_stmt,isa 0
        MAXF32    R0H,R1H               ; [CPU_FPU] |661| 
        MINF32    R0H,R4H               ; [CPU_FPU] |661| 
	.dwpsn	file "../src/foc_pipeline.c",line 216,column 9,is_stmt,isa 0

        ADDF32    R3H,R3H,R0H           ; [CPU_FPU] |216| 
||      MOV32     *+XAR4[AR0],R5H       ; [CPU_FPU] |311| 

	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 507,column 5,is_stmt,isa 0
        MOV32     *+XAR4[4],R0H         ; [CPU_FPU] |507| 
	.dwpsn	file "../src/foc_pipeline.c",line 216,column 9,is_stmt,isa 0
        MAXF32    R3H,R1H               ; [CPU_FPU] |216| 
        MINF32    R3H,R4H               ; [CPU_FPU] |216| 
        MOV32     @||s_refs||+2,R3H     ; [CPU_FPU] |216| 
	.dwpsn	file "../src/foc_pipeline.c",line 217,column 9,is_stmt,isa 0
        MOV32     @||s_refs||,R2H       ; [CPU_FPU] |217| 
||$C$L1||:    
	.dwpsn	file "../src/foc_pipeline.c",line 220,column 5,is_stmt,isa 0
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("sm_tick_1khz")
	.dwattr $C$DW$81, DW_AT_TI_call

        LCR       #||sm_tick_1khz||     ; [CPU_ALU] |220| 
        ; call occurs [#||sm_tick_1khz||] ; [] |220| 
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 59
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$73, DW_AT_TI_end_file("../src/foc_pipeline.c")
	.dwattr $C$DW$73, DW_AT_TI_end_line(0xdd)
	.dwattr $C$DW$73, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$73

	.sect	".text:foc_init"
	.clink
	.global	||foc_init||

$C$DW$83	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$83, DW_AT_name("foc_init")
	.dwattr $C$DW$83, DW_AT_low_pc(||foc_init||)
	.dwattr $C$DW$83, DW_AT_high_pc(0x00)
	.dwattr $C$DW$83, DW_AT_linkage_name("foc_init")
	.dwattr $C$DW$83, DW_AT_external
	.dwattr $C$DW$83, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$83, DW_AT_decl_line(0x45)
	.dwattr $C$DW$83, DW_AT_decl_column(0x06)
	.dwattr $C$DW$83, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../src/foc_pipeline.c",line 70,column 1,is_stmt,address ||foc_init||,isa 0

	.dwfde $C$DW$CIE, ||foc_init||

;***************************************************************
;* FNAME: foc_init                      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||foc_init||:
;* AR6   assigned to $O$C1
;* AR5   assigned to $O$C2
;* AR6   assigned to $O$C3
;* AR5   assigned to $O$C4
;* AR4   assigned to $O$v5
;* AR4   assigned to $O$v4
;* AR4   assigned to $O$v3
;* AR4   assigned to $O$v2
;* AR4   assigned to $O$v1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../src/foc_pipeline.c",line 71,column 5,is_stmt,isa 0
        MOVB      ACC,#6                ; [CPU_ALU] |71| 
        MOVL      XAR4,#||s_clarke_obj|| ; [CPU_ARAU] |71| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("CLARKE_init")
	.dwattr $C$DW$84, DW_AT_TI_call

        LCR       #||CLARKE_init||      ; [CPU_ALU] |71| 
        ; call occurs [#||CLARKE_init||] ; [] |71| 
        MOVW      DP,#||s_clarke||      ; [CPU_ARAU] 
	.dwpsn	file "../src/foc_pipeline.c",line 72,column 5,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |72| 
	.dwpsn	file "../src/foc_pipeline.c",line 71,column 5,is_stmt,isa 0
        MOVL      @||s_clarke||,XAR4    ; [CPU_ALU] |71| 
	.dwpsn	file "../src/foc_pipeline.c",line 72,column 5,is_stmt,isa 0
        MOVL      XAR4,#||s_park_obj||  ; [CPU_ARAU] |72| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("PARK_init")
	.dwattr $C$DW$85, DW_AT_TI_call

        LCR       #||PARK_init||        ; [CPU_ALU] |72| 
        ; call occurs [#||PARK_init||] ; [] |72| 
        MOVW      DP,#||s_park||        ; [CPU_ARAU] 
	.dwpsn	file "../src/foc_pipeline.c",line 73,column 5,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |73| 
	.dwpsn	file "../src/foc_pipeline.c",line 72,column 5,is_stmt,isa 0
        MOVL      @||s_park||,XAR4      ; [CPU_ALU] |72| 
	.dwpsn	file "../src/foc_pipeline.c",line 73,column 5,is_stmt,isa 0
        MOVL      XAR4,#||s_ipark_obj|| ; [CPU_ARAU] |73| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("IPARK_init")
	.dwattr $C$DW$86, DW_AT_TI_call

        LCR       #||IPARK_init||       ; [CPU_ALU] |73| 
        ; call occurs [#||IPARK_init||] ; [] |73| 
        MOVW      DP,#||s_ipark||       ; [CPU_ARAU] 
	.dwpsn	file "../src/foc_pipeline.c",line 74,column 5,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |74| 
	.dwpsn	file "../src/foc_pipeline.c",line 73,column 5,is_stmt,isa 0
        MOVL      @||s_ipark||,XAR4     ; [CPU_ALU] |73| 
	.dwpsn	file "../src/foc_pipeline.c",line 74,column 5,is_stmt,isa 0
        MOVL      XAR4,#||s_svgen_obj|| ; [CPU_ARAU] |74| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("SVGEN_init")
	.dwattr $C$DW$87, DW_AT_TI_call

        LCR       #||SVGEN_init||       ; [CPU_ALU] |74| 
        ; call occurs [#||SVGEN_init||] ; [] |74| 
        MOVW      DP,#||s_svgen||       ; [CPU_ARAU] 
	.dwpsn	file "../src/foc_pipeline.c",line 75,column 5,is_stmt,isa 0
        MOVB      ACC,#16               ; [CPU_ALU] |75| 
	.dwpsn	file "../src/foc_pipeline.c",line 74,column 5,is_stmt,isa 0
        MOVL      @||s_svgen||,XAR4     ; [CPU_ALU] |74| 
	.dwpsn	file "../src/foc_pipeline.c",line 75,column 5,is_stmt,isa 0
        MOVL      XAR4,#||s_pi_id_obj|| ; [CPU_ARAU] |75| 
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("PI_init")
	.dwattr $C$DW$88, DW_AT_TI_call

        LCR       #||PI_init||          ; [CPU_ALU] |75| 
        ; call occurs [#||PI_init||] ; [] |75| 
        MOVW      DP,#||s_pi_id||       ; [CPU_ARAU] 
	.dwpsn	file "../src/foc_pipeline.c",line 76,column 5,is_stmt,isa 0
        MOVB      ACC,#16               ; [CPU_ALU] |76| 
	.dwpsn	file "../src/foc_pipeline.c",line 75,column 5,is_stmt,isa 0
        MOVL      @||s_pi_id||,XAR4     ; [CPU_ALU] |75| 
	.dwpsn	file "../src/foc_pipeline.c",line 76,column 5,is_stmt,isa 0
        MOVL      XAR4,#||s_pi_iq_obj|| ; [CPU_ARAU] |76| 
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("PI_init")
	.dwattr $C$DW$89, DW_AT_TI_call

        LCR       #||PI_init||          ; [CPU_ALU] |76| 
        ; call occurs [#||PI_init||] ; [] |76| 
        MOVW      DP,#||s_pi_iq||       ; [CPU_ARAU] 
	.dwpsn	file "../src/foc_pipeline.c",line 77,column 5,is_stmt,isa 0
        MOVB      ACC,#16               ; [CPU_ALU] |77| 
	.dwpsn	file "../src/foc_pipeline.c",line 76,column 5,is_stmt,isa 0
        MOVL      @||s_pi_iq||,XAR4     ; [CPU_ALU] |76| 
	.dwpsn	file "../src/foc_pipeline.c",line 77,column 5,is_stmt,isa 0
        MOVL      XAR4,#||s_pi_spd_obj|| ; [CPU_ARAU] |77| 
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("PI_init")
	.dwattr $C$DW$90, DW_AT_TI_call

        LCR       #||PI_init||          ; [CPU_ALU] |77| 
        ; call occurs [#||PI_init||] ; [] |77| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 422,column 5,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_ALU] |422| 
        MOVW      DP,#||s_clarke||      ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 275,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16147            ; [CPU_FPU] |275| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 274,column 5,is_stmt,isa 0
        MOVIZ     R2H,#16042            ; [CPU_FPU] |274| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 161,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15530            ; [CPU_FPU] |161| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 250,column 5,is_stmt,isa 0
        MOVL      XAR5,@||s_clarke||    ; [CPU_ALU] |250| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 275,column 5,is_stmt,isa 0
        MOVXI     R1H,#52538            ; [CPU_FPU] |275| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 274,column 5,is_stmt,isa 0
        MOVXI     R2H,#43691            ; [CPU_FPU] |274| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 181,column 5,is_stmt,isa 0
        MOVL      XAR6,@||s_svgen||     ; [CPU_ALU] |181| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 161,column 5,is_stmt,isa 0
        MOVXI     R0H,#43691            ; [CPU_FPU] |161| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 422,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |422| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 250,column 5,is_stmt,isa 0
        MOVB      *+XAR5[4],#3,UNC      ; [CPU_ALU] |250| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 275,column 5,is_stmt,isa 0
        MOV32     *+XAR5[2],R1H         ; [CPU_FPU] |275| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 274,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R2H         ; [CPU_FPU] |274| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 422,column 5,is_stmt,isa 0
        MOVIZ     R1H,#49379            ; [CPU_FPU] |422| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 356,column 5,is_stmt,isa 0
        MOVIZ     R2H,#14929            ; [CPU_FPU] |356| 
	.dwpsn	file "../src/foc_pipeline.c",line 97,column 5,is_stmt,isa 0
        MOVIZ     R3H,#16960            ; [CPU_FPU] |97| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 355,column 5,is_stmt,isa 0
        MOVL      XAR5,@||s_pi_id||     ; [CPU_ALU] |355| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 161,column 5,is_stmt,isa 0
        MOV32     *+XAR6[0],R0H         ; [CPU_FPU] |161| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 181,column 5,is_stmt,isa 0
        MOV       *+XAR6[3],#0          ; [CPU_ALU] |181| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 355,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16076            ; [CPU_FPU] |355| 
	.dwpsn	file "../src/foc_pipeline.c",line 98,column 5,is_stmt,isa 0
        MOV       @||s_decim||,#0       ; [CPU_ALU] |98| 
	.dwpsn	file "../src/foc_pipeline.c",line 77,column 5,is_stmt,isa 0
        MOVL      @||s_pi_spd||,XAR4    ; [CPU_ALU] |77| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 422,column 5,is_stmt,isa 0
        MOVXI     R1H,#13107            ; [CPU_FPU] |422| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 355,column 5,is_stmt,isa 0
        MOVXI     R0H,#52429            ; [CPU_FPU] |355| 
        MOVL      XAR6,@||s_pi_iq||     ; [CPU_ALU] |355| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 356,column 5,is_stmt,isa 0
        MOVXI     R2H,#46871            ; [CPU_FPU] |356| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 355,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |355| 
        MOVIZ     R0H,#16076            ; [CPU_FPU] |355| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |355| 
        MOV32     *+XAR6[0],R0H         ; [CPU_FPU] |355| 
        MOVIZ     R0H,#15477            ; [CPU_FPU] |355| 
        MOVXI     R0H,#49807            ; [CPU_FPU] |355| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |355| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 422,column 5,is_stmt,isa 0
        MOVIZ     R0H,#49382            ; [CPU_FPU] |422| 
        MOVXI     R0H,#26215            ; [CPU_FPU] |422| 
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |422| 
        MOVB      XAR0,#12              ; [CPU_ALU] |422| 
        MOVIZ     R0H,#49382            ; [CPU_FPU] |422| 
        MOVXI     R0H,#26215            ; [CPU_FPU] |422| 
        MOV32     *+XAR6[AR0],R0H       ; [CPU_FPU] |422| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 423,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |423| 
        MOVIZ     R0H,#16614            ; [CPU_FPU] |423| 
        MOVXI     R0H,#26215            ; [CPU_FPU] |423| 
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |423| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 422,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R1H       ; [CPU_FPU] |422| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 423,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |423| 
        MOVIZ     R0H,#16614            ; [CPU_FPU] |423| 
        MOVXI     R0H,#26215            ; [CPU_FPU] |423| 
        MOV32     *+XAR6[AR0],R0H       ; [CPU_FPU] |423| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 356,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15733            ; [CPU_FPU] |356| 
        MOVXI     R0H,#49807            ; [CPU_FPU] |356| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 423,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |423| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 356,column 5,is_stmt,isa 0
        MOV32     *+XAR5[2],R0H         ; [CPU_FPU] |356| 
	.dwpsn	file "../src/foc_pipeline.c",line 94,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |94| 
        MOV32     @||s_refs||,R0H       ; [CPU_FPU] |94| 
	.dwpsn	file "../src/foc_pipeline.c",line 95,column 5,is_stmt,isa 0
        MOV32     @||s_refs||+2,R0H     ; [CPU_FPU] |95| 
	.dwpsn	file "../src/foc_pipeline.c",line 96,column 5,is_stmt,isa 0
        MOV32     @||s_refs||+4,R0H     ; [CPU_FPU] |96| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 356,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15733            ; [CPU_FPU] |356| 
        MOVXI     R0H,#49807            ; [CPU_FPU] |356| 
	.dwpsn	file "../src/foc_pipeline.c",line 97,column 5,is_stmt,isa 0
        MOV32     @||s_refs||+6,R3H     ; [CPU_FPU] |97| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 356,column 5,is_stmt,isa 0
        MOV32     *+XAR6[2],R0H         ; [CPU_FPU] |356| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 423,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16611            ; [CPU_FPU] |423| 
        MOVXI     R0H,#13107            ; [CPU_FPU] |423| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 356,column 5,is_stmt,isa 0
        MOV32     *+XAR4[2],R2H         ; [CPU_FPU] |356| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 423,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |423| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$83, DW_AT_TI_end_file("../src/foc_pipeline.c")
	.dwattr $C$DW$83, DW_AT_TI_end_line(0x63)
	.dwattr $C$DW$83, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$83

	.sect	".text:foc_get_signals"
	.clink
	.global	||foc_get_signals||

$C$DW$92	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$92, DW_AT_name("foc_get_signals")
	.dwattr $C$DW$92, DW_AT_low_pc(||foc_get_signals||)
	.dwattr $C$DW$92, DW_AT_high_pc(0x00)
	.dwattr $C$DW$92, DW_AT_linkage_name("foc_get_signals")
	.dwattr $C$DW$92, DW_AT_external
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$92, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$92, DW_AT_decl_line(0x66)
	.dwattr $C$DW$92, DW_AT_decl_column(0x17)
	.dwattr $C$DW$92, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/foc_pipeline.c",line 102,column 45,is_stmt,address ||foc_get_signals||,isa 0

	.dwfde $C$DW$CIE, ||foc_get_signals||

;***************************************************************
;* FNAME: foc_get_signals               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||foc_get_signals||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src/foc_pipeline.c",line 102,column 47,is_stmt,isa 0
        MOVL      XAR4,#||s_sig||       ; [CPU_ARAU] |102| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$92, DW_AT_TI_end_file("../src/foc_pipeline.c")
	.dwattr $C$DW$92, DW_AT_TI_end_line(0x66)
	.dwattr $C$DW$92, DW_AT_TI_end_column(0x55)
	.dwendentry
	.dwendtag $C$DW$92

	.sect	".text:foc_get_refs"
	.clink
	.global	||foc_get_refs||

$C$DW$94	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$94, DW_AT_name("foc_get_refs")
	.dwattr $C$DW$94, DW_AT_low_pc(||foc_get_refs||)
	.dwattr $C$DW$94, DW_AT_high_pc(0x00)
	.dwattr $C$DW$94, DW_AT_linkage_name("foc_get_refs")
	.dwattr $C$DW$94, DW_AT_external
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$94, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$94, DW_AT_decl_line(0x65)
	.dwattr $C$DW$94, DW_AT_decl_column(0x0e)
	.dwattr $C$DW$94, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/foc_pipeline.c",line 101,column 33,is_stmt,address ||foc_get_refs||,isa 0

	.dwfde $C$DW$CIE, ||foc_get_refs||

;***************************************************************
;* FNAME: foc_get_refs                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||foc_get_refs||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src/foc_pipeline.c",line 101,column 35,is_stmt,isa 0
        MOVL      XAR4,#||s_refs||      ; [CPU_ARAU] |101| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$94, DW_AT_TI_end_file("../src/foc_pipeline.c")
	.dwattr $C$DW$94, DW_AT_TI_end_line(0x65)
	.dwattr $C$DW$94, DW_AT_TI_end_column(0x41)
	.dwendentry
	.dwendtag $C$DW$94

	.sect	".text:CLARKE_run"
	.clink

$C$DW$96	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$96, DW_AT_name("CLARKE_run")
	.dwattr $C$DW$96, DW_AT_low_pc(||CLARKE_run||)
	.dwattr $C$DW$96, DW_AT_high_pc(0x00)
	.dwattr $C$DW$96, DW_AT_linkage_name("CLARKE_run")
	.dwattr $C$DW$96, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x87)
	.dwattr $C$DW$96, DW_AT_decl_column(0x01)
	.dwattr $C$DW$96, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 136,column 1,is_stmt,address ||CLARKE_run||,isa 0

	.dwfde $C$DW$CIE, ||CLARKE_run||
$C$DW$97	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$97, DW_AT_name("handle")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg12]

$C$DW$98	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$98, DW_AT_name("pInVec")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg14]

$C$DW$99	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$99, DW_AT_name("pOutVec")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_breg20 -6]


;***************************************************************
;* FNAME: CLARKE_run                    FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||CLARKE_run||:
;* R2    assigned to $O$C1
;* R1    assigned to $O$C2
;* AL    assigned to $O$C3
;* AR4   assigned to handle
$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("handle")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to pInVec
$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("pInVec")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg14]

;* AR6   assigned to pOutVec
$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("pOutVec")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg16]

;* R1    assigned to alpha_sf
$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("alpha_sf")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to beta_sf
$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("beta_sf")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 147,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[4]          ; [CPU_ALU] |147| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 141,column 24,is_stmt,isa 0
        MOV32     R1H,*+XAR4[0]         ; [CPU_FPU] |141| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 142,column 23,is_stmt,isa 0
        MOV32     R0H,*+XAR4[2]         ; [CPU_FPU] |142| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 147,column 5,is_stmt,isa 0
        CMPB      AL,#3                 ; [CPU_ALU] |147| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 136,column 1,is_stmt,isa 0
        MOVL      XAR6,*-SP[6]          ; [CPU_ALU] |136| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 147,column 5,is_stmt,isa 0
        B         ||$C$L2||,EQ          ; [CPU_ALU] |147| 
        ; branchcc occurs ; [] |147| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 156,column 10,is_stmt,isa 0
        CMPB      AL,#2                 ; [CPU_ALU] |156| 
        B         ||$C$L4||,NEQ         ; [CPU_ALU] |156| 
        ; branchcc occurs ; [] |156| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 160,column 9,is_stmt,isa 0
        MOV32     R2H,*+XAR5[0]         ; [CPU_FPU] |160| 
        MPYF32    R1H,R1H,R2H           ; [CPU_FPU] |160| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR6[0],R1H         ; [CPU_FPU] |160| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 162,column 9,is_stmt,isa 0
        MOV32     R1H,*+XAR5[2]         ; [CPU_FPU] |162| 
        ADDF32    R2H,R1H,R1H           ; [CPU_FPU] |162| 
        MOV32     R4H,*+XAR5[0]         ; [CPU_FPU] |162| 
        ADDF32    R1H,R2H,R4H           ; [CPU_FPU] |162| 
        B         ||$C$L3||,UNC         ; [CPU_ALU] |162| 
        ; branch occurs ; [] |162| 
||$C$L2||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 151,column 9,is_stmt,isa 0
        MOV32     R2H,*+XAR5[0]         ; [CPU_FPU] |151| 
        MOV32     R4H,*+XAR5[4]         ; [CPU_FPU] |151| 

        ADDF32    R2H,R2H,R2H           ; [CPU_FPU] |151| 
||      MOV32     R3H,*+XAR5[2]         ; [CPU_FPU] |151| 

        ADDF32    R3H,R3H,R4H           ; [CPU_FPU] |151| 
        NOP       ; [CPU_ALU] 
        SUBF32    R2H,R2H,R3H           ; [CPU_FPU] |151| 
        NOP       ; [CPU_ALU] 
        MPYF32    R1H,R1H,R2H           ; [CPU_FPU] |151| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR6[0],R1H         ; [CPU_FPU] |151| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h",line 154,column 9,is_stmt,isa 0
        MOV32     R1H,*+XAR5[4]         ; [CPU_FPU] |154| 
        MOV32     R2H,*+XAR5[2]         ; [CPU_FPU] |154| 
        SUBF32    R1H,R2H,R1H           ; [CPU_FPU] |154| 
        NOP       ; [CPU_ALU] 
||$C$L3||:    
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |154| 
        NOP       ; [CPU_ALU] 
        MOV32     *+XAR6[2],R0H         ; [CPU_FPU] |154| 
||$C$L4||:    
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$96, DW_AT_TI_end_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h")
	.dwattr $C$DW$96, DW_AT_TI_end_line(0xa7)
	.dwattr $C$DW$96, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$96

	.sect	".text:PARK_run"
	.clink

$C$DW$106	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$106, DW_AT_name("PARK_run")
	.dwattr $C$DW$106, DW_AT_low_pc(||PARK_run||)
	.dwattr $C$DW$106, DW_AT_high_pc(0x00)
	.dwattr $C$DW$106, DW_AT_linkage_name("PARK_run")
	.dwattr $C$DW$106, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$106, DW_AT_decl_column(0x01)
	.dwattr $C$DW$106, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 184,column 1,is_stmt,address ||PARK_run||,isa 0

	.dwfde $C$DW$CIE, ||PARK_run||
$C$DW$107	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$107, DW_AT_name("handle")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg12]

$C$DW$108	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$108, DW_AT_name("pInVec")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg14]

$C$DW$109	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$109, DW_AT_name("pOutVec")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: PARK_run                      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||PARK_run||:
;* AR4   assigned to handle
$C$DW$110	.dwtag  DW_TAG_variable
	.dwattr $C$DW$110, DW_AT_name("handle")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to pInVec
$C$DW$111	.dwtag  DW_TAG_variable
	.dwattr $C$DW$111, DW_AT_name("pInVec")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg14]

;* AR4   assigned to pOutVec
$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("pOutVec")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg12]

;* R3    assigned to sinTh
$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("sinTh")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to cosTh
$C$DW$114	.dwtag  DW_TAG_variable
	.dwattr $C$DW$114, DW_AT_name("cosTh")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_regx 0x33]

;* R1    assigned to value_0
$C$DW$115	.dwtag  DW_TAG_variable
	.dwattr $C$DW$115, DW_AT_name("value_0")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to value_1
$C$DW$116	.dwtag  DW_TAG_variable
	.dwattr $C$DW$116, DW_AT_name("value_1")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 187,column 21,is_stmt,isa 0
        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |187| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 191,column 23,is_stmt,isa 0
        MOV32     R0H,*+XAR5[2]         ; [CPU_FPU] |191| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 190,column 23,is_stmt,isa 0
        MOV32     R1H,*+XAR5[0]         ; [CPU_FPU] |190| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 188,column 21,is_stmt,isa 0

        MPYF32    R5H,R3H,R0H           ; [CPU_FPU] |193| 
||      MOV32     R2H,*+XAR4[2]         ; [CPU_FPU] |188| 

	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 193,column 5,is_stmt,isa 0
        MPYF32    R4H,R2H,R1H           ; [CPU_FPU] |193| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 184,column 1,is_stmt,isa 0
        MOVL      XAR4,*-SP[8]          ; [CPU_ALU] |184| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 194,column 5,is_stmt,isa 0
        MPYF32    R0H,R2H,R0H           ; [CPU_FPU] |194| 
        MPYF32    R1H,R3H,R1H           ; [CPU_FPU] |194| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 193,column 5,is_stmt,isa 0
        ADDF32    R2H,R5H,R4H           ; [CPU_FPU] |193| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 194,column 5,is_stmt,isa 0
        SUBF32    R0H,R0H,R1H           ; [CPU_FPU] |194| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 193,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R2H         ; [CPU_FPU] |193| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 194,column 5,is_stmt,isa 0
        MOV32     *+XAR4[2],R0H         ; [CPU_FPU] |194| 
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$106, DW_AT_TI_end_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h")
	.dwattr $C$DW$106, DW_AT_TI_end_line(0xc5)
	.dwattr $C$DW$106, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$106

	.sect	".text:IPARK_run"
	.clink

$C$DW$118	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$118, DW_AT_name("IPARK_run")
	.dwattr $C$DW$118, DW_AT_low_pc(||IPARK_run||)
	.dwattr $C$DW$118, DW_AT_high_pc(0x00)
	.dwattr $C$DW$118, DW_AT_linkage_name("IPARK_run")
	.dwattr $C$DW$118, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$118, DW_AT_decl_column(0x01)
	.dwattr $C$DW$118, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 183,column 1,is_stmt,address ||IPARK_run||,isa 0

	.dwfde $C$DW$CIE, ||IPARK_run||
$C$DW$119	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$119, DW_AT_name("handle")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg12]

$C$DW$120	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$120, DW_AT_name("pInVec")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg14]

$C$DW$121	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$121, DW_AT_name("pOutVec")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_breg20 -8]


;***************************************************************
;* FNAME: IPARK_run                     FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||IPARK_run||:
;* AR4   assigned to handle
$C$DW$122	.dwtag  DW_TAG_variable
	.dwattr $C$DW$122, DW_AT_name("handle")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to pInVec
$C$DW$123	.dwtag  DW_TAG_variable
	.dwattr $C$DW$123, DW_AT_name("pInVec")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg14]

;* AR4   assigned to pOutVec
$C$DW$124	.dwtag  DW_TAG_variable
	.dwattr $C$DW$124, DW_AT_name("pOutVec")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg12]

;* R3    assigned to sinTh
$C$DW$125	.dwtag  DW_TAG_variable
	.dwattr $C$DW$125, DW_AT_name("sinTh")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to cosTh
$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("cosTh")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_regx 0x33]

;* R1    assigned to value_0
$C$DW$127	.dwtag  DW_TAG_variable
	.dwattr $C$DW$127, DW_AT_name("value_0")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_regx 0x2f]

;* R0    assigned to value_1
$C$DW$128	.dwtag  DW_TAG_variable
	.dwattr $C$DW$128, DW_AT_name("value_1")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 186,column 21,is_stmt,isa 0
        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |186| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 190,column 23,is_stmt,isa 0
        MOV32     R0H,*+XAR5[2]         ; [CPU_FPU] |190| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 189,column 23,is_stmt,isa 0
        MOV32     R1H,*+XAR5[0]         ; [CPU_FPU] |189| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 187,column 21,is_stmt,isa 0

        MPYF32    R4H,R3H,R0H           ; [CPU_FPU] |192| 
||      MOV32     R2H,*+XAR4[2]         ; [CPU_FPU] |187| 

	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 192,column 5,is_stmt,isa 0
        MPYF32    R5H,R2H,R1H           ; [CPU_FPU] |192| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 183,column 1,is_stmt,isa 0
        MOVL      XAR4,*-SP[8]          ; [CPU_ALU] |183| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 193,column 5,is_stmt,isa 0
        MPYF32    R0H,R2H,R0H           ; [CPU_FPU] |193| 
        MPYF32    R1H,R3H,R1H           ; [CPU_FPU] |193| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 192,column 5,is_stmt,isa 0
        SUBF32    R2H,R5H,R4H           ; [CPU_FPU] |192| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 193,column 5,is_stmt,isa 0
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |193| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 192,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R2H         ; [CPU_FPU] |192| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 193,column 5,is_stmt,isa 0
        MOV32     *+XAR4[2],R0H         ; [CPU_FPU] |193| 
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$118, DW_AT_TI_end_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h")
	.dwattr $C$DW$118, DW_AT_TI_end_line(0xc4)
	.dwattr $C$DW$118, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$118

	.sect	".text:SVGEN_run"
	.clink

$C$DW$130	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$130, DW_AT_name("SVGEN_run")
	.dwattr $C$DW$130, DW_AT_low_pc(||SVGEN_run||)
	.dwattr $C$DW$130, DW_AT_high_pc(0x00)
	.dwattr $C$DW$130, DW_AT_linkage_name("SVGEN_run")
	.dwattr $C$DW$130, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$130, DW_AT_decl_column(0x01)
	.dwattr $C$DW$130, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 255,column 1,is_stmt,address ||SVGEN_run||,isa 0

	.dwfde $C$DW$CIE, ||SVGEN_run||
$C$DW$131	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$131, DW_AT_name("handle")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg12]

$C$DW$132	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$132, DW_AT_name("pVab_V")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg14]

$C$DW$133	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$133, DW_AT_name("pVabc_pu")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_breg20 -12]


;***************************************************************
;* FNAME: SVGEN_run                     FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

||SVGEN_run||:
;* R0    assigned to $O$C1
;* R2    assigned to $O$C2
;* R0    assigned to $O$C3
;* R3    assigned to $O$C4
;* AR4   assigned to handle
$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("handle")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to pVab_V
$C$DW$135	.dwtag  DW_TAG_variable
	.dwattr $C$DW$135, DW_AT_name("pVab_V")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg14]

;* AR5   assigned to pVabc_pu
$C$DW$136	.dwtag  DW_TAG_variable
	.dwattr $C$DW$136, DW_AT_name("pVabc_pu")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg14]

;* R0    assigned to Vmax_pu
$C$DW$137	.dwtag  DW_TAG_variable
	.dwattr $C$DW$137, DW_AT_name("Vmax_pu")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x2b]

;* R4    assigned to Vmin_pu
$C$DW$138	.dwtag  DW_TAG_variable
	.dwattr $C$DW$138, DW_AT_name("Vmin_pu")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x3b]

;* R2    assigned to Vcom_pu
$C$DW$139	.dwtag  DW_TAG_variable
	.dwattr $C$DW$139, DW_AT_name("Vcom_pu")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x33]

;* AL    assigned to svmMode
$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("svmMode")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg0]

;* R1    assigned to Va_pu
$C$DW$141	.dwtag  DW_TAG_variable
	.dwattr $C$DW$141, DW_AT_name("Va_pu")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x2f]

;* R3    assigned to Vb_pu
$C$DW$142	.dwtag  DW_TAG_variable
	.dwattr $C$DW$142, DW_AT_name("Vb_pu")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x37]

;* R5    assigned to Vc_pu
$C$DW$143	.dwtag  DW_TAG_variable
	.dwattr $C$DW$143, DW_AT_name("Vc_pu")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x3f]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 6
	.dwcfi	cfa_offset, -8
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 271,column 21,is_stmt,isa 0
        MOVIZ     R2H,#16221            ; [CPU_FPU] |271| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 266,column 21,is_stmt,isa 0
        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |266| 
        MOV32     R0H,*+XAR5[0]         ; [CPU_FPU] |266| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 271,column 21,is_stmt,isa 0
        MOVXI     R2H,#46039            ; [CPU_FPU] |271| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 266,column 21,is_stmt,isa 0

        MPYF32    R1H,R3H,R0H           ; [CPU_FPU] |266| 
||      MOV32     R4H,*+XAR5[2]         ; [CPU_FPU] |271| 

	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 124,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[3]          ; [CPU_ALU] |124| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 271,column 21,is_stmt,isa 0
        MPYF32    R0H,R1H,#16128        ; [CPU_FPU] |271| 
        MPYF32    R3H,R3H,R4H           ; [CPU_FPU] |271| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 255,column 1,is_stmt,isa 0
        MOVL      XAR5,*-SP[12]         ; [CPU_ALU] |255| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 271,column 21,is_stmt,isa 0
        MPYF32    R2H,R2H,R3H           ; [CPU_FPU] |271| 
        NEGF32    R0H,R0H               ; [CPU_FPU] |271| 
        ADDF32    R3H,R2H,R0H           ; [CPU_FPU] |271| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 275,column 21,is_stmt,isa 0
        SUBF32    R5H,R0H,R2H           ; [CPU_FPU] |275| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 280,column 5,is_stmt,isa 0
        CMPF32    R1H,R3H               ; [CPU_FPU] |280| 
        MOVST0    ZF, NF                ; [CPU_FPU] |280| 
        B         ||$C$L5||,GT          ; [CPU_ALU] |280| 
        ; branchcc occurs ; [] |280| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 288,column 9,is_stmt,isa 0
        MOV32     R4H,R1H               ; [CPU_FPU] |288| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 291,column 5,is_stmt,isa 0
        MPYF32    R0H,R4H,#16128        ; [CPU_FPU] |291| 
        NOP       ; [CPU_ALU] 
        NEGF32    R0H,R0H               ; [CPU_FPU] |291| 
        ADDF32    R6H,R2H,R0H           ; [CPU_FPU] |291| 
        SUBF32    R2H,R0H,R2H           ; [CPU_FPU] |291| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 287,column 9,is_stmt,isa 0
        MOV32     R0H,R3H               ; [CPU_FPU] |287| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 291,column 5,is_stmt,isa 0
        CMPF32    R2H,R6H               ; [CPU_FPU] |291| 
        MOVST0    ZF, NF                ; [CPU_FPU] |291| 
        B         ||$C$L6||,LEQ         ; [CPU_ALU] |291| 
        ; branchcc occurs ; [] |291| 
        B         ||$C$L7||,UNC         ; [CPU_ALU] |291| 
        ; branch occurs ; [] |291| 
||$C$L5||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 282,column 9,is_stmt,isa 0
        MOV32     R0H,R1H               ; [CPU_FPU] |282| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 283,column 9,is_stmt,isa 0
        MOV32     R4H,R3H               ; [CPU_FPU] |283| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 291,column 5,is_stmt,isa 0
        CMPF32    R5H,R0H               ; [CPU_FPU] |291| 
        MOVST0    ZF, NF                ; [CPU_FPU] |291| 
        B         ||$C$L7||,GT          ; [CPU_ALU] |291| 
        ; branchcc occurs ; [] |291| 
||$C$L6||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 297,column 9,is_stmt,isa 0
        MOV32     R2H,R5H               ; [CPU_FPU] |297| 
        MINF32    R4H,R2H               ; [CPU_FPU] |297| 
        B         ||$C$L8||,UNC         ; [CPU_ALU] |297| 
        ; branch occurs ; [] |297| 
||$C$L7||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 293,column 9,is_stmt,isa 0
        MOV32     R0H,R5H               ; [CPU_FPU] |293| 
||$C$L8||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 301,column 5,is_stmt,isa 0
        ADDF32    R2H,R4H,R0H           ; [CPU_FPU] |301| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 303,column 5,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |303| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 301,column 5,is_stmt,isa 0
        MPYF32    R2H,R2H,#16128        ; [CPU_FPU] |301| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 303,column 5,is_stmt,isa 0
        B         ||$C$L10||,EQ         ; [CPU_ALU] |303| 
        ; branchcc occurs ; [] |303| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 310,column 10,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |310| 
        B         ||$C$L9||,EQ          ; [CPU_ALU] |310| 
        ; branchcc occurs ; [] |310| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 316,column 10,is_stmt,isa 0
        CMPB      AL,#2                 ; [CPU_ALU] |316| 
        B         ||$C$L12||,NEQ        ; [CPU_ALU] |316| 
        ; branchcc occurs ; [] |316| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 318,column 9,is_stmt,isa 0
        SUBF32    R1H,R1H,R0H           ; [CPU_FPU] |318| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 319,column 9,is_stmt,isa 0
        SUBF32    R2H,R3H,R0H           ; [CPU_FPU] |319| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 320,column 9,is_stmt,isa 0
        SUBF32    R0H,R5H,R0H           ; [CPU_FPU] |320| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 318,column 9,is_stmt,isa 0
        ADDF32    R1H,R1H,#16128        ; [CPU_FPU] |318| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 319,column 9,is_stmt,isa 0
        ADDF32    R2H,R2H,#16128        ; [CPU_FPU] |319| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 320,column 9,is_stmt,isa 0
        ADDF32    R0H,R0H,#16128        ; [CPU_FPU] |320| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 318,column 9,is_stmt,isa 0
        MOV32     *+XAR5[0],R1H         ; [CPU_FPU] |318| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 319,column 9,is_stmt,isa 0
        MOV32     *+XAR5[2],R2H         ; [CPU_FPU] |319| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 320,column 9,is_stmt,isa 0
        MOV32     *+XAR5[4],R0H         ; [CPU_FPU] |320| 
        B         ||$C$L12||,UNC        ; [CPU_ALU] |320| 
        ; branch occurs ; [] |320| 
||$C$L9||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 312,column 9,is_stmt,isa 0
        SUBF32    R0H,R1H,R4H           ; [CPU_FPU] |312| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 314,column 9,is_stmt,isa 0
        SUBF32    R2H,R5H,R4H           ; [CPU_FPU] |314| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 313,column 9,is_stmt,isa 0
        SUBF32    R1H,R3H,R4H           ; [CPU_FPU] |313| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 312,column 9,is_stmt,isa 0
        ADDF32    R0H,R0H,#48896        ; [CPU_FPU] |312| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 314,column 9,is_stmt,isa 0
        ADDF32    R2H,R2H,#48896        ; [CPU_FPU] |314| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 313,column 9,is_stmt,isa 0
        ADDF32    R1H,R1H,#48896        ; [CPU_FPU] |313| 
        B         ||$C$L11||,UNC        ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L10||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 306,column 9,is_stmt,isa 0
        SUBF32    R0H,R1H,R2H           ; [CPU_FPU] |306| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 307,column 9,is_stmt,isa 0
        SUBF32    R1H,R3H,R2H           ; [CPU_FPU] |307| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 308,column 9,is_stmt,isa 0
        SUBF32    R2H,R5H,R2H           ; [CPU_FPU] |308| 
||$C$L11||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 306,column 9,is_stmt,isa 0
        MOV32     *+XAR5[0],R0H         ; [CPU_FPU] |306| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 307,column 9,is_stmt,isa 0
        MOV32     *+XAR5[2],R1H         ; [CPU_FPU] |307| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 308,column 9,is_stmt,isa 0
        MOV32     *+XAR5[4],R2H         ; [CPU_FPU] |308| 
||$C$L12||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$130, DW_AT_TI_end_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h")
	.dwattr $C$DW$130, DW_AT_TI_end_line(0x144)
	.dwattr $C$DW$130, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$130

	.sect	".text:foc_current_loop_isr"
	.clink
	.global	||foc_current_loop_isr||

$C$DW$145	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$145, DW_AT_name("foc_current_loop_isr")
	.dwattr $C$DW$145, DW_AT_low_pc(||foc_current_loop_isr||)
	.dwattr $C$DW$145, DW_AT_high_pc(0x00)
	.dwattr $C$DW$145, DW_AT_linkage_name("foc_current_loop_isr")
	.dwattr $C$DW$145, DW_AT_external
	.dwattr $C$DW$145, DW_AT_decl_file("../src/foc_pipeline.c")
	.dwattr $C$DW$145, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$145, DW_AT_decl_column(0x06)
	.dwattr $C$DW$145, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../src/foc_pipeline.c",line 109,column 1,is_stmt,address ||foc_current_loop_isr||,isa 0

	.dwfde $C$DW$CIE, ||foc_current_loop_isr||

;***************************************************************
;* FNAME: foc_current_loop_isr          FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

||foc_current_loop_isr||:
;* AR7   assigned to $O$C6
;* AL    assigned to $O$C7
;* AR4   assigned to $O$C8
;* AR4   assigned to $O$C9
;* AR4   assigned to $O$C10
;* AR1   assigned to $O$C11
;* AR2   assigned to $O$C12
;* R0    assigned to $O$C13
;* AR4   assigned to $O$C14
;* R1    assigned to $O$C15
;* AR2   assigned to $O$K45
;* AR7   assigned to $O$K45
;* AR4   assigned to $O$K45
;* AR1   assigned to $O$K80
;* AR6   assigned to $O$v5
;* AR7   assigned to $O$v4
;* AR6   assigned to $O$v3
;* AL    assigned to $O$R2
;* AL    assigned to $O$R3
;* R0    assigned to $O$R5
;* R0    assigned to $O$S1
;* AR3   assigned to st
$C$DW$146	.dwtag  DW_TAG_variable
	.dwattr $C$DW$146, DW_AT_name("st")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg10]

;* R1    assigned to vmax_dyn
$C$DW$147	.dwtag  DW_TAG_variable
	.dwattr $C$DW$147, DW_AT_name("vmax_dyn")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x2f]

;* AR6   assigned to cnt
$C$DW$148	.dwtag  DW_TAG_variable
	.dwattr $C$DW$148, DW_AT_name("cnt")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg16]

;* AR6   assigned to diff
$C$DW$149	.dwtag  DW_TAG_variable
	.dwattr $C$DW$149, DW_AT_name("diff")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg16]

;* AR7   assigned to direction
$C$DW$150	.dwtag  DW_TAG_variable
	.dwattr $C$DW$150, DW_AT_name("direction")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg18]

;* R0    assigned to Th
$C$DW$151	.dwtag  DW_TAG_variable
	.dwattr $C$DW$151, DW_AT_name("Th")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x2b]

;* R0    assigned to oneOverDcBus_invV
$C$DW$152	.dwtag  DW_TAG_variable
	.dwattr $C$DW$152, DW_AT_name("oneOverDcBus_invV")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x2b]

;* R0    assigned to Th
$C$DW$153	.dwtag  DW_TAG_variable
	.dwattr $C$DW$153, DW_AT_name("Th")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -10
	.dwpsn	file "../src/foc_pipeline.c",line 110,column 5,is_stmt,isa 0
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("debug_isr_scope_high")
	.dwattr $C$DW$154, DW_AT_TI_call

        LCR       #||debug_isr_scope_high|| ; [CPU_ALU] |110| 
        ; call occurs [#||debug_isr_scope_high||] ; [] |110| 
	.dwpsn	file "../src/foc_pipeline.c",line 115,column 20,is_stmt,isa 0
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("sm_get_state")
	.dwattr $C$DW$155, DW_AT_TI_call

        LCR       #||sm_get_state||     ; [CPU_ALU] |115| 
        ; call occurs [#||sm_get_state||] ; [] |115| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 489,column 5,is_stmt,isa 0
        MOV32     XAR6,*(0:0x5100)      ; [CPU_FPU] |489| 
        MOVW      DP,#||g_dbg_qep_count|| ; [CPU_ARAU] 
	.dwpsn	file "../src/foc_pipeline.c",line 115,column 20,is_stmt,isa 0
        MOVZ      AR3,AL                ; [CPU_ALU] |115| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h",line 31,column 5,is_stmt,isa 0
        MOVL      @||g_dbg_qep_count||,XAR6 ; [CPU_ALU] |31| 
        MOVW      DP,#||g_dbg_qep_index_latch|| ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 1464,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x5108)       ; [CPU_FPU] |1464| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h",line 32,column 5,is_stmt,isa 0
        MOVL      @||g_dbg_qep_index_latch||,ACC ; [CPU_ALU] |32| 
        MOVW      DP,#||g_dbg_qep_status|| ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 814,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x511c)        ; [CPU_ALU] |814| 
        ANDB      AL,#0xff              ; [CPU_ALU] |814| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h",line 33,column 5,is_stmt,isa 0
        MOV       @||g_dbg_qep_status||,AL ; [CPU_ALU] |33| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 547,column 5,is_stmt,isa 0
        MOV       AH,*(0:0x511c)        ; [CPU_ALU] |547| 
        TBIT      AH,#5                 ; [CPU_ALU] |547| 
        B         ||$C$L13||,TC         ; [CPU_ALU] |547| 
        ; branchcc occurs ; [] |547| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 553,column 9,is_stmt,isa 0
        MOVL      XAR7,#-1              ; [CPU_ALU] |553| 
        B         ||$C$L14||,UNC        ; [CPU_ALU] |553| 
        ; branch occurs ; [] |553| 
||$C$L13||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 549,column 9,is_stmt,isa 0
        MOVB      XAR7,#1               ; [CPU_ALU] |549| 
||$C$L14||:    
        MOVW      DP,#||g_dbg_qep_direction|| ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h",line 36,column 18,is_stmt,isa 0
        MOVL      ACC,XAR6              ; [CPU_ALU] |36| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h",line 34,column 5,is_stmt,isa 0
        MOV       @||g_dbg_qep_direction||,AR7 ; [CPU_ALU] |34| 
        MOVW      DP,#||g_qep_mech_offset_cnt|| ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h",line 36,column 18,is_stmt,isa 0
        SUBL      ACC,@||g_qep_mech_offset_cnt|| ; [CPU_ALU] |36| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |36| 
        B         ||$C$L15||,GEQ        ; [CPU_ALU] |36| 
        ; branchcc occurs ; [] |36| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h",line 39,column 29,is_stmt,isa 0
        ADD       ACC,#125 << 7         ; [CPU_ALU] |39| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |39| 
||$C$L15||:    
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h",line 40,column 5,is_stmt,isa 0
        MOV       ACC,#16000            ; [CPU_ALU] |40| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |40| 
        B         ||$C$L16||,GT         ; [CPU_ALU] |40| 
        ; branchcc occurs ; [] |40| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h",line 40,column 35,is_stmt,isa 0
        SUB       ACC,#125 << 7         ; [CPU_ALU] |40| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |40| 
||$C$L16||:    
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h",line 45,column 5,is_stmt,isa 0
        MOV32     R1H,XAR6              ; [CPU_FPU] |45| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVIZ     R0H,#14467            ; [CPU_FPU] |45| 
        I32TOF32  R1H,R1H               ; [CPU_FPU] |45| 
        MOVXI     R0H,#4719             ; [CPU_FPU] |45| 
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |45| 
        NOP       ; [CPU_ALU] 
        MPYF32    R1H,R0H,#16512        ; [CPU_FPU] |45| 
        MOVIZ     R3H,#16585            ; [CPU_FPU] |45| 
        F32TOI32  R0H,R1H               ; [CPU_FPU] |45| 
        MOV       AL,AR3                ; [CPU_ALU] |45| 
        I32TOF32  R2H,R0H               ; [CPU_FPU] |45| 
        MOVW      DP,#||g_qep_theta_elec|| ; [CPU_ARAU] 
        SUBF32    R1H,R1H,R2H           ; [CPU_FPU] |45| 
        MOVXI     R3H,#4059             ; [CPU_FPU] |45| 
        MPYF32    R0H,R3H,R1H           ; [CPU_FPU] |45| 
	.dwpsn	file "../src/foc_pipeline.c",line 117,column 5,is_stmt,isa 0
        CMPB      AL,#2                 ; [CPU_ALU] |117| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h",line 45,column 5,is_stmt,isa 0
        MOV32     @||g_qep_theta_elec||,R0H ; [CPU_FPU] |45| 
	.dwpsn	file "../src/foc_pipeline.c",line 117,column 5,is_stmt,isa 0
        B         ||$C$L17||,NEQ        ; [CPU_ALU] |117| 
        ; branchcc occurs ; [] |117| 
        ZERO      R0H                   ; [CPU_FPU] |117| 
        B         ||$C$L18||,UNC        ; [CPU_ALU] |117| 
        ; branch occurs ; [] |117| 
||$C$L17||:    
        MOV32     R0H,@||g_qep_theta_elec|| ; [CPU_FPU] |117| 
||$C$L18||:    
        MOVL      XAR2,#||s_sig||       ; [CPU_ARAU] |117| 
        MOVL      XAR4,XAR2             ; [CPU_ALU] |117| 
        MOVB      XAR1,#28              ; [CPU_ALU] |117| 
        MOVW      DP,#||g_qep_omega_elec|| ; [CPU_ARAU] 
	.dwpsn	file "../src/foc_pipeline.c",line 118,column 5,is_stmt,isa 0
        MOVB      XAR0,#30              ; [CPU_ALU] |118| 
	.dwpsn	file "../src/foc_pipeline.c",line 117,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |117| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/include/sensor_qep_inline.h",line 52,column 55,is_stmt,isa 0
        MOV32     R0H,@||g_qep_omega_elec|| ; [CPU_FPU] |52| 
	.dwpsn	file "../src/foc_pipeline.c",line 118,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |118| 
	.dwpsn	file "../src/foc_pipeline.c",line 121,column 5,is_stmt,isa 0
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("adc_read_phase_currents")
	.dwattr $C$DW$156, DW_AT_TI_call

        LCR       #||adc_read_phase_currents|| ; [CPU_ALU] |121| 
        ; call occurs [#||adc_read_phase_currents||] ; [] |121| 
        MOVW      DP,#||s_clarke||      ; [CPU_ARAU] 
	.dwpsn	file "../src/foc_pipeline.c",line 122,column 5,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |122| 
        MOVL      XAR5,XAR2             ; [CPU_ALU] |122| 
        MOVL      XAR4,@||s_clarke||    ; [CPU_ALU] |122| 
        ADDB      ACC,#6                ; [CPU_ALU] |122| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |122| 
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("CLARKE_run")
	.dwattr $C$DW$157, DW_AT_TI_call

        LCR       #||CLARKE_run||       ; [CPU_ALU] |122| 
        ; call occurs [#||CLARKE_run||] ; [] |122| 
        MOVL      XAR7,XAR2             ; [CPU_ALU] |122| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 283,column 1,is_stmt,isa 0
        MOVB      XAR0,#28              ; [CPU_ALU] |283| 
	.dwpsn	file "../src/foc_pipeline.c",line 124,column 5,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |124| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 283,column 1,is_stmt,isa 0
        MOV32     R0H,*+XAR7[AR0]       ; [CPU_FPU] |283| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 290,column 5,is_stmt,isa 0
        MOVL      XAR4,@||s_park||      ; [CPU_ALU] |290| 
        DIV2PIF32 R1H,R0H               ; [CPU_FPU] |290| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 291,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |291| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 290,column 5,is_stmt,isa 0
        SINPUF32  R1H,R1H               ; [CPU_FPU] |290| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 291,column 5,is_stmt,isa 0
        COSPUF32  R0H,R0H               ; [CPU_FPU] |291| 
	.dwpsn	file "../src/foc_pipeline.c",line 124,column 5,is_stmt,isa 0
        ADDB      ACC,#10               ; [CPU_ALU] |124| 
        ADDB      XAR5,#6               ; [CPU_ALU] |124| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 290,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R1H         ; [CPU_FPU] |290| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h",line 291,column 5,is_stmt,isa 0
        MOV32     *+XAR4[2],R0H         ; [CPU_FPU] |291| 
	.dwpsn	file "../src/foc_pipeline.c",line 124,column 5,is_stmt,isa 0
        MOVL      *-SP[2],ACC           ; [CPU_FPU] |124| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("PARK_run")
	.dwattr $C$DW$158, DW_AT_TI_call

        LCR       #||PARK_run||         ; [CPU_ALU] |124| 
        ; call occurs [#||PARK_run||] ; [] |124| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 422,column 5,is_stmt,isa 0
        MOVB      XAR1,#12              ; [CPU_ALU] |422| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 423,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |423| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 422,column 5,is_stmt,isa 0
        MOV       AL,AR3                ; [CPU_ALU] |422| 
	.dwpsn	file "../src/foc_pipeline.c",line 135,column 5,is_stmt,isa 0
        CMPB      AL,#3                 ; [CPU_ALU] |135| 
	.dwpsn	file "../src/foc_pipeline.c",line 130,column 24,is_stmt,isa 0
        MOVIZ     R0H,#16025            ; [CPU_FPU] |130| 
        MOV32     R1H,@||s_refs||+6     ; [CPU_FPU] |130| 
        MOVXI     R0H,#39322            ; [CPU_FPU] |130| 
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |130| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 419,column 1,is_stmt,isa 0
        MOVL      XAR6,@||s_pi_id||     ; [CPU_ALU] |419| 
	.dwpsn	file "../src/foc_pipeline.c",line 130,column 24,is_stmt,isa 0
        MPYF32    R1H,R0H,#16128        ; [CPU_FPU] |130| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 419,column 1,is_stmt,isa 0
        MOVL      XAR7,@||s_pi_iq||     ; [CPU_ALU] |419| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 422,column 5,is_stmt,isa 0
        MOV32     R0H,R1H               ; [CPU_FPU] |422| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 423,column 5,is_stmt,isa 0
        MOV32     *+XAR6[AR0],R1H       ; [CPU_FPU] |423| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 422,column 5,is_stmt,isa 0
        NEGF32    R0H,R0H               ; [CPU_FPU] |422| 
        MOVB      XAR0,#12              ; [CPU_ALU] |422| 
        MOV32     *+XAR6[AR0],R0H       ; [CPU_FPU] |422| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 423,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |423| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 422,column 5,is_stmt,isa 0
        MOV32     *+XAR7[AR1],R0H       ; [CPU_FPU] |422| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 423,column 5,is_stmt,isa 0
        MOV32     *+XAR7[AR0],R1H       ; [CPU_FPU] |423| 
	.dwpsn	file "../src/foc_pipeline.c",line 135,column 5,is_stmt,isa 0
        B         ||$C$L19||,EQ         ; [CPU_ALU] |135| 
        ; branchcc occurs ; [] |135| 
        CMPB      AL,#2                 ; [CPU_ALU] |135| 
        B         ||$C$L22||,NEQ        ; [CPU_ALU] |135| 
        ; branchcc occurs ; [] |135| 
||$C$L19||:    
	.dwpsn	file "../src/foc_pipeline.c",line 137,column 9,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |137| 
        MOVL      XAR1,#||s_sig||       ; [CPU_ARAU] |137| 
        MOVL      XAR5,XAR2             ; [CPU_ALU] |137| 
        MOV32     R1H,*+XAR1[AR0]       ; [CPU_FPU] |137| 
        MOVL      XAR4,XAR6             ; [CPU_ALU] |137| 
        MOV32     R0H,@||s_refs||       ; [CPU_FPU] |137| 
        ADDB      XAR5,#14              ; [CPU_ALU] |137| 
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("PI_run")
	.dwattr $C$DW$159, DW_AT_TI_call

        LCR       #||PI_run||           ; [CPU_ALU] |137| 
        ; call occurs [#||PI_run||] ; [] |137| 
	.dwpsn	file "../src/foc_pipeline.c",line 138,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR2             ; [CPU_ALU] |138| 
        MOVB      XAR0,#12              ; [CPU_ALU] |138| 
        MOVL      XAR4,XAR7             ; [CPU_ALU] |138| 
        MOV32     R1H,*+XAR1[AR0]       ; [CPU_FPU] |138| 
        ADDB      XAR5,#16              ; [CPU_ALU] |138| 
        MOV32     R0H,@||s_refs||+2     ; [CPU_FPU] |138| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("PI_run")
	.dwattr $C$DW$160, DW_AT_TI_call

        LCR       #||PI_run||           ; [CPU_ALU] |138| 
        ; call occurs [#||PI_run||] ; [] |138| 
	.dwpsn	file "../src/foc_pipeline.c",line 143,column 9,is_stmt,isa 0
        CMPB      AL,#2                 ; [CPU_ALU] |143| 
	.dwpsn	file "../src/foc_pipeline.c",line 137,column 9,is_stmt,isa 0
        ADDB      XAR1,#14              ; [CPU_ALU] |137| 
	.dwpsn	file "../src/foc_pipeline.c",line 143,column 9,is_stmt,isa 0
        B         ||$C$L23||,NEQ        ; [CPU_ALU] |143| 
        ; branchcc occurs ; [] |143| 
        MOV32     R0H,@||g_dbg_openloop_vd|| ; [CPU_FPU] |143| 
        CMPF32    R0H,#0                ; [CPU_FPU] |143| 
        MOVST0    ZF, NF                ; [CPU_FPU] |143| 
        B         ||$C$L20||,NEQ        ; [CPU_ALU] |143| 
        ; branchcc occurs ; [] |143| 
        MOV32     R0H,@||g_dbg_openloop_vq|| ; [CPU_FPU] |143| 
        CMPF32    R0H,#0                ; [CPU_FPU] |143| 
        MOVST0    ZF, NF                ; [CPU_FPU] |143| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |143| 
        ; branchcc occurs ; [] |143| 
||$C$L20||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 507,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |507| 
        ZERO      R1H                   ; [CPU_FPU] |507| 
	.dwpsn	file "../src/foc_pipeline.c",line 146,column 13,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |146| 
        MOVL      ACC,@||g_dbg_openloop_vd|| ; [CPU_ALU] |146| 
        MOVL      XAR4,#||s_sig||       ; [CPU_ARAU] |146| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 507,column 5,is_stmt,isa 0
        MOV32     *+XAR7[4],R0H         ; [CPU_FPU] |507| 
        MOV32     *+XAR6[4],R1H         ; [CPU_FPU] |507| 
	.dwpsn	file "../src/foc_pipeline.c",line 146,column 13,is_stmt,isa 0
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |146| 
	.dwpsn	file "../src/foc_pipeline.c",line 147,column 13,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |147| 
        MOVL      ACC,@||g_dbg_openloop_vq|| ; [CPU_ALU] |147| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_ALU] |147| 
||$C$L21||:    
	.dwpsn	file "../src/foc_pipeline.c",line 162,column 9,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |162| 
        MOVL      XAR4,#||s_sig||       ; [CPU_ARAU] |162| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |162| 
	.dwpsn	file "../src/foc_pipeline.c",line 163,column 9,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |163| 
	.dwpsn	file "../src/foc_pipeline.c",line 162,column 9,is_stmt,isa 0
        MOVL      @||g_dbg_align_id_meas||,ACC ; [CPU_ALU] |162| 
	.dwpsn	file "../src/foc_pipeline.c",line 163,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |163| 
	.dwpsn	file "../src/foc_pipeline.c",line 164,column 9,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |164| 
	.dwpsn	file "../src/foc_pipeline.c",line 163,column 9,is_stmt,isa 0
        MOVL      @||g_dbg_align_iq_meas||,ACC ; [CPU_ALU] |163| 
	.dwpsn	file "../src/foc_pipeline.c",line 164,column 9,is_stmt,isa 0
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |164| 
        MOVL      @||g_dbg_align_vd||,ACC ; [CPU_ALU] |164| 
        B         ||$C$L23||,UNC        ; [CPU_ALU] |164| 
        ; branch occurs ; [] |164| 
||$C$L22||:    
	.dwpsn	file "../src/foc_pipeline.c",line 154,column 9,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |154| 
        MOVW      DP,#||s_sig||+14      ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 507,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |507| 
        ZERO      R0H                   ; [CPU_FPU] |507| 
	.dwpsn	file "../src/foc_pipeline.c",line 155,column 9,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |155| 
        ZERO      R2H                   ; [CPU_FPU] |155| 
	.dwpsn	file "../src/foc_pipeline.c",line 154,column 9,is_stmt,isa 0
        MOVL      XAR1,XAR2             ; [CPU_ALU] |154| 
        MOV32     @||s_sig||+14,R3H     ; [CPU_FPU] |154| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h",line 507,column 5,is_stmt,isa 0
        MOV32     *+XAR6[4],R1H         ; [CPU_FPU] |507| 
        MOV32     *+XAR7[4],R0H         ; [CPU_FPU] |507| 
	.dwpsn	file "../src/foc_pipeline.c",line 155,column 9,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |155| 
	.dwpsn	file "../src/foc_pipeline.c",line 154,column 9,is_stmt,isa 0
        ADDB      XAR1,#14              ; [CPU_ALU] |154| 
||$C$L23||:    
	.dwpsn	file "../src/foc_pipeline.c",line 175,column 5,is_stmt,isa 0
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("adc_read_vbus")
	.dwattr $C$DW$161, DW_AT_TI_call

        LCR       #||adc_read_vbus||    ; [CPU_ALU] |175| 
        ; call occurs [#||adc_read_vbus||] ; [] |175| 
        MOVW      DP,#||s_refs||+6      ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 158,column 1,is_stmt,isa 0
        MOVIZ     R1H,#16256            ; [CPU_FPU] |158| 
	.dwpsn	file "../src/foc_pipeline.c",line 175,column 5,is_stmt,isa 0
        MOV32     @||s_refs||+6,R0H     ; [CPU_FPU] |175| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 158,column 1,is_stmt,isa 0
        MOV32     R0H,@||s_refs||+6     ; [CPU_FPU] |158| 
        DIVF32    R0H,R1H,R0H           ; [CPU_FPU] |158| 
        NOP       ; [CPU_ALU] 
        MOVL      XAR6,@||s_svgen||     ; [CPU_ALU] |158| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 161,column 5,is_stmt,isa 0
        MOV       AL,AR3                ; [CPU_ALU] |161| 
	.dwpsn	file "../src/foc_pipeline.c",line 178,column 5,is_stmt,isa 0
        CMPB      AL,#3                 ; [CPU_ALU] |178| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h",line 161,column 5,is_stmt,isa 0
        MOV32     *+XAR6[0],R0H         ; [CPU_FPU] |161| 
	.dwpsn	file "../src/foc_pipeline.c",line 178,column 5,is_stmt,isa 0
        B         ||$C$L24||,EQ         ; [CPU_ALU] |178| 
        ; branchcc occurs ; [] |178| 
        CMPB      AL,#2                 ; [CPU_ALU] |178| 
        B         ||$C$L24||,EQ         ; [CPU_ALU] |178| 
        ; branchcc occurs ; [] |178| 
	.dwpsn	file "../src/foc_pipeline.c",line 187,column 9,is_stmt,isa 0
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("pwm_force_safe")
	.dwattr $C$DW$162, DW_AT_TI_call

        LCR       #||pwm_force_safe||   ; [CPU_ALU] |187| 
        ; call occurs [#||pwm_force_safe||] ; [] |187| 
        MOVW      DP,#||s_decim||       ; [CPU_ARAU] 
	.dwpsn	file "../src/foc_pipeline.c",line 191,column 5,is_stmt,isa 0
        INC       @||s_decim||          ; [CPU_ALU] |191| 
        MOV       AL,@||s_decim||       ; [CPU_ALU] |191| 
        CMPB      AL,#10                ; [CPU_ALU] |191| 
        B         ||$C$L25||,HIS        ; [CPU_ALU] |191| 
        ; branchcc occurs ; [] |191| 
        B         ||$C$L26||,UNC        ; [CPU_ALU] |191| 
        ; branch occurs ; [] |191| 
||$C$L24||:    
        MOVW      DP,#||s_sig||+28      ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 278,column 1,is_stmt,isa 0
        MOV32     R0H,@||s_sig||+28     ; [CPU_FPU] |278| 
	.dwpsn	file "../src/foc_pipeline.c",line 181,column 9,is_stmt,isa 0
        MOVL      ACC,XAR2              ; [CPU_ALU] |181| 
        MOVW      DP,#||s_ipark||       ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 285,column 5,is_stmt,isa 0
        DIV2PIF32 R1H,R0H               ; [CPU_FPU] |285| 
        MOVL      XAR4,@||s_ipark||     ; [CPU_ALU] |285| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 286,column 5,is_stmt,isa 0
        DIV2PIF32 R0H,R0H               ; [CPU_FPU] |286| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 285,column 5,is_stmt,isa 0
        SINPUF32  R1H,R1H               ; [CPU_FPU] |285| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 286,column 5,is_stmt,isa 0
        COSPUF32  R0H,R0H               ; [CPU_FPU] |286| 
	.dwpsn	file "../src/foc_pipeline.c",line 181,column 9,is_stmt,isa 0
        MOVL      XAR5,XAR1             ; [CPU_ALU] |181| 
        ADDB      ACC,#18               ; [CPU_ALU] |181| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 285,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R1H         ; [CPU_FPU] |285| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h",line 286,column 5,is_stmt,isa 0
        MOV32     *+XAR4[2],R0H         ; [CPU_FPU] |286| 
	.dwpsn	file "../src/foc_pipeline.c",line 181,column 9,is_stmt,isa 0
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |181| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("IPARK_run")
	.dwattr $C$DW$163, DW_AT_TI_call

        LCR       #||IPARK_run||        ; [CPU_ALU] |181| 
        ; call occurs [#||IPARK_run||] ; [] |181| 
	.dwpsn	file "../src/foc_pipeline.c",line 182,column 9,is_stmt,isa 0
        MOVL      XAR7,XAR2             ; [CPU_ALU] |182| 
        ADDB      XAR7,#22              ; [CPU_ALU] |182| 
        MOVL      XAR4,XAR6             ; [CPU_FPU] |182| 
        MOVL      *-SP[2],XAR7          ; [CPU_ALU] |182| 
        MOVL      XAR5,ACC              ; [CPU_ALU] |182| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("SVGEN_run")
	.dwattr $C$DW$164, DW_AT_TI_call

        LCR       #||SVGEN_run||        ; [CPU_ALU] |182| 
        ; call occurs [#||SVGEN_run||] ; [] |182| 
	.dwpsn	file "../src/foc_pipeline.c",line 183,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR7             ; [CPU_ALU] |183| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("pwm_set_duty")
	.dwattr $C$DW$165, DW_AT_TI_call

        LCR       #||pwm_set_duty||     ; [CPU_ALU] |183| 
        ; call occurs [#||pwm_set_duty||] ; [] |183| 
        MOVW      DP,#||s_decim||       ; [CPU_ARAU] 
	.dwpsn	file "../src/foc_pipeline.c",line 191,column 5,is_stmt,isa 0
        INC       @||s_decim||          ; [CPU_ALU] |191| 
        MOV       AL,@||s_decim||       ; [CPU_ALU] |191| 
        CMPB      AL,#10                ; [CPU_ALU] |191| 
        B         ||$C$L26||,LO         ; [CPU_ALU] |191| 
        ; branchcc occurs ; [] |191| 
||$C$L25||:    
	.dwpsn	file "../src/foc_pipeline.c",line 193,column 9,is_stmt,isa 0
        MOV       @||s_decim||,#0       ; [CPU_ALU] |193| 
	.dwpsn	file "../src/foc_pipeline.c",line 194,column 9,is_stmt,isa 0
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("foc_speed_loop_tick")
	.dwattr $C$DW$166, DW_AT_TI_call

        LCR       #||foc_speed_loop_tick|| ; [CPU_ALU] |194| 
        ; call occurs [#||foc_speed_loop_tick||] ; [] |194| 
||$C$L26||:    
	.dwpsn	file "../src/foc_pipeline.c",line 198,column 5,is_stmt,isa 0
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("safety_check_isr")
	.dwattr $C$DW$167, DW_AT_TI_call

        LCR       #||safety_check_isr|| ; [CPU_ALU] |198| 
        ; call occurs [#||safety_check_isr||] ; [] |198| 
        MOV       AL,AR3                ; [CPU_ALU] |198| 
	.dwpsn	file "../src/foc_pipeline.c",line 201,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |201| 
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("debug_datalog_push")
	.dwattr $C$DW$168, DW_AT_TI_call

        LCR       #||debug_datalog_push|| ; [CPU_ALU] |201| 
        ; call occurs [#||debug_datalog_push||] ; [] |201| 
	.dwpsn	file "../src/foc_pipeline.c",line 202,column 5,is_stmt,isa 0
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("debug_isr_scope_low")
	.dwattr $C$DW$169, DW_AT_TI_call

        LCR       #||debug_isr_scope_low|| ; [CPU_ALU] |202| 
        ; call occurs [#||debug_isr_scope_low||] ; [] |202| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$145, DW_AT_TI_end_file("../src/foc_pipeline.c")
	.dwattr $C$DW$145, DW_AT_TI_end_line(0xcb)
	.dwattr $C$DW$145, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$145

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||debug_isr_scope_high||
	.global	||adc_read_phase_currents||
	.global	||pwm_set_duty||
	.global	||pwm_force_safe||
	.global	||safety_check_isr||
	.global	||debug_datalog_push||
	.global	||debug_isr_scope_low||
	.global	||sm_tick_1khz||
	.global	||g_dbg_qep_status||
	.global	||g_dbg_qep_direction||
	.global	||sm_get_state||
	.global	||g_qep_theta_elec||
	.global	||g_qep_omega_elec||
	.global	||g_qep_mech_offset_cnt||
	.global	||g_dbg_qep_count||
	.global	||g_dbg_qep_index_latch||
	.global	||CLARKE_init||
	.global	||PARK_init||
	.global	||IPARK_init||
	.global	||SVGEN_init||
	.global	||PI_init||
	.global	||adc_read_vbus||

;***************************************************************
;* BUILD ATTRIBUTES                                            *
;***************************************************************
	.battr "c28xabi", Tag_File, 1, Tag_float_args(1)
	.battr "c28xabi", Tag_File, 1, Tag_double_args(0)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 26
	.dwcfi	cfa_register, 20
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 28
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 59
	.dwcfi	same_value, 63
	.dwcfi	same_value, 67
	.dwcfi	same_value, 71
	.dwendentry
	.dwendtag $C$DW$CU


;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$171	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$171, DW_AT_name("SVM_COM_C")
	.dwattr $C$DW$171, DW_AT_const_value(0x00)
	.dwattr $C$DW$171, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0x45)
	.dwattr $C$DW$171, DW_AT_decl_column(0x03)

$C$DW$172	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$172, DW_AT_name("SVM_MIN_C")
	.dwattr $C$DW$172, DW_AT_const_value(0x01)
	.dwattr $C$DW$172, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0x46)
	.dwattr $C$DW$172, DW_AT_decl_column(0x03)

$C$DW$173	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$173, DW_AT_name("SVM_MAX_C")
	.dwattr $C$DW$173, DW_AT_const_value(0x02)
	.dwattr $C$DW$173, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0x47)
	.dwattr $C$DW$173, DW_AT_decl_column(0x03)

$C$DW$174	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$174, DW_AT_name("SVM_DQ_S")
	.dwattr $C$DW$174, DW_AT_const_value(0x03)
	.dwattr $C$DW$174, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0x48)
	.dwattr $C$DW$174, DW_AT_decl_column(0x03)

	.dwattr $C$DW$T$42, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43
$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("SVM_Mode_e")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$43, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$43


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48

$C$DW$T$48	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$175	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$175, DW_AT_name("FOC_IDLE")
	.dwattr $C$DW$175, DW_AT_const_value(0x00)
	.dwattr $C$DW$175, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$175, DW_AT_decl_column(0x05)

$C$DW$176	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$176, DW_AT_name("FOC_CALIBRATE_OFFSETS")
	.dwattr $C$DW$176, DW_AT_const_value(0x01)
	.dwattr $C$DW$176, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$176, DW_AT_decl_column(0x05)

$C$DW$177	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$177, DW_AT_name("FOC_ALIGN_ROTOR")
	.dwattr $C$DW$177, DW_AT_const_value(0x02)
	.dwattr $C$DW$177, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0x10)
	.dwattr $C$DW$177, DW_AT_decl_column(0x05)

$C$DW$178	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$178, DW_AT_name("FOC_RUN")
	.dwattr $C$DW$178, DW_AT_const_value(0x03)
	.dwattr $C$DW$178, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x11)
	.dwattr $C$DW$178, DW_AT_decl_column(0x05)

$C$DW$179	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$179, DW_AT_name("FOC_FAULT")
	.dwattr $C$DW$179, DW_AT_const_value(0x04)
	.dwattr $C$DW$179, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0x12)
	.dwattr $C$DW$179, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$48, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x0e)
	.dwendtag $C$DW$T$48

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49
$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("FOC_State_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x13)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$49


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x20)
$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$180, DW_AT_name("Iabc")
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$180, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$180, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$180, DW_AT_decl_column(0x11)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$181, DW_AT_name("Iab")
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$181, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$181, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$181, DW_AT_decl_column(0x11)

$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$182, DW_AT_name("Idq")
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$182, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$182, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$182, DW_AT_decl_column(0x11)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$183, DW_AT_name("Vdq")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$183, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$183, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$183, DW_AT_decl_column(0x11)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$184, DW_AT_name("Vab")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$184, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$184, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$184, DW_AT_decl_column(0x11)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$185, DW_AT_name("duty")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$185, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$185, DW_AT_decl_line(0x20)
	.dwattr $C$DW$185, DW_AT_decl_column(0x11)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$186, DW_AT_name("theta_elec")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$186, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$186, DW_AT_decl_line(0x21)
	.dwattr $C$DW$186, DW_AT_decl_column(0x11)

$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$187, DW_AT_name("omega_elec")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$187, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x22)
	.dwattr $C$DW$187, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$28, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58
$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("FOC_Signals_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$58, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x23)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59
$C$DW$188	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$58)

$C$DW$T$59	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$188)

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60
$C$DW$T$60	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$60


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62
$C$DW$189	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$58)

$C$DW$T$62	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$189)

	.dwendtag $C$DW$TU$62


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x08)
$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$190, DW_AT_name("id_ref")
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$190, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$190, DW_AT_decl_line(0x14)
	.dwattr $C$DW$190, DW_AT_decl_column(0x0f)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$191, DW_AT_name("iq_ref")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$191, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0x15)
	.dwattr $C$DW$191, DW_AT_decl_column(0x0f)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$192, DW_AT_name("speed_ref")
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$192, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0x16)
	.dwattr $C$DW$192, DW_AT_decl_column(0x0f)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$193, DW_AT_name("vbus")
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$193, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$193, DW_AT_decl_line(0x17)
	.dwattr $C$DW$193, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$29, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x13)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65
$C$DW$T$65	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$65, DW_AT_name("FOC_Refs_t")
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$65, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x18)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66
$C$DW$194	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$65)

$C$DW$T$66	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$194)

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67
$C$DW$T$67	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$67, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$67, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$67


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("_CLARKE_Obj_")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x06)
$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$195, DW_AT_name("alpha_sf")
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$195, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0x46)
	.dwattr $C$DW$195, DW_AT_decl_column(0x0f)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$196, DW_AT_name("beta_sf")
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$196, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0x47)
	.dwattr $C$DW$196, DW_AT_decl_column(0x0f)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$197, DW_AT_name("numSensors")
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$197, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h")
	.dwattr $C$DW$197, DW_AT_decl_line(0x48)
	.dwattr $C$DW$197, DW_AT_decl_column(0x13)

	.dwattr $C$DW$T$33, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71
$C$DW$T$71	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$71, DW_AT_name("CLARKE_Obj")
	.dwattr $C$DW$T$71, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$71, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$71


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72
$C$DW$T$72	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$72, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73
$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("CLARKE_Handle")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include/clarke.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x1e)

	.dwendtag $C$DW$TU$73


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74
$C$DW$198	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$73)

$C$DW$T$74	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$198)

	.dwendtag $C$DW$TU$74


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("_IPARK_Obj_")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x04)
$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$199, DW_AT_name("sinTh")
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$199, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h")
	.dwattr $C$DW$199, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$199, DW_AT_decl_column(0x0f)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$200, DW_AT_name("cosTh")
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$200, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h")
	.dwattr $C$DW$200, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$200, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$34, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81
$C$DW$T$81	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$81, DW_AT_name("IPARK_Obj")
	.dwattr $C$DW$T$81, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$81, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$81


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82
$C$DW$T$82	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$82, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$82


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83
$C$DW$T$83	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$83, DW_AT_name("IPARK_Handle")
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$83, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include/ipark.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x1e)

	.dwendtag $C$DW$TU$83


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84
$C$DW$201	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$83)

$C$DW$T$84	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$201)

	.dwendtag $C$DW$TU$84


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("_MATH_Vec2_")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x04)
$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$202, DW_AT_name("value")
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$202, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$202, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$202, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$36, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("MATH_Vec2")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$21, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0xda)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("FOC_Iab_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("FOC_Idq_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$23, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$23


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("FOC_Vab_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$25, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$25


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("FOC_Vdq_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$24, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x10)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$24


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89
$C$DW$203	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$21)

$C$DW$T$89	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$203)

	.dwendtag $C$DW$TU$89


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90
$C$DW$T$90	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$90


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91
$C$DW$204	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$90)

$C$DW$T$91	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$204)

	.dwendtag $C$DW$TU$91


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92
$C$DW$T$92	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$92, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$92


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93
$C$DW$205	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$92)

$C$DW$T$93	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$205)

	.dwendtag $C$DW$TU$93


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("_MATH_Vec3_")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x06)
$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$206, DW_AT_name("value")
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$206, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$206, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$206, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$38, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("MATH_Vec3")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$19, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$19


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("FOC_Duty_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$26, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x11)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$26


$C$DW$TU$107	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$107
$C$DW$207	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$26)

$C$DW$T$107	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$207)

	.dwendtag $C$DW$TU$107


$C$DW$TU$108	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$108
$C$DW$T$108	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$108, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$108


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("FOC_Iabc_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$20


$C$DW$TU$109	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$109
$C$DW$T$109	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$109, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$109


$C$DW$TU$110	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$110
$C$DW$208	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$19)

$C$DW$T$110	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$208)

	.dwendtag $C$DW$TU$110


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111
$C$DW$T$111	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$111, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$111


$C$DW$TU$112	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$112
$C$DW$209	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$111)

$C$DW$T$112	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$209)

	.dwendtag $C$DW$TU$112


$C$DW$TU$113	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$113
$C$DW$T$113	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$113, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$113


$C$DW$TU$114	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$114
$C$DW$210	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$113)

$C$DW$T$114	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$210)

	.dwendtag $C$DW$TU$114


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_name("_PARK_Obj_")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x04)
$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$211, DW_AT_name("sinTh")
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$211, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$211, DW_AT_decl_column(0x0f)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$212, DW_AT_name("cosTh")
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$212, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h")
	.dwattr $C$DW$212, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$212, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$39, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$124	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$124
$C$DW$T$124	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$124, DW_AT_name("PARK_Obj")
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$124, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$124


$C$DW$TU$125	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$125
$C$DW$T$125	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$125, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$125


$C$DW$TU$126	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$126
$C$DW$T$126	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$126, DW_AT_name("PARK_Handle")
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$126, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include/park.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$126


$C$DW$TU$127	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$127
$C$DW$213	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$126)

$C$DW$T$127	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$213)

	.dwendtag $C$DW$TU$127


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("_PI_Obj_")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x10)
$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$214, DW_AT_name("Kp")
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$214, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h")
	.dwattr $C$DW$214, DW_AT_decl_line(0x48)
	.dwattr $C$DW$214, DW_AT_decl_column(0x0f)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$215, DW_AT_name("Ki")
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$215, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h")
	.dwattr $C$DW$215, DW_AT_decl_line(0x49)
	.dwattr $C$DW$215, DW_AT_decl_column(0x0f)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$216, DW_AT_name("Ui")
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$216, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h")
	.dwattr $C$DW$216, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$216, DW_AT_decl_column(0x0f)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$217, DW_AT_name("refValue")
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$217, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h")
	.dwattr $C$DW$217, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$217, DW_AT_decl_column(0x0f)

$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$218, DW_AT_name("fbackValue")
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$218, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h")
	.dwattr $C$DW$218, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$218, DW_AT_decl_column(0x0f)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$219, DW_AT_name("ffwdValue")
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$219, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h")
	.dwattr $C$DW$219, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$219, DW_AT_decl_column(0x0f)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$220, DW_AT_name("outMin")
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$220, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h")
	.dwattr $C$DW$220, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$220, DW_AT_decl_column(0x0f)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$221, DW_AT_name("outMax")
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$221, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h")
	.dwattr $C$DW$221, DW_AT_decl_line(0x51)
	.dwattr $C$DW$221, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$40, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$40

	.dwendtag $C$DW$TU$40


$C$DW$TU$132	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$132
$C$DW$T$132	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$132, DW_AT_name("PI_Obj")
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$132, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h")
	.dwattr $C$DW$T$132, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$132, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$132


$C$DW$TU$133	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$133
$C$DW$T$133	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$133, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$133


$C$DW$TU$134	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$134
$C$DW$T$134	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$134, DW_AT_name("PI_Handle")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$134, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include/pi.h")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x1a)

	.dwendtag $C$DW$TU$134


$C$DW$TU$135	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$135
$C$DW$222	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$134)

$C$DW$T$135	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$222)

	.dwendtag $C$DW$TU$135


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("_SVGEN_Obj_")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x04)
$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$223, DW_AT_name("oneOverDcBus_invV")
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$223, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h")
	.dwattr $C$DW$223, DW_AT_decl_line(0x52)
	.dwattr $C$DW$223, DW_AT_decl_column(0x0f)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$224, DW_AT_name("sector")
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$224, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h")
	.dwattr $C$DW$224, DW_AT_decl_line(0x53)
	.dwattr $C$DW$224, DW_AT_decl_column(0x0e)

$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$225, DW_AT_name("svmMode")
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$225, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h")
	.dwattr $C$DW$225, DW_AT_decl_line(0x54)
	.dwattr $C$DW$225, DW_AT_decl_column(0x10)

	.dwattr $C$DW$T$44, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$44

	.dwendtag $C$DW$TU$44


$C$DW$TU$140	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$140
$C$DW$T$140	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$140, DW_AT_name("SVGEN_Obj")
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$140, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0x55)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$140


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45
$C$DW$T$45	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$45, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$45


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46
$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("SVGEN_Handle")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include/svgen.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$46


$C$DW$TU$141	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$141
$C$DW$226	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$46)

$C$DW$T$141	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$226)

	.dwendtag $C$DW$TU$141


$C$DW$TU$2	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$2
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

	.dwendtag $C$DW$TU$2


$C$DW$TU$3	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$3
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$3


$C$DW$TU$4	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$4
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$4


$C$DW$TU$5	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$5
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$5


$C$DW$TU$6	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$6
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$6


$C$DW$TU$7	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$7
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$7


$C$DW$TU$8	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$8
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$8


$C$DW$TU$175	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$175
$C$DW$T$175	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$175, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$175, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$175, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$175, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$175, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$175


$C$DW$TU$176	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$176
$C$DW$T$176	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$176, DW_AT_name("int16_t")
	.dwattr $C$DW$T$176, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$T$176, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$176, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$176, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$176


$C$DW$TU$180	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$180
$C$DW$227	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$176)

$C$DW$T$180	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$180, DW_AT_type(*$C$DW$227)

	.dwendtag $C$DW$TU$180


$C$DW$TU$9	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$9
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$9


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$30, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("__uint_least8_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/stdint.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x1a)

	.dwendtag $C$DW$TU$32


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$41, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$41


$C$DW$TU$182	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$182
$C$DW$228	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$41)

$C$DW$T$182	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$182, DW_AT_type(*$C$DW$228)

	.dwendtag $C$DW$TU$182


$C$DW$TU$10	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$10
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$10


$C$DW$TU$11	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$11
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$11


$C$DW$TU$12	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$12
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$12


$C$DW$TU$187	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$187
$C$DW$T$187	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$187, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$187, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$187, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$187, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$187, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$187


$C$DW$TU$188	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$188
$C$DW$T$188	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$188, DW_AT_name("int32_t")
	.dwattr $C$DW$T$188, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$T$188, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$188, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$188, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$188


$C$DW$TU$189	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$189
$C$DW$229	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$188)

$C$DW$T$189	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$189, DW_AT_type(*$C$DW$229)

	.dwendtag $C$DW$TU$189


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$177	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$177
$C$DW$T$177	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$177, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$177, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$177, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$177, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$177, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$177


$C$DW$TU$178	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$178
$C$DW$T$178	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$178, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$178, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$T$178, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$178, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$178, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$178


$C$DW$TU$193	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$193
$C$DW$230	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$178)

$C$DW$T$193	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$193, DW_AT_type(*$C$DW$230)

	.dwendtag $C$DW$TU$193


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75
$C$DW$T$75	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$75, DW_AT_name("size_t")
	.dwattr $C$DW$T$75, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$75, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/string.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x19)

	.dwendtag $C$DW$TU$75


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76
$C$DW$231	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$75)

$C$DW$T$76	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$231)

	.dwendtag $C$DW$TU$76


$C$DW$TU$14	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$14
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$14


$C$DW$TU$15	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$15
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$15


$C$DW$TU$16	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$16
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$16


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("float32_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$27, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/types/include/types.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$27


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x04)
$C$DW$232	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$232, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x06)
$C$DW$233	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$233, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$172	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$172
$C$DW$T$172	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$172, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$172, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$172


$C$DW$TU$203	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$203
$C$DW$234	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$172)

$C$DW$T$203	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$203, DW_AT_type(*$C$DW$234)

	.dwendtag $C$DW$TU$203


$C$DW$TU$158	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$158
$C$DW$235	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$27)

$C$DW$T$158	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$235)

	.dwendtag $C$DW$TU$158


$C$DW$TU$207	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$207
$C$DW$236	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$27)

$C$DW$T$207	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$207, DW_AT_type(*$C$DW$236)

	.dwendtag $C$DW$TU$207


$C$DW$TU$17	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$17
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$17


$C$DW$TU$18	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$18
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$TU$18

