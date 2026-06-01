;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Sun May 31 21:09:06 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src/adc_iface.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen Unix v25.11.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP")
	.data
	.align	1
	.elfsym	||s_iu_offset||,SYM_SIZE(1),SYM_BLOCKED(1)
||s_iu_offset||:
	.bits		0x800,16
			; s_iu_offset @ 0

$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("s_iu_offset")
	.dwattr $C$DW$1, DW_AT_linkage_name("s_iu_offset")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr ||s_iu_offset||]
	.dwattr $C$DW$1, DW_AT_decl_file("../src/adc_iface.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$1, DW_AT_decl_column(0x1a)

	.data
	.align	1
	.elfsym	||s_iv_offset||,SYM_SIZE(1),SYM_BLOCKED(1)
||s_iv_offset||:
	.bits		0x800,16
			; s_iv_offset @ 0

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("s_iv_offset")
	.dwattr $C$DW$2, DW_AT_linkage_name("s_iv_offset")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr ||s_iv_offset||]
	.dwattr $C$DW$2, DW_AT_decl_file("../src/adc_iface.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$2, DW_AT_decl_column(0x1a)

	.data
	.align	1
	.elfsym	||s_iw_offset||,SYM_SIZE(1),SYM_BLOCKED(1)
||s_iw_offset||:
	.bits		0x800,16
			; s_iw_offset @ 0

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("s_iw_offset")
	.dwattr $C$DW$3, DW_AT_linkage_name("s_iw_offset")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_addr ||s_iw_offset||]
	.dwattr $C$DW$3, DW_AT_decl_file("../src/adc_iface.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$3, DW_AT_decl_column(0x1a)

	.global	||g_dbg_iu_raw||
	.bss	||g_dbg_iu_raw||,1,1,0
$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("g_dbg_iu_raw")
	.dwattr $C$DW$4, DW_AT_linkage_name("g_dbg_iu_raw")
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr ||g_dbg_iu_raw||]
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("../src/adc_iface.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x12)
	.dwattr $C$DW$4, DW_AT_decl_column(0x13)

	.global	||g_dbg_iv_raw||
	.bss	||g_dbg_iv_raw||,1,1,0
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("g_dbg_iv_raw")
	.dwattr $C$DW$5, DW_AT_linkage_name("g_dbg_iv_raw")
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr ||g_dbg_iv_raw||]
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("../src/adc_iface.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x13)
	.dwattr $C$DW$5, DW_AT_decl_column(0x13)

	.global	||g_dbg_iw_raw||
	.bss	||g_dbg_iw_raw||,1,1,0
$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("g_dbg_iw_raw")
	.dwattr $C$DW$6, DW_AT_linkage_name("g_dbg_iw_raw")
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr ||g_dbg_iw_raw||]
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("../src/adc_iface.c")
	.dwattr $C$DW$6, DW_AT_decl_line(0x14)
	.dwattr $C$DW$6, DW_AT_decl_column(0x13)

	.global	||g_dbg_vbus_raw||
	.bss	||g_dbg_vbus_raw||,1,1,0
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("g_dbg_vbus_raw")
	.dwattr $C$DW$7, DW_AT_linkage_name("g_dbg_vbus_raw")
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr ||g_dbg_vbus_raw||]
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("../src/adc_iface.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x15)
	.dwattr $C$DW$7, DW_AT_decl_column(0x13)

	.sblock	".bss"
	.sblock	".data"
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TIagqBpcTr7 /tmp/TIagqjd9GoX --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TIagqHylELb 
	.sect	".text:adc_read_vbus"
	.clink
	.global	||adc_read_vbus||

$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("adc_read_vbus")
	.dwattr $C$DW$8, DW_AT_low_pc(||adc_read_vbus||)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_linkage_name("adc_read_vbus")
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$8, DW_AT_decl_file("../src/adc_iface.c")
	.dwattr $C$DW$8, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$8, DW_AT_decl_column(0x07)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/adc_iface.c",line 76,column 1,is_stmt,address ||adc_read_vbus||,isa 0

	.dwfde $C$DW$CIE, ||adc_read_vbus||

;***************************************************************
;* FNAME: adc_read_vbus                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||adc_read_vbus||:
;* AL    assigned to c
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("c")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0b03)        ; [CPU_ALU] |923| 
	.dwpsn	file "../src/adc_iface.c",line 79,column 5,is_stmt,isa 0
        MOVZ      AR6,AL                ; [CPU_ALU] |79| 
        MOV32     R1H,XAR6              ; [CPU_FPU] |79| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVIZ     R0H,#15389            ; [CPU_FPU] |79| 
        MOVW      DP,#||g_dbg_vbus_raw|| ; [CPU_ARAU] 
        UI32TOF32 R1H,R1H               ; [CPU_FPU] |79| 
        MOVXI     R0H,#36700            ; [CPU_FPU] |79| 
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |79| 
	.dwpsn	file "../src/adc_iface.c",line 78,column 5,is_stmt,isa 0
        MOV       @||g_dbg_vbus_raw||,AL ; [CPU_ALU] |78| 
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$8, DW_AT_TI_end_file("../src/adc_iface.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0x50)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	".text:adc_read_phase_currents"
	.clink
	.global	||adc_read_phase_currents||

$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("adc_read_phase_currents")
	.dwattr $C$DW$11, DW_AT_low_pc(||adc_read_phase_currents||)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_linkage_name("adc_read_phase_currents")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("../src/adc_iface.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$11, DW_AT_decl_column(0x06)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/adc_iface.c",line 45,column 1,is_stmt,address ||adc_read_phase_currents||,isa 0

	.dwfde $C$DW$CIE, ||adc_read_phase_currents||
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_name("out")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: adc_read_phase_currents       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||adc_read_phase_currents||:
;* R2    assigned to $O$C4
;* R0    assigned to $O$C5
;* AR4   assigned to out
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("out")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg12]

;* AL    assigned to cu
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("cu")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]

;* AH    assigned to cv
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("cv")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg1]

;* AR6   assigned to cw
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("cw")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg16]

;* AR7   assigned to offset
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("offset")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg18]

;* AR7   assigned to offset
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("offset")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg18]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x0b40)        ; [CPU_ALU] |923| 
        MOV       AH,*(0:0x0b21)        ; [CPU_ALU] |923| 
        MOV       AR6,*(0:0x0b02)       ; [CPU_ALU] |923| 
        MOVW      DP,#||g_dbg_iu_raw||  ; [CPU_ARAU] 
	.dwpsn	file "../src/adc_iface.c",line 50,column 5,is_stmt,isa 0
        MOV       @||g_dbg_iu_raw||,AL  ; [CPU_ALU] |50| 
	.dwpsn	file "../src/adc_iface.c",line 51,column 5,is_stmt,isa 0
        MOV       @||g_dbg_iv_raw||,AH  ; [CPU_ALU] |51| 
	.dwpsn	file "../src/adc_iface.c",line 52,column 5,is_stmt,isa 0
        MOV       @||g_dbg_iw_raw||,AR6 ; [CPU_ALU] |52| 
        MOVW      DP,#||s_iu_offset||   ; [CPU_ARAU] 
	.dwpsn	file "../src/adc_iface.c",line 40,column 1,is_stmt,isa 0
        MOVZ      AR7,@||s_iu_offset||  ; [CPU_ALU] |40| 
	.dwpsn	file "../src/adc_iface.c",line 54,column 5,is_stmt,isa 0
        MOVU      ACC,AL                ; [CPU_ALU] |54| 
        SUBL      ACC,XAR7              ; [CPU_ALU] |54| 
        MOV32     R1H,ACC               ; [CPU_FPU] |54| 
        NOP       ; [CPU_ALU] 
	.dwpsn	file "../src/adc_iface.c",line 40,column 1,is_stmt,isa 0
        MOV       AL,@||s_iv_offset||   ; [CPU_ALU] |40| 
        MOVZ      AR7,@||s_iw_offset||  ; [CPU_ALU] |40| 
	.dwpsn	file "../src/adc_iface.c",line 56,column 5,is_stmt,isa 0
        MOVU      ACC,AR6               ; [CPU_ALU] |56| 
	.dwpsn	file "../src/adc_iface.c",line 54,column 5,is_stmt,isa 0
        I32TOF32  R1H,R1H               ; [CPU_FPU] |54| 
	.dwpsn	file "../src/adc_iface.c",line 56,column 5,is_stmt,isa 0
        MOVZ      AR6,AR7               ; [CPU_ALU] |56| 
	.dwpsn	file "../src/adc_iface.c",line 54,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15403            ; [CPU_FPU] |54| 
        MOVXI     R0H,#28087            ; [CPU_FPU] |54| 
        MPYF32    R2H,R0H,R1H           ; [CPU_FPU] |54| 
	.dwpsn	file "../src/adc_iface.c",line 56,column 5,is_stmt,isa 0
        SUBL      ACC,XAR6              ; [CPU_ALU] |56| 
        MOV32     R1H,ACC               ; [CPU_FPU] |56| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVIZ     R0H,#15403            ; [CPU_FPU] |56| 
        I32TOF32  R3H,R1H               ; [CPU_FPU] |56| 
        MOVXI     R0H,#28087            ; [CPU_FPU] |56| 
        MPYF32    R0H,R0H,R3H           ; [CPU_FPU] |56| 
	.dwpsn	file "../src/adc_iface.c",line 66,column 5,is_stmt,isa 0
        MOV32     R1H,R2H               ; [CPU_FPU] |66| 
        NEGF32    R1H,R1H               ; [CPU_FPU] |66| 
	.dwpsn	file "../src/adc_iface.c",line 54,column 5,is_stmt,isa 0

        SUBF32    R1H,R1H,R0H           ; [CPU_FPU] |66| 
||      MOV32     *+XAR4[0],R2H         ; [CPU_FPU] |54| 

	.dwpsn	file "../src/adc_iface.c",line 56,column 5,is_stmt,isa 0
        MOV32     *+XAR4[4],R0H         ; [CPU_FPU] |56| 
	.dwpsn	file "../src/adc_iface.c",line 66,column 5,is_stmt,isa 0
        MOV32     *+XAR4[2],R1H         ; [CPU_FPU] |66| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("../src/adc_iface.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x49)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text:adc_init"
	.clink
	.global	||adc_init||

$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("adc_init")
	.dwattr $C$DW$20, DW_AT_low_pc(||adc_init||)
	.dwattr $C$DW$20, DW_AT_high_pc(0x00)
	.dwattr $C$DW$20, DW_AT_linkage_name("adc_init")
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("../src/adc_iface.c")
	.dwattr $C$DW$20, DW_AT_decl_line(0x21)
	.dwattr $C$DW$20, DW_AT_decl_column(0x06)
	.dwattr $C$DW$20, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/adc_iface.c",line 34,column 1,is_stmt,address ||adc_init||,isa 0

	.dwfde $C$DW$CIE, ||adc_init||

;***************************************************************
;* FNAME: adc_init                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||adc_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$20, DW_AT_TI_end_file("../src/adc_iface.c")
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x25)
	.dwattr $C$DW$20, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$20

	.sect	".text:adc_calibrate_offsets"
	.clink
	.global	||adc_calibrate_offsets||

$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("adc_calibrate_offsets")
	.dwattr $C$DW$22, DW_AT_low_pc(||adc_calibrate_offsets||)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_linkage_name("adc_calibrate_offsets")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("../src/adc_iface.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$22, DW_AT_decl_column(0x06)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../src/adc_iface.c",line 96,column 1,is_stmt,address ||adc_calibrate_offsets||,isa 0

	.dwfde $C$DW$CIE, ||adc_calibrate_offsets||
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("n")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: adc_calibrate_offsets         FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||adc_calibrate_offsets||:
;* AR2   assigned to $O$R2
;* T     assigned to $O$R3
;* AR5   assigned to $O$R4
;* AR0   assigned to n
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("n")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg4]

;* PL    assigned to su
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("su")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg2]

;* AR7   assigned to sv
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("sv")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg18]

;* AR4   assigned to sw
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("sw")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src/adc_iface.c",line 97,column 17,is_stmt,isa 0
        MOV       P,#0                  ; [CPU_ALU] |97| 
	.dwpsn	file "../src/adc_iface.c",line 99,column 16,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_ALU] |99| 
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../src/adc_iface.c",line 96,column 1,is_stmt,isa 0
        MOVZ      AR0,AL                ; [CPU_ALU] |96| 
	.dwpsn	file "../src/adc_iface.c",line 97,column 17,is_stmt,isa 0
        MOVL      XAR7,P                ; [CPU_FPU] |97| 
        MOVL      XAR4,P                ; [CPU_FPU] |97| 
	.dwpsn	file "../src/adc_iface.c",line 99,column 16,is_stmt,isa 0
        B         ||$C$L2||,EQ          ; [CPU_ALU] |99| 
        ; branchcc occurs ; [] |99| 
        MOVZ      AR6,AR0               ; [CPU_ALU] 
        SUBB      XAR6,#1               ; [CPU_ARAU] 
||$C$L1||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 787,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7403)        ; [CPU_ALU] |787| 
        TBIT      AL,#0                 ; [CPU_ALU] |787| 
        B         ||$C$L1||,NTC         ; [CPU_ALU] |787| 
        ; branchcc occurs ; [] |787| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 819,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |819| 
        MOV       *(0:0x7404),AL        ; [CPU_ALU] |819| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR2,*(0:0x0b40)       ; [CPU_ALU] |923| 
        MOVL      ACC,P                 ; [CPU_ALU] |923| 
        MOV       T,*(0:0x0b21)         ; [CPU_ALU] |923| 
	.dwpsn	file "../src/adc_iface.c",line 106,column 9,is_stmt,isa 0
        ADDU      ACC,AR2               ; [CPU_ALU] |106| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 923,column 5,is_stmt,isa 0
        MOV       AR5,*(0:0x0b02)       ; [CPU_FPU] |923| 
	.dwpsn	file "../src/adc_iface.c",line 106,column 9,is_stmt,isa 0
        MOVL      P,ACC                 ; [CPU_ALU] |106| 
	.dwpsn	file "../src/adc_iface.c",line 99,column 16,is_stmt,isa 0
        MOVL      ACC,XAR7              ; [CPU_ALU] |99| 
	.dwpsn	file "../src/adc_iface.c",line 107,column 9,is_stmt,isa 0
        ADDU      ACC,T                 ; [CPU_ALU] |107| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |107| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |107| 
	.dwpsn	file "../src/adc_iface.c",line 108,column 9,is_stmt,isa 0
        ADDU      ACC,AR5               ; [CPU_ALU] |108| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |108| 
	.dwpsn	file "../src/adc_iface.c",line 99,column 16,is_stmt,isa 0
        BANZ      ||$C$L1||,AR6--       ; [CPU_ALU] |99| 
        ; branchcc occurs ; [] |99| 
||$C$L2||:    
	.dwpsn	file "../src/adc_iface.c",line 110,column 5,is_stmt,isa 0
        MOVZ      AR6,AR0               ; [CPU_ALU] |110| 
        MOVB      ACC,#0                ; [CPU_ALU] |110| 
        MOVW      DP,#||s_iu_offset||   ; [CPU_ARAU] 
        RPT       #31
||     SUBCUL    ACC,XAR6              ; [CPU_ALU] |110| 
	.dwpsn	file "../src/adc_iface.c",line 111,column 5,is_stmt,isa 0
        MOVZ      AR6,AR0               ; [CPU_ALU] |111| 
	.dwpsn	file "../src/adc_iface.c",line 110,column 5,is_stmt,isa 0
        MOV       @||s_iu_offset||,P    ; [CPU_ALU] |110| 
	.dwpsn	file "../src/adc_iface.c",line 111,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |111| 
	.dwpsn	file "../src/adc_iface.c",line 110,column 5,is_stmt,isa 0
        MOVL      P,XAR7                ; [CPU_ALU] |110| 
	.dwpsn	file "../src/adc_iface.c",line 111,column 5,is_stmt,isa 0
        RPT       #31
||     SUBCUL    ACC,XAR6              ; [CPU_ALU] |111| 
        MOV       @||s_iv_offset||,P    ; [CPU_ALU] |111| 
	.dwpsn	file "../src/adc_iface.c",line 112,column 5,is_stmt,isa 0
        MOVZ      AR6,AR0               ; [CPU_ALU] |112| 
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 9
        MOVB      ACC,#0                ; [CPU_ALU] |112| 
	.dwpsn	file "../src/adc_iface.c",line 111,column 5,is_stmt,isa 0
        MOVL      P,XAR4                ; [CPU_ALU] |111| 
	.dwpsn	file "../src/adc_iface.c",line 112,column 5,is_stmt,isa 0
        RPT       #31
||     SUBCUL    ACC,XAR6              ; [CPU_ALU] |112| 
        MOV       @||s_iw_offset||,P    ; [CPU_ALU] |112| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$22, DW_AT_TI_end_file("../src/adc_iface.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x71)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22


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

$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$29	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$29, DW_AT_name("ADC_INT_NUMBER1")
	.dwattr $C$DW$29, DW_AT_const_value(0x00)
	.dwattr $C$DW$29, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0x126)
	.dwattr $C$DW$29, DW_AT_decl_column(0x05)

$C$DW$30	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$30, DW_AT_name("ADC_INT_NUMBER2")
	.dwattr $C$DW$30, DW_AT_const_value(0x01)
	.dwattr $C$DW$30, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x127)
	.dwattr $C$DW$30, DW_AT_decl_column(0x05)

$C$DW$31	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$31, DW_AT_name("ADC_INT_NUMBER3")
	.dwattr $C$DW$31, DW_AT_const_value(0x02)
	.dwattr $C$DW$31, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x128)
	.dwattr $C$DW$31, DW_AT_decl_column(0x05)

$C$DW$32	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$32, DW_AT_name("ADC_INT_NUMBER4")
	.dwattr $C$DW$32, DW_AT_const_value(0x03)
	.dwattr $C$DW$32, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0x129)
	.dwattr $C$DW$32, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$22, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x125)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("ADC_IntNumber")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$33	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$33, DW_AT_name("ADC_SOC_NUMBER0")
	.dwattr $C$DW$33, DW_AT_const_value(0x00)
	.dwattr $C$DW$33, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$33, DW_AT_decl_line(0x145)
	.dwattr $C$DW$33, DW_AT_decl_column(0x05)

$C$DW$34	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$34, DW_AT_name("ADC_SOC_NUMBER1")
	.dwattr $C$DW$34, DW_AT_const_value(0x01)
	.dwattr $C$DW$34, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0x146)
	.dwattr $C$DW$34, DW_AT_decl_column(0x05)

$C$DW$35	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$35, DW_AT_name("ADC_SOC_NUMBER2")
	.dwattr $C$DW$35, DW_AT_const_value(0x02)
	.dwattr $C$DW$35, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0x147)
	.dwattr $C$DW$35, DW_AT_decl_column(0x05)

$C$DW$36	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$36, DW_AT_name("ADC_SOC_NUMBER3")
	.dwattr $C$DW$36, DW_AT_const_value(0x03)
	.dwattr $C$DW$36, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$36, DW_AT_decl_line(0x148)
	.dwattr $C$DW$36, DW_AT_decl_column(0x05)

$C$DW$37	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$37, DW_AT_name("ADC_SOC_NUMBER4")
	.dwattr $C$DW$37, DW_AT_const_value(0x04)
	.dwattr $C$DW$37, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$37, DW_AT_decl_line(0x149)
	.dwattr $C$DW$37, DW_AT_decl_column(0x05)

$C$DW$38	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$38, DW_AT_name("ADC_SOC_NUMBER5")
	.dwattr $C$DW$38, DW_AT_const_value(0x05)
	.dwattr $C$DW$38, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$38, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$38, DW_AT_decl_column(0x05)

$C$DW$39	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$39, DW_AT_name("ADC_SOC_NUMBER6")
	.dwattr $C$DW$39, DW_AT_const_value(0x06)
	.dwattr $C$DW$39, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$39, DW_AT_decl_column(0x05)

$C$DW$40	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$40, DW_AT_name("ADC_SOC_NUMBER7")
	.dwattr $C$DW$40, DW_AT_const_value(0x07)
	.dwattr $C$DW$40, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$40, DW_AT_decl_column(0x05)

$C$DW$41	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$41, DW_AT_name("ADC_SOC_NUMBER8")
	.dwattr $C$DW$41, DW_AT_const_value(0x08)
	.dwattr $C$DW$41, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$41, DW_AT_decl_column(0x05)

$C$DW$42	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$42, DW_AT_name("ADC_SOC_NUMBER9")
	.dwattr $C$DW$42, DW_AT_const_value(0x09)
	.dwattr $C$DW$42, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$42, DW_AT_decl_column(0x05)

$C$DW$43	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$43, DW_AT_name("ADC_SOC_NUMBER10")
	.dwattr $C$DW$43, DW_AT_const_value(0x0a)
	.dwattr $C$DW$43, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$43, DW_AT_decl_column(0x05)

$C$DW$44	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$44, DW_AT_name("ADC_SOC_NUMBER11")
	.dwattr $C$DW$44, DW_AT_const_value(0x0b)
	.dwattr $C$DW$44, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x150)
	.dwattr $C$DW$44, DW_AT_decl_column(0x05)

$C$DW$45	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$45, DW_AT_name("ADC_SOC_NUMBER12")
	.dwattr $C$DW$45, DW_AT_const_value(0x0c)
	.dwattr $C$DW$45, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x151)
	.dwattr $C$DW$45, DW_AT_decl_column(0x05)

$C$DW$46	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$46, DW_AT_name("ADC_SOC_NUMBER13")
	.dwattr $C$DW$46, DW_AT_const_value(0x0d)
	.dwattr $C$DW$46, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x152)
	.dwattr $C$DW$46, DW_AT_decl_column(0x05)

$C$DW$47	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$47, DW_AT_name("ADC_SOC_NUMBER14")
	.dwattr $C$DW$47, DW_AT_const_value(0x0e)
	.dwattr $C$DW$47, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x153)
	.dwattr $C$DW$47, DW_AT_decl_column(0x05)

$C$DW$48	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$48, DW_AT_name("ADC_SOC_NUMBER15")
	.dwattr $C$DW$48, DW_AT_const_value(0x0f)
	.dwattr $C$DW$48, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x154)
	.dwattr $C$DW$48, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$24, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x144)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("ADC_SOCNumber")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x155)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$25


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_name("_MATH_Vec3_")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x06)
$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$49, DW_AT_name("value")
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$49, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$49, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$21, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("MATH_Vec3")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$26, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("FOC_Iabc_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$50	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$28)

$C$DW$T$29	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$50)

	.dwendtag $C$DW$TU$29


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


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37
$C$DW$T$37	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$37, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$37, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$38


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$51	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$38)

$C$DW$T$41	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$51)

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42
$C$DW$52	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$38)

$C$DW$T$42	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$52)

	.dwendtag $C$DW$TU$42


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


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20

$C$DW$T$20	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x06)
$C$DW$53	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$53, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$20

	.dwendtag $C$DW$TU$20


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


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52
$C$DW$T$52	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$52, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$52, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$52

