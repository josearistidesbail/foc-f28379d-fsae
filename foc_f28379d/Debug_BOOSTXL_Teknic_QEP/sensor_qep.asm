;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Sat May 30 15:57:51 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen Unix v25.11.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP")

;**************************************************************
;* FUNCTION SYNONYMS                                          *
;**************************************************************
	.global	||sensor_capture_zero||
||sensor_capture_zero||	.set ||sensor_qep_capture_zero||
	.global	||g_dbg_qep_status||
	.bss	||g_dbg_qep_status||,1,1,0
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("g_dbg_qep_status")
	.dwattr $C$DW$1, DW_AT_linkage_name("g_dbg_qep_status")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr ||g_dbg_qep_status||]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x18)
	.dwattr $C$DW$1, DW_AT_decl_column(0x13)

	.global	||g_dbg_qep_direction||
	.bss	||g_dbg_qep_direction||,1,1,0
$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("g_dbg_qep_direction")
	.dwattr $C$DW$2, DW_AT_linkage_name("g_dbg_qep_direction")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr ||g_dbg_qep_direction||]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x19)
	.dwattr $C$DW$2, DW_AT_decl_column(0x13)

	.global	||g_qep_theta_elec||
	.data
	.align	2
	.elfsym	||g_qep_theta_elec||,SYM_SIZE(2),SYM_BLOCKED(1)
||g_qep_theta_elec||:
	.xfloat	$strtod("0x0p+0")		; g_qep_theta_elec @ 0

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("g_qep_theta_elec")
	.dwattr $C$DW$3, DW_AT_linkage_name("g_qep_theta_elec")
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr ||g_qep_theta_elec||]
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x11)
	.dwattr $C$DW$3, DW_AT_decl_column(0x14)

	.global	||g_qep_omega_elec||
	.data
	.align	2
	.elfsym	||g_qep_omega_elec||,SYM_SIZE(2),SYM_BLOCKED(1)
||g_qep_omega_elec||:
	.xfloat	$strtod("0x0p+0")		; g_qep_omega_elec @ 0

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("g_qep_omega_elec")
	.dwattr $C$DW$4, DW_AT_linkage_name("g_qep_omega_elec")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr ||g_qep_omega_elec||]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x12)
	.dwattr $C$DW$4, DW_AT_decl_column(0x14)

	.global	||g_qep_mech_offset_cnt||
	.data
	.align	2
	.elfsym	||g_qep_mech_offset_cnt||,SYM_SIZE(2),SYM_BLOCKED(1)
||g_qep_mech_offset_cnt||:
	.bits		0,32
			; g_qep_mech_offset_cnt @ 0

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("g_qep_mech_offset_cnt")
	.dwattr $C$DW$5, DW_AT_linkage_name("g_qep_mech_offset_cnt")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr ||g_qep_mech_offset_cnt||]
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x13)
	.dwattr $C$DW$5, DW_AT_decl_column(0x14)

	.global	||g_dbg_qep_count||
	.bss	||g_dbg_qep_count||,2,1,1
$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("g_dbg_qep_count")
	.dwattr $C$DW$6, DW_AT_linkage_name("g_dbg_qep_count")
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr ||g_dbg_qep_count||]
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c")
	.dwattr $C$DW$6, DW_AT_decl_line(0x16)
	.dwattr $C$DW$6, DW_AT_decl_column(0x13)

	.global	||g_dbg_qep_index_latch||
	.bss	||g_dbg_qep_index_latch||,2,1,1
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("g_dbg_qep_index_latch")
	.dwattr $C$DW$7, DW_AT_linkage_name("g_dbg_qep_index_latch")
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr ||g_dbg_qep_index_latch||]
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x17)
	.dwattr $C$DW$7, DW_AT_decl_column(0x13)

	.bss	||s_last_cnt||,2,1,1
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("s_last_cnt")
	.dwattr $C$DW$8, DW_AT_linkage_name("s_last_cnt")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr ||s_last_cnt||]
	.dwattr $C$DW$8, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c")
	.dwattr $C$DW$8, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$8, DW_AT_decl_column(0x10)

	.bss	||s_omega_lpf||,2,1,1
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("s_omega_lpf")
	.dwattr $C$DW$9, DW_AT_linkage_name("s_omega_lpf")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr ||s_omega_lpf||]
	.dwattr $C$DW$9, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$9, DW_AT_decl_column(0x10)

	.sblock	".bss"
	.sblock	".data"
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TI26AbhyWVV /tmp/TI26AATIg0Q --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TI26A1YjPXB 
	.sect	".text:sensor_qep_update_speed_slow"
	.clink
	.global	||sensor_qep_update_speed_slow||

$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("sensor_qep_update_speed_slow")
	.dwattr $C$DW$10, DW_AT_low_pc(||sensor_qep_update_speed_slow||)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_linkage_name("sensor_qep_update_speed_slow")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c")
	.dwattr $C$DW$10, DW_AT_decl_line(0x28)
	.dwattr $C$DW$10, DW_AT_decl_column(0x06)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 41,column 1,is_stmt,address ||sensor_qep_update_speed_slow||,isa 0

	.dwfde $C$DW$CIE, ||sensor_qep_update_speed_slow||

;***************************************************************
;* FNAME: sensor_qep_update_speed_slow  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||sensor_qep_update_speed_slow||:
;* R3    assigned to $O$C1
;* R0    assigned to $O$v1
;* AR7   assigned to cnt
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("cnt")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg18]

;* AR6   assigned to dcnt
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("dcnt")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 489,column 5,is_stmt,isa 0
        MOV32     XAR7,*(0:0x5100)      ; [CPU_FPU] |489| 
        MOVW      DP,#||s_last_cnt||    ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 43,column 18,is_stmt,isa 0
        MOVL      ACC,XAR7              ; [CPU_ALU] |43| 
        SUBL      ACC,@||s_last_cnt||   ; [CPU_ALU] |43| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |43| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 47,column 5,is_stmt,isa 0
        MOV       ACC,#8000             ; [CPU_ALU] |47| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 44,column 5,is_stmt,isa 0
        MOVL      @||s_last_cnt||,XAR7  ; [CPU_ALU] |44| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 47,column 5,is_stmt,isa 0
        CMPL      ACC,XAR6              ; [CPU_ALU] |47| 
        B         ||$C$L1||,GEQ         ; [CPU_ALU] |47| 
        ; branchcc occurs ; [] |47| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 47,column 37,is_stmt,isa 0
        SUB       ACC,#125 << 7         ; [CPU_ALU] |47| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |47| 
||$C$L1||:    
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 48,column 5,is_stmt,isa 0
        MOV       ACC,#-125 << 6        ; [CPU_ALU] |48| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |48| 
        B         ||$C$L2||,LEQ         ; [CPU_ALU] |48| 
        ; branchcc occurs ; [] |48| 
        MOVL      ACC,XAR6              ; [CPU_ALU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 48,column 37,is_stmt,isa 0
        ADD       ACC,#125 << 7         ; [CPU_ALU] |48| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |48| 
||$C$L2||:    
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 54,column 5,is_stmt,isa 0
        MOV32     R1H,XAR6              ; [CPU_FPU] |54| 
        NOP       ; [CPU_ALU] 
        MOVIZ     R0H,#14467            ; [CPU_FPU] |54| 
        MOVIZ     R3H,#16585            ; [CPU_FPU] |54| 
        MOVXI     R0H,#4719             ; [CPU_FPU] |54| 
        I32TOF32  R2H,R1H               ; [CPU_FPU] |54| 
        MOVXI     R3H,#4059             ; [CPU_FPU] |54| 
        MPYF32    R2H,R0H,R2H           ; [CPU_FPU] |54| 
        MOVIZ     R1H,#15948            ; [CPU_FPU] |54| 
        MOVIZ     R0H,#17530            ; [CPU_FPU] |54| 
        MPYF32    R2H,R3H,R2H           ; [CPU_FPU] |54| 
        MOVXI     R0H,#1                ; [CPU_FPU] |54| 
        MPYF32    R2H,R0H,R2H           ; [CPU_FPU] |54| 
        MOV32     R3H,@||s_omega_lpf||  ; [CPU_FPU] |54| 
        SUBF32    R2H,R2H,R3H           ; [CPU_FPU] |54| 
        MOVXI     R1H,#52429            ; [CPU_FPU] |54| 
        MPYF32    R0H,R1H,R2H           ; [CPU_FPU] |54| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R3H           ; [CPU_FPU] |54| 
        NOP       ; [CPU_ALU] 
        MOV32     @||s_omega_lpf||,R0H  ; [CPU_FPU] |54| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 55,column 5,is_stmt,isa 0
        MPYF32    R1H,R0H,#16512        ; [CPU_FPU] |55| 
        MOVW      DP,#||g_qep_omega_elec|| ; [CPU_ARAU] 
        MOV32     @||g_qep_omega_elec||,R1H ; [CPU_FPU] |55| 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x38)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text:sensor_qep_capture_zero"
	.clink
	.global	||sensor_qep_capture_zero||

$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("sensor_qep_capture_zero")
	.dwattr $C$DW$14, DW_AT_low_pc(||sensor_qep_capture_zero||)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_linkage_name("sensor_qep_capture_zero")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c")
	.dwattr $C$DW$14, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$14, DW_AT_decl_column(0x06)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 60,column 1,is_stmt,address ||sensor_qep_capture_zero||,isa 0

	.dwfde $C$DW$CIE, ||sensor_qep_capture_zero||

;***************************************************************
;* FNAME: sensor_qep_capture_zero       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||sensor_qep_capture_zero||:
;* AL    assigned to $O$R1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 489,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x5100)       ; [CPU_FPU] |489| 
        MOVW      DP,#||g_qep_mech_offset_cnt|| ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 61,column 5,is_stmt,isa 0
        MOVL      @||g_qep_mech_offset_cnt||,ACC ; [CPU_ALU] |61| 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$14, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0x3e)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text:sensor_init"
	.clink
	.global	||sensor_init||

$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("sensor_init")
	.dwattr $C$DW$16, DW_AT_low_pc(||sensor_init||)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_linkage_name("sensor_init")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c")
	.dwattr $C$DW$16, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$16, DW_AT_decl_column(0x06)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 31,column 1,is_stmt,address ||sensor_init||,isa 0

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
        MOVB      XAR6,#0               ; [CPU_ALU] |516| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 36,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |36| 
        MOVW      DP,#||s_omega_lpf||   ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 35,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |35| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 516,column 5,is_stmt,isa 0
        MOV32     *(0:0x5100),XAR6      ; [CPU_FPU] |516| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 36,column 5,is_stmt,isa 0
        MOV32     @||s_omega_lpf||,R0H  ; [CPU_FPU] |36| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c",line 35,column 5,is_stmt,isa 0
        MOVL      @||s_last_cnt||,ACC   ; [CPU_ALU] |35| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/sensor_qep.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x25)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16


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


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$24, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("int16_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$18	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$25)

$C$DW$T$26	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$18)

	.dwendtag $C$DW$TU$26


$C$DW$TU$9	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$9
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$9


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$27, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$19	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$28)

$C$DW$T$29	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$19)

	.dwendtag $C$DW$TU$29


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


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$31, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("int32_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33
$C$DW$20	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$32)

$C$DW$T$33	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$20)

	.dwendtag $C$DW$TU$33


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$19, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$20


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37
$C$DW$21	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$20)

$C$DW$T$37	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$21)

	.dwendtag $C$DW$TU$37


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


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("float32_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$39, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/inc/hw_types.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x17)

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$22	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$39)

$C$DW$T$40	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$22)

	.dwendtag $C$DW$TU$40


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

