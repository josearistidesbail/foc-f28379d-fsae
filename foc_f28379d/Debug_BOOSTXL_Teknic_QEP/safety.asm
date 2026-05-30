;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Sat May 30 20:22:51 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src/safety.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen Unix v25.11.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("sm_raise_fault")
	.dwattr $C$DW$1, DW_AT_linkage_name("sm_raise_fault")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x22)
	.dwattr $C$DW$1, DW_AT_decl_column(0x15)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$54)

	.dwendtag $C$DW$1

	.bss	||s_latched||,1,1,0
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("s_latched")
	.dwattr $C$DW$3, DW_AT_linkage_name("s_latched")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr ||s_latched||]
	.dwattr $C$DW$3, DW_AT_decl_file("../src/safety.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$3, DW_AT_decl_column(0x1a)

	.global	||g_dbg_fault_code||
	.bss	||g_dbg_fault_code||,1,1,0
$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("g_dbg_fault_code")
	.dwattr $C$DW$4, DW_AT_linkage_name("g_dbg_fault_code")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr ||g_dbg_fault_code||]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("../src/safety.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x16)
	.dwattr $C$DW$4, DW_AT_decl_column(0x13)


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("sm_get_state")
	.dwattr $C$DW$5, DW_AT_linkage_name("sm_get_state")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x16)
	.dwattr $C$DW$5, DW_AT_decl_column(0x15)
	.dwendtag $C$DW$5


$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("inverter_is_faulted")
	.dwattr $C$DW$6, DW_AT_linkage_name("inverter_is_faulted")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/inverter_iface.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x11)
	.dwattr $C$DW$6, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$6


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("foc_get_signals")
	.dwattr $C$DW$7, DW_AT_linkage_name("foc_get_signals")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_pipeline.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x11)
	.dwattr $C$DW$7, DW_AT_decl_column(0x1e)
	.dwendtag $C$DW$7


$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("foc_get_refs")
	.dwattr $C$DW$8, DW_AT_linkage_name("foc_get_refs")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_pipeline.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$8, DW_AT_decl_column(0x15)
	.dwendtag $C$DW$8

	.sblock	".bss"
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TI6Yq0ROvR8 /tmp/TI6YqriLq9L --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TI6YqLRSc1K 
	.sect	".text:safety_latch"
	.clink
	.global	||safety_latch||

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("safety_latch")
	.dwattr $C$DW$9, DW_AT_low_pc(||safety_latch||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_linkage_name("safety_latch")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("../src/safety.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x19)
	.dwattr $C$DW$9, DW_AT_decl_column(0x06)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/safety.c",line 25,column 31,is_stmt,address ||safety_latch||,isa 0

	.dwfde $C$DW$CIE, ||safety_latch||
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("b")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: safety_latch                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||safety_latch||:
;* AL    assigned to b
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("b")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||s_latched||     ; [CPU_ARAU] 
	.dwpsn	file "../src/safety.c",line 25,column 33,is_stmt,isa 0
        OR        @||s_latched||,AL     ; [CPU_ALU] |25| 
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../src/safety.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x19)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x31)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:safety_is_clear"
	.clink
	.global	||safety_is_clear||

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("safety_is_clear")
	.dwattr $C$DW$13, DW_AT_low_pc(||safety_is_clear||)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_linkage_name("safety_is_clear")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$13, DW_AT_decl_file("../src/safety.c")
	.dwattr $C$DW$13, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$13, DW_AT_decl_column(0x06)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/safety.c",line 26,column 31,is_stmt,address ||safety_is_clear||,isa 0

	.dwfde $C$DW$CIE, ||safety_is_clear||

;***************************************************************
;* FNAME: safety_is_clear               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||safety_is_clear||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||s_latched||     ; [CPU_ARAU] 
	.dwpsn	file "../src/safety.c",line 26,column 33,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |26| 
        MOV       AH,@||s_latched||     ; [CPU_ALU] |26| 
        CMPB      AH,#0                 ; [CPU_ALU] |26| 
        MOVB      AL,#1,EQ              ; [CPU_ALU] |26| 
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("../src/safety.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x1a)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x38)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text:safety_init"
	.clink
	.global	||safety_init||

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("safety_init")
	.dwattr $C$DW$15, DW_AT_low_pc(||safety_init||)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_linkage_name("safety_init")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("../src/safety.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x18)
	.dwattr $C$DW$15, DW_AT_decl_column(0x06)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/safety.c",line 24,column 31,is_stmt,address ||safety_init||,isa 0

	.dwfde $C$DW$CIE, ||safety_init||

;***************************************************************
;* FNAME: safety_init                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||safety_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||s_latched||     ; [CPU_ARAU] 
	.dwpsn	file "../src/safety.c",line 24,column 33,is_stmt,isa 0
        MOV       @||s_latched||,#0     ; [CPU_ALU] |24| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("../src/safety.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x18)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text:safety_get_latched"
	.clink
	.global	||safety_get_latched||

$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("safety_get_latched")
	.dwattr $C$DW$17, DW_AT_low_pc(||safety_get_latched||)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_linkage_name("safety_get_latched")
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$17, DW_AT_decl_file("../src/safety.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$17, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/safety.c",line 27,column 35,is_stmt,address ||safety_get_latched||,isa 0

	.dwfde $C$DW$CIE, ||safety_get_latched||

;***************************************************************
;* FNAME: safety_get_latched            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||safety_get_latched||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||s_latched||     ; [CPU_ARAU] 
	.dwpsn	file "../src/safety.c",line 27,column 37,is_stmt,isa 0
        MOV       AL,@||s_latched||     ; [CPU_ALU] |27| 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$17, DW_AT_TI_end_file("../src/safety.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0x1b)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x37)
	.dwendentry
	.dwendtag $C$DW$17

	.sect	".text:safety_clear"
	.clink
	.global	||safety_clear||

$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("safety_clear")
	.dwattr $C$DW$19, DW_AT_low_pc(||safety_clear||)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_linkage_name("safety_clear")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("../src/safety.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$19, DW_AT_decl_column(0x06)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/safety.c",line 28,column 31,is_stmt,address ||safety_clear||,isa 0

	.dwfde $C$DW$CIE, ||safety_clear||

;***************************************************************
;* FNAME: safety_clear                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||safety_clear||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||s_latched||     ; [CPU_ARAU] 
	.dwpsn	file "../src/safety.c",line 28,column 33,is_stmt,isa 0
        MOV       @||s_latched||,#0     ; [CPU_ALU] |28| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("../src/safety.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x1c)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x30)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text:safety_check_isr"
	.clink
	.global	||safety_check_isr||

$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("safety_check_isr")
	.dwattr $C$DW$21, DW_AT_low_pc(||safety_check_isr||)
	.dwattr $C$DW$21, DW_AT_high_pc(0x00)
	.dwattr $C$DW$21, DW_AT_linkage_name("safety_check_isr")
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("../src/safety.c")
	.dwattr $C$DW$21, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$21, DW_AT_decl_column(0x06)
	.dwattr $C$DW$21, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../src/safety.c",line 31,column 1,is_stmt,address ||safety_check_isr||,isa 0

	.dwfde $C$DW$CIE, ||safety_check_isr||

;***************************************************************
;* FNAME: safety_check_isr              FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||safety_check_isr||:
;* R0    assigned to $O$U8
;* R0    assigned to $O$U17
;* R0    assigned to $O$U24
;* AR2   assigned to s
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("s")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to st
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("st")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg6]

;* R0    assigned to vbus
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("vbus")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
	.dwpsn	file "../src/safety.c",line 32,column 28,is_stmt,isa 0
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("foc_get_signals")
	.dwattr $C$DW$25, DW_AT_TI_call

        LCR       #||foc_get_signals||  ; [CPU_ALU] |32| 
        ; call occurs [#||foc_get_signals||] ; [] |32| 
        MOVL      XAR2,XAR4             ; [CPU_ALU] |32| 
	.dwpsn	file "../src/safety.c",line 33,column 20,is_stmt,isa 0
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("sm_get_state")
	.dwattr $C$DW$26, DW_AT_TI_call

        LCR       #||sm_get_state||     ; [CPU_ALU] |33| 
        ; call occurs [#||sm_get_state||] ; [] |33| 
        CMPB      AL,#3                 ; [CPU_ALU] |33| 
        MOVZ      AR1,AL                ; [CPU_FPU] |33| 
        B         ||$C$L1||,EQ          ; [CPU_ALU] |33| 
        ; branchcc occurs ; [] |33| 
        CMPB      AL,#2                 ; [CPU_ALU] |33| 
        B         ||$C$L7||,NEQ         ; [CPU_ALU] |33| 
        ; branchcc occurs ; [] |33| 
||$C$L1||:    
	.dwpsn	file "../src/safety.c",line 40,column 9,is_stmt,isa 0
        MOV32     R0H,*+XAR2[0]         ; [CPU_FPU] |40| 
        CMPF32    R0H,#16640            ; [CPU_FPU] |40| 
        MOVST0    ZF, NF                ; [CPU_FPU] |40| 
        B         ||$C$L2||,LEQ         ; [CPU_ALU] |40| 
        ; branchcc occurs ; [] |40| 
	.dwpsn	file "../src/safety.c",line 40,column 49,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |40| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("safety_latch")
	.dwattr $C$DW$27, DW_AT_TI_call

        LCR       #||safety_latch||     ; [CPU_ALU] |40| 
        ; call occurs [#||safety_latch||] ; [] |40| 
        MOV32     R0H,*+XAR2[0]         ; [CPU_FPU] 
||$C$L2||:    
	.dwpsn	file "../src/safety.c",line 41,column 9,is_stmt,isa 0
        CMPF32    R0H,#49408            ; [CPU_FPU] |41| 
        MOVST0    ZF, NF                ; [CPU_FPU] |41| 
        B         ||$C$L3||,GEQ         ; [CPU_ALU] |41| 
        ; branchcc occurs ; [] |41| 
	.dwpsn	file "../src/safety.c",line 41,column 49,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |41| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("safety_latch")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #||safety_latch||     ; [CPU_ALU] |41| 
        ; call occurs [#||safety_latch||] ; [] |41| 
||$C$L3||:    
	.dwpsn	file "../src/safety.c",line 42,column 9,is_stmt,isa 0
        MOV32     R0H,*+XAR2[2]         ; [CPU_FPU] |42| 
        CMPF32    R0H,#16640            ; [CPU_FPU] |42| 
        MOVST0    ZF, NF                ; [CPU_FPU] |42| 
        B         ||$C$L4||,LEQ         ; [CPU_ALU] |42| 
        ; branchcc occurs ; [] |42| 
	.dwpsn	file "../src/safety.c",line 42,column 49,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |42| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("safety_latch")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #||safety_latch||     ; [CPU_ALU] |42| 
        ; call occurs [#||safety_latch||] ; [] |42| 
        MOV32     R0H,*+XAR2[2]         ; [CPU_FPU] 
||$C$L4||:    
	.dwpsn	file "../src/safety.c",line 43,column 9,is_stmt,isa 0
        CMPF32    R0H,#49408            ; [CPU_FPU] |43| 
        MOVST0    ZF, NF                ; [CPU_FPU] |43| 
        B         ||$C$L5||,GEQ         ; [CPU_ALU] |43| 
        ; branchcc occurs ; [] |43| 
	.dwpsn	file "../src/safety.c",line 43,column 49,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |43| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("safety_latch")
	.dwattr $C$DW$30, DW_AT_TI_call

        LCR       #||safety_latch||     ; [CPU_ALU] |43| 
        ; call occurs [#||safety_latch||] ; [] |43| 
||$C$L5||:    
	.dwpsn	file "../src/safety.c",line 44,column 9,is_stmt,isa 0
        MOV32     R0H,*+XAR2[4]         ; [CPU_FPU] |44| 
        CMPF32    R0H,#16640            ; [CPU_FPU] |44| 
        MOVST0    ZF, NF                ; [CPU_FPU] |44| 
        B         ||$C$L6||,LEQ         ; [CPU_ALU] |44| 
        ; branchcc occurs ; [] |44| 
	.dwpsn	file "../src/safety.c",line 44,column 49,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |44| 
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_name("safety_latch")
	.dwattr $C$DW$31, DW_AT_TI_call

        LCR       #||safety_latch||     ; [CPU_ALU] |44| 
        ; call occurs [#||safety_latch||] ; [] |44| 
        MOV32     R0H,*+XAR2[4]         ; [CPU_FPU] 
||$C$L6||:    
	.dwpsn	file "../src/safety.c",line 45,column 9,is_stmt,isa 0
        CMPF32    R0H,#49408            ; [CPU_FPU] |45| 
        MOVST0    ZF, NF                ; [CPU_FPU] |45| 
        B         ||$C$L7||,GEQ         ; [CPU_ALU] |45| 
        ; branchcc occurs ; [] |45| 
	.dwpsn	file "../src/safety.c",line 45,column 49,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |45| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("safety_latch")
	.dwattr $C$DW$32, DW_AT_TI_call

        LCR       #||safety_latch||     ; [CPU_ALU] |45| 
        ; call occurs [#||safety_latch||] ; [] |45| 
||$C$L7||:    
	.dwpsn	file "../src/safety.c",line 48,column 16,is_stmt,isa 0
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("foc_get_refs")
	.dwattr $C$DW$33, DW_AT_TI_call

        LCR       #||foc_get_refs||     ; [CPU_ALU] |48| 
        ; call occurs [#||foc_get_refs||] ; [] |48| 
        MOV32     R0H,*+XAR4[6]         ; [CPU_FPU] |48| 
	.dwpsn	file "../src/safety.c",line 49,column 5,is_stmt,isa 0
        CMPF32    R0H,#17008            ; [CPU_FPU] |49| 
        MOVST0    ZF, NF                ; [CPU_FPU] |49| 
        B         ||$C$L8||,LEQ         ; [CPU_ALU] |49| 
        ; branchcc occurs ; [] |49| 
	.dwpsn	file "../src/safety.c",line 49,column 32,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_ALU] |49| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("safety_latch")
	.dwattr $C$DW$34, DW_AT_TI_call

        LCR       #||safety_latch||     ; [CPU_ALU] |49| 
        ; call occurs [#||safety_latch||] ; [] |49| 
||$C$L8||:    
	.dwpsn	file "../src/safety.c",line 50,column 5,is_stmt,isa 0
        CMPF32    R0H,#16784            ; [CPU_FPU] |50| 
        MOVST0    ZF, NF                ; [CPU_FPU] |50| 
        B         ||$C$L9||,GEQ         ; [CPU_ALU] |50| 
        ; branchcc occurs ; [] |50| 
        MOV       AL,AR1                ; [CPU_ALU] 
        CMPB      AL,#3                 ; [CPU_ALU] |50| 
        B         ||$C$L9||,NEQ         ; [CPU_ALU] |50| 
        ; branchcc occurs ; [] |50| 
	.dwpsn	file "../src/safety.c",line 51,column 9,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_ALU] |51| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("safety_latch")
	.dwattr $C$DW$35, DW_AT_TI_call

        LCR       #||safety_latch||     ; [CPU_ALU] |51| 
        ; call occurs [#||safety_latch||] ; [] |51| 
||$C$L9||:    
	.dwpsn	file "../src/safety.c",line 53,column 5,is_stmt,isa 0
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("inverter_is_faulted")
	.dwattr $C$DW$36, DW_AT_TI_call

        LCR       #||inverter_is_faulted|| ; [CPU_ALU] |53| 
        ; call occurs [#||inverter_is_faulted||] ; [] |53| 
        CMPB      AL,#0                 ; [CPU_ALU] |53| 
        B         ||$C$L10||,EQ         ; [CPU_ALU] |53| 
        ; branchcc occurs ; [] |53| 
	.dwpsn	file "../src/safety.c",line 53,column 31,is_stmt,isa 0
        MOVB      AL,#16                ; [CPU_ALU] |53| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("safety_latch")
	.dwattr $C$DW$37, DW_AT_TI_call

        LCR       #||safety_latch||     ; [CPU_ALU] |53| 
        ; call occurs [#||safety_latch||] ; [] |53| 
||$C$L10||:    
        MOVW      DP,#||s_latched||     ; [CPU_ARAU] 
	.dwpsn	file "../src/safety.c",line 55,column 5,is_stmt,isa 0
        MOV       AL,@||s_latched||     ; [CPU_ALU] |55| 
        B         ||$C$L11||,EQ         ; [CPU_ALU] |55| 
        ; branchcc occurs ; [] |55| 
	.dwpsn	file "../src/safety.c",line 55,column 19,is_stmt,isa 0
        MOV       AL,@||s_latched||     ; [CPU_ALU] |55| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("sm_raise_fault")
	.dwattr $C$DW$38, DW_AT_TI_call

        LCR       #||sm_raise_fault||   ; [CPU_ALU] |55| 
        ; call occurs [#||sm_raise_fault||] ; [] |55| 
||$C$L11||:    
        MOVW      DP,#||s_latched||     ; [CPU_ARAU] 
	.dwpsn	file "../src/safety.c",line 57,column 5,is_stmt,isa 0
        MOV       AL,@||s_latched||     ; [CPU_ALU] |57| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOV       @||g_dbg_fault_code||,AL ; [CPU_ALU] |57| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$21, DW_AT_TI_end_file("../src/safety.c")
	.dwattr $C$DW$21, DW_AT_TI_end_line(0x3a)
	.dwattr $C$DW$21, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$21

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||sm_raise_fault||
	.global	||sm_get_state||
	.global	||inverter_is_faulted||
	.global	||foc_get_signals||
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

$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$40	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$40, DW_AT_name("FOC_IDLE")
	.dwattr $C$DW$40, DW_AT_const_value(0x00)
	.dwattr $C$DW$40, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$40, DW_AT_decl_column(0x05)

$C$DW$41	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$41, DW_AT_name("FOC_CALIBRATE_OFFSETS")
	.dwattr $C$DW$41, DW_AT_const_value(0x01)
	.dwattr $C$DW$41, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$41, DW_AT_decl_column(0x05)

$C$DW$42	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$42, DW_AT_name("FOC_ALIGN_ROTOR")
	.dwattr $C$DW$42, DW_AT_const_value(0x02)
	.dwattr $C$DW$42, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0x10)
	.dwattr $C$DW$42, DW_AT_decl_column(0x05)

$C$DW$43	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$43, DW_AT_name("FOC_RUN")
	.dwattr $C$DW$43, DW_AT_const_value(0x03)
	.dwattr $C$DW$43, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x11)
	.dwattr $C$DW$43, DW_AT_decl_column(0x05)

$C$DW$44	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$44, DW_AT_name("FOC_FAULT")
	.dwattr $C$DW$44, DW_AT_const_value(0x04)
	.dwattr $C$DW$44, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x12)
	.dwattr $C$DW$44, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$34, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x0e)
	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$T$35	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$35, DW_AT_name("FOC_State_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_state_machine.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x13)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$35


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x08)
$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$45, DW_AT_name("id_ref")
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$45, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x14)
	.dwattr $C$DW$45, DW_AT_decl_column(0x0f)

$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_name("iq_ref")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$46, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x15)
	.dwattr $C$DW$46, DW_AT_decl_column(0x0f)

$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$47, DW_AT_name("speed_ref")
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$47, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x16)
	.dwattr $C$DW$47, DW_AT_decl_column(0x0f)

$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$48, DW_AT_name("vbus")
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$48, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x17)
	.dwattr $C$DW$48, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$20, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x13)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

	.dwendtag $C$DW$TU$20


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("FOC_Refs_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$39, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x18)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$40


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x20)
$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$49, DW_AT_name("Iabc")
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$49, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$49, DW_AT_decl_column(0x11)

$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$50, DW_AT_name("Iab")
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$50, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$50, DW_AT_decl_column(0x11)

$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$51, DW_AT_name("Idq")
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$51, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$51, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$51, DW_AT_decl_column(0x11)

$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$52, DW_AT_name("Vdq")
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$52, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$52, DW_AT_decl_column(0x11)

$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$53, DW_AT_name("Vab")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$53, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$53, DW_AT_decl_column(0x11)

$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$54, DW_AT_name("duty")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$54, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0x20)
	.dwattr $C$DW$54, DW_AT_decl_column(0x11)

$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$55, DW_AT_name("theta_elec")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$55, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0x21)
	.dwattr $C$DW$55, DW_AT_decl_column(0x11)

$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$56, DW_AT_name("omega_elec")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$56, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$56, DW_AT_decl_line(0x22)
	.dwattr $C$DW$56, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$29, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49
$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("FOC_Signals_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$49, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x23)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$57	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$49)

$C$DW$T$50	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$57)

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$T$51	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$51


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("_MATH_Vec2_")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x04)
$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$58, DW_AT_name("value")
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$58, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$58, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$31, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("MATH_Vec2")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$23, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0xda)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("FOC_Iab_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("FOC_Idq_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$25, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$25


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("FOC_Vab_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$27, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$27


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("FOC_Vdq_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$26, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x10)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$26


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("_MATH_Vec3_")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x06)
$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$59, DW_AT_name("value")
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$59, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$59, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$33, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("MATH_Vec3")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$21, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$21


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("FOC_Duty_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$28, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x11)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$28


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("FOC_Iabc_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$22


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


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53
$C$DW$T$53	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$53, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$53, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54
$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$54


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59
$C$DW$60	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$54)

$C$DW$T$59	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$60)

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60
$C$DW$61	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$54)

$C$DW$T$60	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$61)

	.dwendtag $C$DW$TU$60


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


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


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


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x04)
$C$DW$62	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$62, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x06)
$C$DW$63	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$63, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


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


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67
$C$DW$T$67	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$67, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$67, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$67

