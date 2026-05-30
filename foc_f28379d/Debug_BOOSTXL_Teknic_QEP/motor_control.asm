;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Sat May 30 20:22:51 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../imported/app/motor_control.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen Unix v25.11.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("foc_init")
	.dwattr $C$DW$1, DW_AT_linkage_name("foc_init")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$1, DW_AT_decl_column(0x07)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$51)

	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("hal_pwm_set_duties")
	.dwattr $C$DW$3, DW_AT_linkage_name("hal_pwm_set_duties")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/hal/hal_pwm.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$3, DW_AT_decl_column(0x06)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$49)

	.dwendtag $C$DW$3


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("hal_pwm_outputs_disable")
	.dwattr $C$DW$5, DW_AT_linkage_name("hal_pwm_outputs_disable")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/hal/hal_pwm.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x10)
	.dwattr $C$DW$5, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$5


$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("foc_reset")
	.dwattr $C$DW$6, DW_AT_linkage_name("foc_reset")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x20)
	.dwattr $C$DW$6, DW_AT_decl_column(0x07)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$51)

	.dwendtag $C$DW$6


$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("drv8305_disable")
	.dwattr $C$DW$8, DW_AT_linkage_name("drv8305_disable")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/hal/drv8305.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x26)
	.dwattr $C$DW$8, DW_AT_decl_column(0x0a)
	.dwendtag $C$DW$8


$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("hal_adc_set_zero_offsets")
	.dwattr $C$DW$9, DW_AT_linkage_name("hal_adc_set_zero_offsets")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/hal/hal_adc.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x18)
	.dwattr $C$DW$9, DW_AT_decl_column(0x06)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$73)

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$73)

$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$73)

	.dwendtag $C$DW$9


$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("foc_enable_fwc")
	.dwattr $C$DW$13, DW_AT_linkage_name("foc_enable_fwc")
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x22)
	.dwattr $C$DW$13, DW_AT_decl_column(0x07)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$51)

$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$27)

	.dwendtag $C$DW$13


$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("foc_step")
	.dwattr $C$DW$16, DW_AT_linkage_name("foc_step")
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$16, DW_AT_decl_column(0x06)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$51)

$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$23)

$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$16)

	.dwendtag $C$DW$16


$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("hal_pwm_outputs_enable")
	.dwattr $C$DW$20, DW_AT_linkage_name("hal_pwm_outputs_enable")
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/hal/hal_pwm.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$20, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$20


$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("hal_qep_zero_count")
	.dwattr $C$DW$21, DW_AT_linkage_name("hal_qep_zero_count")
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/hal/hal_qep.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0x0a)
	.dwattr $C$DW$21, DW_AT_decl_column(0x0a)
	.dwendtag $C$DW$21


$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("foc_set_iq_ref")
	.dwattr $C$DW$22, DW_AT_linkage_name("foc_set_iq_ref")
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0x21)
	.dwattr $C$DW$22, DW_AT_decl_column(0x07)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$51)

$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$16)

	.dwendtag $C$DW$22


$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("hal_board_led_blue")
	.dwattr $C$DW$25, DW_AT_linkage_name("hal_board_led_blue")
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/hal/hal_board.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0x07)
	.dwattr $C$DW$25, DW_AT_decl_column(0x06)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$10)

	.dwendtag $C$DW$25


$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("hal_qep_index_event")
	.dwattr $C$DW$27, DW_AT_linkage_name("hal_qep_index_event")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$27, DW_AT_declaration
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/hal/hal_qep.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0x09)
	.dwattr $C$DW$27, DW_AT_decl_column(0x0a)
	.dwendtag $C$DW$27


$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("drv8305_is_faulted")
	.dwattr $C$DW$28, DW_AT_linkage_name("drv8305_is_faulted")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/hal/drv8305.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x27)
	.dwattr $C$DW$28, DW_AT_decl_column(0x0a)
	.dwendtag $C$DW$28


$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("hal_adc_read_raw_ia")
	.dwattr $C$DW$29, DW_AT_linkage_name("hal_adc_read_raw_ia")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$29, DW_AT_declaration
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/hal/hal_adc.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0x0a)
	.dwattr $C$DW$29, DW_AT_decl_column(0x0a)
	.dwendtag $C$DW$29


$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("hal_adc_read_raw_ib")
	.dwattr $C$DW$30, DW_AT_linkage_name("hal_adc_read_raw_ib")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/hal/hal_adc.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$30, DW_AT_decl_column(0x0a)
	.dwendtag $C$DW$30


$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("hal_adc_read_raw_ic")
	.dwattr $C$DW$31, DW_AT_linkage_name("hal_adc_read_raw_ic")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/hal/hal_adc.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$31, DW_AT_decl_column(0x0a)
	.dwendtag $C$DW$31

	.bss	||led$7||,1,1,0
	.sect	".const"
	.align	2
	.elfsym	||step$2||,SYM_SIZE(2),SYM_BLOCKED(1)
||step$2||:
	.xfloat	$strtod("0x1.a36e2ep-15")		; step$2 @ 0

	.data
	.align	2
	.elfsym	||speed_div$3||,SYM_SIZE(2),SYM_BLOCKED(1)
||speed_div$3||:
	.bits		0,32
			; speed_div$3 @ 0

	.data
	.align	2
	.elfsym	||hb$4||,SYM_SIZE(2),SYM_BLOCKED(1)
||hb$4||:
	.bits		0,32
			; hb$4 @ 0


$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("hal_qep_read_count")
	.dwattr $C$DW$32, DW_AT_linkage_name("hal_qep_read_count")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/hal/hal_qep.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0x08)
	.dwattr $C$DW$32, DW_AT_decl_column(0x0a)
	.dwendtag $C$DW$32

	.sect	".const"
	.align	2
	.elfsym	||$P$T1$1||,SYM_SIZE(6)
||$P$T1$1||:
	.xfloat	$strtod("0x1p-1")		; $P$T1$1.a @ 0
	.xfloat	$strtod("0x1p-1")		; $P$T1$1.b @ 32
	.xfloat	$strtod("0x1p-1")		; $P$T1$1.c @ 64

$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("$P$T1$1")
	.dwattr $C$DW$33, DW_AT_linkage_name("$P$T1$1")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_addr ||$P$T1$1||]
	.dwattr $C$DW$33, DW_AT_decl_file("../imported/app/motor_control.c")
	.dwattr $C$DW$33, DW_AT_decl_line(0x25)
	.dwattr $C$DW$33, DW_AT_decl_column(0x05)


$C$DW$34	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$34, DW_AT_name("hal_adc_read_currents_pu")
	.dwattr $C$DW$34, DW_AT_linkage_name("hal_adc_read_currents_pu")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/hal/hal_adc.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0x13)
	.dwattr $C$DW$34, DW_AT_decl_column(0x0b)
	.dwendtag $C$DW$34

	.sect	".const"
	.align	2
	.elfsym	||$P$T4$5||,SYM_SIZE(6)
||$P$T4$5||:
	.xfloat	$strtod("0x1p-1")		; $P$T4$5.a @ 0
	.xfloat	$strtod("0x1p-1")		; $P$T4$5.b @ 32
	.xfloat	$strtod("0x1p-1")		; $P$T4$5.c @ 64

$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("$P$T4$5")
	.dwattr $C$DW$35, DW_AT_linkage_name("$P$T4$5")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_addr ||$P$T4$5||]
	.dwattr $C$DW$35, DW_AT_decl_file("../imported/app/motor_control.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x74)
	.dwattr $C$DW$35, DW_AT_decl_column(0x09)

	.sect	".const"
	.align	2
	.elfsym	||$P$T5$6||,SYM_SIZE(6)
||$P$T5$6||:
	.xfloat	$strtod("0x1p-1")		; $P$T5$6.a @ 0
	.xfloat	$strtod("0x1p-1")		; $P$T5$6.b @ 32
	.xfloat	$strtod("0x1p-1")		; $P$T5$6.c @ 64

$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("$P$T5$6")
	.dwattr $C$DW$36, DW_AT_linkage_name("$P$T5$6")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_addr ||$P$T5$6||]
	.dwattr $C$DW$36, DW_AT_decl_file("../imported/app/motor_control.c")
	.dwattr $C$DW$36, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$36, DW_AT_decl_column(0x09)

	.sblock	".bss"
	.sblock	".const"
	.sblock	".data"
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TI6WNLgCChn /tmp/TI6WNlr42Zm --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TI6WNkw3mPx 
	.sect	".text:enter_state"
	.clink

$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("enter_state")
	.dwattr $C$DW$37, DW_AT_low_pc(||enter_state||)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_linkage_name("enter_state")
	.dwattr $C$DW$37, DW_AT_decl_file("../imported/app/motor_control.c")
	.dwattr $C$DW$37, DW_AT_decl_line(0x10)
	.dwattr $C$DW$37, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/app/motor_control.c",line 17,column 1,is_stmt,address ||enter_state||,isa 0

	.dwfde $C$DW$CIE, ||enter_state||
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_name("m")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg12]

$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_name("s")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: enter_state                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||enter_state||:
;* AR4   assigned to m
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("m")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg12]

;* AL    assigned to s
$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("s")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../imported/app/motor_control.c",line 19,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |19| 
	.dwpsn	file "../imported/app/motor_control.c",line 18,column 5,is_stmt,isa 0
        MOV       *+XAR4[0],AL          ; [CPU_ALU] |18| 
	.dwpsn	file "../imported/app/motor_control.c",line 19,column 5,is_stmt,isa 0
        MOVL      *+XAR4[4],XAR6        ; [CPU_ALU] |19| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$37, DW_AT_TI_end_file("../imported/app/motor_control.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x14)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37

	.sect	".text:motor_ctl_raise_fault"
	.clink
	.global	||motor_ctl_raise_fault||

$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("motor_ctl_raise_fault")
	.dwattr $C$DW$43, DW_AT_low_pc(||motor_ctl_raise_fault||)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_linkage_name("motor_ctl_raise_fault")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_decl_file("../imported/app/motor_control.c")
	.dwattr $C$DW$43, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$43, DW_AT_decl_column(0x06)
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../imported/app/motor_control.c",line 63,column 1,is_stmt,address ||motor_ctl_raise_fault||,isa 0

	.dwfde $C$DW$CIE, ||motor_ctl_raise_fault||
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_name("m")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg12]

$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("flag")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: motor_ctl_raise_fault         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||motor_ctl_raise_fault||:
;* AR1   assigned to m
$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("m")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg6]

;* AL    assigned to flag
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("flag")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,XAR4             ; [CPU_ALU] |63| 
	.dwpsn	file "../imported/app/motor_control.c",line 64,column 5,is_stmt,isa 0
        OR        *+XAR1[2],AL          ; [CPU_ALU] |64| 
        OR        *+XAR1[3],AH          ; [CPU_ALU] |64| 
	.dwpsn	file "../imported/app/motor_control.c",line 65,column 5,is_stmt,isa 0
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("hal_pwm_outputs_disable")
	.dwattr $C$DW$48, DW_AT_TI_call

        LCR       #||hal_pwm_outputs_disable|| ; [CPU_ALU] |65| 
        ; call occurs [#||hal_pwm_outputs_disable||] ; [] |65| 
	.dwpsn	file "../imported/app/motor_control.c",line 66,column 5,is_stmt,isa 0
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("drv8305_disable")
	.dwattr $C$DW$49, DW_AT_TI_call

        LCR       #||drv8305_disable||  ; [CPU_ALU] |66| 
        ; call occurs [#||drv8305_disable||] ; [] |66| 
	.dwpsn	file "../imported/app/motor_control.c",line 67,column 5,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_ALU] |67| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |67| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("enter_state")
	.dwattr $C$DW$50, DW_AT_TI_call

        LCR       #||enter_state||      ; [CPU_ALU] |67| 
        ; call occurs [#||enter_state||] ; [] |67| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$43, DW_AT_TI_end_file("../imported/app/motor_control.c")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x44)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$43

	.sect	".text:slew_speed_ramp"
	.clink

$C$DW$52	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$52, DW_AT_name("slew_speed_ramp")
	.dwattr $C$DW$52, DW_AT_low_pc(||slew_speed_ramp||)
	.dwattr $C$DW$52, DW_AT_high_pc(0x00)
	.dwattr $C$DW$52, DW_AT_linkage_name("slew_speed_ramp")
	.dwattr $C$DW$52, DW_AT_decl_file("../imported/app/motor_control.c")
	.dwattr $C$DW$52, DW_AT_decl_line(0x47)
	.dwattr $C$DW$52, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$52, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../imported/app/motor_control.c",line 72,column 1,is_stmt,address ||slew_speed_ramp||,isa 0

	.dwfde $C$DW$CIE, ||slew_speed_ramp||
$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("step")
	.dwattr $C$DW$53, DW_AT_linkage_name("step$2")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_addr ||step$2||]

$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_name("m")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: slew_speed_ramp               FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||slew_speed_ramp||:
;* R2    assigned to $O$C1
;* R1    assigned to $O$C2
;* R3    assigned to $O$v2
;* AR4   assigned to m
$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("m")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../imported/app/motor_control.c",line 75,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |75| 
	.dwpsn	file "../imported/app/motor_control.c",line 74,column 17,is_stmt,isa 0
        MOVB      XAR1,#16              ; [CPU_ALU] |74| 
	.dwpsn	file "../imported/app/motor_control.c",line 75,column 5,is_stmt,isa 0
        MOVIZ     R0H,#14417            ; [CPU_FPU] |75| 
        MOV32     R2H,*+XAR4[AR0]       ; [CPU_FPU] |75| 
	.dwpsn	file "../imported/app/motor_control.c",line 74,column 17,is_stmt,isa 0
        MOV32     R3H,*+XAR4[AR1]       ; [CPU_FPU] |74| 
	.dwpsn	file "../imported/app/motor_control.c",line 75,column 5,is_stmt,isa 0
        SUBF32    R1H,R2H,R3H           ; [CPU_FPU] |75| 
        MOVXI     R0H,#46871            ; [CPU_FPU] |75| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |75| 
        MOVST0    ZF, NF                ; [CPU_FPU] |75| 
        B         ||$C$L2||,GT          ; [CPU_ALU] |75| 
        ; branchcc occurs ; [] |75| 
	.dwpsn	file "../imported/app/motor_control.c",line 76,column 10,is_stmt,isa 0
        MOVIZ     R0H,#47185            ; [CPU_FPU] |76| 
        MOVXI     R0H,#46871            ; [CPU_FPU] |76| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |76| 
        MOVST0    ZF, NF                ; [CPU_FPU] |76| 
        B         ||$C$L1||,LT          ; [CPU_ALU] |76| 
        ; branchcc occurs ; [] |76| 
	.dwpsn	file "../imported/app/motor_control.c",line 77,column 29,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |77| 
        MOV32     *+XAR4[AR0],R2H       ; [CPU_FPU] |77| 
        B         ||$C$L4||,UNC         ; [CPU_ALU] |77| 
        ; branch occurs ; [] |77| 
||$C$L1||:    
	.dwpsn	file "../imported/app/motor_control.c",line 76,column 29,is_stmt,isa 0
        MOVIZ     R0H,#14417            ; [CPU_FPU] |76| 
        MOVXI     R0H,#46871            ; [CPU_FPU] |76| 
        SUBF32    R3H,R3H,R0H           ; [CPU_FPU] |76| 
        B         ||$C$L3||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L2||:    
	.dwpsn	file "../imported/app/motor_control.c",line 75,column 29,is_stmt,isa 0
        MOVIZ     R2H,#14417            ; [CPU_FPU] |75| 
        MOVXI     R2H,#46871            ; [CPU_FPU] |75| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |75| 
        NOP       ; [CPU_ALU] 
||$C$L3||:    
        MOVB      XAR0,#16              ; [CPU_ALU] |75| 
        MOV32     *+XAR4[AR0],R3H       ; [CPU_FPU] |75| 
||$C$L4||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$52, DW_AT_TI_end_file("../imported/app/motor_control.c")
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x4e)
	.dwattr $C$DW$52, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$52

	.sect	".text:motor_ctl_step"
	.clink
	.global	||motor_ctl_step||

$C$DW$57	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$57, DW_AT_name("motor_ctl_step")
	.dwattr $C$DW$57, DW_AT_low_pc(||motor_ctl_step||)
	.dwattr $C$DW$57, DW_AT_high_pc(0x00)
	.dwattr $C$DW$57, DW_AT_linkage_name("motor_ctl_step")
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_decl_file("../imported/app/motor_control.c")
	.dwattr $C$DW$57, DW_AT_decl_line(0x50)
	.dwattr $C$DW$57, DW_AT_decl_column(0x06)
	.dwattr $C$DW$57, DW_AT_TI_max_frame_size(-20)
	.dwpsn	file "../imported/app/motor_control.c",line 81,column 1,is_stmt,address ||motor_ctl_step||,isa 0

	.dwfde $C$DW$CIE, ||motor_ctl_step||
$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("led")
	.dwattr $C$DW$58, DW_AT_linkage_name("led$7")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_addr ||led$7||]

$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("speed_div")
	.dwattr $C$DW$59, DW_AT_linkage_name("speed_div$3")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_addr ||speed_div$3||]

$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("hb")
	.dwattr $C$DW$60, DW_AT_linkage_name("hb$4")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_addr ||hb$4||]

$C$DW$61	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$61, DW_AT_name("m")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: motor_ctl_step                FR SIZE:  18           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  2 Auto, 14 SOE     *
;***************************************************************

||motor_ctl_step||:
;* AR2   assigned to $O$C10
;* AR1   assigned to $O$C11
;* R1    assigned to $O$C12
;* R3    assigned to $O$C13
;* R2    assigned to $O$C14
;* R2    assigned to $O$C15
;* R0    assigned to $O$C16
;* R0    assigned to $O$U21
;* AR2   assigned to $O$K95
;* PL    assigned to $O$T9
;* AR6   assigned to $O$v2
;* AR3   assigned to m
$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("m")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg10]

;* AL    assigned to idx
$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("idx")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg0]

;* R6    assigned to theta
$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("theta")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x43]

;* AR4   assigned to e
$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("e")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg12]

;* AR1   assigned to qpos
$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("qpos")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg6]

;* AL    assigned to delta
$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("delta")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg0]

;* R3    assigned to a
$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("a")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_regx 0x37]

;* AR6   assigned to c
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("c")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg16]

;* R1    assigned to error
$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("error")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to u_raw
$C$DW$71	.dwtag  DW_TAG_variable
	.dwattr $C$DW$71, DW_AT_name("u_raw")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_regx 0x33]

;* R0    assigned to u
$C$DW$72	.dwtag  DW_TAG_variable
	.dwattr $C$DW$72, DW_AT_name("u")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$73	.dwtag  DW_TAG_variable
	.dwattr $C$DW$73, DW_AT_name("i_abc")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_breg20 -4]

;* R0    assigned to $P$T2
$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("$P$T2")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_regx 0x29]

;* R0    assigned to $P$T3
$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("$P$T3")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_regx 0x29]

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
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 8
	.dwcfi	cfa_offset, -10
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 10
	.dwcfi	cfa_offset, -12
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 12
	.dwcfi	cfa_offset, -14
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 14
	.dwcfi	cfa_offset, -16
        ADDB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -20
        MOVL      XAR3,XAR4             ; [CPU_ALU] |81| 
	.dwpsn	file "../imported/app/motor_control.c",line 86,column 21,is_stmt,isa 0
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("hal_adc_read_currents_pu")
	.dwattr $C$DW$76, DW_AT_TI_call

        LCR       #||hal_adc_read_currents_pu|| ; [CPU_ALU] |86| 
        ; call occurs [#||hal_adc_read_currents_pu||] ; [] |86| 
        MOV32     R5H,R1H               ; [CPU_FPU] |86| 
        MOV32     R4H,R2H               ; [CPU_FPU] |86| 
        MOV32     *-SP[4],R0H           ; [CPU_FPU] |86| 
	.dwpsn	file "../imported/app/motor_control.c",line 87,column 21,is_stmt,isa 0
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("hal_qep_read_count")
	.dwattr $C$DW$77, DW_AT_TI_call

        LCR       #||hal_qep_read_count|| ; [CPU_ALU] |87| 
        ; call occurs [#||hal_qep_read_count||] ; [] |87| 
        MOVL      XAR1,ACC              ; [CPU_ALU] |87| 
	.dwpsn	file "../imported/app/motor_control.c",line 88,column 21,is_stmt,isa 0
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("hal_qep_index_event")
	.dwattr $C$DW$78, DW_AT_TI_call

        LCR       #||hal_qep_index_event|| ; [CPU_ALU] |88| 
        ; call occurs [#||hal_qep_index_event||] ; [] |88| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 36,column 12,is_stmt,isa 0
        MOVIZ     R6H,#16585            ; [CPU_FPU] |36| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 35,column 1,is_stmt,isa 0
        MOV32     R1H,XAR1              ; [CPU_FPU] |35| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 48,column 5,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |48| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 48,column 24,is_stmt,isa 0
        MOVB      XAR0,#106,NEQ         ; [CPU_ALU] |48| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 47,column 1,is_stmt,isa 0
        MOVL      XAR4,XAR3             ; [CPU_ALU] |47| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 36,column 12,is_stmt,isa 0
        MOVXI     R6H,#4059             ; [CPU_FPU] |36| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 35,column 1,is_stmt,isa 0
        I32TOF32  R2H,R1H               ; [CPU_FPU] |35| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 48,column 24,is_stmt,isa 0
        MOVB      *+XAR3[AR0],#1,NEQ    ; [CPU_ALU] |48| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 47,column 1,is_stmt,isa 0
        ADDB      XAR4,#100             ; [CPU_ALU] |47| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 50,column 19,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |50| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 35,column 1,is_stmt,isa 0
        UI32TOF32 R0H,*+XAR4[0]         ; [CPU_FPU] |35| 
        MOVIZ     R1H,#16585            ; [CPU_FPU] |35| 
        UI32TOF32 R3H,*+XAR4[2]         ; [CPU_FPU] |35| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 36,column 12,is_stmt,isa 0
        DIVF32    R7H,R2H,R0H           ; [CPU_FPU] |36| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 50,column 19,is_stmt,isa 0
        MOVL      ACC,XAR1              ; [CPU_ALU] |50| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 35,column 1,is_stmt,isa 0
        MOVXI     R1H,#4059             ; [CPU_FPU] |35| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 50,column 19,is_stmt,isa 0
        SUBL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |50| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 35,column 1,is_stmt,isa 0
        DIVF32    R2H,R2H,R0H           ; [CPU_FPU] |35| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 36,column 12,is_stmt,isa 0
        MPYF32    R6H,R6H,R7H           ; [CPU_FPU] |36| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 51,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |51| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 36,column 12,is_stmt,isa 0
        MPYF32    R6H,R3H,R6H           ; [CPU_FPU] |36| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 51,column 5,is_stmt,isa 0
        MOVL      *+XAR4[AR0],XAR1      ; [CPU_ALU] |51| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 35,column 1,is_stmt,isa 0
        MPYF32    R7H,R1H,R2H           ; [CPU_FPU] |35| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 36,column 12,is_stmt,isa 0
        MOVIZ     R1H,#16585            ; [CPU_FPU] |36| 
        MOVXI     R1H,#4059             ; [CPU_FPU] |36| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 35,column 1,is_stmt,isa 0

        MOV32     R2H,*+XAR4[4]         ; [CPU_FPU] |35| 
||      MPYF32    R3H,R3H,R7H           ; [CPU_FPU] |35| 

	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 36,column 12,is_stmt,isa 0
        ADDF32    R6H,R6H,R2H           ; [CPU_FPU] |36| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 35,column 1,is_stmt,isa 0
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |35| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 36,column 12,is_stmt,isa 0
        CMPF32    R6H,R1H               ; [CPU_FPU] |36| 
        MOVST0    ZF, NF                ; [CPU_FPU] |36| 
        B         ||$C$L6||,LT          ; [CPU_ALU] |36| 
        ; branchcc occurs ; [] |36| 
||$C$L5||:    
        MOVIZ     R2H,#16585            ; [CPU_FPU] |36| 
        MOVIZ     R1H,#16585            ; [CPU_FPU] |36| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |36| 
        SUBF32    R3H,R3H,R2H           ; [CPU_FPU] |36| 
        MOVXI     R1H,#4059             ; [CPU_FPU] |36| 
        CMPF32    R3H,R1H               ; [CPU_FPU] |36| 
        MOVST0    ZF, NF                ; [CPU_FPU] |36| 
        B         ||$C$L6||,LT          ; [CPU_ALU] |36| 
        ; branchcc occurs ; [] |36| 
        MOVIZ     R2H,#16585            ; [CPU_FPU] |36| 
        MOVIZ     R1H,#16585            ; [CPU_FPU] |36| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |36| 
        SUBF32    R3H,R3H,R2H           ; [CPU_FPU] |36| 
        MOVXI     R1H,#4059             ; [CPU_FPU] |36| 
        CMPF32    R3H,R1H               ; [CPU_FPU] |36| 
        MOVST0    ZF, NF                ; [CPU_FPU] |36| 
        B         ||$C$L6||,LT          ; [CPU_ALU] |36| 
        ; branchcc occurs ; [] |36| 
        MOVIZ     R2H,#16585            ; [CPU_FPU] |36| 
        MOVIZ     R1H,#16585            ; [CPU_FPU] |36| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |36| 
        SUBF32    R3H,R3H,R2H           ; [CPU_FPU] |36| 
        MOVXI     R1H,#4059             ; [CPU_FPU] |36| 
        CMPF32    R3H,R1H               ; [CPU_FPU] |36| 
        MOVST0    ZF, NF                ; [CPU_FPU] |36| 
        B         ||$C$L6||,LT          ; [CPU_ALU] |36| 
        ; branchcc occurs ; [] |36| 
        MOVIZ     R2H,#16585            ; [CPU_FPU] |36| 
        MOVIZ     R1H,#16585            ; [CPU_FPU] |36| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |36| 
        SUBF32    R3H,R3H,R2H           ; [CPU_FPU] |36| 
        MOVXI     R1H,#4059             ; [CPU_FPU] |36| 
        CMPF32    R3H,R1H               ; [CPU_FPU] |36| 
        MOVST0    ZF, NF                ; [CPU_FPU] |36| 
        B         ||$C$L6||,LT          ; [CPU_ALU] |36| 
        ; branchcc occurs ; [] |36| 
        MOVIZ     R2H,#16585            ; [CPU_FPU] |36| 
        MOVIZ     R1H,#16585            ; [CPU_FPU] |36| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |36| 
        SUBF32    R3H,R3H,R2H           ; [CPU_FPU] |36| 
        MOVXI     R1H,#4059             ; [CPU_FPU] |36| 
        CMPF32    R3H,R1H               ; [CPU_FPU] |36| 
        MOVST0    ZF, NF                ; [CPU_FPU] |36| 
        B         ||$C$L6||,LT          ; [CPU_ALU] |36| 
        ; branchcc occurs ; [] |36| 
        MOVIZ     R2H,#16585            ; [CPU_FPU] |36| 
        MOVIZ     R1H,#16585            ; [CPU_FPU] |36| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |36| 
        SUBF32    R3H,R3H,R2H           ; [CPU_FPU] |36| 
        MOVXI     R1H,#4059             ; [CPU_FPU] |36| 
        CMPF32    R3H,R1H               ; [CPU_FPU] |36| 
        MOVST0    ZF, NF                ; [CPU_FPU] |36| 
        B         ||$C$L6||,LT          ; [CPU_ALU] |36| 
        ; branchcc occurs ; [] |36| 
        MOVIZ     R2H,#16585            ; [CPU_FPU] |36| 
        MOVIZ     R1H,#16585            ; [CPU_FPU] |36| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |36| 
        SUBF32    R3H,R3H,R2H           ; [CPU_FPU] |36| 
        MOVXI     R1H,#4059             ; [CPU_FPU] |36| 
        CMPF32    R3H,R1H               ; [CPU_FPU] |36| 
        MOVST0    ZF, NF                ; [CPU_FPU] |36| 
        B         ||$C$L6||,LT          ; [CPU_ALU] |36| 
        ; branchcc occurs ; [] |36| 
        MOVIZ     R2H,#16585            ; [CPU_FPU] |36| 
        MOVIZ     R1H,#16585            ; [CPU_FPU] |36| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |36| 
        SUBF32    R3H,R3H,R2H           ; [CPU_FPU] |36| 
        MOVXI     R1H,#4059             ; [CPU_FPU] |36| 
        CMPF32    R3H,R1H               ; [CPU_FPU] |36| 
        MOVST0    ZF, NF                ; [CPU_FPU] |36| 
        B         ||$C$L5||,GEQ         ; [CPU_ALU] |36| 
        ; branchcc occurs ; [] |36| 
||$C$L6||:    
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 37,column 12,is_stmt,isa 0
        CMPF32    R3H,#0                ; [CPU_FPU] |37| 
        MOVST0    ZF, NF                ; [CPU_FPU] |37| 
        B         ||$C$L8||,GEQ         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
||$C$L7||:    
        MOVIZ     R2H,#16585            ; [CPU_FPU] |37| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |37| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |37| 
        NOP       ; [CPU_ALU] 
        CMPF32    R3H,#0                ; [CPU_FPU] |37| 
        MOVST0    ZF, NF                ; [CPU_FPU] |37| 
        B         ||$C$L8||,GEQ         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
        MOVIZ     R2H,#16585            ; [CPU_FPU] |37| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |37| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |37| 
        NOP       ; [CPU_ALU] 
        CMPF32    R3H,#0                ; [CPU_FPU] |37| 
        MOVST0    ZF, NF                ; [CPU_FPU] |37| 
        B         ||$C$L8||,GEQ         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
        MOVIZ     R2H,#16585            ; [CPU_FPU] |37| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |37| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |37| 
        NOP       ; [CPU_ALU] 
        CMPF32    R3H,#0                ; [CPU_FPU] |37| 
        MOVST0    ZF, NF                ; [CPU_FPU] |37| 
        B         ||$C$L8||,GEQ         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
        MOVIZ     R2H,#16585            ; [CPU_FPU] |37| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |37| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |37| 
        NOP       ; [CPU_ALU] 
        CMPF32    R3H,#0                ; [CPU_FPU] |37| 
        MOVST0    ZF, NF                ; [CPU_FPU] |37| 
        B         ||$C$L8||,GEQ         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
        MOVIZ     R2H,#16585            ; [CPU_FPU] |37| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |37| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |37| 
        NOP       ; [CPU_ALU] 
        CMPF32    R3H,#0                ; [CPU_FPU] |37| 
        MOVST0    ZF, NF                ; [CPU_FPU] |37| 
        B         ||$C$L8||,GEQ         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
        MOVIZ     R2H,#16585            ; [CPU_FPU] |37| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |37| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |37| 
        NOP       ; [CPU_ALU] 
        CMPF32    R3H,#0                ; [CPU_FPU] |37| 
        MOVST0    ZF, NF                ; [CPU_FPU] |37| 
        B         ||$C$L8||,GEQ         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
        MOVIZ     R2H,#16585            ; [CPU_FPU] |37| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |37| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |37| 
        NOP       ; [CPU_ALU] 
        CMPF32    R3H,#0                ; [CPU_FPU] |37| 
        MOVST0    ZF, NF                ; [CPU_FPU] |37| 
        B         ||$C$L8||,GEQ         ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
        MOVIZ     R2H,#16585            ; [CPU_FPU] |37| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |37| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |37| 
        NOP       ; [CPU_ALU] 
        CMPF32    R3H,#0                ; [CPU_FPU] |37| 
        MOVST0    ZF, NF                ; [CPU_FPU] |37| 
        B         ||$C$L7||,LT          ; [CPU_ALU] |37| 
        ; branchcc occurs ; [] |37| 
||$C$L8||:    
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 61,column 5,is_stmt,isa 0
        MOV32     R1H,ACC               ; [CPU_FPU] |61| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 56,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |56| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 61,column 5,is_stmt,isa 0
        MOVIZ     R7H,#18076            ; [CPU_FPU] |61| 
        I32TOF32  R1H,R1H               ; [CPU_FPU] |61| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 56,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R3H       ; [CPU_FPU] |56| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 61,column 5,is_stmt,isa 0
        MOVIZ     R6H,#14673            ; [CPU_FPU] |61| 
        DIVF32    R1H,R1H,R0H           ; [CPU_FPU] |61| 
        MOVXI     R7H,#16384            ; [CPU_FPU] |61| 
        MOVB      XAR0,#12              ; [CPU_ALU] |61| 
        MOVIZ     R3H,#15019            ; [CPU_FPU] |61| 
        MOVB      XAR1,#12              ; [CPU_ALU] |61| 
        MPYF32    R0H,R7H,R1H           ; [CPU_FPU] |61| 
        MOVXI     R6H,#46871            ; [CPU_FPU] |61| 
        MPYF32    R1H,R0H,#17008        ; [CPU_FPU] |61| 
	.dwpsn	file "../imported/app/motor_control.c",line 91,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |91| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 61,column 5,is_stmt,isa 0
        MPYF32    R0H,R6H,R1H           ; [CPU_FPU] |61| 
        MOV32     R1H,*+XAR4[AR0]       ; [CPU_FPU] |61| 
        SUBF32    R2H,R0H,R1H           ; [CPU_FPU] |61| 
        MOVXI     R3H,#8363             ; [CPU_FPU] |61| 
        MPYF32    R0H,R3H,R2H           ; [CPU_FPU] |61| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 63,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |63| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 61,column 5,is_stmt,isa 0
        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |61| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 63,column 5,is_stmt,isa 0
        MOV32     R6H,*+XAR4[AR0]       ; [CPU_FPU] |63| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 61,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R0H       ; [CPU_FPU] |61| 
	.dwpsn	file "../imported/app/motor_control.c",line 91,column 5,is_stmt,isa 0
        ADDL      *+XAR3[4],ACC         ; [CPU_ALU] |91| 
	.dwpsn	file "../imported/app/motor_control.c",line 94,column 5,is_stmt,isa 0
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("drv8305_is_faulted")
	.dwattr $C$DW$79, DW_AT_TI_call

        LCR       #||drv8305_is_faulted|| ; [CPU_ALU] |94| 
        ; call occurs [#||drv8305_is_faulted||] ; [] |94| 
        CMPB      AL,#0                 ; [CPU_ALU] |94| 
        B         ||$C$L9||,EQ          ; [CPU_ALU] |94| 
        ; branchcc occurs ; [] |94| 
        MOV       AL,*+XAR3[0]          ; [CPU_ALU] |94| 
        CMPB      AL,#4                 ; [CPU_ALU] |94| 
        B         ||$C$L9||,EQ          ; [CPU_ALU] |94| 
        ; branchcc occurs ; [] |94| 
	.dwpsn	file "../imported/app/motor_control.c",line 95,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR3             ; [CPU_ALU] |95| 
        MOVB      ACC,#8                ; [CPU_ALU] |95| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("motor_ctl_raise_fault")
	.dwattr $C$DW$80, DW_AT_TI_call

        LCR       #||motor_ctl_raise_fault|| ; [CPU_ALU] |95| 
        ; call occurs [#||motor_ctl_raise_fault||] ; [] |95| 
||$C$L9||:    
	.dwpsn	file "../imported/app/motor_control.c",line 98,column 5,is_stmt,isa 0
        MOV       AL,*+XAR3[0]          ; [CPU_ALU] |98| 
        CMPB      AL,#2                 ; [CPU_ALU] |98| 
        B         ||$C$L10||,GT         ; [CPU_ALU] |98| 
        ; branchcc occurs ; [] |98| 
        CMPB      AL,#2                 ; [CPU_ALU] |98| 
        B         ||$C$L13||,EQ         ; [CPU_ALU] |98| 
        ; branchcc occurs ; [] |98| 
        CMPB      AL,#0                 ; [CPU_ALU] |98| 
        B         ||$C$L17||,EQ         ; [CPU_ALU] |98| 
        ; branchcc occurs ; [] |98| 
        CMPB      AL,#1                 ; [CPU_ALU] |98| 
        B         ||$C$L14||,EQ         ; [CPU_ALU] |98| 
        ; branchcc occurs ; [] |98| 
        B         ||$C$L19||,UNC        ; [CPU_ALU] |98| 
        ; branch occurs ; [] |98| 
||$C$L10||:    
        CMPB      AL,#3                 ; [CPU_ALU] |98| 
        B         ||$C$L11||,EQ         ; [CPU_ALU] |98| 
        ; branchcc occurs ; [] |98| 
        CMPB      AL,#4                 ; [CPU_ALU] |98| 
        B         ||$C$L16||,EQ         ; [CPU_ALU] |98| 
        ; branchcc occurs ; [] |98| 
        B         ||$C$L19||,UNC        ; [CPU_ALU] |98| 
        ; branch occurs ; [] |98| 
||$C$L11||:    
	.dwpsn	file "../imported/app/motor_control.c",line 138,column 9,is_stmt,isa 0
        MOVL      XAR4,XAR3             ; [CPU_ALU] |138| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("slew_speed_ramp")
	.dwattr $C$DW$81, DW_AT_TI_call

        LCR       #||slew_speed_ramp||  ; [CPU_ALU] |138| 
        ; call occurs [#||slew_speed_ramp||] ; [] |138| 
	.dwpsn	file "../imported/app/motor_control.c",line 141,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |141| 
        MOVW      DP,#||speed_div$3||   ; [CPU_ARAU] 
        ADDL      ACC,@||speed_div$3||  ; [CPU_ALU] |141| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |141| 
        MOVL      @||speed_div$3||,ACC  ; [CPU_ALU] |141| 
        MOVB      ACC,#30               ; [CPU_ALU] |141| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |141| 
        B         ||$C$L12||,HI         ; [CPU_ALU] |141| 
        ; branchcc occurs ; [] |141| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 36,column 1,is_stmt,isa 0
        MOVB      XAR0,#112             ; [CPU_ALU] |36| 
        MOV32     R0H,*+XAR3[AR0]       ; [CPU_FPU] |36| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 37,column 17,is_stmt,isa 0
        MOVB      XAR1,#96              ; [CPU_ALU] |37| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 36,column 1,is_stmt,isa 0
        MOVL      XAR6,XAR3             ; [CPU_ALU] |36| 
        MOVB      XAR0,#16              ; [CPU_ALU] |36| 
	.dwpsn	file "../imported/app/motor_control.c",line 142,column 13,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |142| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 36,column 1,is_stmt,isa 0
        MOV32     R1H,*+XAR3[AR0]       ; [CPU_FPU] |36| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 37,column 17,is_stmt,isa 0
        MOV32     R2H,*+XAR3[AR1]       ; [CPU_FPU] |37| 
        MOVB      XAR0,#88              ; [CPU_ALU] |37| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 36,column 1,is_stmt,isa 0
        ADDB      XAR6,#88              ; [CPU_ALU] |36| 
	.dwpsn	file "../imported/app/motor_control.c",line 144,column 13,is_stmt,isa 0
        ADDB      XAR4,#18              ; [CPU_ALU] |144| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 36,column 1,is_stmt,isa 0

        MOV32     R0H,*+XAR3[AR0]       ; [CPU_FPU] |37| 
||      SUBF32    R1H,R1H,R0H           ; [CPU_FPU] |36| 

	.dwpsn	file "../imported/app/motor_control.c",line 142,column 13,is_stmt,isa 0
        MOVL      @||speed_div$3||,ACC  ; [CPU_FPU] |142| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 37,column 17,is_stmt,isa 0

        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |37| 
||      MOV32     R3H,*+XAR6[6]         ; [CPU_FPU] |39| 

	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 42,column 5,is_stmt,isa 0
        MOVL      XAR5,XAR6             ; [CPU_FPU] |42| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 37,column 17,is_stmt,isa 0

        ADDF32    R2H,R2H,R0H           ; [CPU_FPU] |37| 
||      MOV32     R7H,*+XAR6[4]         ; [CPU_FPU] |40| 

	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/speed_loop.h",line 27,column 5,is_stmt,isa 0
        MOVB      XAR0,#98              ; [CPU_FPU] |27| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 38,column 17,is_stmt,isa 0
        MOV32     R0H,R2H               ; [CPU_FPU] |38| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 39,column 30,is_stmt,isa 0
        MINF32    R0H,R3H               ; [CPU_FPU] |39| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 42,column 5,is_stmt,isa 0
        MOV32     R3H,*+XAR6[2]         ; [CPU_FPU] |42| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 40,column 30,is_stmt,isa 0
        MAXF32    R0H,R7H               ; [CPU_FPU] |40| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 42,column 5,is_stmt,isa 0
        MPYF32    R1H,R1H,R3H           ; [CPU_FPU] |42| 
        SUBF32    R2H,R0H,R2H           ; [CPU_FPU] |42| 
        ADDB      XAR5,#8               ; [CPU_ALU] |42| 
        ADDF32    R2H,R2H,R1H           ; [CPU_FPU] |42| 
        MOV32     R7H,*+XAR5[0]         ; [CPU_FPU] |42| 
        ADDF32    R1H,R2H,R7H           ; [CPU_FPU] |42| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/speed_loop.h",line 27,column 5,is_stmt,isa 0
        MOV32     *+XAR3[AR0],R0H       ; [CPU_FPU] |27| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 42,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R1H         ; [CPU_FPU] |42| 
	.dwpsn	file "../imported/app/motor_control.c",line 144,column 13,is_stmt,isa 0
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("foc_set_iq_ref")
	.dwattr $C$DW$82, DW_AT_TI_call

        LCR       #||foc_set_iq_ref||   ; [CPU_ALU] |144| 
        ; call occurs [#||foc_set_iq_ref||] ; [] |144| 
||$C$L12||:    
	.dwpsn	file "../imported/app/motor_control.c",line 148,column 9,is_stmt,isa 0
        MOVB      XAR0,#112             ; [CPU_ALU] |148| 
        MOVIZ     R0H,#16204            ; [CPU_FPU] |148| 
        MOVL      XAR1,XAR3             ; [CPU_ALU] |148| 
        MOV32     R1H,*+XAR3[AR0]       ; [CPU_FPU] |148| 
        MOVB      AL,#0                 ; [CPU_ALU] |148| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |148| 
        ABSF32    R1H,R1H               ; [CPU_FPU] |148| 
        ADDB      XAR1,#18              ; [CPU_ALU] |148| 
        CMPF32    R1H,R0H               ; [CPU_FPU] |148| 
        MOVST0    ZF, NF                ; [CPU_FPU] |148| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |148| 
        MOVB      AL,#1,GT              ; [CPU_ALU] |148| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("foc_enable_fwc")
	.dwattr $C$DW$83, DW_AT_TI_call

        LCR       #||foc_enable_fwc||   ; [CPU_ALU] |148| 
        ; call occurs [#||foc_enable_fwc||] ; [] |148| 
	.dwpsn	file "../imported/app/motor_control.c",line 150,column 9,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |150| 
        ZERO      R0H                   ; [CPU_FPU] |150| 
        MOV32     *+XAR3[AR0],R0H       ; [CPU_FPU] |150| 
	.dwpsn	file "../imported/app/motor_control.c",line 151,column 9,is_stmt,isa 0
        MOV32     R1H,R5H               ; [CPU_FPU] |151| 
        MOV32     R2H,R4H               ; [CPU_FPU] |151| 
        MOV32     R3H,R6H               ; [CPU_FPU] |151| 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |151| 
        MOV32     R0H,*-SP[4]           ; [CPU_FPU] |151| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("foc_step")
	.dwattr $C$DW$84, DW_AT_TI_call

        LCR       #||foc_step||         ; [CPU_ALU] |151| 
        ; call occurs [#||foc_step||] ; [] |151| 
	.dwpsn	file "../imported/app/motor_control.c",line 152,column 9,is_stmt,isa 0
        MOVB      XAR1,#48              ; [CPU_ALU] |152| 
        MOVB      XAR0,#46              ; [CPU_ALU] |152| 
        MOV32     R0H,*+XAR3[AR0]       ; [CPU_FPU] |152| 
        MOVB      XAR0,#50              ; [CPU_ALU] |152| 
        MOV32     R1H,*+XAR3[AR1]       ; [CPU_FPU] |152| 
        MOV32     R2H,*+XAR3[AR0]       ; [CPU_FPU] |152| 
	.dwpsn	file "../imported/app/motor_control.c",line 153,column 9,is_stmt,isa 0
        B         ||$C$L18||,UNC        ; [CPU_ALU] |153| 
        ; branch occurs ; [] |153| 
||$C$L13||:    
	.dwpsn	file "../imported/app/motor_control.c",line 122,column 9,is_stmt,isa 0
        MOVB      XAR1,#18              ; [CPU_ALU] |122| 
        MOVIZ     R0H,#16000            ; [CPU_FPU] |122| 
	.dwpsn	file "../imported/app/motor_control.c",line 123,column 9,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |123| 
        ZERO      R1H                   ; [CPU_FPU] |123| 
	.dwpsn	file "../imported/app/motor_control.c",line 124,column 9,is_stmt,isa 0
        MOVL      XAR2,XAR3             ; [CPU_ALU] |124| 
        MOVB      AL,#0                 ; [CPU_ALU] |124| 
	.dwpsn	file "../imported/app/motor_control.c",line 122,column 9,is_stmt,isa 0
        MOV32     *+XAR3[AR1],R0H       ; [CPU_FPU] |122| 
	.dwpsn	file "../imported/app/motor_control.c",line 123,column 9,is_stmt,isa 0
        MOV32     *+XAR3[AR0],R1H       ; [CPU_FPU] |123| 
	.dwpsn	file "../imported/app/motor_control.c",line 124,column 9,is_stmt,isa 0
        ADDB      XAR2,#18              ; [CPU_ALU] |124| 
        MOVL      XAR4,XAR2             ; [CPU_ALU] |124| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("foc_enable_fwc")
	.dwattr $C$DW$85, DW_AT_TI_call

        LCR       #||foc_enable_fwc||   ; [CPU_ALU] |124| 
        ; call occurs [#||foc_enable_fwc||] ; [] |124| 
	.dwpsn	file "../imported/app/motor_control.c",line 125,column 9,is_stmt,isa 0
        ZERO      R3H                   ; [CPU_FPU] |125| 
        MOV32     R1H,R5H               ; [CPU_FPU] |125| 
        MOV32     R2H,R4H               ; [CPU_FPU] |125| 
        MOV32     R0H,*-SP[4]           ; [CPU_FPU] |125| 
        MOVL      XAR4,XAR2             ; [CPU_ALU] |125| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("foc_step")
	.dwattr $C$DW$86, DW_AT_TI_call

        LCR       #||foc_step||         ; [CPU_ALU] |125| 
        ; call occurs [#||foc_step||] ; [] |125| 
	.dwpsn	file "../imported/app/motor_control.c",line 126,column 9,is_stmt,isa 0
        MOVB      XAR1,#48              ; [CPU_ALU] |126| 
        MOVB      XAR0,#46              ; [CPU_ALU] |126| 
        MOV32     R0H,*+XAR3[AR0]       ; [CPU_FPU] |126| 
        MOVB      XAR0,#50              ; [CPU_ALU] |126| 
        MOV32     R1H,*+XAR3[AR1]       ; [CPU_FPU] |126| 
        MOV32     R2H,*+XAR3[AR0]       ; [CPU_FPU] |126| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("hal_pwm_set_duties")
	.dwattr $C$DW$87, DW_AT_TI_call

        LCR       #||hal_pwm_set_duties|| ; [CPU_ALU] |126| 
        ; call occurs [#||hal_pwm_set_duties||] ; [] |126| 
	.dwpsn	file "../imported/app/motor_control.c",line 127,column 9,is_stmt,isa 0
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("hal_pwm_outputs_enable")
	.dwattr $C$DW$88, DW_AT_TI_call

        LCR       #||hal_pwm_outputs_enable|| ; [CPU_ALU] |127| 
        ; call occurs [#||hal_pwm_outputs_enable||] ; [] |127| 
	.dwpsn	file "../imported/app/motor_control.c",line 129,column 9,is_stmt,isa 0
        MOV       ACC,#10000            ; [CPU_ALU] |129| 
        CMPL      ACC,*+XAR3[4]         ; [CPU_ALU] |129| 
        B         ||$C$L19||,HI         ; [CPU_ALU] |129| 
        ; branchcc occurs ; [] |129| 
	.dwpsn	file "../imported/app/motor_control.c",line 130,column 13,is_stmt,isa 0
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("hal_qep_zero_count")
	.dwattr $C$DW$89, DW_AT_TI_call

        LCR       #||hal_qep_zero_count|| ; [CPU_ALU] |130| 
        ; call occurs [#||hal_qep_zero_count||] ; [] |130| 
	.dwpsn	file "../imported/app/motor_control.c",line 131,column 13,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |131| 
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("foc_reset")
	.dwattr $C$DW$90, DW_AT_TI_call

        LCR       #||foc_reset||        ; [CPU_ALU] |131| 
        ; call occurs [#||foc_reset||] ; [] |131| 
	.dwpsn	file "../imported/app/motor_control.c",line 132,column 13,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_ALU] |132| 
        B         ||$C$L15||,UNC        ; [CPU_ALU] |132| 
        ; branch occurs ; [] |132| 
||$C$L14||:    
	.dwpsn	file "../imported/app/motor_control.c",line 102,column 9,is_stmt,isa 0
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("hal_adc_read_raw_ia")
	.dwattr $C$DW$91, DW_AT_TI_call

        LCR       #||hal_adc_read_raw_ia|| ; [CPU_ALU] |102| 
        ; call occurs [#||hal_adc_read_raw_ia||] ; [] |102| 
        MOVU      ACC,AL                ; [CPU_ALU] |102| 
        ADDL      *+XAR3[6],ACC         ; [CPU_ALU] |102| 
	.dwpsn	file "../imported/app/motor_control.c",line 103,column 9,is_stmt,isa 0
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("hal_adc_read_raw_ib")
	.dwattr $C$DW$92, DW_AT_TI_call

        LCR       #||hal_adc_read_raw_ib|| ; [CPU_ALU] |103| 
        ; call occurs [#||hal_adc_read_raw_ib||] ; [] |103| 
        MOVL      XAR4,XAR3             ; [CPU_ALU] |103| 
        MOVU      ACC,AL                ; [CPU_ALU] |103| 
        ADDB      XAR4,#8               ; [CPU_ALU] |103| 
        ADDL      *+XAR4[0],ACC         ; [CPU_ALU] |103| 
	.dwpsn	file "../imported/app/motor_control.c",line 104,column 9,is_stmt,isa 0
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("hal_adc_read_raw_ic")
	.dwattr $C$DW$93, DW_AT_TI_call

        LCR       #||hal_adc_read_raw_ic|| ; [CPU_ALU] |104| 
        ; call occurs [#||hal_adc_read_raw_ic||] ; [] |104| 
        MOVB      XAR1,#10              ; [CPU_ALU] |104| 
        MOVB      XAR0,#10              ; [CPU_ALU] |104| 
        MOVU      ACC,AL                ; [CPU_ALU] |104| 
        ADDL      ACC,*+XAR3[AR0]       ; [CPU_ALU] |104| 
	.dwpsn	file "../imported/app/motor_control.c",line 105,column 9,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |105| 
	.dwpsn	file "../imported/app/motor_control.c",line 104,column 9,is_stmt,isa 0
        MOVL      P,ACC                 ; [CPU_ALU] |104| 
	.dwpsn	file "../imported/app/motor_control.c",line 105,column 9,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |105| 
        ADDL      ACC,*+XAR3[AR0]       ; [CPU_ALU] |105| 
        MOVB      XAR0,#12              ; [CPU_ALU] |105| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |105| 
	.dwpsn	file "../imported/app/motor_control.c",line 104,column 9,is_stmt,isa 0
        MOVL      *+XAR3[AR1],P         ; [CPU_ALU] |104| 
	.dwpsn	file "../imported/app/motor_control.c",line 105,column 9,is_stmt,isa 0
        MOVL      *+XAR3[AR0],ACC       ; [CPU_ALU] |105| 
	.dwpsn	file "../imported/app/motor_control.c",line 106,column 9,is_stmt,isa 0
        MOV       ACC,#1024             ; [CPU_ALU] |106| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |106| 
        B         ||$C$L19||,HI         ; [CPU_ALU] |106| 
        ; branchcc occurs ; [] |106| 
	.dwpsn	file "../imported/app/motor_control.c",line 110,column 13,is_stmt,isa 0
        MOVL      ACC,*+XAR3[6]         ; [CPU_ALU] |110| 
        CLRC      SXM                   ; [CPU_ALU] 
        MOVB      XAR0,#8               ; [CPU_ALU] |110| 
        SFR       ACC,10                ; [CPU_ALU] |110| 
        MOVZ      AR7,AL                ; [CPU_ALU] |110| 
        MOVL      ACC,*+XAR3[AR0]       ; [CPU_ALU] |110| 
        SFR       ACC,10                ; [CPU_ALU] |110| 
        MOVZ      AR6,AL                ; [CPU_ALU] |110| 
        MOVL      ACC,P                 ; [CPU_ALU] |110| 
        SFR       ACC,10                ; [CPU_ALU] |110| 
        MOVZ      AR4,AL                ; [CPU_ALU] |110| 
        MOV       AH,AR6                ; [CPU_ALU] |110| 
        MOV       AL,AR7                ; [CPU_ALU] |110| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("hal_adc_set_zero_offsets")
	.dwattr $C$DW$94, DW_AT_TI_call

        LCR       #||hal_adc_set_zero_offsets|| ; [CPU_ALU] |110| 
        ; call occurs [#||hal_adc_set_zero_offsets||] ; [] |110| 
	.dwpsn	file "../imported/app/motor_control.c",line 111,column 13,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |111| 
||$C$L15||:    
        MOVL      XAR4,XAR3             ; [CPU_ALU] |111| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("enter_state")
	.dwattr $C$DW$95, DW_AT_TI_call

        LCR       #||enter_state||      ; [CPU_ALU] |111| 
        ; call occurs [#||enter_state||] ; [] |111| 
        B         ||$C$L19||,UNC        ; [CPU_ALU] |111| 
        ; branch occurs ; [] |111| 
||$C$L16||:    
        MOVW      DP,#||$P$T5$6||       ; [CPU_ARAU] 
	.dwpsn	file "../imported/app/motor_control.c",line 158,column 9,is_stmt,isa 0
        MOV32     R0H,@||$P$T5$6||      ; [CPU_FPU] |158| 
        MOV32     R1H,@||$P$T5$6||+2    ; [CPU_FPU] |158| 
        MOV32     R2H,@||$P$T5$6||+4    ; [CPU_FPU] |158| 
	.dwpsn	file "../imported/app/motor_control.c",line 159,column 9,is_stmt,isa 0
        B         ||$C$L18||,UNC        ; [CPU_ALU] |159| 
        ; branch occurs ; [] |159| 
||$C$L17||:    
        MOVW      DP,#||$P$T4$5||       ; [CPU_ARAU] 
	.dwpsn	file "../imported/app/motor_control.c",line 116,column 9,is_stmt,isa 0
        MOV32     R0H,@||$P$T4$5||      ; [CPU_FPU] |116| 
        MOV32     R1H,@||$P$T4$5||+2    ; [CPU_FPU] |116| 
        MOV32     R2H,@||$P$T4$5||+4    ; [CPU_FPU] |116| 
||$C$L18||:    
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("hal_pwm_set_duties")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #||hal_pwm_set_duties|| ; [CPU_ALU] |116| 
        ; call occurs [#||hal_pwm_set_duties||] ; [] |116| 
||$C$L19||:    
	.dwpsn	file "../imported/app/motor_control.c",line 163,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |163| 
        MOVW      DP,#||hb$4||          ; [CPU_ARAU] 
        ADDL      ACC,@||hb$4||         ; [CPU_ALU] |163| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |163| 
        MOVL      @||hb$4||,ACC         ; [CPU_ALU] |163| 
        MOV       ACC,#10000            ; [CPU_ALU] |163| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |163| 
        B         ||$C$L20||,HI         ; [CPU_ALU] |163| 
        ; branchcc occurs ; [] |163| 
        MOVW      DP,#||led$7||         ; [CPU_ARAU] 
	.dwpsn	file "../imported/app/motor_control.c",line 163,column 36,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |163| 
	.dwpsn	file "../imported/app/motor_control.c",line 163,column 60,is_stmt,isa 0
        XOR       @||led$7||,#0x0001    ; [CPU_ALU] |163| 
        MOVW      DP,#||hb$4||          ; [CPU_ARAU] 
	.dwpsn	file "../imported/app/motor_control.c",line 163,column 36,is_stmt,isa 0
        MOVL      @||hb$4||,ACC         ; [CPU_ALU] |163| 
        MOVW      DP,#||led$7||         ; [CPU_ARAU] 
	.dwpsn	file "../imported/app/motor_control.c",line 163,column 70,is_stmt,isa 0
        MOV       AL,@||led$7||         ; [CPU_ALU] |163| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("hal_board_led_blue")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #||hal_board_led_blue|| ; [CPU_ALU] |163| 
        ; call occurs [#||hal_board_led_blue||] ; [] |163| 
||$C$L20||:    
        SUBB      SP,#4                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -16
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -14
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -12
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 59
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$57, DW_AT_TI_end_file("../imported/app/motor_control.c")
	.dwattr $C$DW$57, DW_AT_TI_end_line(0xa4)
	.dwattr $C$DW$57, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$57

	.sect	".text:motor_ctl_set_speed_ref_pu"
	.clink
	.global	||motor_ctl_set_speed_ref_pu||

$C$DW$99	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$99, DW_AT_name("motor_ctl_set_speed_ref_pu")
	.dwattr $C$DW$99, DW_AT_low_pc(||motor_ctl_set_speed_ref_pu||)
	.dwattr $C$DW$99, DW_AT_high_pc(0x00)
	.dwattr $C$DW$99, DW_AT_linkage_name("motor_ctl_set_speed_ref_pu")
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_decl_file("../imported/app/motor_control.c")
	.dwattr $C$DW$99, DW_AT_decl_line(0x37)
	.dwattr $C$DW$99, DW_AT_decl_column(0x06)
	.dwattr $C$DW$99, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/app/motor_control.c",line 56,column 1,is_stmt,address ||motor_ctl_set_speed_ref_pu||,isa 0

	.dwfde $C$DW$CIE, ||motor_ctl_set_speed_ref_pu||
$C$DW$100	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$100, DW_AT_name("m")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg12]

$C$DW$101	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$101, DW_AT_name("v")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: motor_ctl_set_speed_ref_pu    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||motor_ctl_set_speed_ref_pu||:
;* AR4   assigned to m
$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("m")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg12]

;* R0    assigned to v
$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("v")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../imported/app/motor_control.c",line 57,column 32,is_stmt,isa 0
        MINF32    R0H,#16256            ; [CPU_FPU] |57| 
	.dwpsn	file "../imported/app/motor_control.c",line 59,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |59| 
	.dwpsn	file "../imported/app/motor_control.c",line 58,column 32,is_stmt,isa 0
        MAXF32    R0H,#49024            ; [CPU_FPU] |58| 
	.dwpsn	file "../imported/app/motor_control.c",line 59,column 5,is_stmt,isa 0
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |59| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$99, DW_AT_TI_end_file("../imported/app/motor_control.c")
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x3c)
	.dwattr $C$DW$99, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$99

	.sect	".text:motor_ctl_request_stop"
	.clink
	.global	||motor_ctl_request_stop||

$C$DW$105	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$105, DW_AT_name("motor_ctl_request_stop")
	.dwattr $C$DW$105, DW_AT_low_pc(||motor_ctl_request_stop||)
	.dwattr $C$DW$105, DW_AT_high_pc(0x00)
	.dwattr $C$DW$105, DW_AT_linkage_name("motor_ctl_request_stop")
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_decl_file("../imported/app/motor_control.c")
	.dwattr $C$DW$105, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$105, DW_AT_decl_column(0x06)
	.dwattr $C$DW$105, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../imported/app/motor_control.c",line 47,column 1,is_stmt,address ||motor_ctl_request_stop||,isa 0

	.dwfde $C$DW$CIE, ||motor_ctl_request_stop||
$C$DW$106	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$106, DW_AT_name("m")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: motor_ctl_request_stop        FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||motor_ctl_request_stop||:
;* AR2   assigned to m
$C$DW$107	.dwtag  DW_TAG_variable
	.dwattr $C$DW$107, DW_AT_name("m")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg8]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,XAR4             ; [CPU_ALU] |47| 
	.dwpsn	file "../imported/app/motor_control.c",line 48,column 5,is_stmt,isa 0
        ADDB      XAR4,#18              ; [CPU_ALU] |48| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("foc_reset")
	.dwattr $C$DW$108, DW_AT_TI_call

        LCR       #||foc_reset||        ; [CPU_ALU] |48| 
        ; call occurs [#||foc_reset||] ; [] |48| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 33,column 45,is_stmt,isa 0
        MOVB      XAR1,#96              ; [CPU_ALU] |33| 
        ZERO      R1H                   ; [CPU_FPU] |33| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/speed_loop.h",line 21,column 5,is_stmt,isa 0
        MOVB      XAR0,#98              ; [CPU_ALU] |21| 
        ZERO      R0H                   ; [CPU_FPU] |21| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 33,column 45,is_stmt,isa 0
        MOV32     *+XAR2[AR1],R1H       ; [CPU_FPU] |33| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/speed_loop.h",line 21,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |21| 
	.dwpsn	file "../imported/app/motor_control.c",line 50,column 5,is_stmt,isa 0
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("hal_pwm_outputs_disable")
	.dwattr $C$DW$109, DW_AT_TI_call

        LCR       #||hal_pwm_outputs_disable|| ; [CPU_ALU] |50| 
        ; call occurs [#||hal_pwm_outputs_disable||] ; [] |50| 
	.dwpsn	file "../imported/app/motor_control.c",line 51,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |51| 
        ZERO      R0H                   ; [CPU_FPU] |51| 
	.dwpsn	file "../imported/app/motor_control.c",line 52,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |52| 
        MOVL      XAR4,XAR2             ; [CPU_ALU] |52| 
	.dwpsn	file "../imported/app/motor_control.c",line 51,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |51| 
	.dwpsn	file "../imported/app/motor_control.c",line 52,column 5,is_stmt,isa 0
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("enter_state")
	.dwattr $C$DW$110, DW_AT_TI_call

        LCR       #||enter_state||      ; [CPU_ALU] |52| 
        ; call occurs [#||enter_state||] ; [] |52| 
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$105, DW_AT_TI_end_file("../imported/app/motor_control.c")
	.dwattr $C$DW$105, DW_AT_TI_end_line(0x35)
	.dwattr $C$DW$105, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$105

	.sect	".text:motor_ctl_request_run"
	.clink
	.global	||motor_ctl_request_run||

$C$DW$112	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$112, DW_AT_name("motor_ctl_request_run")
	.dwattr $C$DW$112, DW_AT_low_pc(||motor_ctl_request_run||)
	.dwattr $C$DW$112, DW_AT_high_pc(0x00)
	.dwattr $C$DW$112, DW_AT_linkage_name("motor_ctl_request_run")
	.dwattr $C$DW$112, DW_AT_external
	.dwattr $C$DW$112, DW_AT_decl_file("../imported/app/motor_control.c")
	.dwattr $C$DW$112, DW_AT_decl_line(0x29)
	.dwattr $C$DW$112, DW_AT_decl_column(0x06)
	.dwattr $C$DW$112, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/app/motor_control.c",line 42,column 1,is_stmt,address ||motor_ctl_request_run||,isa 0

	.dwfde $C$DW$CIE, ||motor_ctl_request_run||
$C$DW$113	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$113, DW_AT_name("m")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: motor_ctl_request_run         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||motor_ctl_request_run||:
;* AR4   assigned to m
$C$DW$114	.dwtag  DW_TAG_variable
	.dwattr $C$DW$114, DW_AT_name("m")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../imported/app/motor_control.c",line 43,column 5,is_stmt,isa 0
        MOV       AL,*+XAR4[0]          ; [CPU_ALU] |43| 
        B         ||$C$L21||,NEQ        ; [CPU_ALU] |43| 
        ; branchcc occurs ; [] |43| 
	.dwpsn	file "../imported/app/motor_control.c",line 43,column 41,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |43| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("enter_state")
	.dwattr $C$DW$115, DW_AT_TI_call

        LCR       #||enter_state||      ; [CPU_ALU] |43| 
        ; call occurs [#||enter_state||] ; [] |43| 
||$C$L21||:    
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$112, DW_AT_TI_end_file("../imported/app/motor_control.c")
	.dwattr $C$DW$112, DW_AT_TI_end_line(0x2c)
	.dwattr $C$DW$112, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$112

	.sect	".text:motor_ctl_init"
	.clink
	.global	||motor_ctl_init||

$C$DW$117	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$117, DW_AT_name("motor_ctl_init")
	.dwattr $C$DW$117, DW_AT_low_pc(||motor_ctl_init||)
	.dwattr $C$DW$117, DW_AT_high_pc(0x00)
	.dwattr $C$DW$117, DW_AT_linkage_name("motor_ctl_init")
	.dwattr $C$DW$117, DW_AT_external
	.dwattr $C$DW$117, DW_AT_decl_file("../imported/app/motor_control.c")
	.dwattr $C$DW$117, DW_AT_decl_line(0x16)
	.dwattr $C$DW$117, DW_AT_decl_column(0x06)
	.dwattr $C$DW$117, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../imported/app/motor_control.c",line 23,column 1,is_stmt,address ||motor_ctl_init||,isa 0

	.dwfde $C$DW$CIE, ||motor_ctl_init||
$C$DW$118	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$118, DW_AT_name("m")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: motor_ctl_init                FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||motor_ctl_init||:
;* AR2   assigned to m
$C$DW$119	.dwtag  DW_TAG_variable
	.dwattr $C$DW$119, DW_AT_name("m")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg8]

;* R0    assigned to $P$T0
$C$DW$120	.dwtag  DW_TAG_variable
	.dwattr $C$DW$120, DW_AT_name("$P$T0")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_regx 0x29]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,XAR4             ; [CPU_ALU] |23| 
	.dwpsn	file "../imported/app/motor_control.c",line 24,column 5,is_stmt,isa 0
        ADDB      XAR4,#18              ; [CPU_ALU] |24| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("foc_init")
	.dwattr $C$DW$121, DW_AT_TI_call

        LCR       #||foc_init||         ; [CPU_ALU] |24| 
        ; call occurs [#||foc_init||] ; [] |24| 
	.dwpsn	file "../imported/app/motor_control.c",line 33,column 5,is_stmt,isa 0
        MOVB      XAR1,#10              ; [CPU_ALU] |33| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 24,column 5,is_stmt,isa 0
        MOVB      XAR0,#100             ; [CPU_ALU] |24| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 26,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16156            ; [CPU_FPU] |26| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 24,column 5,is_stmt,isa 0
        MOVL      XAR4,#4000            ; [CPU_ARAU] |24| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 25,column 5,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |25| 
	.dwpsn	file "../imported/app/motor_control.c",line 33,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |33| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 24,column 5,is_stmt,isa 0
        MOVL      *+XAR2[AR0],XAR4      ; [CPU_ALU] |24| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 26,column 5,is_stmt,isa 0
        MOVXI     R0H,#39124            ; [CPU_FPU] |26| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 25,column 5,is_stmt,isa 0
        MOVB      XAR0,#102             ; [CPU_ALU] |25| 
        MOVL      *+XAR2[AR0],ACC       ; [CPU_ALU] |25| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 28,column 5,is_stmt,isa 0
        MOVB      XAR0,#108             ; [CPU_ALU] |28| 
        MOVB      ACC,#0                ; [CPU_ALU] |28| 
        MOVL      *+XAR2[AR0],ACC       ; [CPU_ALU] |28| 
	.dwpsn	file "../imported/app/motor_control.c",line 32,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |32| 
	.dwpsn	file "../imported/app/motor_control.c",line 33,column 5,is_stmt,isa 0
        MOVL      *+XAR2[AR1],XAR6      ; [CPU_ALU] |33| 
	.dwpsn	file "../imported/app/motor_control.c",line 36,column 5,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |36| 
	.dwpsn	file "../imported/app/motor_control.c",line 32,column 5,is_stmt,isa 0
        MOVL      *+XAR2[AR0],ACC       ; [CPU_ALU] |32| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 26,column 5,is_stmt,isa 0
        MOVB      XAR0,#88              ; [CPU_ALU] |26| 
	.dwpsn	file "../imported/app/motor_control.c",line 28,column 5,is_stmt,isa 0
        MOVL      *+XAR2[2],ACC         ; [CPU_ALU] |28| 
	.dwpsn	file "../imported/app/motor_control.c",line 31,column 5,is_stmt,isa 0
        MOVL      *+XAR2[6],ACC         ; [CPU_ALU] |31| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 26,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |26| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 27,column 5,is_stmt,isa 0
        MOVB      XAR0,#90              ; [CPU_ALU] |27| 
        MOVIZ     R0H,#15692            ; [CPU_FPU] |27| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |27| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |27| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 28,column 5,is_stmt,isa 0
        MOVB      XAR0,#92              ; [CPU_ALU] |28| 
        MOVIZ     R0H,#49024            ; [CPU_FPU] |28| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |28| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 29,column 5,is_stmt,isa 0
        MOVB      XAR0,#94              ; [CPU_ALU] |29| 
        MOVIZ     R0H,#16256            ; [CPU_FPU] |29| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |29| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h",line 30,column 5,is_stmt,isa 0
        MOVB      XAR0,#96              ; [CPU_ALU] |30| 
        ZERO      R0H                   ; [CPU_FPU] |30| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |30| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/speed_loop.h",line 15,column 5,is_stmt,isa 0
        MOVB      XAR0,#98              ; [CPU_ALU] |15| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |15| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 26,column 5,is_stmt,isa 0
        MOVB      XAR0,#104             ; [CPU_ALU] |26| 
        MOVIZ     R0H,#16261            ; [CPU_FPU] |26| 
        MOVXI     R0H,#6187             ; [CPU_FPU] |26| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |26| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 29,column 5,is_stmt,isa 0
        MOVB      XAR0,#110             ; [CPU_ALU] |29| 
        ZERO      R0H                   ; [CPU_FPU] |29| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |29| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 30,column 5,is_stmt,isa 0
        MOVB      XAR0,#112             ; [CPU_ALU] |30| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |30| 
	.dwpsn	file "../imported/app/motor_control.c",line 29,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |29| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |29| 
	.dwpsn	file "../imported/app/motor_control.c",line 30,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |30| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |30| 
	.dwpsn	file "/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h",line 27,column 5,is_stmt,isa 0
        MOVB      XAR0,#106             ; [CPU_ALU] |27| 
        MOV       *+XAR2[AR0],#0        ; [CPU_ALU] |27| 
	.dwpsn	file "../imported/app/motor_control.c",line 34,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |34| 
        MOVL      *+XAR2[AR0],ACC       ; [CPU_ALU] |34| 
	.dwpsn	file "../imported/app/motor_control.c",line 36,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |36| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("enter_state")
	.dwattr $C$DW$122, DW_AT_TI_call

        LCR       #||enter_state||      ; [CPU_ALU] |36| 
        ; call occurs [#||enter_state||] ; [] |36| 
        MOVW      DP,#||$P$T1$1||       ; [CPU_ARAU] 
	.dwpsn	file "../imported/app/motor_control.c",line 37,column 5,is_stmt,isa 0
        MOV32     R1H,@||$P$T1$1||+2    ; [CPU_FPU] |37| 
        MOV32     R2H,@||$P$T1$1||+4    ; [CPU_FPU] |37| 
        MOV32     R0H,@||$P$T1$1||      ; [CPU_FPU] |37| 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("hal_pwm_set_duties")
	.dwattr $C$DW$123, DW_AT_TI_call

        LCR       #||hal_pwm_set_duties|| ; [CPU_ALU] |37| 
        ; call occurs [#||hal_pwm_set_duties||] ; [] |37| 
	.dwpsn	file "../imported/app/motor_control.c",line 38,column 5,is_stmt,isa 0
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("hal_pwm_outputs_disable")
	.dwattr $C$DW$124, DW_AT_TI_call

        LCR       #||hal_pwm_outputs_disable|| ; [CPU_ALU] |38| 
        ; call occurs [#||hal_pwm_outputs_disable||] ; [] |38| 
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$117, DW_AT_TI_end_file("../imported/app/motor_control.c")
	.dwattr $C$DW$117, DW_AT_TI_end_line(0x27)
	.dwattr $C$DW$117, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$117

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||foc_init||
	.global	||hal_pwm_set_duties||
	.global	||hal_pwm_outputs_disable||
	.global	||foc_reset||
	.global	||drv8305_disable||
	.global	||hal_adc_set_zero_offsets||
	.global	||foc_enable_fwc||
	.global	||foc_step||
	.global	||hal_pwm_outputs_enable||
	.global	||hal_qep_zero_count||
	.global	||foc_set_iq_ref||
	.global	||hal_board_led_blue||
	.global	||hal_qep_index_event||
	.global	||drv8305_is_faulted||
	.global	||hal_adc_read_raw_ia||
	.global	||hal_adc_read_raw_ib||
	.global	||hal_adc_read_raw_ic||
	.global	||hal_qep_read_count||
	.global	||hal_adc_read_currents_pu||

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

$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$126	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$126, DW_AT_name("MOTOR_STATE_IDLE")
	.dwattr $C$DW$126, DW_AT_const_value(0x00)
	.dwattr $C$DW$126, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$126, DW_AT_decl_column(0x05)

$C$DW$127	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$127, DW_AT_name("MOTOR_STATE_CALIBRATING_ADC")
	.dwattr $C$DW$127, DW_AT_const_value(0x01)
	.dwattr $C$DW$127, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$127, DW_AT_decl_column(0x05)

$C$DW$128	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$128, DW_AT_name("MOTOR_STATE_ALIGN")
	.dwattr $C$DW$128, DW_AT_const_value(0x02)
	.dwattr $C$DW$128, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$128, DW_AT_decl_column(0x05)

$C$DW$129	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$129, DW_AT_name("MOTOR_STATE_RUN")
	.dwattr $C$DW$129, DW_AT_const_value(0x03)
	.dwattr $C$DW$129, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$129, DW_AT_decl_column(0x05)

$C$DW$130	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$130, DW_AT_name("MOTOR_STATE_FAULT")
	.dwattr $C$DW$130, DW_AT_const_value(0x04)
	.dwattr $C$DW$130, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0x10)
	.dwattr $C$DW$130, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$35, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x0e)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("motor_state_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x11)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$36


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$131	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$36)

$C$DW$T$41	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$131)

	.dwendtag $C$DW$TU$41


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19

$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x0a)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$132, DW_AT_name("kp")
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$132, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0x11)
	.dwattr $C$DW$132, DW_AT_decl_column(0x0b)

$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$133, DW_AT_name("ki")
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$133, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0x12)
	.dwattr $C$DW$133, DW_AT_decl_column(0x0b)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$134, DW_AT_name("u_min")
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$134, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h")
	.dwattr $C$DW$134, DW_AT_decl_line(0x13)
	.dwattr $C$DW$134, DW_AT_decl_column(0x0b)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$135, DW_AT_name("u_max")
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$135, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h")
	.dwattr $C$DW$135, DW_AT_decl_line(0x14)
	.dwattr $C$DW$135, DW_AT_decl_column(0x0b)

$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$136, DW_AT_name("integ")
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$136, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h")
	.dwattr $C$DW$136, DW_AT_decl_line(0x15)
	.dwattr $C$DW$136, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$19, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x10)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("pi_ctrl_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$26, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pi.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x16)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$26


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43
$C$DW$T$43	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$43, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$43


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x06)
$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$137, DW_AT_name("a")
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$137, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$137, DW_AT_decl_line(0x07)
	.dwattr $C$DW$137, DW_AT_decl_column(0x18)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$138, DW_AT_name("b")
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$138, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0x07)
	.dwattr $C$DW$138, DW_AT_decl_column(0x1b)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$139, DW_AT_name("c")
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$139, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0x07)
	.dwattr $C$DW$139, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$20, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x07)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

	.dwendtag $C$DW$TU$20


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("vec_abc_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$23, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x07)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x23)

	.dwendtag $C$DW$TU$23


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49
$C$DW$140	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$23)

$C$DW$T$49	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$140)

	.dwendtag $C$DW$TU$49


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x04)
$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$141, DW_AT_name("alpha")
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$141, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0x08)
	.dwattr $C$DW$141, DW_AT_decl_column(0x18)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$142, DW_AT_name("beta")
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$142, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0x08)
	.dwattr $C$DW$142, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$21, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x08)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("vec_ab_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$24, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x08)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x27)

	.dwendtag $C$DW$TU$24


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x04)
$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$143, DW_AT_name("d")
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$143, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0x09)
	.dwattr $C$DW$143, DW_AT_decl_column(0x18)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$144, DW_AT_name("q")
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$144, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0x09)
	.dwattr $C$DW$144, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$22, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x09)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("vec_dq_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$25, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x09)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x20)

	.dwendtag $C$DW$TU$25


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x46)
$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$145, DW_AT_name("id_ref_pu")
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$145, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0x09)
	.dwattr $C$DW$145, DW_AT_decl_column(0x0b)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$146, DW_AT_name("iq_ref_pu")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$146, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0x0a)
	.dwattr $C$DW$146, DW_AT_decl_column(0x0b)

$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$147, DW_AT_name("v_max_pu")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$147, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$147, DW_AT_decl_column(0x0b)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$148, DW_AT_name("i_abc_pu")
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$148, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$148, DW_AT_decl_column(0x0f)

$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$149, DW_AT_name("i_ab_pu")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$149, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$149, DW_AT_decl_column(0x0f)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$150, DW_AT_name("i_dq_pu")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$150, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0x10)
	.dwattr $C$DW$150, DW_AT_decl_column(0x0f)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$151, DW_AT_name("v_dq_pu")
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$151, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0x11)
	.dwattr $C$DW$151, DW_AT_decl_column(0x0f)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$152, DW_AT_name("v_ab_pu")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$152, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0x12)
	.dwattr $C$DW$152, DW_AT_decl_column(0x0f)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$153, DW_AT_name("duty")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$153, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$153, DW_AT_decl_line(0x13)
	.dwattr $C$DW$153, DW_AT_decl_column(0x0f)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$154, DW_AT_name("theta_e")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$154, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$154, DW_AT_decl_line(0x15)
	.dwattr $C$DW$154, DW_AT_decl_column(0x0b)

$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$155, DW_AT_name("v_mag_pu")
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$155, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$155, DW_AT_decl_line(0x16)
	.dwattr $C$DW$155, DW_AT_decl_column(0x0b)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$156, DW_AT_name("pi_id")
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$156, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$156, DW_AT_decl_line(0x19)
	.dwattr $C$DW$156, DW_AT_decl_column(0x0f)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$157, DW_AT_name("pi_iq")
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$157, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$157, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$157, DW_AT_decl_column(0x0f)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$158, DW_AT_name("pi_fwc")
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$158, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$158, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$158, DW_AT_decl_column(0x0f)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$159, DW_AT_name("fwc_enabled")
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$159, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$159, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$159, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$28, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x07)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37
$C$DW$T$37	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$37, DW_AT_name("foc_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$37, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/foc.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$37


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$51


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x0c)
$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$160, DW_AT_name("pi")
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$160, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/speed_loop.h")
	.dwattr $C$DW$160, DW_AT_decl_line(0x08)
	.dwattr $C$DW$160, DW_AT_decl_column(0x0f)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$161, DW_AT_name("iq_ref_pu")
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$161, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/speed_loop.h")
	.dwattr $C$DW$161, DW_AT_decl_line(0x09)
	.dwattr $C$DW$161, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$29, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/speed_loop.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x07)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("speed_loop_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$38, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/speed_loop.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x0a)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$38


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x0e)
$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$162, DW_AT_name("counts_per_mech_rev")
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$162, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h")
	.dwattr $C$DW$162, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$162, DW_AT_decl_column(0x0e)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$163, DW_AT_name("pole_pairs")
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$163, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h")
	.dwattr $C$DW$163, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$163, DW_AT_decl_column(0x0e)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$164, DW_AT_name("offset_rad")
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$164, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h")
	.dwattr $C$DW$164, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$164, DW_AT_decl_column(0x0e)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$165, DW_AT_name("index_seen")
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$165, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h")
	.dwattr $C$DW$165, DW_AT_decl_line(0x10)
	.dwattr $C$DW$165, DW_AT_decl_column(0x0e)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$166, DW_AT_name("last_count")
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$166, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h")
	.dwattr $C$DW$166, DW_AT_decl_line(0x11)
	.dwattr $C$DW$166, DW_AT_decl_column(0x0e)

$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$167, DW_AT_name("theta_e")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$167, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h")
	.dwattr $C$DW$167, DW_AT_decl_line(0x12)
	.dwattr $C$DW$167, DW_AT_decl_column(0x0e)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$168, DW_AT_name("speed_pu")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$168, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h")
	.dwattr $C$DW$168, DW_AT_decl_line(0x13)
	.dwattr $C$DW$168, DW_AT_decl_column(0x0e)

	.dwattr $C$DW$T$34, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("encoder_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$39, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/encoder.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x14)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$39


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54
$C$DW$T$54	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$54, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$54


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x72)
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$169, DW_AT_name("state")
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$169, DW_AT_decl_file("../imported/app/motor_control.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0x0a)
	.dwattr $C$DW$169, DW_AT_decl_column(0x13)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$170, DW_AT_name("fault_flags")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$170, DW_AT_decl_file("../imported/app/motor_control.h")
	.dwattr $C$DW$170, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$170, DW_AT_decl_column(0x13)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$171, DW_AT_name("ticks_in_state")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$171, DW_AT_decl_file("../imported/app/motor_control.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$171, DW_AT_decl_column(0x13)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$172, DW_AT_name("adc_cal_acc_a")
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$172, DW_AT_decl_file("../imported/app/motor_control.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$172, DW_AT_decl_column(0x13)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$173, DW_AT_name("adc_cal_acc_b")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$173, DW_AT_decl_file("../imported/app/motor_control.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$173, DW_AT_decl_column(0x13)

$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$174, DW_AT_name("adc_cal_acc_c")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$174, DW_AT_decl_file("../imported/app/motor_control.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$174, DW_AT_decl_column(0x13)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$175, DW_AT_name("adc_cal_samples")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$175, DW_AT_decl_file("../imported/app/motor_control.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0x10)
	.dwattr $C$DW$175, DW_AT_decl_column(0x13)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$176, DW_AT_name("speed_ref_pu")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$176, DW_AT_decl_file("../imported/app/motor_control.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0x12)
	.dwattr $C$DW$176, DW_AT_decl_column(0x0e)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$177, DW_AT_name("speed_ramp_pu")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$177, DW_AT_decl_file("../imported/app/motor_control.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0x13)
	.dwattr $C$DW$177, DW_AT_decl_column(0x0e)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$178, DW_AT_name("foc")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$178, DW_AT_decl_file("../imported/app/motor_control.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x15)
	.dwattr $C$DW$178, DW_AT_decl_column(0x12)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$179, DW_AT_name("spd")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$179, DW_AT_decl_file("../imported/app/motor_control.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0x16)
	.dwattr $C$DW$179, DW_AT_decl_column(0x12)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$180, DW_AT_name("enc")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$180, DW_AT_decl_file("../imported/app/motor_control.h")
	.dwattr $C$DW$180, DW_AT_decl_line(0x17)
	.dwattr $C$DW$180, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$40, DW_AT_decl_file("../imported/app/motor_control.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x09)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$40

	.dwendtag $C$DW$TU$40


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57
$C$DW$T$57	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$57, DW_AT_name("motor_ctl_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$57, DW_AT_decl_file("../imported/app/motor_control.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x18)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58
$C$DW$T$58	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59
$C$DW$181	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$58)

$C$DW$T$59	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$181)

	.dwendtag $C$DW$TU$59


$C$DW$TU$2	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$2
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

	.dwendtag $C$DW$TU$2


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


$C$DW$TU$9	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$9
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$9


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72
$C$DW$T$72	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$72, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$72, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73
$C$DW$T$73	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$73, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$73, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$73, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$73


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


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$32, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33
$C$DW$T$33	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$33, DW_AT_name("int32_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$33


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$30, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$31


$C$DW$TU$103	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$103
$C$DW$182	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$31)

$C$DW$T$103	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$182)

	.dwendtag $C$DW$TU$103


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


$C$DW$TU$110	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$110
$C$DW$183	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$16)

$C$DW$T$110	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$183)

	.dwendtag $C$DW$TU$110


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


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$27, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$27, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$27

