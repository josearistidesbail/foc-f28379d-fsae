;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Sat May 30 15:57:51 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen Unix v25.11.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("inverter_disable_gate")
	.dwattr $C$DW$1, DW_AT_linkage_name("inverter_disable_gate")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/inverter_iface.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$1, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$1


$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("pwm_force_safe")
	.dwattr $C$DW$2, DW_AT_linkage_name("pwm_force_safe")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/pwm_iface.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$2, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$2


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("inverter_enable_gate")
	.dwattr $C$DW$3, DW_AT_linkage_name("inverter_enable_gate")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/inverter_iface.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$3, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$3


$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("inverter_clear_faults")
	.dwattr $C$DW$4, DW_AT_linkage_name("inverter_clear_faults")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/inverter_iface.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$4, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$4


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("adc_calibrate_offsets")
	.dwattr $C$DW$5, DW_AT_linkage_name("adc_calibrate_offsets")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/adc_iface.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$5, DW_AT_decl_column(0x0e)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$36)

	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("inverter_snapshot_fault_regs")
	.dwattr $C$DW$7, DW_AT_linkage_name("inverter_snapshot_fault_regs")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/inverter_iface.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x10)
	.dwattr $C$DW$7, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$7


$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("safety_clear")
	.dwattr $C$DW$8, DW_AT_linkage_name("safety_clear")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/safety.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$8, DW_AT_decl_column(0x11)
	.dwendtag $C$DW$8


$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("safety_latch")
	.dwattr $C$DW$9, DW_AT_linkage_name("safety_latch")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/safety.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$9, DW_AT_decl_column(0x11)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$36)

	.dwendtag $C$DW$9


$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("sensor_capture_zero")
	.dwattr $C$DW$11, DW_AT_linkage_name("sensor_capture_zero")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/sensor_iface.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$11, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$11

	.data
	.align	1
	.elfsym	||s_state||,SYM_SIZE(1),SYM_BLOCKED(1)
||s_state||:
	.bits		0,16
			; s_state @ 0

$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("s_state")
	.dwattr $C$DW$12, DW_AT_linkage_name("s_state")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr ||s_state||]
	.dwattr $C$DW$12, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$12, DW_AT_decl_line(0x10)
	.dwattr $C$DW$12, DW_AT_decl_column(0x1d)

	.data
	.align	1
	.elfsym	||s_requested||,SYM_SIZE(1),SYM_BLOCKED(1)
||s_requested||:
	.bits		0,16
			; s_requested @ 0

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("s_requested")
	.dwattr $C$DW$13, DW_AT_linkage_name("s_requested")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_addr ||s_requested||]
	.dwattr $C$DW$13, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$13, DW_AT_decl_line(0x11)
	.dwattr $C$DW$13, DW_AT_decl_column(0x1d)

	.data
	.align	1
	.elfsym	||s_align_only||,SYM_SIZE(1),SYM_BLOCKED(1)
||s_align_only||:
	.bits		0,16
			; s_align_only @ 0

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("s_align_only")
	.dwattr $C$DW$14, DW_AT_linkage_name("s_align_only")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_addr ||s_align_only||]
	.dwattr $C$DW$14, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$14, DW_AT_decl_line(0x12)
	.dwattr $C$DW$14, DW_AT_decl_column(0x1d)

	.data
	.align	1
	.elfsym	||s_fault_pending||,SYM_SIZE(1),SYM_BLOCKED(1)
||s_fault_pending||:
	.bits		0,16
			; s_fault_pending @ 0

$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("s_fault_pending")
	.dwattr $C$DW$15, DW_AT_linkage_name("s_fault_pending")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_addr ||s_fault_pending||]
	.dwattr $C$DW$15, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x13)
	.dwattr $C$DW$15, DW_AT_decl_column(0x1d)

	.global	||g_dbg_sm_cmd||
	.bss	||g_dbg_sm_cmd||,1,1,0
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("g_dbg_sm_cmd")
	.dwattr $C$DW$16, DW_AT_linkage_name("g_dbg_sm_cmd")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_addr ||g_dbg_sm_cmd||]
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$16, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$16, DW_AT_decl_column(0x14)

	.global	||g_dbg_state||
	.bss	||g_dbg_state||,1,1,0
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("g_dbg_state")
	.dwattr $C$DW$17, DW_AT_linkage_name("g_dbg_state")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_addr ||g_dbg_state||]
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$17, DW_AT_decl_column(0x14)

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("g_qep_mech_offset_cnt")
	.dwattr $C$DW$18, DW_AT_linkage_name("g_qep_mech_offset_cnt")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/sensor_qep_inline.h")
	.dwattr $C$DW$18, DW_AT_decl_line(0x12)
	.dwattr $C$DW$18, DW_AT_decl_column(0x1b)

	.bss	||s_state_ticks||,2,1,1
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("s_state_ticks")
	.dwattr $C$DW$19, DW_AT_linkage_name("s_state_ticks")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_addr ||s_state_ticks||]
	.dwattr $C$DW$19, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x14)
	.dwattr $C$DW$19, DW_AT_decl_column(0x1d)

	.global	||g_dbg_align_qep_cnt||
	.bss	||g_dbg_align_qep_cnt||,2,1,1
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("g_dbg_align_qep_cnt")
	.dwattr $C$DW$20, DW_AT_linkage_name("g_dbg_align_qep_cnt")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr ||g_dbg_align_qep_cnt||]
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$20, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$20, DW_AT_decl_column(0x14)


$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("foc_get_refs")
	.dwattr $C$DW$21, DW_AT_linkage_name("foc_get_refs")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/foc_pipeline.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$21, DW_AT_decl_column(0x15)
	.dwendtag $C$DW$21

	.sblock	".bss"
	.sblock	".data"
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TI265nwGlbJ /tmp/TI265388Jn0 --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TI265pP2mQf 
	.sect	".text:sm_clear_fault"
	.clink
	.global	||sm_clear_fault||

$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("sm_clear_fault")
	.dwattr $C$DW$22, DW_AT_low_pc(||sm_clear_fault||)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_linkage_name("sm_clear_fault")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0x53)
	.dwattr $C$DW$22, DW_AT_decl_column(0x06)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 83,column 30,is_stmt,address ||sm_clear_fault||,isa 0

	.dwfde $C$DW$CIE, ||sm_clear_fault||

;***************************************************************
;* FNAME: sm_clear_fault                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||sm_clear_fault||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||s_state||       ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 83,column 32,is_stmt,isa 0
        MOV       AL,@||s_state||       ; [CPU_ALU] |83| 
        CMPB      AL,#4                 ; [CPU_ALU] |83| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |83| 
        ; branchcc occurs ; [] |83| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 83,column 59,is_stmt,isa 0
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("safety_clear")
	.dwattr $C$DW$23, DW_AT_TI_call

        LCR       #||safety_clear||     ; [CPU_ALU] |83| 
        ; call occurs [#||safety_clear||] ; [] |83| 
        MOVW      DP,#||s_requested||   ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 83,column 75,is_stmt,isa 0
        MOV       @||s_requested||,#0   ; [CPU_ALU] |83| 
||$C$L1||:    
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$22, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x53)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x65)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text:sm_request_stop"
	.clink
	.global	||sm_request_stop||

$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("sm_request_stop")
	.dwattr $C$DW$25, DW_AT_low_pc(||sm_request_stop||)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_linkage_name("sm_request_stop")
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$25, DW_AT_decl_line(0x52)
	.dwattr $C$DW$25, DW_AT_decl_column(0x06)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 82,column 30,is_stmt,address ||sm_request_stop||,isa 0

	.dwfde $C$DW$CIE, ||sm_request_stop||

;***************************************************************
;* FNAME: sm_request_stop               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||sm_request_stop||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||s_requested||   ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 82,column 32,is_stmt,isa 0
        MOV       @||s_requested||,#0   ; [CPU_ALU] |82| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$25, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x52)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x38)
	.dwendentry
	.dwendtag $C$DW$25

	.sect	".text:sm_request_run"
	.clink
	.global	||sm_request_run||

$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("sm_request_run")
	.dwattr $C$DW$27, DW_AT_low_pc(||sm_request_run||)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_linkage_name("sm_request_run")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0x50)
	.dwattr $C$DW$27, DW_AT_decl_column(0x06)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 80,column 30,is_stmt,address ||sm_request_run||,isa 0

	.dwfde $C$DW$CIE, ||sm_request_run||

;***************************************************************
;* FNAME: sm_request_run                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||sm_request_run||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||s_align_only||  ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 80,column 32,is_stmt,isa 0
        MOV       @||s_align_only||,#0  ; [CPU_ALU] |80| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 80,column 54,is_stmt,isa 0
        MOVB      @||s_requested||,#3,UNC ; [CPU_ALU] |80| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$27, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x50)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x4d)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text:sm_request_align"
	.clink
	.global	||sm_request_align||

$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("sm_request_align")
	.dwattr $C$DW$29, DW_AT_low_pc(||sm_request_align||)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_linkage_name("sm_request_align")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$29, DW_AT_decl_line(0x51)
	.dwattr $C$DW$29, DW_AT_decl_column(0x06)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 81,column 30,is_stmt,address ||sm_request_align||,isa 0

	.dwfde $C$DW$CIE, ||sm_request_align||

;***************************************************************
;* FNAME: sm_request_align              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||sm_request_align||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||s_align_only||  ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 81,column 32,is_stmt,isa 0
        MOVB      @||s_align_only||,#1,UNC ; [CPU_ALU] |81| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 81,column 54,is_stmt,isa 0
        MOVB      @||s_requested||,#2,UNC ; [CPU_ALU] |81| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$29, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x51)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x55)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	".text:poll_debug_cmd"
	.clink

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("poll_debug_cmd")
	.dwattr $C$DW$31, DW_AT_low_pc(||poll_debug_cmd||)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_linkage_name("poll_debug_cmd")
	.dwattr $C$DW$31, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$31, DW_AT_decl_line(0x57)
	.dwattr $C$DW$31, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 88,column 1,is_stmt,address ||poll_debug_cmd||,isa 0

	.dwfde $C$DW$CIE, ||poll_debug_cmd||

;***************************************************************
;* FNAME: poll_debug_cmd                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||poll_debug_cmd||:
;* AL    assigned to cmd
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("cmd")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||g_dbg_sm_cmd||  ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 89,column 18,is_stmt,isa 0
        MOV       AL,@||g_dbg_sm_cmd||  ; [CPU_ALU] |89| 
        B         ||$C$L5||,EQ          ; [CPU_ALU] |89| 
        ; branchcc occurs ; [] |89| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 92,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |92| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 91,column 5,is_stmt,isa 0
        MOV       @||g_dbg_sm_cmd||,#0  ; [CPU_FPU] |91| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 92,column 5,is_stmt,isa 0
        B         ||$C$L4||,EQ          ; [CPU_ALU] |92| 
        ; branchcc occurs ; [] |92| 
        CMPB      AL,#2                 ; [CPU_ALU] |92| 
        B         ||$C$L3||,EQ          ; [CPU_ALU] |92| 
        ; branchcc occurs ; [] |92| 
        CMPB      AL,#3                 ; [CPU_ALU] |92| 
        B         ||$C$L2||,EQ          ; [CPU_ALU] |92| 
        ; branchcc occurs ; [] |92| 
        CMPB      AL,#4                 ; [CPU_ALU] |92| 
        B         ||$C$L5||,NEQ         ; [CPU_ALU] |92| 
        ; branchcc occurs ; [] |92| 
	.dwcfi	remember_state
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 97,column 13,is_stmt,isa 0
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("sm_clear_fault")
	.dwattr $C$DW$33, DW_AT_TI_call

        LCR       #||sm_clear_fault||   ; [CPU_ALU] |97| 
        ; call occurs [#||sm_clear_fault||] ; [] |97| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L2||:    
	.dwcfi	remember_state
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 96,column 13,is_stmt,isa 0
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("sm_request_stop")
	.dwattr $C$DW$35, DW_AT_TI_call

        LCR       #||sm_request_stop||  ; [CPU_ALU] |96| 
        ; call occurs [#||sm_request_stop||] ; [] |96| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L3||:    
	.dwcfi	remember_state
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 95,column 13,is_stmt,isa 0
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("sm_request_run")
	.dwattr $C$DW$37, DW_AT_TI_call

        LCR       #||sm_request_run||   ; [CPU_ALU] |95| 
        ; call occurs [#||sm_request_run||] ; [] |95| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L4||:    
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 94,column 13,is_stmt,isa 0
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("sm_request_align")
	.dwattr $C$DW$39, DW_AT_TI_call

        LCR       #||sm_request_align|| ; [CPU_ALU] |94| 
        ; call occurs [#||sm_request_align||] ; [] |94| 
||$C$L5||:    
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x64)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text:enter"
	.clink

$C$DW$41	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$41, DW_AT_name("enter")
	.dwattr $C$DW$41, DW_AT_low_pc(||enter||)
	.dwattr $C$DW$41, DW_AT_high_pc(0x00)
	.dwattr $C$DW$41, DW_AT_linkage_name("enter")
	.dwattr $C$DW$41, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$41, DW_AT_decl_line(0x21)
	.dwattr $C$DW$41, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$41, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 34,column 1,is_stmt,address ||enter||,isa 0

	.dwfde $C$DW$CIE, ||enter||
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_name("next")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: enter                         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||enter||:
;* AR1   assigned to next
$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("next")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||s_state||       ; [CPU_ARAU] 
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 35,column 5,is_stmt,isa 0
        MOV       @||s_state||,AL       ; [CPU_ALU] |35| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 36,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |36| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 38,column 5,is_stmt,isa 0
        CMPB      AL,#2                 ; [CPU_ALU] |38| 
        MOVW      DP,#||s_state_ticks|| ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 34,column 1,is_stmt,isa 0
        MOVZ      AR1,AL                ; [CPU_ALU] |34| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 36,column 5,is_stmt,isa 0
        MOVL      @||s_state_ticks||,XAR6 ; [CPU_FPU] |36| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 38,column 5,is_stmt,isa 0
        B         ||$C$L6||,GT          ; [CPU_ALU] |38| 
        ; branchcc occurs ; [] |38| 
        CMPB      AL,#2                 ; [CPU_ALU] |38| 
        B         ||$C$L8||,EQ          ; [CPU_ALU] |38| 
        ; branchcc occurs ; [] |38| 
        CMPB      AL,#0                 ; [CPU_ALU] |38| 
        B         ||$C$L10||,EQ         ; [CPU_ALU] |38| 
        ; branchcc occurs ; [] |38| 
        CMPB      AL,#1                 ; [CPU_ALU] |38| 
        B         ||$C$L9||,EQ          ; [CPU_ALU] |38| 
        ; branchcc occurs ; [] |38| 
        B         ||$C$L11||,UNC        ; [CPU_ALU] |38| 
        ; branch occurs ; [] |38| 
||$C$L6||:    
        CMPB      AL,#3                 ; [CPU_ALU] |38| 
        B         ||$C$L7||,EQ          ; [CPU_ALU] |38| 
        ; branchcc occurs ; [] |38| 
        CMPB      AL,#4                 ; [CPU_ALU] |38| 
        B         ||$C$L11||,NEQ        ; [CPU_ALU] |38| 
        ; branchcc occurs ; [] |38| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 61,column 9,is_stmt,isa 0
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("inverter_snapshot_fault_regs")
	.dwattr $C$DW$44, DW_AT_TI_call

        LCR       #||inverter_snapshot_fault_regs|| ; [CPU_ALU] |61| 
        ; call occurs [#||inverter_snapshot_fault_regs||] ; [] |61| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 64,column 9,is_stmt,isa 0
        B         ||$C$L10||,UNC        ; [CPU_ALU] |64| 
        ; branch occurs ; [] |64| 
||$C$L7||:    
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 57,column 9,is_stmt,isa 0
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("inverter_enable_gate")
	.dwattr $C$DW$45, DW_AT_TI_call

        LCR       #||inverter_enable_gate|| ; [CPU_ALU] |57| 
        ; call occurs [#||inverter_enable_gate||] ; [] |57| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 58,column 9,is_stmt,isa 0
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("foc_get_refs")
	.dwattr $C$DW$46, DW_AT_TI_call

        LCR       #||foc_get_refs||     ; [CPU_ALU] |58| 
        ; call occurs [#||foc_get_refs||] ; [] |58| 
        ZERO      R0H                   ; [CPU_FPU] |58| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |58| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 59,column 9,is_stmt,isa 0
        B         ||$C$L11||,UNC        ; [CPU_ALU] |59| 
        ; branch occurs ; [] |59| 
||$C$L8||:    
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 51,column 9,is_stmt,isa 0
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("inverter_enable_gate")
	.dwattr $C$DW$47, DW_AT_TI_call

        LCR       #||inverter_enable_gate|| ; [CPU_ALU] |51| 
        ; call occurs [#||inverter_enable_gate||] ; [] |51| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 52,column 9,is_stmt,isa 0
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("foc_get_refs")
	.dwattr $C$DW$48, DW_AT_TI_call

        LCR       #||foc_get_refs||     ; [CPU_ALU] |52| 
        ; call occurs [#||foc_get_refs||] ; [] |52| 
        MOVIZ     R0H,#16256            ; [CPU_FPU] |52| 
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |52| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 53,column 9,is_stmt,isa 0
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("foc_get_refs")
	.dwattr $C$DW$49, DW_AT_TI_call

        LCR       #||foc_get_refs||     ; [CPU_ALU] |53| 
        ; call occurs [#||foc_get_refs||] ; [] |53| 
        ZERO      R0H                   ; [CPU_FPU] |53| 
        MOV32     *+XAR4[2],R0H         ; [CPU_FPU] |53| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 55,column 9,is_stmt,isa 0
        B         ||$C$L11||,UNC        ; [CPU_ALU] |55| 
        ; branch occurs ; [] |55| 
||$C$L9||:    
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 45,column 9,is_stmt,isa 0
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("inverter_enable_gate")
	.dwattr $C$DW$50, DW_AT_TI_call

        LCR       #||inverter_enable_gate|| ; [CPU_ALU] |45| 
        ; call occurs [#||inverter_enable_gate||] ; [] |45| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 46,column 9,is_stmt,isa 0
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("inverter_clear_faults")
	.dwattr $C$DW$51, DW_AT_TI_call

        LCR       #||inverter_clear_faults|| ; [CPU_ALU] |46| 
        ; call occurs [#||inverter_clear_faults||] ; [] |46| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 47,column 9,is_stmt,isa 0
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("pwm_force_safe")
	.dwattr $C$DW$52, DW_AT_TI_call

        LCR       #||pwm_force_safe||   ; [CPU_ALU] |47| 
        ; call occurs [#||pwm_force_safe||] ; [] |47| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 48,column 9,is_stmt,isa 0
        MOV       AL,#2048              ; [CPU_ALU] |48| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("adc_calibrate_offsets")
	.dwattr $C$DW$53, DW_AT_TI_call

        LCR       #||adc_calibrate_offsets|| ; [CPU_ALU] |48| 
        ; call occurs [#||adc_calibrate_offsets||] ; [] |48| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 49,column 9,is_stmt,isa 0
        B         ||$C$L11||,UNC        ; [CPU_ALU] |49| 
        ; branch occurs ; [] |49| 
||$C$L10||:    
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 41,column 9,is_stmt,isa 0
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("inverter_disable_gate")
	.dwattr $C$DW$54, DW_AT_TI_call

        LCR       #||inverter_disable_gate|| ; [CPU_ALU] |41| 
        ; call occurs [#||inverter_disable_gate||] ; [] |41| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 42,column 9,is_stmt,isa 0
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("pwm_force_safe")
	.dwattr $C$DW$55, DW_AT_TI_call

        LCR       #||pwm_force_safe||   ; [CPU_ALU] |42| 
        ; call occurs [#||pwm_force_safe||] ; [] |42| 
||$C$L11||:    
        MOVW      DP,#||g_dbg_state||   ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 67,column 5,is_stmt,isa 0
        MOV       @||g_dbg_state||,AR1  ; [CPU_ALU] |67| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$41, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x44)
	.dwattr $C$DW$41, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$41

	.sect	".text:sm_tick_1khz"
	.clink
	.global	||sm_tick_1khz||

$C$DW$57	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$57, DW_AT_name("sm_tick_1khz")
	.dwattr $C$DW$57, DW_AT_low_pc(||sm_tick_1khz||)
	.dwattr $C$DW$57, DW_AT_high_pc(0x00)
	.dwattr $C$DW$57, DW_AT_linkage_name("sm_tick_1khz")
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$57, DW_AT_decl_line(0x66)
	.dwattr $C$DW$57, DW_AT_decl_column(0x06)
	.dwattr $C$DW$57, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 103,column 1,is_stmt,address ||sm_tick_1khz||,isa 0

	.dwfde $C$DW$CIE, ||sm_tick_1khz||

;***************************************************************
;* FNAME: sm_tick_1khz                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||sm_tick_1khz||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 104,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |104| 
        MOVW      DP,#||s_state_ticks|| ; [CPU_ARAU] 
        ADDL      @||s_state_ticks||,ACC ; [CPU_ALU] |104| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 105,column 5,is_stmt,isa 0
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("poll_debug_cmd")
	.dwattr $C$DW$58, DW_AT_TI_call

        LCR       #||poll_debug_cmd||   ; [CPU_ALU] |105| 
        ; call occurs [#||poll_debug_cmd||] ; [] |105| 
        MOVW      DP,#||s_fault_pending|| ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 107,column 5,is_stmt,isa 0
        MOV       AL,@||s_fault_pending|| ; [CPU_ALU] |107| 
        B         ||$C$L12||,EQ         ; [CPU_ALU] |107| 
        ; branchcc occurs ; [] |107| 
        MOV       AL,@||s_state||       ; [CPU_ALU] |107| 
        CMPB      AL,#4                 ; [CPU_ALU] |107| 
        B         ||$C$L22||,NEQ        ; [CPU_ALU] |107| 
        ; branchcc occurs ; [] |107| 
||$C$L12||:    
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 114,column 5,is_stmt,isa 0
        MOV       AL,@||s_state||       ; [CPU_ALU] |114| 
        CMPB      AL,#2                 ; [CPU_ALU] |114| 
        B         ||$C$L13||,GT         ; [CPU_ALU] |114| 
        ; branchcc occurs ; [] |114| 
        CMPB      AL,#2                 ; [CPU_ALU] |114| 
        B         ||$C$L15||,EQ         ; [CPU_ALU] |114| 
        ; branchcc occurs ; [] |114| 
        CMPB      AL,#0                 ; [CPU_ALU] |114| 
        B         ||$C$L19||,EQ         ; [CPU_ALU] |114| 
        ; branchcc occurs ; [] |114| 
        CMPB      AL,#1                 ; [CPU_ALU] |114| 
        B         ||$C$L21||,EQ         ; [CPU_ALU] |114| 
        ; branchcc occurs ; [] |114| 
	.dwcfi	remember_state
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L13||:    
        CMPB      AL,#3                 ; [CPU_ALU] |114| 
        B         ||$C$L14||,EQ         ; [CPU_ALU] |114| 
        ; branchcc occurs ; [] |114| 
        CMPB      AL,#4                 ; [CPU_ALU] |114| 
        B         ||$C$L23||,NEQ        ; [CPU_ALU] |114| 
        ; branchcc occurs ; [] |114| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 153,column 9,is_stmt,isa 0
        MOV       AL,@||s_requested||   ; [CPU_ALU] |153| 
        B         ||$C$L17||,EQ         ; [CPU_ALU] |153| 
        ; branchcc occurs ; [] |153| 
	.dwcfi	remember_state
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L14||:    
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 148,column 9,is_stmt,isa 0
        MOV       AL,@||s_requested||   ; [CPU_ALU] |148| 
        B         ||$C$L23||,NEQ        ; [CPU_ALU] |148| 
        ; branchcc occurs ; [] |148| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 149,column 13,is_stmt,isa 0
        B         ||$C$L17||,UNC        ; [CPU_ALU] |149| 
        ; branch occurs ; [] |149| 
||$C$L15||:    
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 127,column 9,is_stmt,isa 0
        MOV       ACC,#5000             ; [CPU_ALU] |127| 
        MOVW      DP,#||s_state_ticks|| ; [CPU_ARAU] 
        CMPL      ACC,@||s_state_ticks|| ; [CPU_ALU] |127| 
        B         ||$C$L23||,HI         ; [CPU_ALU] |127| 
        ; branchcc occurs ; [] |127| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 130,column 13,is_stmt,isa 0
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("sensor_capture_zero")
	.dwattr $C$DW$61, DW_AT_TI_call

        LCR       #||sensor_capture_zero|| ; [CPU_ALU] |130| 
        ; call occurs [#||sensor_capture_zero||] ; [] |130| 
        MOVW      DP,#||g_qep_mech_offset_cnt|| ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 133,column 13,is_stmt,isa 0
        MOVL      ACC,@||g_qep_mech_offset_cnt|| ; [CPU_ALU] |133| 
        MOVW      DP,#||g_dbg_align_qep_cnt|| ; [CPU_ARAU] 
        MOVL      @||g_dbg_align_qep_cnt||,ACC ; [CPU_ALU] |133| 
        MOVW      DP,#||s_align_only||  ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 135,column 13,is_stmt,isa 0
        MOV       AL,@||s_align_only||  ; [CPU_ALU] |135| 
        B         ||$C$L16||,NEQ        ; [CPU_ALU] |135| 
        ; branchcc occurs ; [] |135| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 142,column 17,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_ALU] |142| 
        B         ||$C$L18||,UNC        ; [CPU_ALU] |142| 
        ; branch occurs ; [] |142| 
||$C$L16||:    
	.dwcfi	remember_state
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 137,column 17,is_stmt,isa 0
        MOV       @||s_requested||,#0   ; [CPU_ALU] |137| 
||$C$L17||:    
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 138,column 17,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |138| 
||$C$L18||:    
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("enter")
	.dwattr $C$DW$62, DW_AT_TI_call

        LCR       #||enter||            ; [CPU_ALU] |138| 
        ; call occurs [#||enter||] ; [] |138| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L19||:    
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 117,column 9,is_stmt,isa 0
        MOV       AL,@||s_requested||   ; [CPU_ALU] |117| 
        CMPB      AL,#3                 ; [CPU_ALU] |117| 
        B         ||$C$L20||,EQ         ; [CPU_ALU] |117| 
        ; branchcc occurs ; [] |117| 
        MOV       AL,@||s_requested||   ; [CPU_ALU] |117| 
        CMPB      AL,#2                 ; [CPU_ALU] |117| 
        B         ||$C$L23||,NEQ        ; [CPU_ALU] |117| 
        ; branchcc occurs ; [] |117| 
||$C$L20||:    
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 118,column 13,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |118| 
        B         ||$C$L18||,UNC        ; [CPU_ALU] |118| 
        ; branch occurs ; [] |118| 
||$C$L21||:    
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 123,column 9,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |123| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 124,column 9,is_stmt,isa 0
        B         ||$C$L18||,UNC        ; [CPU_ALU] |124| 
        ; branch occurs ; [] |124| 
||$C$L22||:    
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 109,column 9,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_ALU] |109| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("enter")
	.dwattr $C$DW$64, DW_AT_TI_call

        LCR       #||enter||            ; [CPU_ALU] |109| 
        ; call occurs [#||enter||] ; [] |109| 
        MOVW      DP,#||s_fault_pending|| ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 110,column 9,is_stmt,isa 0
        MOV       @||s_fault_pending||,#0 ; [CPU_ALU] |110| 
||$C$L23||:    
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$57, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$57, DW_AT_TI_end_line(0x9d)
	.dwattr $C$DW$57, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$57

	.sect	".text:sm_raise_fault"
	.clink
	.global	||sm_raise_fault||

$C$DW$66	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$66, DW_AT_name("sm_raise_fault")
	.dwattr $C$DW$66, DW_AT_low_pc(||sm_raise_fault||)
	.dwattr $C$DW$66, DW_AT_high_pc(0x00)
	.dwattr $C$DW$66, DW_AT_linkage_name("sm_raise_fault")
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$66, DW_AT_decl_line(0x54)
	.dwattr $C$DW$66, DW_AT_decl_column(0x06)
	.dwattr $C$DW$66, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 84,column 36,is_stmt,address ||sm_raise_fault||,isa 0

	.dwfde $C$DW$CIE, ||sm_raise_fault||
$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_name("code")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: sm_raise_fault                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||sm_raise_fault||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 84,column 38,is_stmt,isa 0
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("safety_latch")
	.dwattr $C$DW$68, DW_AT_TI_call

        LCR       #||safety_latch||     ; [CPU_ALU] |84| 
        ; call occurs [#||safety_latch||] ; [] |84| 
        MOVW      DP,#||s_fault_pending|| ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 84,column 58,is_stmt,isa 0
        MOVB      @||s_fault_pending||,#1,UNC ; [CPU_ALU] |84| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$66, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$66, DW_AT_TI_end_line(0x54)
	.dwattr $C$DW$66, DW_AT_TI_end_column(0x52)
	.dwendentry
	.dwendtag $C$DW$66

	.sect	".text:sm_init"
	.clink
	.global	||sm_init||

$C$DW$70	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$70, DW_AT_name("sm_init")
	.dwattr $C$DW$70, DW_AT_low_pc(||sm_init||)
	.dwattr $C$DW$70, DW_AT_high_pc(0x00)
	.dwattr $C$DW$70, DW_AT_linkage_name("sm_init")
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$70, DW_AT_decl_line(0x46)
	.dwattr $C$DW$70, DW_AT_decl_column(0x06)
	.dwattr $C$DW$70, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 71,column 1,is_stmt,address ||sm_init||,isa 0

	.dwfde $C$DW$CIE, ||sm_init||

;***************************************************************
;* FNAME: sm_init                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||sm_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 72,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |72| 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("enter")
	.dwattr $C$DW$71, DW_AT_TI_call

        LCR       #||enter||            ; [CPU_ALU] |72| 
        ; call occurs [#||enter||] ; [] |72| 
        MOVW      DP,#||s_requested||   ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 73,column 5,is_stmt,isa 0
        MOV       @||s_requested||,#0   ; [CPU_ALU] |73| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 74,column 5,is_stmt,isa 0
        MOV       @||s_align_only||,#0  ; [CPU_ALU] |74| 
        MOVW      DP,#||g_dbg_sm_cmd||  ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 75,column 5,is_stmt,isa 0
        MOV       @||g_dbg_sm_cmd||,#0  ; [CPU_ALU] |75| 
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$70, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x4c)
	.dwattr $C$DW$70, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$70

	.sect	".text:sm_get_state"
	.clink
	.global	||sm_get_state||

$C$DW$73	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$73, DW_AT_name("sm_get_state")
	.dwattr $C$DW$73, DW_AT_low_pc(||sm_get_state||)
	.dwattr $C$DW$73, DW_AT_high_pc(0x00)
	.dwattr $C$DW$73, DW_AT_linkage_name("sm_get_state")
	.dwattr $C$DW$73, DW_AT_external
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$73, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$73, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$73, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$73, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 78,column 32,is_stmt,address ||sm_get_state||,isa 0

	.dwfde $C$DW$CIE, ||sm_get_state||

;***************************************************************
;* FNAME: sm_get_state                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||sm_get_state||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||s_state||       ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c",line 78,column 34,is_stmt,isa 0
        MOV       AL,@||s_state||       ; [CPU_ALU] |78| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$73, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/foc_state_machine.c")
	.dwattr $C$DW$73, DW_AT_TI_end_line(0x4e)
	.dwattr $C$DW$73, DW_AT_TI_end_column(0x32)
	.dwendentry
	.dwendtag $C$DW$73

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||inverter_disable_gate||
	.global	||pwm_force_safe||
	.global	||inverter_enable_gate||
	.global	||inverter_clear_faults||
	.global	||adc_calibrate_offsets||
	.global	||inverter_snapshot_fault_regs||
	.global	||safety_clear||
	.global	||safety_latch||
	.global	||sensor_capture_zero||
	.global	||g_qep_mech_offset_cnt||
	.global	||foc_get_refs||

;***************************************************************
;* BUILD ATTRIBUTES                                            *
;***************************************************************
	.battr "c28xabi", Tag_File, 1, Tag_float_args(0)
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

$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$75	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$75, DW_AT_name("FOC_IDLE")
	.dwattr $C$DW$75, DW_AT_const_value(0x00)
	.dwattr $C$DW$75, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/foc_state_machine.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$75, DW_AT_decl_column(0x05)

$C$DW$76	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$76, DW_AT_name("FOC_CALIBRATE_OFFSETS")
	.dwattr $C$DW$76, DW_AT_const_value(0x01)
	.dwattr $C$DW$76, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/foc_state_machine.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$76, DW_AT_decl_column(0x05)

$C$DW$77	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$77, DW_AT_name("FOC_ALIGN_ROTOR")
	.dwattr $C$DW$77, DW_AT_const_value(0x02)
	.dwattr $C$DW$77, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/foc_state_machine.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x10)
	.dwattr $C$DW$77, DW_AT_decl_column(0x05)

$C$DW$78	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$78, DW_AT_name("FOC_RUN")
	.dwattr $C$DW$78, DW_AT_const_value(0x03)
	.dwattr $C$DW$78, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/foc_state_machine.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0x11)
	.dwattr $C$DW$78, DW_AT_decl_column(0x05)

$C$DW$79	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$79, DW_AT_name("FOC_FAULT")
	.dwattr $C$DW$79, DW_AT_const_value(0x04)
	.dwattr $C$DW$79, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/foc_state_machine.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0x12)
	.dwattr $C$DW$79, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/foc_state_machine.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x0e)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("FOC_State_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/foc_state_machine.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x13)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$80	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$22)

$C$DW$T$23	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$80)

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$81	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$22)

$C$DW$T$24	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$81)

	.dwendtag $C$DW$TU$24


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x08)
$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$82, DW_AT_name("id_ref")
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$82, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/foc_types.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x14)
	.dwattr $C$DW$82, DW_AT_decl_column(0x0f)

$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$83, DW_AT_name("iq_ref")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$83, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/foc_types.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0x15)
	.dwattr $C$DW$83, DW_AT_decl_column(0x0f)

$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$84, DW_AT_name("speed_ref")
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$84, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/foc_types.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0x16)
	.dwattr $C$DW$84, DW_AT_decl_column(0x0f)

$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_name("vbus")
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$85, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/foc_types.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0x17)
	.dwattr $C$DW$85, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$20, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/foc_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x13)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

	.dwendtag $C$DW$TU$20


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("FOC_Refs_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$27, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/foc_types.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x18)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$28


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


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$35, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$36


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$86	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$36)

$C$DW$T$41	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$86)

	.dwendtag $C$DW$TU$41


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


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46
$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$46, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47
$C$DW$T$47	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$47, DW_AT_name("int32_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$47, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$47


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48
$C$DW$87	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$47)

$C$DW$T$48	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$87)

	.dwendtag $C$DW$TU$48


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49
$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$49, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$50


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


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("float32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$19, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/types/include/types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$19


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


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$T$51	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$51, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$51, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$51


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52
$C$DW$88	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$51)

$C$DW$T$52	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$88)

	.dwendtag $C$DW$TU$52

