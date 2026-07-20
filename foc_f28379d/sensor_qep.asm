;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Thu Jul 16 00:46:30 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("src/sensor_qep.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen Unix v25.11.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/jose/workspace_ccstheia/foc_f28379d")
	.global	||g_qep_lost||
	.data
	.align	1
	.elfsym	||g_qep_lost||,SYM_SIZE(1),SYM_BLOCKED(1)
||g_qep_lost||:
	.bits		0,16
			; g_qep_lost @ 0

$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("g_qep_lost")
	.dwattr $C$DW$1, DW_AT_linkage_name("g_qep_lost")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr ||g_qep_lost||]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$1, DW_AT_decl_column(0x14)

	.global	||g_dbg_qep_status||
	.bss	||g_dbg_qep_status||,1,1,0
$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("g_dbg_qep_status")
	.dwattr $C$DW$2, DW_AT_linkage_name("g_dbg_qep_status")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr ||g_dbg_qep_status||]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x27)
	.dwattr $C$DW$2, DW_AT_decl_column(0x13)

	.global	||g_dbg_qep_direction||
	.bss	||g_dbg_qep_direction||,1,1,0
$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("g_dbg_qep_direction")
	.dwattr $C$DW$3, DW_AT_linkage_name("g_dbg_qep_direction")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr ||g_dbg_qep_direction||]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x28)
	.dwattr $C$DW$3, DW_AT_decl_column(0x13)

	.bss	||s_loss_ticks||,1,1,0
$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("s_loss_ticks")
	.dwattr $C$DW$4, DW_AT_linkage_name("s_loss_ticks")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr ||s_loss_ticks||]
	.dwattr $C$DW$4, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$4, DW_AT_decl_column(0x11)


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("sm_get_state")
	.dwattr $C$DW$5, DW_AT_linkage_name("sm_get_state")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("include/foc_state_machine.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x17)
	.dwattr $C$DW$5, DW_AT_decl_column(0x15)
	.dwendtag $C$DW$5

	.global	||g_qep_theta_elec||
	.data
	.align	2
	.elfsym	||g_qep_theta_elec||,SYM_SIZE(2),SYM_BLOCKED(1)
||g_qep_theta_elec||:
	.xfloat	$strtod("0x0p+0")		; g_qep_theta_elec @ 0

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("g_qep_theta_elec")
	.dwattr $C$DW$6, DW_AT_linkage_name("g_qep_theta_elec")
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr ||g_qep_theta_elec||]
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$6, DW_AT_decl_line(0x13)
	.dwattr $C$DW$6, DW_AT_decl_column(0x14)

	.global	||g_qep_theta_raw_elec||
	.data
	.align	2
	.elfsym	||g_qep_theta_raw_elec||,SYM_SIZE(2),SYM_BLOCKED(1)
||g_qep_theta_raw_elec||:
	.xfloat	$strtod("0x0p+0")		; g_qep_theta_raw_elec @ 0

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("g_qep_theta_raw_elec")
	.dwattr $C$DW$7, DW_AT_linkage_name("g_qep_theta_raw_elec")
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr ||g_qep_theta_raw_elec||]
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x14)
	.dwattr $C$DW$7, DW_AT_decl_column(0x14)

	.global	||g_qep_omega_elec||
	.data
	.align	2
	.elfsym	||g_qep_omega_elec||,SYM_SIZE(2),SYM_BLOCKED(1)
||g_qep_omega_elec||:
	.xfloat	$strtod("0x0p+0")		; g_qep_omega_elec @ 0

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("g_qep_omega_elec")
	.dwattr $C$DW$8, DW_AT_linkage_name("g_qep_omega_elec")
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr ||g_qep_omega_elec||]
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$8, DW_AT_decl_line(0x15)
	.dwattr $C$DW$8, DW_AT_decl_column(0x14)

	.global	||g_qep_theta_offset_elec||
	.data
	.align	2
	.elfsym	||g_qep_theta_offset_elec||,SYM_SIZE(2),SYM_BLOCKED(1)
||g_qep_theta_offset_elec||:
	.xfloat	$strtod("0x0p+0")		; g_qep_theta_offset_elec @ 0

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("g_qep_theta_offset_elec")
	.dwattr $C$DW$9, DW_AT_linkage_name("g_qep_theta_offset_elec")
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr ||g_qep_theta_offset_elec||]
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x16)
	.dwattr $C$DW$9, DW_AT_decl_column(0x14)

	.global	||g_qep_omega_healthy||
	.data
	.align	2
	.elfsym	||g_qep_omega_healthy||,SYM_SIZE(2),SYM_BLOCKED(1)
||g_qep_omega_healthy||:
	.xfloat	$strtod("0x0p+0")		; g_qep_omega_healthy @ 0

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("g_qep_omega_healthy")
	.dwattr $C$DW$10, DW_AT_linkage_name("g_qep_omega_healthy")
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr ||g_qep_omega_healthy||]
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$10, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$10, DW_AT_decl_column(0x14)

	.global	||g_dbg_qep_loss_move||
	.bss	||g_dbg_qep_loss_move||,2,1,1
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("g_dbg_qep_loss_move")
	.dwattr $C$DW$11, DW_AT_linkage_name("g_dbg_qep_loss_move")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr ||g_dbg_qep_loss_move||]
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x21)
	.dwattr $C$DW$11, DW_AT_decl_column(0x14)

	.global	||g_dbg_qep_dcnt||
	.bss	||g_dbg_qep_dcnt||,2,1,1
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("g_dbg_qep_dcnt")
	.dwattr $C$DW$12, DW_AT_linkage_name("g_dbg_qep_dcnt")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr ||g_dbg_qep_dcnt||]
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$12, DW_AT_decl_line(0x22)
	.dwattr $C$DW$12, DW_AT_decl_column(0x14)

	.global	||g_dbg_qep_count||
	.bss	||g_dbg_qep_count||,2,1,1
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("g_dbg_qep_count")
	.dwattr $C$DW$13, DW_AT_linkage_name("g_dbg_qep_count")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_addr ||g_dbg_qep_count||]
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$13, DW_AT_decl_line(0x25)
	.dwattr $C$DW$13, DW_AT_decl_column(0x13)

	.global	||g_dbg_qep_index_latch||
	.bss	||g_dbg_qep_index_latch||,2,1,1
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("g_dbg_qep_index_latch")
	.dwattr $C$DW$14, DW_AT_linkage_name("g_dbg_qep_index_latch")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_addr ||g_dbg_qep_index_latch||]
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$14, DW_AT_decl_line(0x26)
	.dwattr $C$DW$14, DW_AT_decl_column(0x13)

	.bss	||s_last_cnt||,2,1,1
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("s_last_cnt")
	.dwattr $C$DW$15, DW_AT_linkage_name("s_last_cnt")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_addr ||s_last_cnt||]
	.dwattr $C$DW$15, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$15, DW_AT_decl_column(0x11)

	.bss	||s_omega_lpf||,2,1,1
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("s_omega_lpf")
	.dwattr $C$DW$16, DW_AT_linkage_name("s_omega_lpf")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_addr ||s_omega_lpf||]
	.dwattr $C$DW$16, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$16, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$16, DW_AT_decl_column(0x11)

	.bss	||s_loss_move||,2,1,1
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("s_loss_move")
	.dwattr $C$DW$17, DW_AT_linkage_name("s_loss_move")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_addr ||s_loss_move||]
	.dwattr $C$DW$17, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$17, DW_AT_decl_column(0x11)


$C$DW$18	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$18, DW_AT_name("foc_get_refs")
	.dwattr $C$DW$18, DW_AT_linkage_name("foc_get_refs")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("include/foc_pipeline.h")
	.dwattr $C$DW$18, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$18, DW_AT_decl_column(0x15)
	.dwendtag $C$DW$18

	.sblock	".bss"
	.sblock	".data"
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TI5ZqIl8FuD /tmp/TI5Zqahy8tN --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TI5ZqNFWBdW 
	.sect	".text:sensor_update_speed_slow"
	.clink
	.global	||sensor_update_speed_slow||

$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("sensor_update_speed_slow")
	.dwattr $C$DW$19, DW_AT_low_pc(||sensor_update_speed_slow||)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_linkage_name("sensor_update_speed_slow")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$19, DW_AT_decl_column(0x06)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "src/sensor_qep.c",line 62,column 1,is_stmt,address ||sensor_update_speed_slow||,isa 0

	.dwfde $C$DW$CIE, ||sensor_update_speed_slow||

;***************************************************************
;* FNAME: sensor_update_speed_slow      FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||sensor_update_speed_slow||:
;* R4    assigned to $O$C2
;* R0    assigned to $O$v1
;* AL    assigned to $O$R1
;* AR6   assigned to cnt
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("cnt")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg16]

;* AR1   assigned to dcnt
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("dcnt")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg6]

;* R4    assigned to iq_ref
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("iq_ref")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_regx 0x3b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 4
	.dwcfi	cfa_offset, -6
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 489,column 5,is_stmt,isa 0
        MOV32     XAR6,*(0:0x5100)      ; [CPU_FPU] |489| 
        MOVW      DP,#||s_last_cnt||    ; [CPU_ARAU] 
	.dwpsn	file "src/sensor_qep.c",line 64,column 18,is_stmt,isa 0
        MOVL      ACC,XAR6              ; [CPU_ALU] |64| 
        SUBL      ACC,@||s_last_cnt||   ; [CPU_ALU] |64| 
        MOVL      XAR1,ACC              ; [CPU_ALU] |64| 
	.dwpsn	file "src/sensor_qep.c",line 68,column 5,is_stmt,isa 0
        MOV       ACC,#2000             ; [CPU_ALU] |68| 
	.dwpsn	file "src/sensor_qep.c",line 65,column 5,is_stmt,isa 0
        MOVL      @||s_last_cnt||,XAR6  ; [CPU_ALU] |65| 
	.dwpsn	file "src/sensor_qep.c",line 68,column 5,is_stmt,isa 0
        CMPL      ACC,XAR1              ; [CPU_ALU] |68| 
        B         ||$C$L1||,GEQ         ; [CPU_ALU] |68| 
        ; branchcc occurs ; [] |68| 
        MOVL      ACC,XAR1              ; [CPU_ALU] 
	.dwpsn	file "src/sensor_qep.c",line 68,column 37,is_stmt,isa 0
        SUB       ACC,#125 << 5         ; [CPU_ALU] |68| 
        MOVL      XAR1,ACC              ; [CPU_ALU] |68| 
||$C$L1||:    
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "src/sensor_qep.c",line 69,column 5,is_stmt,isa 0
        MOV       ACC,#-125 << 4        ; [CPU_ALU] |69| 
        CMPL      ACC,XAR1              ; [CPU_ALU] |69| 
        B         ||$C$L2||,LEQ         ; [CPU_ALU] |69| 
        ; branchcc occurs ; [] |69| 
        MOVL      ACC,XAR1              ; [CPU_ALU] 
	.dwpsn	file "src/sensor_qep.c",line 69,column 37,is_stmt,isa 0
        ADD       ACC,#125 << 5         ; [CPU_ALU] |69| 
        MOVL      XAR1,ACC              ; [CPU_ALU] |69| 
||$C$L2||:    
	.dwpsn	file "src/sensor_qep.c",line 75,column 5,is_stmt,isa 0
        MOV32     R1H,XAR1              ; [CPU_FPU] |75| 
        MOVIZ     R0H,#14723            ; [CPU_FPU] |75| 
        MOVIZ     R4H,#16585            ; [CPU_FPU] |75| 
        MOVIZ     R3H,#17530            ; [CPU_FPU] |75| 
        MOVXI     R0H,#4719             ; [CPU_FPU] |75| 
        I32TOF32  R2H,R1H               ; [CPU_FPU] |75| 
        MOVXI     R4H,#4059             ; [CPU_FPU] |75| 
        MPYF32    R2H,R0H,R2H           ; [CPU_FPU] |75| 
        MOVXI     R3H,#1                ; [CPU_FPU] |75| 
        MPYF32    R2H,R4H,R2H           ; [CPU_FPU] |75| 
        MOVIZ     R1H,#15948            ; [CPU_FPU] |75| 
        MPYF32    R2H,R3H,R2H           ; [CPU_FPU] |75| 
        MOV32     R4H,@||s_omega_lpf||  ; [CPU_FPU] |75| 
        SUBF32    R2H,R2H,R4H           ; [CPU_FPU] |75| 
        MOVXI     R1H,#52429            ; [CPU_FPU] |75| 
        MPYF32    R0H,R1H,R2H           ; [CPU_FPU] |75| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R4H           ; [CPU_FPU] |75| 
        NOP       ; [CPU_ALU] 
        MOV32     @||s_omega_lpf||,R0H  ; [CPU_FPU] |75| 
	.dwpsn	file "src/sensor_qep.c",line 76,column 5,is_stmt,isa 0
        MPYF32    R1H,R0H,#16512        ; [CPU_FPU] |76| 
        MOVW      DP,#||g_qep_omega_elec|| ; [CPU_ARAU] 
        MOV32     @||g_qep_omega_elec||,R1H ; [CPU_FPU] |76| 
	.dwpsn	file "src/sensor_qep.c",line 88,column 18,is_stmt,isa 0
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("foc_get_refs")
	.dwattr $C$DW$23, DW_AT_TI_call

        LCR       #||foc_get_refs||     ; [CPU_ALU] |88| 
        ; call occurs [#||foc_get_refs||] ; [] |88| 
        MOVW      DP,#||g_dbg_qep_dcnt|| ; [CPU_ARAU] 
	.dwpsn	file "src/sensor_qep.c",line 91,column 5,is_stmt,isa 0
        MOVL      @||g_dbg_qep_dcnt||,XAR1 ; [CPU_ALU] |91| 
	.dwpsn	file "src/sensor_qep.c",line 88,column 18,is_stmt,isa 0
        MOV32     R4H,*+XAR4[2]         ; [CPU_FPU] |88| 
	.dwpsn	file "src/sensor_qep.c",line 89,column 5,is_stmt,isa 0
        CMPF32    R4H,#0                ; [CPU_FPU] |89| 
	.dwpsn	file "src/sensor_qep.c",line 89,column 23,is_stmt,isa 0
        NEGF32    R4H,R4H,LT            ; [CPU_FPU] |89| 
	.dwpsn	file "src/sensor_qep.c",line 92,column 5,is_stmt,isa 0
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("sm_get_state")
	.dwattr $C$DW$24, DW_AT_TI_call

        LCR       #||sm_get_state||     ; [CPU_ALU] |92| 
        ; call occurs [#||sm_get_state||] ; [] |92| 
        CMPB      AL,#3                 ; [CPU_ALU] |92| 
        B         ||$C$L3||,NEQ         ; [CPU_ALU] |92| 
        ; branchcc occurs ; [] |92| 
        MOVIZ     R0H,#15820            ; [CPU_FPU] |92| 
        MOVXI     R0H,#52429            ; [CPU_FPU] |92| 
        CMPF32    R4H,R0H               ; [CPU_FPU] |92| 
        MOVST0    ZF, NF                ; [CPU_FPU] |92| 
        B         ||$C$L3||,LEQ         ; [CPU_ALU] |92| 
        ; branchcc occurs ; [] |92| 
        MOVW      DP,#||s_loss_ticks||  ; [CPU_ARAU] 
        MOVL      ACC,XAR1              ; [CPU_ALU] 
	.dwpsn	file "src/sensor_qep.c",line 94,column 9,is_stmt,isa 0
        INC       @||s_loss_ticks||     ; [CPU_ALU] |94| 
	.dwpsn	file "src/sensor_qep.c",line 95,column 9,is_stmt,isa 0
        ABS       ACC                   ; [CPU_ALU] |95| 
        ADDL      @||s_loss_move||,ACC  ; [CPU_ALU] |95| 
	.dwpsn	file "src/sensor_qep.c",line 96,column 9,is_stmt,isa 0
        MOV       AL,@||s_loss_ticks||  ; [CPU_ALU] |96| 
        CMPB      AL,#100               ; [CPU_ALU] |96| 
        B         ||$C$L4||,LO          ; [CPU_ALU] |96| 
        ; branchcc occurs ; [] |96| 
	.dwpsn	file "src/sensor_qep.c",line 98,column 13,is_stmt,isa 0
        MOVB      ACC,#4                ; [CPU_ALU] |98| 
        CMPL      ACC,@||s_loss_move||  ; [CPU_ALU] |98| 
        MOVW      DP,#||g_qep_lost||    ; [CPU_ARAU] 
	.dwpsn	file "src/sensor_qep.c",line 98,column 66,is_stmt,isa 0
        MOVB      @||g_qep_lost||,#1,HI ; [CPU_ALU] |98| 
||$C$L3||:    
        MOVW      DP,#||s_loss_ticks||  ; [CPU_ARAU] 
	.dwpsn	file "src/sensor_qep.c",line 106,column 9,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |106| 
	.dwpsn	file "src/sensor_qep.c",line 105,column 9,is_stmt,isa 0
        MOV       @||s_loss_ticks||,#0  ; [CPU_ALU] |105| 
	.dwpsn	file "src/sensor_qep.c",line 106,column 9,is_stmt,isa 0
        MOVL      @||s_loss_move||,ACC  ; [CPU_ALU] |106| 
||$C$L4||:    
	.dwpsn	file "src/sensor_qep.c",line 108,column 5,is_stmt,isa 0
        MOVL      ACC,@||s_loss_move||  ; [CPU_ALU] |108| 
        MOVL      @||g_dbg_qep_loss_move||,ACC ; [CPU_ALU] |108| 
        MOVW      DP,#||g_qep_lost||    ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 814,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x511c)        ; [CPU_ALU] |814| 
        ANDB      AL,#0xff              ; [CPU_ALU] |814| 
	.dwpsn	file "src/sensor_qep.c",line 112,column 5,is_stmt,isa 0
        TBIT      AL,#0                 ; [CPU_ALU] |112| 
	.dwpsn	file "src/sensor_qep.c",line 112,column 61,is_stmt,isa 0
        MOVB      @||g_qep_lost||,#1,TC ; [CPU_ALU] |112| 
	.dwpsn	file "src/sensor_qep.c",line 116,column 5,is_stmt,isa 0
        MOV       AL,@||g_qep_lost||    ; [CPU_ALU] |116| 
        B         ||$C$L5||,NEQ         ; [CPU_ALU] |116| 
        ; branchcc occurs ; [] |116| 
	.dwpsn	file "src/sensor_qep.c",line 116,column 21,is_stmt,isa 0
        MOVL      ACC,@||g_qep_omega_elec|| ; [CPU_ALU] |116| 
        MOVL      @||g_qep_omega_healthy||,ACC ; [CPU_ALU] |116| 
||$C$L5||:    
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -6
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 59
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("src/sensor_qep.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x75)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text:sensor_set_elec_offset"
	.clink
	.global	||sensor_set_elec_offset||

$C$DW$26	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$26, DW_AT_name("sensor_set_elec_offset")
	.dwattr $C$DW$26, DW_AT_low_pc(||sensor_set_elec_offset||)
	.dwattr $C$DW$26, DW_AT_high_pc(0x00)
	.dwattr $C$DW$26, DW_AT_linkage_name("sensor_set_elec_offset")
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$26, DW_AT_decl_line(0x89)
	.dwattr $C$DW$26, DW_AT_decl_column(0x06)
	.dwattr $C$DW$26, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "src/sensor_qep.c",line 138,column 1,is_stmt,address ||sensor_set_elec_offset||,isa 0

	.dwfde $C$DW$CIE, ||sensor_set_elec_offset||
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_name("rad")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: sensor_set_elec_offset        FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||sensor_set_elec_offset||:
;* R3    assigned to rad
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("rad")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_regx 0x37]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
        MOV32     R3H,R0H               ; [CPU_FPU] |138| 
	.dwpsn	file "src/sensor_qep.c",line 139,column 11,is_stmt,isa 0
        CMPF32    R3H,#0                ; [CPU_FPU] |139| 
        MOVST0    ZF, NF                ; [CPU_FPU] |139| 
        B         ||$C$L7||,GEQ         ; [CPU_ALU] |139| 
        ; branchcc occurs ; [] |139| 
||$C$L6||:    
        MOVIZ     R2H,#16585            ; [CPU_FPU] |139| 
        MOVXI     R2H,#4059             ; [CPU_FPU] |139| 
        ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |139| 
        NOP       ; [CPU_ALU] 
        CMPF32    R3H,#0                ; [CPU_FPU] |139| 
        MOVST0    ZF, NF                ; [CPU_FPU] |139| 
        B         ||$C$L6||,LT          ; [CPU_ALU] |139| 
        ; branchcc occurs ; [] |139| 
||$C$L7||:    
	.dwpsn	file "src/sensor_qep.c",line 140,column 11,is_stmt,isa 0
        MOVIZ     R0H,#16585            ; [CPU_FPU] |140| 
        MOVXI     R0H,#4059             ; [CPU_FPU] |140| 
        CMPF32    R3H,R0H               ; [CPU_FPU] |140| 
        MOVST0    ZF, NF                ; [CPU_FPU] |140| 
        B         ||$C$L9||,LT          ; [CPU_ALU] |140| 
        ; branchcc occurs ; [] |140| 
||$C$L8||:    
        MOVIZ     R1H,#16585            ; [CPU_FPU] |140| 
        MOVIZ     R0H,#16585            ; [CPU_FPU] |140| 
        MOVXI     R1H,#4059             ; [CPU_FPU] |140| 
        SUBF32    R3H,R3H,R1H           ; [CPU_FPU] |140| 
        MOVXI     R0H,#4059             ; [CPU_FPU] |140| 
        CMPF32    R3H,R0H               ; [CPU_FPU] |140| 
        MOVST0    ZF, NF                ; [CPU_FPU] |140| 
        B         ||$C$L8||,GEQ         ; [CPU_ALU] |140| 
        ; branchcc occurs ; [] |140| 
||$C$L9||:    
        MOVW      DP,#||g_qep_theta_offset_elec|| ; [CPU_ARAU] 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
	.dwpsn	file "src/sensor_qep.c",line 141,column 5,is_stmt,isa 0
        MOV32     @||g_qep_theta_offset_elec||,R3H ; [CPU_FPU] |141| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$26, DW_AT_TI_end_file("src/sensor_qep.c")
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x8e)
	.dwattr $C$DW$26, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$26

	.sect	".text:sensor_init"
	.clink
	.global	||sensor_init||

$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("sensor_init")
	.dwattr $C$DW$30, DW_AT_low_pc(||sensor_init||)
	.dwattr $C$DW$30, DW_AT_high_pc(0x00)
	.dwattr $C$DW$30, DW_AT_linkage_name("sensor_init")
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$30, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$30, DW_AT_decl_column(0x06)
	.dwattr $C$DW$30, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "src/sensor_qep.c",line 48,column 1,is_stmt,address ||sensor_init||,isa 0

	.dwfde $C$DW$CIE, ||sensor_init||

;***************************************************************
;* FNAME: sensor_init                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||sensor_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 516,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |516| 
        MOVW      DP,#||g_qep_lost||    ; [CPU_ARAU] 
	.dwpsn	file "src/sensor_qep.c",line 53,column 5,is_stmt,isa 0
        ZERO      R1H                   ; [CPU_FPU] |53| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 516,column 5,is_stmt,isa 0
        MOV32     *(0:0x5100),ACC       ; [CPU_FPU] |516| 
	.dwpsn	file "src/sensor_qep.c",line 52,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |52| 
	.dwpsn	file "src/sensor_qep.c",line 57,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |57| 
	.dwpsn	file "src/sensor_qep.c",line 56,column 5,is_stmt,isa 0
        MOV       @||g_qep_lost||,#0    ; [CPU_ALU] |56| 
        MOVW      DP,#||s_loss_ticks||  ; [CPU_ARAU] 
	.dwpsn	file "src/sensor_qep.c",line 54,column 5,is_stmt,isa 0
        MOV       @||s_loss_ticks||,#0  ; [CPU_ALU] |54| 
	.dwpsn	file "src/sensor_qep.c",line 53,column 5,is_stmt,isa 0
        MOV32     @||s_omega_lpf||,R1H  ; [CPU_FPU] |53| 
	.dwpsn	file "src/sensor_qep.c",line 55,column 5,is_stmt,isa 0
        MOVL      @||s_loss_move||,ACC  ; [CPU_ALU] |55| 
	.dwpsn	file "src/sensor_qep.c",line 52,column 5,is_stmt,isa 0
        MOVL      @||s_last_cnt||,XAR6  ; [CPU_ALU] |52| 
        MOVW      DP,#||g_qep_omega_healthy|| ; [CPU_ARAU] 
	.dwpsn	file "src/sensor_qep.c",line 57,column 5,is_stmt,isa 0
        MOV32     @||g_qep_omega_healthy||,R0H ; [CPU_FPU] |57| 
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$30, DW_AT_TI_end_file("src/sensor_qep.c")
	.dwattr $C$DW$30, DW_AT_TI_end_line(0x3a)
	.dwattr $C$DW$30, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$30

	.sect	".text:sensor_clear_loss"
	.clink
	.global	||sensor_clear_loss||

$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("sensor_clear_loss")
	.dwattr $C$DW$32, DW_AT_low_pc(||sensor_clear_loss||)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_linkage_name("sensor_clear_loss")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$32, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$32, DW_AT_decl_column(0x06)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "src/sensor_qep.c",line 128,column 1,is_stmt,address ||sensor_clear_loss||,isa 0

	.dwfde $C$DW$CIE, ||sensor_clear_loss||

;***************************************************************
;* FNAME: sensor_clear_loss             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||sensor_clear_loss||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||g_qep_lost||    ; [CPU_ARAU] 
	.dwpsn	file "src/sensor_qep.c",line 131,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |131| 
	.dwpsn	file "src/sensor_qep.c",line 129,column 5,is_stmt,isa 0
        MOV       @||g_qep_lost||,#0    ; [CPU_ALU] |129| 
        MOVW      DP,#||s_loss_ticks||  ; [CPU_ARAU] 
	.dwpsn	file "src/sensor_qep.c",line 130,column 5,is_stmt,isa 0
        MOV       @||s_loss_ticks||,#0  ; [CPU_ALU] |130| 
	.dwpsn	file "src/sensor_qep.c",line 131,column 5,is_stmt,isa 0
        MOVL      @||s_loss_move||,ACC  ; [CPU_ALU] |131| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$32, DW_AT_TI_end_file("src/sensor_qep.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x84)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$32

	.sect	".text:sensor_capture_zero"
	.clink
	.global	||sensor_capture_zero||

$C$DW$34	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$34, DW_AT_name("sensor_capture_zero")
	.dwattr $C$DW$34, DW_AT_low_pc(||sensor_capture_zero||)
	.dwattr $C$DW$34, DW_AT_high_pc(0x00)
	.dwattr $C$DW$34, DW_AT_linkage_name("sensor_capture_zero")
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_decl_file("src/sensor_qep.c")
	.dwattr $C$DW$34, DW_AT_decl_line(0x93)
	.dwattr $C$DW$34, DW_AT_decl_column(0x06)
	.dwattr $C$DW$34, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "src/sensor_qep.c",line 147,column 32,is_stmt,address ||sensor_capture_zero||,isa 0

	.dwfde $C$DW$CIE, ||sensor_capture_zero||

;***************************************************************
;* FNAME: sensor_capture_zero           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||sensor_capture_zero||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||g_qep_theta_raw_elec|| ; [CPU_ARAU] 
	.dwpsn	file "src/sensor_qep.c",line 147,column 34,is_stmt,isa 0
        MOV32     R0H,@||g_qep_theta_raw_elec|| ; [CPU_FPU] |147| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("sensor_set_elec_offset")
	.dwattr $C$DW$35, DW_AT_TI_call

        LCR       #||sensor_set_elec_offset|| ; [CPU_ALU] |147| 
        ; call occurs [#||sensor_set_elec_offset||] ; [] |147| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$34, DW_AT_TI_end_file("src/sensor_qep.c")
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x93)
	.dwattr $C$DW$34, DW_AT_TI_end_column(0x50)
	.dwendentry
	.dwendtag $C$DW$34

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||sm_get_state||
	.global	||foc_get_refs||

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

$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$37	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$37, DW_AT_name("FOC_IDLE")
	.dwattr $C$DW$37, DW_AT_const_value(0x00)
	.dwattr $C$DW$37, DW_AT_decl_file("include/foc_state_machine.h")
	.dwattr $C$DW$37, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$37, DW_AT_decl_column(0x05)

$C$DW$38	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$38, DW_AT_name("FOC_CALIBRATE_OFFSETS")
	.dwattr $C$DW$38, DW_AT_const_value(0x01)
	.dwattr $C$DW$38, DW_AT_decl_file("include/foc_state_machine.h")
	.dwattr $C$DW$38, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$38, DW_AT_decl_column(0x05)

$C$DW$39	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$39, DW_AT_name("FOC_ALIGN_ROTOR")
	.dwattr $C$DW$39, DW_AT_const_value(0x02)
	.dwattr $C$DW$39, DW_AT_decl_file("include/foc_state_machine.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0x10)
	.dwattr $C$DW$39, DW_AT_decl_column(0x05)

$C$DW$40	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$40, DW_AT_name("FOC_RUN")
	.dwattr $C$DW$40, DW_AT_const_value(0x03)
	.dwattr $C$DW$40, DW_AT_decl_file("include/foc_state_machine.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0x11)
	.dwattr $C$DW$40, DW_AT_decl_column(0x05)

$C$DW$41	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$41, DW_AT_name("FOC_FAULT")
	.dwattr $C$DW$41, DW_AT_const_value(0x04)
	.dwattr $C$DW$41, DW_AT_decl_file("include/foc_state_machine.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0x12)
	.dwattr $C$DW$41, DW_AT_decl_column(0x05)

$C$DW$42	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$42, DW_AT_name("FOC_OPENLOOP")
	.dwattr $C$DW$42, DW_AT_const_value(0x05)
	.dwattr $C$DW$42, DW_AT_decl_file("include/foc_state_machine.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0x13)
	.dwattr $C$DW$42, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("include/foc_state_machine.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x0e)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("FOC_State_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("include/foc_state_machine.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x14)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x08)
$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$43, DW_AT_name("id_ref")
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$43, DW_AT_decl_file("include/foc_types.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x14)
	.dwattr $C$DW$43, DW_AT_decl_column(0x0f)

$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$44, DW_AT_name("iq_ref")
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$44, DW_AT_decl_file("include/foc_types.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x15)
	.dwattr $C$DW$44, DW_AT_decl_column(0x0f)

$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$45, DW_AT_name("speed_ref")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$45, DW_AT_decl_file("include/foc_types.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x16)
	.dwattr $C$DW$45, DW_AT_decl_column(0x0f)

$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_name("vbus")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$46, DW_AT_decl_file("include/foc_types.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x17)
	.dwattr $C$DW$46, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$20, DW_AT_decl_file("include/foc_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x13)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

	.dwendtag $C$DW$TU$20


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("FOC_Refs_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$26, DW_AT_decl_file("include/foc_types.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x18)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$27


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


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$38, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("int16_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$47	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$39)

$C$DW$T$40	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$47)

	.dwendtag $C$DW$TU$40


$C$DW$TU$9	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$9
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$9


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$41, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42
$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$42


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$48	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$42)

$C$DW$T$44	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$48)

	.dwendtag $C$DW$TU$44


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


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48
$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$48, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49
$C$DW$T$49	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$49, DW_AT_name("int32_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$49, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$49	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$49)

$C$DW$T$50	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$49)

	.dwendtag $C$DW$TU$50


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$32, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33
$C$DW$T$33	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$33, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$33


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54
$C$DW$50	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$33)

$C$DW$T$54	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$50)

	.dwendtag $C$DW$TU$54


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
	.dwattr $C$DW$T$19, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/inc/hw_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x17)

	.dwendtag $C$DW$TU$19


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56
$C$DW$51	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$19)

$C$DW$T$56	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$51)

	.dwendtag $C$DW$TU$56


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

