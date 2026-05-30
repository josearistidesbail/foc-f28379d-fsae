;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Sat May 30 20:24:43 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../imported/hal/hal_adc.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen Unix v25.11.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("AdcSetMode")
	.dwattr $C$DW$1, DW_AT_linkage_name("AdcSetMode")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/common/include/F2837xD_GlobalPrototypes.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x87)
	.dwattr $C$DW$1, DW_AT_decl_column(0x0d)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$20)

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("F28x_usDelay")
	.dwattr $C$DW$5, DW_AT_linkage_name("F28x_usDelay")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/common/include/F2837xD_Examples.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x176)
	.dwattr $C$DW$5, DW_AT_decl_column(0x0d)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$12)

	.dwendtag $C$DW$5

	.data
	.align	1
	.elfsym	||s_ia_zero||,SYM_SIZE(1),SYM_BLOCKED(1)
||s_ia_zero||:
	.bits		0x800,16
			; s_ia_zero @ 0

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("s_ia_zero")
	.dwattr $C$DW$7, DW_AT_linkage_name("s_ia_zero")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_addr ||s_ia_zero||]
	.dwattr $C$DW$7, DW_AT_decl_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x06)
	.dwattr $C$DW$7, DW_AT_decl_column(0x11)

	.data
	.align	1
	.elfsym	||s_ib_zero||,SYM_SIZE(1),SYM_BLOCKED(1)
||s_ib_zero||:
	.bits		0x800,16
			; s_ib_zero @ 0

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("s_ib_zero")
	.dwattr $C$DW$8, DW_AT_linkage_name("s_ib_zero")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_addr ||s_ib_zero||]
	.dwattr $C$DW$8, DW_AT_decl_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$8, DW_AT_decl_line(0x07)
	.dwattr $C$DW$8, DW_AT_decl_column(0x11)

	.data
	.align	1
	.elfsym	||s_ic_zero||,SYM_SIZE(1),SYM_BLOCKED(1)
||s_ic_zero||:
	.bits		0x800,16
			; s_ic_zero @ 0

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("s_ic_zero")
	.dwattr $C$DW$9, DW_AT_linkage_name("s_ic_zero")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_addr ||s_ic_zero||]
	.dwattr $C$DW$9, DW_AT_decl_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x08)
	.dwattr $C$DW$9, DW_AT_decl_column(0x11)

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("AdcaResultRegs")
	.dwattr $C$DW$10, DW_AT_linkage_name("AdcaResultRegs")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0x41a)
	.dwattr $C$DW$10, DW_AT_decl_column(0x28)

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("AdcbResultRegs")
	.dwattr $C$DW$11, DW_AT_linkage_name("AdcbResultRegs")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x41b)
	.dwattr $C$DW$11, DW_AT_decl_column(0x28)

$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("AdccResultRegs")
	.dwattr $C$DW$12, DW_AT_linkage_name("AdccResultRegs")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x41c)
	.dwattr $C$DW$12, DW_AT_decl_column(0x28)

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("PieCtrlRegs")
	.dwattr $C$DW$13, DW_AT_linkage_name("PieCtrlRegs")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$225)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x2b6)
	.dwattr $C$DW$13, DW_AT_decl_column(0x26)

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("AdcaRegs")
	.dwattr $C$DW$14, DW_AT_linkage_name("AdcaRegs")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$220)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x416)
	.dwattr $C$DW$14, DW_AT_decl_column(0x21)

$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("AdcbRegs")
	.dwattr $C$DW$15, DW_AT_linkage_name("AdcbRegs")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$220)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0x417)
	.dwattr $C$DW$15, DW_AT_decl_column(0x21)

$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("AdccRegs")
	.dwattr $C$DW$16, DW_AT_linkage_name("AdccRegs")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$220)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x418)
	.dwattr $C$DW$16, DW_AT_decl_column(0x21)

	.sblock	".data"
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TI7ImcJ37id /tmp/TI7Imin5G75 --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TI7ImWUQJDO 
	.sect	".text:hal_adc_set_zero_offsets"
	.clink
	.global	||hal_adc_set_zero_offsets||

$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("hal_adc_set_zero_offsets")
	.dwattr $C$DW$17, DW_AT_low_pc(||hal_adc_set_zero_offsets||)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_linkage_name("hal_adc_set_zero_offsets")
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x52)
	.dwattr $C$DW$17, DW_AT_decl_column(0x06)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/hal_adc.c",line 83,column 1,is_stmt,address ||hal_adc_set_zero_offsets||,isa 0

	.dwfde $C$DW$CIE, ||hal_adc_set_zero_offsets||
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("ia_zero")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg0]

$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_name("ib_zero")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg1]

$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_name("ic_zero")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: hal_adc_set_zero_offsets      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||hal_adc_set_zero_offsets||:
;* AL    assigned to ia_zero
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("ia_zero")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$239)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg0]

;* AH    assigned to ib_zero
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("ib_zero")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$239)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg1]

;* AR4   assigned to ic_zero
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("ic_zero")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$239)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||s_ib_zero||     ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/hal_adc.c",line 85,column 5,is_stmt,isa 0
        MOV       @||s_ib_zero||,AH     ; [CPU_ALU] |85| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 86,column 5,is_stmt,isa 0
        MOV       @||s_ic_zero||,AR4    ; [CPU_ALU] |86| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 84,column 5,is_stmt,isa 0
        MOV       @||s_ia_zero||,AL     ; [CPU_ALU] |84| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$17, DW_AT_TI_end_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0x57)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

	.sect	".text:hal_adc_read_vbus_pu"
	.clink
	.global	||hal_adc_read_vbus_pu||

$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("hal_adc_read_vbus_pu")
	.dwattr $C$DW$25, DW_AT_low_pc(||hal_adc_read_vbus_pu||)
	.dwattr $C$DW$25, DW_AT_high_pc(0x00)
	.dwattr $C$DW$25, DW_AT_linkage_name("hal_adc_read_vbus_pu")
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$25, DW_AT_decl_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$25, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$25, DW_AT_decl_column(0x07)
	.dwattr $C$DW$25, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/hal_adc.c",line 78,column 1,is_stmt,address ||hal_adc_read_vbus_pu||,isa 0

	.dwfde $C$DW$CIE, ||hal_adc_read_vbus_pu||

;***************************************************************
;* FNAME: hal_adc_read_vbus_pu          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||hal_adc_read_vbus_pu||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||AdcaResultRegs||+1 ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/hal_adc.c",line 79,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15589            ; [CPU_FPU] |79| 
        MOVIZ     R1H,#15658            ; [CPU_FPU] |79| 
        UI16TOF32 R2H,@$BLOCKED(||AdcaResultRegs||)+1 ; [CPU_FPU] |79| 
        MOVXI     R0H,#63252            ; [CPU_FPU] |79| 
        MPYF32    R0H,R0H,R2H           ; [CPU_FPU] |79| 
        MOVXI     R1H,#43691            ; [CPU_FPU] |79| 
        MPYF32    R0H,R1H,R0H           ; [CPU_FPU] |79| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$25, DW_AT_TI_end_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$25, DW_AT_TI_end_line(0x50)
	.dwattr $C$DW$25, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$25

	.sect	".text:hal_adc_read_raw_vbus"
	.clink
	.global	||hal_adc_read_raw_vbus||

$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("hal_adc_read_raw_vbus")
	.dwattr $C$DW$27, DW_AT_low_pc(||hal_adc_read_raw_vbus||)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_linkage_name("hal_adc_read_raw_vbus")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$27, DW_AT_decl_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$27, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/hal_adc.c",line 60,column 38,is_stmt,address ||hal_adc_read_raw_vbus||,isa 0

	.dwfde $C$DW$CIE, ||hal_adc_read_raw_vbus||

;***************************************************************
;* FNAME: hal_adc_read_raw_vbus         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||hal_adc_read_raw_vbus||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||AdcaResultRegs||+1 ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/hal_adc.c",line 60,column 40,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||AdcaResultRegs||)+1 ; [CPU_ALU] |60| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$27, DW_AT_TI_end_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x3c)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x44)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text:hal_adc_read_raw_ic"
	.clink
	.global	||hal_adc_read_raw_ic||

$C$DW$29	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$29, DW_AT_name("hal_adc_read_raw_ic")
	.dwattr $C$DW$29, DW_AT_low_pc(||hal_adc_read_raw_ic||)
	.dwattr $C$DW$29, DW_AT_high_pc(0x00)
	.dwattr $C$DW$29, DW_AT_linkage_name("hal_adc_read_raw_ic")
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$29, DW_AT_decl_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$29, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$29, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$29, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/hal_adc.c",line 59,column 38,is_stmt,address ||hal_adc_read_raw_ic||,isa 0

	.dwfde $C$DW$CIE, ||hal_adc_read_raw_ic||

;***************************************************************
;* FNAME: hal_adc_read_raw_ic           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||hal_adc_read_raw_ic||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||AdcaResultRegs|| ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/hal_adc.c",line 59,column 40,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||AdcaResultRegs||) ; [CPU_ALU] |59| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$29, DW_AT_TI_end_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$29, DW_AT_TI_end_line(0x3b)
	.dwattr $C$DW$29, DW_AT_TI_end_column(0x42)
	.dwendentry
	.dwendtag $C$DW$29

	.sect	".text:hal_adc_read_raw_ib"
	.clink
	.global	||hal_adc_read_raw_ib||

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("hal_adc_read_raw_ib")
	.dwattr $C$DW$31, DW_AT_low_pc(||hal_adc_read_raw_ib||)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_linkage_name("hal_adc_read_raw_ib")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$31, DW_AT_decl_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$31, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$31, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/hal_adc.c",line 58,column 38,is_stmt,address ||hal_adc_read_raw_ib||,isa 0

	.dwfde $C$DW$CIE, ||hal_adc_read_raw_ib||

;***************************************************************
;* FNAME: hal_adc_read_raw_ib           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||hal_adc_read_raw_ib||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||AdcbResultRegs|| ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/hal_adc.c",line 58,column 40,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||AdcbResultRegs||) ; [CPU_ALU] |58| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x3a)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x42)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text:hal_adc_read_raw_ia"
	.clink
	.global	||hal_adc_read_raw_ia||

$C$DW$33	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$33, DW_AT_name("hal_adc_read_raw_ia")
	.dwattr $C$DW$33, DW_AT_low_pc(||hal_adc_read_raw_ia||)
	.dwattr $C$DW$33, DW_AT_high_pc(0x00)
	.dwattr $C$DW$33, DW_AT_linkage_name("hal_adc_read_raw_ia")
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$33, DW_AT_decl_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$33, DW_AT_decl_line(0x39)
	.dwattr $C$DW$33, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$33, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/hal_adc.c",line 57,column 38,is_stmt,address ||hal_adc_read_raw_ia||,isa 0

	.dwfde $C$DW$CIE, ||hal_adc_read_raw_ia||

;***************************************************************
;* FNAME: hal_adc_read_raw_ia           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||hal_adc_read_raw_ia||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||AdccResultRegs|| ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/hal_adc.c",line 57,column 40,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||AdccResultRegs||) ; [CPU_ALU] |57| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$33, DW_AT_TI_end_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$33, DW_AT_TI_end_line(0x39)
	.dwattr $C$DW$33, DW_AT_TI_end_column(0x42)
	.dwendentry
	.dwendtag $C$DW$33

	.sect	".text:hal_adc_read_currents_pu"
	.clink
	.global	||hal_adc_read_currents_pu||

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("hal_adc_read_currents_pu")
	.dwattr $C$DW$35, DW_AT_low_pc(||hal_adc_read_currents_pu||)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_linkage_name("hal_adc_read_currents_pu")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$208)
	.dwattr $C$DW$35, DW_AT_decl_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$35, DW_AT_decl_column(0x0b)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../imported/hal/hal_adc.c",line 63,column 1,is_stmt,address ||hal_adc_read_currents_pu||,isa 0

	.dwfde $C$DW$CIE, ||hal_adc_read_currents_pu||

;***************************************************************
;* FNAME: hal_adc_read_currents_pu      FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||hal_adc_read_currents_pu||:
;* AL    assigned to ia_c
$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("ia_c")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$237)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg0]

;* AR7   assigned to ib_c
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("ib_c")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$237)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg18]

;* AR6   assigned to ic_c
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("ic_c")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$237)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg16]

;* R0    assigned to i
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("i")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$208)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_regx 0x29]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||AdccResultRegs|| ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/hal_adc.c",line 64,column 18,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||AdccResultRegs||) ; [CPU_ALU] |64| 
        MOVW      DP,#||s_ia_zero||     ; [CPU_ARAU] 
        SETC      SXM                   ; [CPU_ALU] 
        SUB       AL,@||s_ia_zero||     ; [CPU_ALU] |64| 
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../imported/hal/hal_adc.c",line 71,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15060            ; [CPU_FPU] |71| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 73,column 5,is_stmt,isa 0
        MOVIZ     R2H,#15060            ; [CPU_FPU] |73| 
        MOVW      DP,#||AdcbResultRegs|| ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/hal_adc.c",line 65,column 18,is_stmt,isa 0
        MOV       AH,@$BLOCKED(||AdcbResultRegs||) ; [CPU_ALU] |65| 
        MOVW      DP,#||s_ib_zero||     ; [CPU_ARAU] 
        SUB       AH,@||s_ib_zero||     ; [CPU_ALU] |65| 
        MOVZ      AR7,AH                ; [CPU_ALU] |65| 
        MOVW      DP,#||AdcaResultRegs|| ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/hal_adc.c",line 66,column 18,is_stmt,isa 0
        MOV       AH,@$BLOCKED(||AdcaResultRegs||) ; [CPU_ALU] |66| 
        MOVW      DP,#||s_ic_zero||     ; [CPU_ARAU] 
        SUB       AH,@||s_ic_zero||     ; [CPU_ALU] |66| 
        MOVZ      AR6,AH                ; [CPU_ALU] |66| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 71,column 5,is_stmt,isa 0
        MOV       ACC,AL                ; [CPU_ALU] |71| 
        MOV32     R1H,ACC               ; [CPU_FPU] |71| 
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 4
	.dwcfi	cfa_offset, -6
        MOVXI     R0H,#31120            ; [CPU_FPU] |71| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 73,column 5,is_stmt,isa 0
        MOVXI     R2H,#31120            ; [CPU_FPU] |73| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 72,column 5,is_stmt,isa 0
        MOV       ACC,AR7               ; [CPU_ALU] |72| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 71,column 5,is_stmt,isa 0
        I32TOF32  R5H,R1H               ; [CPU_FPU] |71| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 72,column 5,is_stmt,isa 0
        MOV32     R4H,ACC               ; [CPU_FPU] |72| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 73,column 5,is_stmt,isa 0
        MOV       ACC,AR6               ; [CPU_ALU] |73| 
        MOV32     R3H,ACC               ; [CPU_FPU] |73| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 72,column 5,is_stmt,isa 0
        MOVIZ     R1H,#15060            ; [CPU_FPU] |72| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 71,column 5,is_stmt,isa 0
        MPYF32    R0H,R0H,R5H           ; [CPU_FPU] |71| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 72,column 5,is_stmt,isa 0
        MOVXI     R1H,#31120            ; [CPU_FPU] |72| 
        I32TOF32  R4H,R4H               ; [CPU_FPU] |72| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 73,column 5,is_stmt,isa 0
        I32TOF32  R3H,R3H               ; [CPU_FPU] |73| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 72,column 5,is_stmt,isa 0
        MPYF32    R1H,R1H,R4H           ; [CPU_FPU] |72| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 73,column 5,is_stmt,isa 0

        MPYF32    R2H,R2H,R3H           ; [CPU_FPU] |73| 
||      MOV32     R5H,*--SP             ; [CPU_FPU] 

	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 59
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x4b)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text:configure_module_common"
	.clink

$C$DW$41	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$41, DW_AT_name("configure_module_common")
	.dwattr $C$DW$41, DW_AT_low_pc(||configure_module_common||)
	.dwattr $C$DW$41, DW_AT_high_pc(0x00)
	.dwattr $C$DW$41, DW_AT_linkage_name("configure_module_common")
	.dwattr $C$DW$41, DW_AT_decl_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$41, DW_AT_decl_line(0x0a)
	.dwattr $C$DW$41, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$41, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../imported/hal/hal_adc.c",line 11,column 1,is_stmt,address ||configure_module_common||,isa 0

	.dwfde $C$DW$CIE, ||configure_module_common||
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_name("adc")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg12]

$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_name("adc_id")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: configure_module_common       FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||configure_module_common||:
;* AR1   assigned to adc
$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("adc")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$222)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,XAR4             ; [CPU_ALU] |11| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 13,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |13| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 12,column 5,is_stmt,isa 0
        AND       AH,*+XAR1[1],#0xfff0  ; [CPU_ALU] |12| 
        ORB       AH,#0x06              ; [CPU_ALU] |12| 
        MOV       *+XAR1[1],AH          ; [CPU_ALU] |12| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 13,column 5,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |13| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("AdcSetMode")
	.dwattr $C$DW$45, DW_AT_TI_call

        LCR       #||AdcSetMode||       ; [CPU_ALU] |13| 
        ; call occurs [#||AdcSetMode||] ; [] |13| 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../imported/hal/hal_adc.c",line 14,column 5,is_stmt,isa 0
        OR        *+XAR1[0],#0x0004     ; [CPU_ALU] |14| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 16,column 5,is_stmt,isa 0
        MOV       ACC,#39998            ; [CPU_ALU] |16| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 15,column 5,is_stmt,isa 0
        OR        *+XAR1[0],#0x0080     ; [CPU_ALU] |15| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 16,column 5,is_stmt,isa 0
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("F28x_usDelay")
	.dwattr $C$DW$46, DW_AT_TI_call

        LCR       #||F28x_usDelay||     ; [CPU_ALU] |16| 
        ; call occurs [#||F28x_usDelay||] ; [] |16| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$41, DW_AT_TI_end_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x11)
	.dwattr $C$DW$41, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$41

	.sect	".text:hal_adc_init"
	.clink
	.global	||hal_adc_init||

$C$DW$48	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$48, DW_AT_name("hal_adc_init")
	.dwattr $C$DW$48, DW_AT_low_pc(||hal_adc_init||)
	.dwattr $C$DW$48, DW_AT_high_pc(0x00)
	.dwattr $C$DW$48, DW_AT_linkage_name("hal_adc_init")
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_decl_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$48, DW_AT_decl_line(0x13)
	.dwattr $C$DW$48, DW_AT_decl_column(0x06)
	.dwattr $C$DW$48, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../imported/hal/hal_adc.c",line 20,column 1,is_stmt,address ||hal_adc_init||,isa 0

	.dwfde $C$DW$CIE, ||hal_adc_init||

;***************************************************************
;* FNAME: hal_adc_init                  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

||hal_adc_init||:
;* AR2   assigned to $O$C1
;* AR1   assigned to $O$C2
;* AR3   assigned to $O$C3
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
 EALLOW
	.dwpsn	file "../imported/hal/hal_adc.c",line 22,column 5,is_stmt,isa 0
        MOVL      XAR1,#||AdcaRegs||    ; [CPU_ARAU] |22| 
        MOVB      AL,#0                 ; [CPU_ALU] |22| 
        SPM       #0                    ; [CPU_ALU] 
        MOVL      XAR4,XAR1             ; [CPU_ALU] |22| 
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("configure_module_common")
	.dwattr $C$DW$49, DW_AT_TI_call

        LCR       #||configure_module_common|| ; [CPU_ALU] |22| 
        ; call occurs [#||configure_module_common||] ; [] |22| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 23,column 5,is_stmt,isa 0
        MOVL      XAR2,#||AdcbRegs||    ; [CPU_ARAU] |23| 
        MOVB      AL,#1                 ; [CPU_ALU] |23| 
        MOVL      XAR4,XAR2             ; [CPU_ALU] |23| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("configure_module_common")
	.dwattr $C$DW$50, DW_AT_TI_call

        LCR       #||configure_module_common|| ; [CPU_ALU] |23| 
        ; call occurs [#||configure_module_common||] ; [] |23| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 24,column 5,is_stmt,isa 0
        MOVL      XAR3,#||AdccRegs||    ; [CPU_ARAU] |24| 
        MOVB      AL,#2                 ; [CPU_ALU] |24| 
        MOVL      XAR4,XAR3             ; [CPU_ALU] |24| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("configure_module_common")
	.dwattr $C$DW$51, DW_AT_TI_call

        LCR       #||configure_module_common|| ; [CPU_ALU] |24| 
        ; call occurs [#||configure_module_common||] ; [] |24| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 30,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |30| 
        MOVW      DP,#||AdccRegs||+16   ; [CPU_ARAU] 
        MOVL      ACC,*+XAR3[AR0]       ; [CPU_ALU] |30| 
        AND       AH,#65528             ; [CPU_ALU] |30| 
        AND       AL,#32767             ; [CPU_ALU] |30| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 32,column 5,is_stmt,isa 0
        MOVB      XAR0,#17              ; [CPU_ALU] |32| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 30,column 5,is_stmt,isa 0
        OR        AH,#1                 ; [CPU_ALU] |30| 
        MOVL      @$BLOCKED(||AdccRegs||)+16,ACC ; [CPU_ALU] |30| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 31,column 5,is_stmt,isa 0
        AND       AL,@$BLOCKED(||AdccRegs||)+16,#0xfe00 ; [CPU_ALU] |31| 
        ORB       AL,#0x0e              ; [CPU_ALU] |31| 
        MOV       @$BLOCKED(||AdccRegs||)+16,AL ; [CPU_ALU] |31| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 32,column 5,is_stmt,isa 0
        AND       AL,*+XAR3[AR0],#0xfe1f ; [CPU_ALU] |32| 
        ORB       AL,#0x50              ; [CPU_ALU] |32| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 35,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_FPU] |35| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 32,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||AdccRegs||)+17,AL ; [CPU_ALU] |32| 
        MOVW      DP,#||AdcbRegs||+16   ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/hal_adc.c",line 35,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR2[AR0]       ; [CPU_ALU] |35| 
        AND       AH,#65528             ; [CPU_ALU] |35| 
        AND       AL,#32767             ; [CPU_ALU] |35| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 37,column 5,is_stmt,isa 0
        MOVB      XAR0,#17              ; [CPU_ALU] |37| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 35,column 5,is_stmt,isa 0
        OR        AH,#1                 ; [CPU_ALU] |35| 
        MOVL      @$BLOCKED(||AdcbRegs||)+16,ACC ; [CPU_ALU] |35| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 36,column 5,is_stmt,isa 0
        AND       AL,@$BLOCKED(||AdcbRegs||)+16,#0xfe00 ; [CPU_ALU] |36| 
        ORB       AL,#0x0e              ; [CPU_ALU] |36| 
        MOV       @$BLOCKED(||AdcbRegs||)+16,AL ; [CPU_ALU] |36| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 37,column 5,is_stmt,isa 0
        AND       AL,*+XAR2[AR0],#0xfe1f ; [CPU_ALU] |37| 
        ORB       AL,#0x50              ; [CPU_ALU] |37| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 40,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_FPU] |40| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 37,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||AdcbRegs||)+17,AL ; [CPU_ALU] |37| 
        MOVW      DP,#||AdcaRegs||+16   ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/hal_adc.c",line 40,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR1[AR0]       ; [CPU_ALU] |40| 
        AND       AH,#65528             ; [CPU_ALU] |40| 
        AND       AL,#32767             ; [CPU_ALU] |40| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 42,column 5,is_stmt,isa 0
        MOVB      XAR0,#17              ; [CPU_ALU] |42| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 40,column 5,is_stmt,isa 0
        OR        AH,#1                 ; [CPU_ALU] |40| 
        MOVL      @$BLOCKED(||AdcaRegs||)+16,ACC ; [CPU_ALU] |40| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 41,column 5,is_stmt,isa 0
        AND       AL,@$BLOCKED(||AdcaRegs||)+16,#0xfe00 ; [CPU_ALU] |41| 
        ORB       AL,#0x0e              ; [CPU_ALU] |41| 
        MOV       @$BLOCKED(||AdcaRegs||)+16,AL ; [CPU_ALU] |41| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 42,column 5,is_stmt,isa 0
        AND       AL,*+XAR1[AR0],#0xfe1f ; [CPU_ALU] |42| 
        ORB       AL,#0x50              ; [CPU_ALU] |42| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 45,column 5,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_FPU] |45| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 42,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||AdcaRegs||)+17,AL ; [CPU_ALU] |42| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 45,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR1[AR0]       ; [CPU_ALU] |45| 
        AND       AH,#65529             ; [CPU_ALU] |45| 
        OR        AL,#32768             ; [CPU_ALU] |45| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 47,column 5,is_stmt,isa 0
        MOVB      XAR0,#19              ; [CPU_FPU] |47| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 45,column 5,is_stmt,isa 0
        OR        AH,#1                 ; [CPU_ALU] |45| 
        MOVL      @$BLOCKED(||AdcaRegs||)+18,ACC ; [CPU_ALU] |45| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 46,column 5,is_stmt,isa 0
        AND       AL,@$BLOCKED(||AdcaRegs||)+18,#0xfe00 ; [CPU_ALU] |46| 
        ORB       AL,#0x0e              ; [CPU_ALU] |46| 
        MOV       @$BLOCKED(||AdcaRegs||)+18,AL ; [CPU_ALU] |46| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 47,column 5,is_stmt,isa 0
        AND       AL,*+XAR1[AR0],#0xfe1f ; [CPU_ALU] |47| 
        ORB       AL,#0x50              ; [CPU_ALU] |47| 
        MOV       @$BLOCKED(||AdcaRegs||)+19,AL ; [CPU_ALU] |47| 
        MOVW      DP,#||AdcbRegs||+7    ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/hal_adc.c",line 50,column 5,is_stmt,isa 0
        AND       *+XAR2[7],#0xfff0     ; [CPU_ALU] |50| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 51,column 5,is_stmt,isa 0
        OR        @$BLOCKED(||AdcbRegs||)+7,#0x0020 ; [CPU_ALU] |51| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 52,column 5,is_stmt,isa 0
        AND       @$BLOCKED(||AdcbRegs||)+7,#0xffbf ; [CPU_ALU] |52| 
	.dwpsn	file "../imported/hal/hal_adc.c",line 53,column 5,is_stmt,isa 0
        OR        *+XAR2[4],#0x0001     ; [CPU_ALU] |53| 
 EDIS
        SPM       #0                    ; [CPU_ALU] 
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$48, DW_AT_TI_end_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$48, DW_AT_TI_end_line(0x37)
	.dwattr $C$DW$48, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$48

	.sect	".text:hal_adc_clear_eoc_flag"
	.clink
	.global	||hal_adc_clear_eoc_flag||

$C$DW$53	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$53, DW_AT_name("hal_adc_clear_eoc_flag")
	.dwattr $C$DW$53, DW_AT_low_pc(||hal_adc_clear_eoc_flag||)
	.dwattr $C$DW$53, DW_AT_high_pc(0x00)
	.dwattr $C$DW$53, DW_AT_linkage_name("hal_adc_clear_eoc_flag")
	.dwattr $C$DW$53, DW_AT_external
	.dwattr $C$DW$53, DW_AT_decl_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$53, DW_AT_decl_line(0x59)
	.dwattr $C$DW$53, DW_AT_decl_column(0x06)
	.dwattr $C$DW$53, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/hal_adc.c",line 90,column 1,is_stmt,address ||hal_adc_clear_eoc_flag||,isa 0

	.dwfde $C$DW$CIE, ||hal_adc_clear_eoc_flag||

;***************************************************************
;* FNAME: hal_adc_clear_eoc_flag        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||hal_adc_clear_eoc_flag||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||AdcbRegs||+4    ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/hal_adc.c",line 91,column 5,is_stmt,isa 0
        OR        @$BLOCKED(||AdcbRegs||)+4,#0x0001 ; [CPU_ALU] |91| 
        MOVW      DP,#||PieCtrlRegs||+1 ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/hal_adc.c",line 92,column 5,is_stmt,isa 0
        MOVB      @$BLOCKED(||PieCtrlRegs||)+1,#1,UNC ; [CPU_ALU] |92| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$53, DW_AT_TI_end_file("../imported/hal/hal_adc.c")
	.dwattr $C$DW$53, DW_AT_TI_end_line(0x5d)
	.dwattr $C$DW$53, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$53

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||AdcSetMode||
	.global	||F28x_usDelay||
	.global	||AdcaResultRegs||
	.global	||AdcbResultRegs||
	.global	||AdccResultRegs||
	.global	||PieCtrlRegs||
	.global	||AdcaRegs||
	.global	||AdcbRegs||
	.global	||AdccRegs||

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

$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19

$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x06)
$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$55, DW_AT_name("a")
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$55, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0x07)
	.dwattr $C$DW$55, DW_AT_decl_column(0x18)

$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$56, DW_AT_name("b")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$56, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$56, DW_AT_decl_line(0x07)
	.dwattr $C$DW$56, DW_AT_decl_column(0x1b)

$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$57, DW_AT_name("c")
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$57, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0x07)
	.dwattr $C$DW$57, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$19, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x07)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$208	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$208
$C$DW$T$208	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$208, DW_AT_name("vec_abc_t")
	.dwattr $C$DW$T$208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$208, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/imported/foc/pmsm_types.h")
	.dwattr $C$DW$T$208, DW_AT_decl_line(0x07)
	.dwattr $C$DW$T$208, DW_AT_decl_column(0x23)

	.dwendtag $C$DW$TU$208


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_name("ADCBURSTCTL_BITS")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$58, DW_AT_name("BURSTTRIGSEL")
	.dwattr $C$DW$58, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$58, DW_AT_bit_size(0x06)
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$58, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0x55)
	.dwattr $C$DW$58, DW_AT_decl_column(0x0c)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$59, DW_AT_name("rsvd1")
	.dwattr $C$DW$59, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$59, DW_AT_bit_size(0x02)
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$59, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0x56)
	.dwattr $C$DW$59, DW_AT_decl_column(0x0c)

$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$60, DW_AT_name("BURSTSIZE")
	.dwattr $C$DW$60, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$60, DW_AT_bit_size(0x04)
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$60, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0x57)
	.dwattr $C$DW$60, DW_AT_decl_column(0x0c)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$61, DW_AT_name("rsvd2")
	.dwattr $C$DW$61, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$61, DW_AT_bit_size(0x03)
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$61, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0x58)
	.dwattr $C$DW$61, DW_AT_decl_column(0x0c)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$62, DW_AT_name("BURSTEN")
	.dwattr $C$DW$62, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$62, DW_AT_bit_size(0x01)
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$62, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0x59)
	.dwattr $C$DW$62, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$21, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$22, DW_AT_name("ADCBURSTCTL_REG")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$63, DW_AT_name("all")
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$63, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$63, DW_AT_decl_column(0x0d)

$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$64, DW_AT_name("bit")
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$64, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$64, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$64, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$22, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("ADCCOUNTER_BITS")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$65, DW_AT_name("FREECOUNT")
	.dwattr $C$DW$65, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$65, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$65, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$65, DW_AT_decl_line(0x28f)
	.dwattr $C$DW$65, DW_AT_decl_column(0x0c)

$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$66, DW_AT_name("rsvd1")
	.dwattr $C$DW$66, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$66, DW_AT_bit_size(0x04)
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$66, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0x290)
	.dwattr $C$DW$66, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$23, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x28e)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$24, DW_AT_name("ADCCOUNTER_REG")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$67, DW_AT_name("all")
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$67, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0x294)
	.dwattr $C$DW$67, DW_AT_decl_column(0x0d)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$68, DW_AT_name("bit")
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$68, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0x295)
	.dwattr $C$DW$68, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$24, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x293)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("ADCCTL1_BITS")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$69, DW_AT_name("rsvd1")
	.dwattr $C$DW$69, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$69, DW_AT_bit_size(0x02)
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$69, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0x37)
	.dwattr $C$DW$69, DW_AT_decl_column(0x0c)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$70, DW_AT_name("INTPULSEPOS")
	.dwattr $C$DW$70, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$70, DW_AT_bit_size(0x01)
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$70, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0x38)
	.dwattr $C$DW$70, DW_AT_decl_column(0x0c)

$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$71, DW_AT_name("rsvd2")
	.dwattr $C$DW$71, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$71, DW_AT_bit_size(0x04)
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$71, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0x39)
	.dwattr $C$DW$71, DW_AT_decl_column(0x0c)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$72, DW_AT_name("ADCPWDNZ")
	.dwattr $C$DW$72, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$72, DW_AT_bit_size(0x01)
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$72, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$72, DW_AT_decl_column(0x0c)

$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$73, DW_AT_name("ADCBSYCHN")
	.dwattr $C$DW$73, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$73, DW_AT_bit_size(0x04)
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$73, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$73, DW_AT_decl_column(0x0c)

$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$74, DW_AT_name("rsvd3")
	.dwattr $C$DW$74, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$74, DW_AT_bit_size(0x01)
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$74, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$74, DW_AT_decl_column(0x0c)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$75, DW_AT_name("ADCBSY")
	.dwattr $C$DW$75, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$75, DW_AT_bit_size(0x01)
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$75, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$75, DW_AT_decl_column(0x0c)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$76, DW_AT_name("rsvd4")
	.dwattr $C$DW$76, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$76, DW_AT_bit_size(0x02)
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$76, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$76, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$25, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$26, DW_AT_name("ADCCTL1_REG")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$77, DW_AT_name("all")
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$77, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x42)
	.dwattr $C$DW$77, DW_AT_decl_column(0x0d)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$78, DW_AT_name("bit")
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$78, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0x43)
	.dwattr $C$DW$78, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$26, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27

$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_name("ADCCTL2_BITS")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$79, DW_AT_name("PRESCALE")
	.dwattr $C$DW$79, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$79, DW_AT_bit_size(0x04)
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$79, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0x47)
	.dwattr $C$DW$79, DW_AT_decl_column(0x0c)

$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$80, DW_AT_name("rsvd1")
	.dwattr $C$DW$80, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$80, DW_AT_bit_size(0x02)
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$80, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0x48)
	.dwattr $C$DW$80, DW_AT_decl_column(0x0c)

$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$81, DW_AT_name("RESOLUTION")
	.dwattr $C$DW$81, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$81, DW_AT_bit_size(0x01)
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$81, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0x49)
	.dwattr $C$DW$81, DW_AT_decl_column(0x0c)

$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$82, DW_AT_name("SIGNALMODE")
	.dwattr $C$DW$82, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$82, DW_AT_bit_size(0x01)
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$82, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$82, DW_AT_decl_column(0x0c)

$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$83, DW_AT_name("rsvd2")
	.dwattr $C$DW$83, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$83, DW_AT_bit_size(0x05)
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$83, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$83, DW_AT_decl_column(0x0c)

$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$84, DW_AT_name("rsvd3")
	.dwattr $C$DW$84, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$84, DW_AT_bit_size(0x03)
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$84, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$84, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$27, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$28, DW_AT_name("ADCCTL2_REG")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$85, DW_AT_name("all")
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$85, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0x50)
	.dwattr $C$DW$85, DW_AT_decl_column(0x0d)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$86, DW_AT_name("bit")
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$86, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0x51)
	.dwattr $C$DW$86, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$28, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("ADCEVTCLR_BITS")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$87, DW_AT_name("PPB1TRIPHI")
	.dwattr $C$DW$87, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$87, DW_AT_bit_size(0x01)
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$87, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0x23d)
	.dwattr $C$DW$87, DW_AT_decl_column(0x0c)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$88, DW_AT_name("PPB1TRIPLO")
	.dwattr $C$DW$88, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$88, DW_AT_bit_size(0x01)
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$88, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0x23e)
	.dwattr $C$DW$88, DW_AT_decl_column(0x0c)

$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$89, DW_AT_name("PPB1ZERO")
	.dwattr $C$DW$89, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$89, DW_AT_bit_size(0x01)
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$89, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0x23f)
	.dwattr $C$DW$89, DW_AT_decl_column(0x0c)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$90, DW_AT_name("rsvd1")
	.dwattr $C$DW$90, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$90, DW_AT_bit_size(0x01)
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$90, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0x240)
	.dwattr $C$DW$90, DW_AT_decl_column(0x0c)

$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$91, DW_AT_name("PPB2TRIPHI")
	.dwattr $C$DW$91, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$91, DW_AT_bit_size(0x01)
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$91, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0x241)
	.dwattr $C$DW$91, DW_AT_decl_column(0x0c)

$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$92, DW_AT_name("PPB2TRIPLO")
	.dwattr $C$DW$92, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$92, DW_AT_bit_size(0x01)
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$92, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0x242)
	.dwattr $C$DW$92, DW_AT_decl_column(0x0c)

$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$93, DW_AT_name("PPB2ZERO")
	.dwattr $C$DW$93, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$93, DW_AT_bit_size(0x01)
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$93, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0x243)
	.dwattr $C$DW$93, DW_AT_decl_column(0x0c)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$94, DW_AT_name("rsvd2")
	.dwattr $C$DW$94, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$94, DW_AT_bit_size(0x01)
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$94, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0x244)
	.dwattr $C$DW$94, DW_AT_decl_column(0x0c)

$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$95, DW_AT_name("PPB3TRIPHI")
	.dwattr $C$DW$95, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$95, DW_AT_bit_size(0x01)
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$95, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x245)
	.dwattr $C$DW$95, DW_AT_decl_column(0x0c)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$96, DW_AT_name("PPB3TRIPLO")
	.dwattr $C$DW$96, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$96, DW_AT_bit_size(0x01)
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$96, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x246)
	.dwattr $C$DW$96, DW_AT_decl_column(0x0c)

$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$97, DW_AT_name("PPB3ZERO")
	.dwattr $C$DW$97, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$97, DW_AT_bit_size(0x01)
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$97, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x247)
	.dwattr $C$DW$97, DW_AT_decl_column(0x0c)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$98, DW_AT_name("rsvd3")
	.dwattr $C$DW$98, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$98, DW_AT_bit_size(0x01)
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$98, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x248)
	.dwattr $C$DW$98, DW_AT_decl_column(0x0c)

$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$99, DW_AT_name("PPB4TRIPHI")
	.dwattr $C$DW$99, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$99, DW_AT_bit_size(0x01)
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$99, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x249)
	.dwattr $C$DW$99, DW_AT_decl_column(0x0c)

$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$100, DW_AT_name("PPB4TRIPLO")
	.dwattr $C$DW$100, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$100, DW_AT_bit_size(0x01)
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$100, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0x24a)
	.dwattr $C$DW$100, DW_AT_decl_column(0x0c)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$101, DW_AT_name("PPB4ZERO")
	.dwattr $C$DW$101, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$101, DW_AT_bit_size(0x01)
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$101, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x24b)
	.dwattr $C$DW$101, DW_AT_decl_column(0x0c)

$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$102, DW_AT_name("rsvd4")
	.dwattr $C$DW$102, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$102, DW_AT_bit_size(0x01)
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$102, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0x24c)
	.dwattr $C$DW$102, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$29, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x23c)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$30, DW_AT_name("ADCEVTCLR_REG")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$103, DW_AT_name("all")
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$103, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x250)
	.dwattr $C$DW$103, DW_AT_decl_column(0x0d)

$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$104, DW_AT_name("bit")
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$104, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0x251)
	.dwattr $C$DW$104, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$30, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x24f)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("ADCEVTINTSEL_BITS")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$105, DW_AT_name("PPB1TRIPHI")
	.dwattr $C$DW$105, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$105, DW_AT_bit_size(0x01)
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$105, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0x26d)
	.dwattr $C$DW$105, DW_AT_decl_column(0x0c)

$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$106, DW_AT_name("PPB1TRIPLO")
	.dwattr $C$DW$106, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$106, DW_AT_bit_size(0x01)
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$106, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0x26e)
	.dwattr $C$DW$106, DW_AT_decl_column(0x0c)

$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$107, DW_AT_name("PPB1ZERO")
	.dwattr $C$DW$107, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$107, DW_AT_bit_size(0x01)
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$107, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0x26f)
	.dwattr $C$DW$107, DW_AT_decl_column(0x0c)

$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$108, DW_AT_name("rsvd1")
	.dwattr $C$DW$108, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$108, DW_AT_bit_size(0x01)
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$108, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0x270)
	.dwattr $C$DW$108, DW_AT_decl_column(0x0c)

$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$109, DW_AT_name("PPB2TRIPHI")
	.dwattr $C$DW$109, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$109, DW_AT_bit_size(0x01)
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$109, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0x271)
	.dwattr $C$DW$109, DW_AT_decl_column(0x0c)

$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$110, DW_AT_name("PPB2TRIPLO")
	.dwattr $C$DW$110, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$110, DW_AT_bit_size(0x01)
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$110, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0x272)
	.dwattr $C$DW$110, DW_AT_decl_column(0x0c)

$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$111, DW_AT_name("PPB2ZERO")
	.dwattr $C$DW$111, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$111, DW_AT_bit_size(0x01)
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$111, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0x273)
	.dwattr $C$DW$111, DW_AT_decl_column(0x0c)

$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$112, DW_AT_name("rsvd2")
	.dwattr $C$DW$112, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$112, DW_AT_bit_size(0x01)
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$112, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0x274)
	.dwattr $C$DW$112, DW_AT_decl_column(0x0c)

$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$113, DW_AT_name("PPB3TRIPHI")
	.dwattr $C$DW$113, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$113, DW_AT_bit_size(0x01)
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$113, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0x275)
	.dwattr $C$DW$113, DW_AT_decl_column(0x0c)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$114, DW_AT_name("PPB3TRIPLO")
	.dwattr $C$DW$114, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$114, DW_AT_bit_size(0x01)
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$114, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0x276)
	.dwattr $C$DW$114, DW_AT_decl_column(0x0c)

$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$115, DW_AT_name("PPB3ZERO")
	.dwattr $C$DW$115, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$115, DW_AT_bit_size(0x01)
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$115, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0x277)
	.dwattr $C$DW$115, DW_AT_decl_column(0x0c)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$116, DW_AT_name("rsvd3")
	.dwattr $C$DW$116, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$116, DW_AT_bit_size(0x01)
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$116, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0x278)
	.dwattr $C$DW$116, DW_AT_decl_column(0x0c)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$117, DW_AT_name("PPB4TRIPHI")
	.dwattr $C$DW$117, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$117, DW_AT_bit_size(0x01)
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$117, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0x279)
	.dwattr $C$DW$117, DW_AT_decl_column(0x0c)

$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$118, DW_AT_name("PPB4TRIPLO")
	.dwattr $C$DW$118, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$118, DW_AT_bit_size(0x01)
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$118, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0x27a)
	.dwattr $C$DW$118, DW_AT_decl_column(0x0c)

$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$119, DW_AT_name("PPB4ZERO")
	.dwattr $C$DW$119, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$119, DW_AT_bit_size(0x01)
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$119, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0x27b)
	.dwattr $C$DW$119, DW_AT_decl_column(0x0c)

$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$120, DW_AT_name("rsvd4")
	.dwattr $C$DW$120, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$120, DW_AT_bit_size(0x01)
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$120, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0x27c)
	.dwattr $C$DW$120, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$31, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x26c)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$32, DW_AT_name("ADCEVTINTSEL_REG")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$121, DW_AT_name("all")
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$121, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$121, DW_AT_decl_line(0x280)
	.dwattr $C$DW$121, DW_AT_decl_column(0x0d)

$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$122, DW_AT_name("bit")
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$122, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0x281)
	.dwattr $C$DW$122, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$32, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x27f)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("ADCEVTSEL_BITS")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$123, DW_AT_name("PPB1TRIPHI")
	.dwattr $C$DW$123, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$123, DW_AT_bit_size(0x01)
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$123, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0x255)
	.dwattr $C$DW$123, DW_AT_decl_column(0x0c)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$124, DW_AT_name("PPB1TRIPLO")
	.dwattr $C$DW$124, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$124, DW_AT_bit_size(0x01)
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$124, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0x256)
	.dwattr $C$DW$124, DW_AT_decl_column(0x0c)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$125, DW_AT_name("PPB1ZERO")
	.dwattr $C$DW$125, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$125, DW_AT_bit_size(0x01)
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$125, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0x257)
	.dwattr $C$DW$125, DW_AT_decl_column(0x0c)

$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$126, DW_AT_name("rsvd1")
	.dwattr $C$DW$126, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$126, DW_AT_bit_size(0x01)
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$126, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0x258)
	.dwattr $C$DW$126, DW_AT_decl_column(0x0c)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$127, DW_AT_name("PPB2TRIPHI")
	.dwattr $C$DW$127, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$127, DW_AT_bit_size(0x01)
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$127, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0x259)
	.dwattr $C$DW$127, DW_AT_decl_column(0x0c)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$128, DW_AT_name("PPB2TRIPLO")
	.dwattr $C$DW$128, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$128, DW_AT_bit_size(0x01)
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$128, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0x25a)
	.dwattr $C$DW$128, DW_AT_decl_column(0x0c)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$129, DW_AT_name("PPB2ZERO")
	.dwattr $C$DW$129, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$129, DW_AT_bit_size(0x01)
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$129, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0x25b)
	.dwattr $C$DW$129, DW_AT_decl_column(0x0c)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$130, DW_AT_name("rsvd2")
	.dwattr $C$DW$130, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$130, DW_AT_bit_size(0x01)
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$130, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0x25c)
	.dwattr $C$DW$130, DW_AT_decl_column(0x0c)

$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$131, DW_AT_name("PPB3TRIPHI")
	.dwattr $C$DW$131, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$131, DW_AT_bit_size(0x01)
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$131, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0x25d)
	.dwattr $C$DW$131, DW_AT_decl_column(0x0c)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$132, DW_AT_name("PPB3TRIPLO")
	.dwattr $C$DW$132, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$132, DW_AT_bit_size(0x01)
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$132, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0x25e)
	.dwattr $C$DW$132, DW_AT_decl_column(0x0c)

$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$133, DW_AT_name("PPB3ZERO")
	.dwattr $C$DW$133, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$133, DW_AT_bit_size(0x01)
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$133, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0x25f)
	.dwattr $C$DW$133, DW_AT_decl_column(0x0c)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$134, DW_AT_name("rsvd3")
	.dwattr $C$DW$134, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$134, DW_AT_bit_size(0x01)
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$134, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$134, DW_AT_decl_line(0x260)
	.dwattr $C$DW$134, DW_AT_decl_column(0x0c)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$135, DW_AT_name("PPB4TRIPHI")
	.dwattr $C$DW$135, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$135, DW_AT_bit_size(0x01)
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$135, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$135, DW_AT_decl_line(0x261)
	.dwattr $C$DW$135, DW_AT_decl_column(0x0c)

$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$136, DW_AT_name("PPB4TRIPLO")
	.dwattr $C$DW$136, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$136, DW_AT_bit_size(0x01)
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$136, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$136, DW_AT_decl_line(0x262)
	.dwattr $C$DW$136, DW_AT_decl_column(0x0c)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$137, DW_AT_name("PPB4ZERO")
	.dwattr $C$DW$137, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$137, DW_AT_bit_size(0x01)
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$137, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$137, DW_AT_decl_line(0x263)
	.dwattr $C$DW$137, DW_AT_decl_column(0x0c)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$138, DW_AT_name("rsvd4")
	.dwattr $C$DW$138, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$138, DW_AT_bit_size(0x01)
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$138, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0x264)
	.dwattr $C$DW$138, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$33, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x254)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$34, DW_AT_name("ADCEVTSEL_REG")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$139, DW_AT_name("all")
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$139, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0x268)
	.dwattr $C$DW$139, DW_AT_decl_column(0x0d)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$140, DW_AT_name("bit")
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$140, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0x269)
	.dwattr $C$DW$140, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$34, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x267)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("ADCEVTSTAT_BITS")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$141, DW_AT_name("PPB1TRIPHI")
	.dwattr $C$DW$141, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$141, DW_AT_bit_size(0x01)
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$141, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0x225)
	.dwattr $C$DW$141, DW_AT_decl_column(0x0c)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$142, DW_AT_name("PPB1TRIPLO")
	.dwattr $C$DW$142, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$142, DW_AT_bit_size(0x01)
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$142, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0x226)
	.dwattr $C$DW$142, DW_AT_decl_column(0x0c)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$143, DW_AT_name("PPB1ZERO")
	.dwattr $C$DW$143, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$143, DW_AT_bit_size(0x01)
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$143, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0x227)
	.dwattr $C$DW$143, DW_AT_decl_column(0x0c)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$144, DW_AT_name("rsvd1")
	.dwattr $C$DW$144, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$144, DW_AT_bit_size(0x01)
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$144, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0x228)
	.dwattr $C$DW$144, DW_AT_decl_column(0x0c)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$145, DW_AT_name("PPB2TRIPHI")
	.dwattr $C$DW$145, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$145, DW_AT_bit_size(0x01)
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$145, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0x229)
	.dwattr $C$DW$145, DW_AT_decl_column(0x0c)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$146, DW_AT_name("PPB2TRIPLO")
	.dwattr $C$DW$146, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$146, DW_AT_bit_size(0x01)
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$146, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0x22a)
	.dwattr $C$DW$146, DW_AT_decl_column(0x0c)

$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$147, DW_AT_name("PPB2ZERO")
	.dwattr $C$DW$147, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$147, DW_AT_bit_size(0x01)
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$147, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0x22b)
	.dwattr $C$DW$147, DW_AT_decl_column(0x0c)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$148, DW_AT_name("rsvd2")
	.dwattr $C$DW$148, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$148, DW_AT_bit_size(0x01)
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$148, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0x22c)
	.dwattr $C$DW$148, DW_AT_decl_column(0x0c)

$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$149, DW_AT_name("PPB3TRIPHI")
	.dwattr $C$DW$149, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$149, DW_AT_bit_size(0x01)
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$149, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0x22d)
	.dwattr $C$DW$149, DW_AT_decl_column(0x0c)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$150, DW_AT_name("PPB3TRIPLO")
	.dwattr $C$DW$150, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$150, DW_AT_bit_size(0x01)
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$150, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0x22e)
	.dwattr $C$DW$150, DW_AT_decl_column(0x0c)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$151, DW_AT_name("PPB3ZERO")
	.dwattr $C$DW$151, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$151, DW_AT_bit_size(0x01)
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$151, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0x22f)
	.dwattr $C$DW$151, DW_AT_decl_column(0x0c)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$152, DW_AT_name("rsvd3")
	.dwattr $C$DW$152, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$152, DW_AT_bit_size(0x01)
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$152, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0x230)
	.dwattr $C$DW$152, DW_AT_decl_column(0x0c)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$153, DW_AT_name("PPB4TRIPHI")
	.dwattr $C$DW$153, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$153, DW_AT_bit_size(0x01)
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$153, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$153, DW_AT_decl_line(0x231)
	.dwattr $C$DW$153, DW_AT_decl_column(0x0c)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$154, DW_AT_name("PPB4TRIPLO")
	.dwattr $C$DW$154, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$154, DW_AT_bit_size(0x01)
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$154, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$154, DW_AT_decl_line(0x232)
	.dwattr $C$DW$154, DW_AT_decl_column(0x0c)

$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$155, DW_AT_name("PPB4ZERO")
	.dwattr $C$DW$155, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$155, DW_AT_bit_size(0x01)
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$155, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$155, DW_AT_decl_line(0x233)
	.dwattr $C$DW$155, DW_AT_decl_column(0x0c)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$156, DW_AT_name("rsvd4")
	.dwattr $C$DW$156, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$156, DW_AT_bit_size(0x01)
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$156, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$156, DW_AT_decl_line(0x234)
	.dwattr $C$DW$156, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$35, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x224)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$36, DW_AT_name("ADCEVTSTAT_REG")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$157, DW_AT_name("all")
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$157, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$157, DW_AT_decl_line(0x238)
	.dwattr $C$DW$157, DW_AT_decl_column(0x0d)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$158, DW_AT_name("bit")
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$158, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$158, DW_AT_decl_line(0x239)
	.dwattr $C$DW$158, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$36, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x237)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_name("ADCINTFLGCLR_BITS")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$159, DW_AT_name("ADCINT1")
	.dwattr $C$DW$159, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$159, DW_AT_bit_size(0x01)
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$159, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$159, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$159, DW_AT_decl_column(0x0c)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$160, DW_AT_name("ADCINT2")
	.dwattr $C$DW$160, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$160, DW_AT_bit_size(0x01)
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$160, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$160, DW_AT_decl_line(0x70)
	.dwattr $C$DW$160, DW_AT_decl_column(0x0c)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$161, DW_AT_name("ADCINT3")
	.dwattr $C$DW$161, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$161, DW_AT_bit_size(0x01)
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$161, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$161, DW_AT_decl_line(0x71)
	.dwattr $C$DW$161, DW_AT_decl_column(0x0c)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$162, DW_AT_name("ADCINT4")
	.dwattr $C$DW$162, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$162, DW_AT_bit_size(0x01)
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$162, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$162, DW_AT_decl_line(0x72)
	.dwattr $C$DW$162, DW_AT_decl_column(0x0c)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$163, DW_AT_name("rsvd1")
	.dwattr $C$DW$163, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$163, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$163, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$163, DW_AT_decl_line(0x73)
	.dwattr $C$DW$163, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$37, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$38, DW_AT_name("ADCINTFLGCLR_REG")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$164, DW_AT_name("all")
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$164, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$164, DW_AT_decl_line(0x77)
	.dwattr $C$DW$164, DW_AT_decl_column(0x0d)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$165, DW_AT_name("bit")
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$165, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$165, DW_AT_decl_line(0x78)
	.dwattr $C$DW$165, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$38, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_name("ADCINTFLG_BITS")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$166, DW_AT_name("ADCINT1")
	.dwattr $C$DW$166, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$166, DW_AT_bit_size(0x01)
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$166, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$166, DW_AT_decl_line(0x62)
	.dwattr $C$DW$166, DW_AT_decl_column(0x0c)

$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$167, DW_AT_name("ADCINT2")
	.dwattr $C$DW$167, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$167, DW_AT_bit_size(0x01)
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$167, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$167, DW_AT_decl_line(0x63)
	.dwattr $C$DW$167, DW_AT_decl_column(0x0c)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$168, DW_AT_name("ADCINT3")
	.dwattr $C$DW$168, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$168, DW_AT_bit_size(0x01)
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$168, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$168, DW_AT_decl_line(0x64)
	.dwattr $C$DW$168, DW_AT_decl_column(0x0c)

$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$169, DW_AT_name("ADCINT4")
	.dwattr $C$DW$169, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$169, DW_AT_bit_size(0x01)
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$169, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0x65)
	.dwattr $C$DW$169, DW_AT_decl_column(0x0c)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$170, DW_AT_name("rsvd1")
	.dwattr $C$DW$170, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$170, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$170, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$170, DW_AT_decl_line(0x66)
	.dwattr $C$DW$170, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$39, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40

$C$DW$T$40	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$40, DW_AT_name("ADCINTFLG_REG")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$171, DW_AT_name("all")
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$171, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$171, DW_AT_decl_column(0x0d)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$172, DW_AT_name("bit")
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$172, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$172, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$40, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$40

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("ADCINTOVFCLR_BITS")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$173, DW_AT_name("ADCINT1")
	.dwattr $C$DW$173, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$173, DW_AT_bit_size(0x01)
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$173, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0x89)
	.dwattr $C$DW$173, DW_AT_decl_column(0x0c)

$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$174, DW_AT_name("ADCINT2")
	.dwattr $C$DW$174, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$174, DW_AT_bit_size(0x01)
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$174, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$174, DW_AT_decl_column(0x0c)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$175, DW_AT_name("ADCINT3")
	.dwattr $C$DW$175, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$175, DW_AT_bit_size(0x01)
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$175, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$175, DW_AT_decl_column(0x0c)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$176, DW_AT_name("ADCINT4")
	.dwattr $C$DW$176, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$176, DW_AT_bit_size(0x01)
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$176, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$176, DW_AT_decl_column(0x0c)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$177, DW_AT_name("rsvd1")
	.dwattr $C$DW$177, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$177, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$177, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$177, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$41, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x88)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$42, DW_AT_name("ADCINTOVFCLR_REG")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$178, DW_AT_name("all")
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$178, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0x91)
	.dwattr $C$DW$178, DW_AT_decl_column(0x0d)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$179, DW_AT_name("bit")
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$179, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0x92)
	.dwattr $C$DW$179, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$42, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x90)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("ADCINTOVF_BITS")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$180, DW_AT_name("ADCINT1")
	.dwattr $C$DW$180, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$180, DW_AT_bit_size(0x01)
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$180, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$180, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$180, DW_AT_decl_column(0x0c)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$181, DW_AT_name("ADCINT2")
	.dwattr $C$DW$181, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$181, DW_AT_bit_size(0x01)
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$181, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$181, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$181, DW_AT_decl_column(0x0c)

$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$182, DW_AT_name("ADCINT3")
	.dwattr $C$DW$182, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$182, DW_AT_bit_size(0x01)
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$182, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$182, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$182, DW_AT_decl_column(0x0c)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$183, DW_AT_name("ADCINT4")
	.dwattr $C$DW$183, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$183, DW_AT_bit_size(0x01)
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$183, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$183, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$183, DW_AT_decl_column(0x0c)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$184, DW_AT_name("rsvd1")
	.dwattr $C$DW$184, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$184, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$184, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$184, DW_AT_decl_line(0x80)
	.dwattr $C$DW$184, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$43, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44

$C$DW$T$44	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$44, DW_AT_name("ADCINTOVF_REG")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$185, DW_AT_name("all")
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$185, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$185, DW_AT_decl_line(0x84)
	.dwattr $C$DW$185, DW_AT_decl_column(0x0d)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$186, DW_AT_name("bit")
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$186, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$186, DW_AT_decl_line(0x85)
	.dwattr $C$DW$186, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$44, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x83)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$44

	.dwendtag $C$DW$TU$44


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_name("ADCINTSEL1N2_BITS")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$187, DW_AT_name("INT1SEL")
	.dwattr $C$DW$187, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$187, DW_AT_bit_size(0x04)
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$187, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x96)
	.dwattr $C$DW$187, DW_AT_decl_column(0x0c)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$188, DW_AT_name("rsvd1")
	.dwattr $C$DW$188, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$188, DW_AT_bit_size(0x01)
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$188, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$188, DW_AT_decl_line(0x97)
	.dwattr $C$DW$188, DW_AT_decl_column(0x0c)

$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$189, DW_AT_name("INT1E")
	.dwattr $C$DW$189, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$189, DW_AT_bit_size(0x01)
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$189, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$189, DW_AT_decl_line(0x98)
	.dwattr $C$DW$189, DW_AT_decl_column(0x0c)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$190, DW_AT_name("INT1CONT")
	.dwattr $C$DW$190, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$190, DW_AT_bit_size(0x01)
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$190, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$190, DW_AT_decl_line(0x99)
	.dwattr $C$DW$190, DW_AT_decl_column(0x0c)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$191, DW_AT_name("rsvd2")
	.dwattr $C$DW$191, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$191, DW_AT_bit_size(0x01)
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$191, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$191, DW_AT_decl_column(0x0c)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$192, DW_AT_name("INT2SEL")
	.dwattr $C$DW$192, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$192, DW_AT_bit_size(0x04)
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$192, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$192, DW_AT_decl_column(0x0c)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$193, DW_AT_name("rsvd3")
	.dwattr $C$DW$193, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$193, DW_AT_bit_size(0x01)
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$193, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$193, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$193, DW_AT_decl_column(0x0c)

$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$194, DW_AT_name("INT2E")
	.dwattr $C$DW$194, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$194, DW_AT_bit_size(0x01)
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$194, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$194, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$194, DW_AT_decl_column(0x0c)

$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$195, DW_AT_name("INT2CONT")
	.dwattr $C$DW$195, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$195, DW_AT_bit_size(0x01)
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$195, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$195, DW_AT_decl_column(0x0c)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$196, DW_AT_name("rsvd4")
	.dwattr $C$DW$196, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$196, DW_AT_bit_size(0x01)
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$196, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$196, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$45, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x95)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$45

	.dwendtag $C$DW$TU$45


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46

$C$DW$T$46	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$46, DW_AT_name("ADCINTSEL1N2_REG")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$197, DW_AT_name("all")
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$197, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$197, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$197, DW_AT_decl_column(0x0d)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$198, DW_AT_name("bit")
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$198, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$198, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$198, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$46, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$46

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47

$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_name("ADCINTSEL3N4_BITS")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$199, DW_AT_name("INT3SEL")
	.dwattr $C$DW$199, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$199, DW_AT_bit_size(0x04)
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$199, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$199, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$199, DW_AT_decl_column(0x0c)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$200, DW_AT_name("rsvd1")
	.dwattr $C$DW$200, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$200, DW_AT_bit_size(0x01)
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$200, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$200, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$200, DW_AT_decl_column(0x0c)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$201, DW_AT_name("INT3E")
	.dwattr $C$DW$201, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$201, DW_AT_bit_size(0x01)
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$201, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$201, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$201, DW_AT_decl_column(0x0c)

$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$202, DW_AT_name("INT3CONT")
	.dwattr $C$DW$202, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$202, DW_AT_bit_size(0x01)
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$202, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$202, DW_AT_decl_line(0xab)
	.dwattr $C$DW$202, DW_AT_decl_column(0x0c)

$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$203, DW_AT_name("rsvd2")
	.dwattr $C$DW$203, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$203, DW_AT_bit_size(0x01)
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$203, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$203, DW_AT_decl_line(0xac)
	.dwattr $C$DW$203, DW_AT_decl_column(0x0c)

$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$204, DW_AT_name("INT4SEL")
	.dwattr $C$DW$204, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$204, DW_AT_bit_size(0x04)
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$204, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$204, DW_AT_decl_line(0xad)
	.dwattr $C$DW$204, DW_AT_decl_column(0x0c)

$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$205, DW_AT_name("rsvd3")
	.dwattr $C$DW$205, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$205, DW_AT_bit_size(0x01)
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$205, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$205, DW_AT_decl_line(0xae)
	.dwattr $C$DW$205, DW_AT_decl_column(0x0c)

$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$206, DW_AT_name("INT4E")
	.dwattr $C$DW$206, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$206, DW_AT_bit_size(0x01)
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$206, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$206, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$206, DW_AT_decl_column(0x0c)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$207, DW_AT_name("INT4CONT")
	.dwattr $C$DW$207, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$207, DW_AT_bit_size(0x01)
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$207, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$207, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$207, DW_AT_decl_column(0x0c)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$208, DW_AT_name("rsvd4")
	.dwattr $C$DW$208, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$208, DW_AT_bit_size(0x01)
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$208, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$208, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$208, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$47, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$47

	.dwendtag $C$DW$TU$47


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48

$C$DW$T$48	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$48, DW_AT_name("ADCINTSEL3N4_REG")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$209, DW_AT_name("all")
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$209, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$209, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$209, DW_AT_decl_column(0x0d)

$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$210, DW_AT_name("bit")
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$210, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$210, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$210, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$48, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$48

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("ADCINTSOCSEL1_BITS")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$211, DW_AT_name("SOC0")
	.dwattr $C$DW$211, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$211, DW_AT_bit_size(0x02)
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$211, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$211, DW_AT_decl_column(0x0c)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$212, DW_AT_name("SOC1")
	.dwattr $C$DW$212, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$212, DW_AT_bit_size(0x02)
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$212, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$212, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$212, DW_AT_decl_column(0x0c)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$213, DW_AT_name("SOC2")
	.dwattr $C$DW$213, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$213, DW_AT_bit_size(0x02)
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$213, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$213, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$213, DW_AT_decl_column(0x0c)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$214, DW_AT_name("SOC3")
	.dwattr $C$DW$214, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$214, DW_AT_bit_size(0x02)
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$214, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$214, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$214, DW_AT_decl_column(0x0c)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$215, DW_AT_name("SOC4")
	.dwattr $C$DW$215, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$215, DW_AT_bit_size(0x02)
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$215, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$215, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$215, DW_AT_decl_column(0x0c)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$216, DW_AT_name("SOC5")
	.dwattr $C$DW$216, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$216, DW_AT_bit_size(0x02)
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$216, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$216, DW_AT_decl_line(0xca)
	.dwattr $C$DW$216, DW_AT_decl_column(0x0c)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$217, DW_AT_name("SOC6")
	.dwattr $C$DW$217, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$217, DW_AT_bit_size(0x02)
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$217, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$217, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$217, DW_AT_decl_column(0x0c)

$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$218, DW_AT_name("SOC7")
	.dwattr $C$DW$218, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$218, DW_AT_bit_size(0x02)
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$218, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$218, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$218, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$49, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50

$C$DW$T$50	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$50, DW_AT_name("ADCINTSOCSEL1_REG")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$219, DW_AT_name("all")
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$219, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$219, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$219, DW_AT_decl_column(0x0d)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$220, DW_AT_name("bit")
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$220, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$220, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$220, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$50, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$50

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("ADCINTSOCSEL2_BITS")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$221, DW_AT_name("SOC8")
	.dwattr $C$DW$221, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$221, DW_AT_bit_size(0x02)
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$221, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$221, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$221, DW_AT_decl_column(0x0c)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$222, DW_AT_name("SOC9")
	.dwattr $C$DW$222, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$222, DW_AT_bit_size(0x02)
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$222, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$222, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$222, DW_AT_decl_column(0x0c)

$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$223, DW_AT_name("SOC10")
	.dwattr $C$DW$223, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$223, DW_AT_bit_size(0x02)
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$223, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$223, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$223, DW_AT_decl_column(0x0c)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$224, DW_AT_name("SOC11")
	.dwattr $C$DW$224, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$224, DW_AT_bit_size(0x02)
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$224, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$224, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$224, DW_AT_decl_column(0x0c)

$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$225, DW_AT_name("SOC12")
	.dwattr $C$DW$225, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$225, DW_AT_bit_size(0x02)
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$225, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$225, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$225, DW_AT_decl_column(0x0c)

$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$226, DW_AT_name("SOC13")
	.dwattr $C$DW$226, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$226, DW_AT_bit_size(0x02)
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$226, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$226, DW_AT_decl_line(0xda)
	.dwattr $C$DW$226, DW_AT_decl_column(0x0c)

$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$227, DW_AT_name("SOC14")
	.dwattr $C$DW$227, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$227, DW_AT_bit_size(0x02)
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$227, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$227, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$227, DW_AT_decl_column(0x0c)

$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$228, DW_AT_name("SOC15")
	.dwattr $C$DW$228, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$228, DW_AT_bit_size(0x02)
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$228, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$228, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$228, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$51, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$51

	.dwendtag $C$DW$TU$51


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52

$C$DW$T$52	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$52, DW_AT_name("ADCINTSOCSEL2_REG")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$229, DW_AT_name("all")
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$229, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$229, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$229, DW_AT_decl_column(0x0d)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$230, DW_AT_name("bit")
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$230, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$230, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$230, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$52, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$52

	.dwendtag $C$DW$TU$52


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("ADCOFFTRIM_BITS")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$231, DW_AT_name("OFFTRIM")
	.dwattr $C$DW$231, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$231, DW_AT_bit_size(0x08)
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$231, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$231, DW_AT_decl_line(0x2a3)
	.dwattr $C$DW$231, DW_AT_decl_column(0x0c)

$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$232, DW_AT_name("rsvd1")
	.dwattr $C$DW$232, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$232, DW_AT_bit_size(0x08)
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$232, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$232, DW_AT_decl_line(0x2a4)
	.dwattr $C$DW$232, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$53, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x2a2)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54

$C$DW$T$54	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$54, DW_AT_name("ADCOFFTRIM_REG")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$233, DW_AT_name("all")
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$233, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$233, DW_AT_decl_line(0x2a8)
	.dwattr $C$DW$233, DW_AT_decl_column(0x0d)

$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$234, DW_AT_name("bit")
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$234, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$234, DW_AT_decl_line(0x2a9)
	.dwattr $C$DW$234, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$54, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x2a7)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$54

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("ADCOSDETECT_BITS")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$235, DW_AT_name("DETECTCFG")
	.dwattr $C$DW$235, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$235, DW_AT_bit_size(0x03)
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$235, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$235, DW_AT_decl_line(0x285)
	.dwattr $C$DW$235, DW_AT_decl_column(0x0c)

$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$236, DW_AT_name("rsvd1")
	.dwattr $C$DW$236, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$236, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$236, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$236, DW_AT_decl_line(0x286)
	.dwattr $C$DW$236, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$55, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x284)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56

$C$DW$T$56	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$56, DW_AT_name("ADCOSDETECT_REG")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$237, DW_AT_name("all")
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$237, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$237, DW_AT_decl_line(0x28a)
	.dwattr $C$DW$237, DW_AT_decl_column(0x0d)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$238, DW_AT_name("bit")
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$238, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$238, DW_AT_decl_line(0x28b)
	.dwattr $C$DW$238, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$56, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x289)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$56

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("ADCPPB1CONFIG_BITS")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$239, DW_AT_name("CONFIG")
	.dwattr $C$DW$239, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$239, DW_AT_bit_size(0x04)
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$239, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$239, DW_AT_decl_line(0x2ad)
	.dwattr $C$DW$239, DW_AT_decl_column(0x0c)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$240, DW_AT_name("TWOSCOMPEN")
	.dwattr $C$DW$240, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$240, DW_AT_bit_size(0x01)
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$240, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$240, DW_AT_decl_line(0x2ae)
	.dwattr $C$DW$240, DW_AT_decl_column(0x0c)

$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$241, DW_AT_name("rsvd1")
	.dwattr $C$DW$241, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$241, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$241, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$241, DW_AT_decl_line(0x2af)
	.dwattr $C$DW$241, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$57, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x2ac)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58

$C$DW$T$58	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$58, DW_AT_name("ADCPPB1CONFIG_REG")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$242, DW_AT_name("all")
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$242, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$242, DW_AT_decl_line(0x2b3)
	.dwattr $C$DW$242, DW_AT_decl_column(0x0d)

$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$243, DW_AT_name("bit")
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$243, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$243, DW_AT_decl_line(0x2b4)
	.dwattr $C$DW$243, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$58, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x2b2)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$58

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59

$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("ADCPPB1OFFCAL_BITS")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$244, DW_AT_name("OFFCAL")
	.dwattr $C$DW$244, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$244, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$244, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$244, DW_AT_decl_line(0x2c2)
	.dwattr $C$DW$244, DW_AT_decl_column(0x0c)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$245, DW_AT_name("rsvd1")
	.dwattr $C$DW$245, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$245, DW_AT_bit_size(0x06)
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$245, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$245, DW_AT_decl_line(0x2c3)
	.dwattr $C$DW$245, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$59, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x2c1)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$59

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60

$C$DW$T$60	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$60, DW_AT_name("ADCPPB1OFFCAL_REG")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$246, DW_AT_name("all")
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$246, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$246, DW_AT_decl_line(0x2c7)
	.dwattr $C$DW$246, DW_AT_decl_column(0x0d)

$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$247, DW_AT_name("bit")
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$247, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$247, DW_AT_decl_line(0x2c8)
	.dwattr $C$DW$247, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$60, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x2c6)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$60

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_name("ADCPPB1RESULT_BITS")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x02)
$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$248, DW_AT_name("PPBRESULT")
	.dwattr $C$DW$248, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$248, DW_AT_bit_size(0x10)
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$248, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$248, DW_AT_decl_line(0x3d4)
	.dwattr $C$DW$248, DW_AT_decl_column(0x0c)

$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$249, DW_AT_name("SIGN")
	.dwattr $C$DW$249, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$249, DW_AT_bit_size(0x10)
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$249, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$249, DW_AT_decl_line(0x3d5)
	.dwattr $C$DW$249, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$61, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x3d3)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63

$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("ADCPPB1RESULT_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x02)
$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$250, DW_AT_name("all")
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$250, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$250, DW_AT_decl_line(0x3d9)
	.dwattr $C$DW$250, DW_AT_decl_column(0x0d)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$251, DW_AT_name("bit")
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$251, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$251, DW_AT_decl_line(0x3da)
	.dwattr $C$DW$251, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$63, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x3d8)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$63

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64

$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("ADCPPB1STAMP_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$252, DW_AT_name("DLYSTAMP")
	.dwattr $C$DW$252, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$252, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$252, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$252, DW_AT_decl_line(0x2b8)
	.dwattr $C$DW$252, DW_AT_decl_column(0x0c)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$253, DW_AT_name("rsvd1")
	.dwattr $C$DW$253, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$253, DW_AT_bit_size(0x04)
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$253, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$253, DW_AT_decl_line(0x2b9)
	.dwattr $C$DW$253, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$64, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x2b7)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$64

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65

$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("ADCPPB1STAMP_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$254, DW_AT_name("all")
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$254, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$254, DW_AT_decl_line(0x2bd)
	.dwattr $C$DW$254, DW_AT_decl_column(0x0d)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$255, DW_AT_name("bit")
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$255, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$255, DW_AT_decl_line(0x2be)
	.dwattr $C$DW$255, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$65, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x2bc)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$65

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66

$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("ADCPPB1TRIPHI_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x02)
$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$256, DW_AT_name("LIMITHI")
	.dwattr $C$DW$256, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$256, DW_AT_bit_size(0x10)
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$256, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$256, DW_AT_decl_line(0x2cc)
	.dwattr $C$DW$256, DW_AT_decl_column(0x0c)

$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$257, DW_AT_name("HSIGN")
	.dwattr $C$DW$257, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$257, DW_AT_bit_size(0x01)
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$257, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$257, DW_AT_decl_line(0x2cd)
	.dwattr $C$DW$257, DW_AT_decl_column(0x0c)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$258, DW_AT_name("rsvd1")
	.dwattr $C$DW$258, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$258, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$258, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$258, DW_AT_decl_line(0x2ce)
	.dwattr $C$DW$258, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$66, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x2cb)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$66

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67

$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("ADCPPB1TRIPHI_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x02)
$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$259, DW_AT_name("all")
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$259, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$259, DW_AT_decl_line(0x2d2)
	.dwattr $C$DW$259, DW_AT_decl_column(0x0d)

$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$260, DW_AT_name("bit")
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$260, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$260, DW_AT_decl_line(0x2d3)
	.dwattr $C$DW$260, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$67, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x2d1)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$67

	.dwendtag $C$DW$TU$67


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68

$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("ADCPPB1TRIPLO_BITS")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x02)
$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$261, DW_AT_name("LIMITLO")
	.dwattr $C$DW$261, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$261, DW_AT_bit_size(0x10)
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$261, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$261, DW_AT_decl_line(0x2d7)
	.dwattr $C$DW$261, DW_AT_decl_column(0x0c)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$262, DW_AT_name("LSIGN")
	.dwattr $C$DW$262, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$262, DW_AT_bit_size(0x01)
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$262, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$262, DW_AT_decl_line(0x2d8)
	.dwattr $C$DW$262, DW_AT_decl_column(0x0c)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$263, DW_AT_name("rsvd1")
	.dwattr $C$DW$263, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$263, DW_AT_bit_size(0x03)
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$263, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0x2d9)
	.dwattr $C$DW$263, DW_AT_decl_column(0x0c)

$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$264, DW_AT_name("REQSTAMP")
	.dwattr $C$DW$264, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$264, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$264, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$264, DW_AT_decl_line(0x2da)
	.dwattr $C$DW$264, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$68, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x2d6)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$68

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69

$C$DW$T$69	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$69, DW_AT_name("ADCPPB1TRIPLO_REG")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x02)
$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$265, DW_AT_name("all")
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$265, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$265, DW_AT_decl_line(0x2de)
	.dwattr $C$DW$265, DW_AT_decl_column(0x0d)

$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$266, DW_AT_name("bit")
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$266, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$266, DW_AT_decl_line(0x2df)
	.dwattr $C$DW$266, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$69, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x2dd)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$69

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70

$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("ADCPPB2CONFIG_BITS")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$267, DW_AT_name("CONFIG")
	.dwattr $C$DW$267, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$267, DW_AT_bit_size(0x04)
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$267, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$267, DW_AT_decl_line(0x2e3)
	.dwattr $C$DW$267, DW_AT_decl_column(0x0c)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$268, DW_AT_name("TWOSCOMPEN")
	.dwattr $C$DW$268, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$268, DW_AT_bit_size(0x01)
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$268, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$268, DW_AT_decl_line(0x2e4)
	.dwattr $C$DW$268, DW_AT_decl_column(0x0c)

$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$269, DW_AT_name("rsvd1")
	.dwattr $C$DW$269, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$269, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$269, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$269, DW_AT_decl_line(0x2e5)
	.dwattr $C$DW$269, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$70, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x2e2)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$70

	.dwendtag $C$DW$TU$70


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71

$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_name("ADCPPB2CONFIG_REG")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$270, DW_AT_name("all")
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$270, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$270, DW_AT_decl_line(0x2e9)
	.dwattr $C$DW$270, DW_AT_decl_column(0x0d)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$271, DW_AT_name("bit")
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$271, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0x2ea)
	.dwattr $C$DW$271, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$71, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x2e8)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$71

	.dwendtag $C$DW$TU$71


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("ADCPPB2OFFCAL_BITS")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$272, DW_AT_name("OFFCAL")
	.dwattr $C$DW$272, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$272, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$272, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$272, DW_AT_decl_line(0x2f8)
	.dwattr $C$DW$272, DW_AT_decl_column(0x0c)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$273, DW_AT_name("rsvd1")
	.dwattr $C$DW$273, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$273, DW_AT_bit_size(0x06)
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$273, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$273, DW_AT_decl_line(0x2f9)
	.dwattr $C$DW$273, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$72, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x2f7)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$72

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73

$C$DW$T$73	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$73, DW_AT_name("ADCPPB2OFFCAL_REG")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$274, DW_AT_name("all")
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$274, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$274, DW_AT_decl_line(0x2fd)
	.dwattr $C$DW$274, DW_AT_decl_column(0x0d)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$275, DW_AT_name("bit")
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$275, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$275, DW_AT_decl_line(0x2fe)
	.dwattr $C$DW$275, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$73, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x2fc)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$73

	.dwendtag $C$DW$TU$73


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74

$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_name("ADCPPB2RESULT_BITS")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x02)
$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$276, DW_AT_name("PPBRESULT")
	.dwattr $C$DW$276, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$276, DW_AT_bit_size(0x10)
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$276, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0x3de)
	.dwattr $C$DW$276, DW_AT_decl_column(0x0c)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$277, DW_AT_name("SIGN")
	.dwattr $C$DW$277, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$277, DW_AT_bit_size(0x10)
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$277, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$277, DW_AT_decl_line(0x3df)
	.dwattr $C$DW$277, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$74, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x3dd)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$74

	.dwendtag $C$DW$TU$74


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75

$C$DW$T$75	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$75, DW_AT_name("ADCPPB2RESULT_REG")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x02)
$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$278, DW_AT_name("all")
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$278, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$278, DW_AT_decl_line(0x3e3)
	.dwattr $C$DW$278, DW_AT_decl_column(0x0d)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$279, DW_AT_name("bit")
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$279, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$279, DW_AT_decl_line(0x3e4)
	.dwattr $C$DW$279, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$75, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x3e2)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$75

	.dwendtag $C$DW$TU$75


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76

$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("ADCPPB2STAMP_BITS")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x01)
$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$280, DW_AT_name("DLYSTAMP")
	.dwattr $C$DW$280, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$280, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$280, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0x2ee)
	.dwattr $C$DW$280, DW_AT_decl_column(0x0c)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$281, DW_AT_name("rsvd1")
	.dwattr $C$DW$281, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$281, DW_AT_bit_size(0x04)
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$281, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$281, DW_AT_decl_line(0x2ef)
	.dwattr $C$DW$281, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$76, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x2ed)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$76

	.dwendtag $C$DW$TU$76


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77

$C$DW$T$77	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$77, DW_AT_name("ADCPPB2STAMP_REG")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x01)
$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$282, DW_AT_name("all")
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$282, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$282, DW_AT_decl_line(0x2f3)
	.dwattr $C$DW$282, DW_AT_decl_column(0x0d)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$283, DW_AT_name("bit")
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$283, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$283, DW_AT_decl_line(0x2f4)
	.dwattr $C$DW$283, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$77, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x2f2)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$77

	.dwendtag $C$DW$TU$77


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78

$C$DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$78, DW_AT_name("ADCPPB2TRIPHI_BITS")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x02)
$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$284, DW_AT_name("LIMITHI")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$284, DW_AT_bit_size(0x10)
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$284, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$284, DW_AT_decl_line(0x302)
	.dwattr $C$DW$284, DW_AT_decl_column(0x0c)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$285, DW_AT_name("HSIGN")
	.dwattr $C$DW$285, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$285, DW_AT_bit_size(0x01)
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$285, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$285, DW_AT_decl_line(0x303)
	.dwattr $C$DW$285, DW_AT_decl_column(0x0c)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$286, DW_AT_name("rsvd1")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$286, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$286, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$286, DW_AT_decl_line(0x304)
	.dwattr $C$DW$286, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$78, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x301)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$78

	.dwendtag $C$DW$TU$78


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79

$C$DW$T$79	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$79, DW_AT_name("ADCPPB2TRIPHI_REG")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x02)
$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$287, DW_AT_name("all")
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$287, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$287, DW_AT_decl_line(0x308)
	.dwattr $C$DW$287, DW_AT_decl_column(0x0d)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$288, DW_AT_name("bit")
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$288, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$288, DW_AT_decl_line(0x309)
	.dwattr $C$DW$288, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$79, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x307)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$79

	.dwendtag $C$DW$TU$79


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80

$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("ADCPPB2TRIPLO_BITS")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x02)
$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$289, DW_AT_name("LIMITLO")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$289, DW_AT_bit_size(0x10)
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$289, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$289, DW_AT_decl_line(0x30d)
	.dwattr $C$DW$289, DW_AT_decl_column(0x0c)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$290, DW_AT_name("LSIGN")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$290, DW_AT_bit_size(0x01)
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$290, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$290, DW_AT_decl_line(0x30e)
	.dwattr $C$DW$290, DW_AT_decl_column(0x0c)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$291, DW_AT_name("rsvd1")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$291, DW_AT_bit_size(0x03)
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$291, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$291, DW_AT_decl_line(0x30f)
	.dwattr $C$DW$291, DW_AT_decl_column(0x0c)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$292, DW_AT_name("REQSTAMP")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$292, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$292, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$292, DW_AT_decl_line(0x310)
	.dwattr $C$DW$292, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$80, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x30c)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$80

	.dwendtag $C$DW$TU$80


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81

$C$DW$T$81	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$81, DW_AT_name("ADCPPB2TRIPLO_REG")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x02)
$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$293, DW_AT_name("all")
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$293, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$293, DW_AT_decl_line(0x314)
	.dwattr $C$DW$293, DW_AT_decl_column(0x0d)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$294, DW_AT_name("bit")
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$294, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0x315)
	.dwattr $C$DW$294, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$81, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x313)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$81

	.dwendtag $C$DW$TU$81


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82

$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_name("ADCPPB3CONFIG_BITS")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x01)
$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$295, DW_AT_name("CONFIG")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$295, DW_AT_bit_size(0x04)
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$295, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$295, DW_AT_decl_line(0x319)
	.dwattr $C$DW$295, DW_AT_decl_column(0x0c)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$296, DW_AT_name("TWOSCOMPEN")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$296, DW_AT_bit_size(0x01)
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$296, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$296, DW_AT_decl_line(0x31a)
	.dwattr $C$DW$296, DW_AT_decl_column(0x0c)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$297, DW_AT_name("rsvd1")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$297, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$297, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$297, DW_AT_decl_line(0x31b)
	.dwattr $C$DW$297, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$82, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x318)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$82

	.dwendtag $C$DW$TU$82


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83

$C$DW$T$83	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$83, DW_AT_name("ADCPPB3CONFIG_REG")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$298, DW_AT_name("all")
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$298, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0x31f)
	.dwattr $C$DW$298, DW_AT_decl_column(0x0d)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$299, DW_AT_name("bit")
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$299, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$299, DW_AT_decl_line(0x320)
	.dwattr $C$DW$299, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$83, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x31e)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$83

	.dwendtag $C$DW$TU$83


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84

$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("ADCPPB3OFFCAL_BITS")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x01)
$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$300, DW_AT_name("OFFCAL")
	.dwattr $C$DW$300, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$300, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$300, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$300, DW_AT_decl_line(0x32e)
	.dwattr $C$DW$300, DW_AT_decl_column(0x0c)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$301, DW_AT_name("rsvd1")
	.dwattr $C$DW$301, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$301, DW_AT_bit_size(0x06)
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$301, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$301, DW_AT_decl_line(0x32f)
	.dwattr $C$DW$301, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$84, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x32d)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$84

	.dwendtag $C$DW$TU$84


$C$DW$TU$85	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$85

$C$DW$T$85	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$85, DW_AT_name("ADCPPB3OFFCAL_REG")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$302, DW_AT_name("all")
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$302, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$302, DW_AT_decl_line(0x333)
	.dwattr $C$DW$302, DW_AT_decl_column(0x0d)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$303, DW_AT_name("bit")
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$303, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$303, DW_AT_decl_line(0x334)
	.dwattr $C$DW$303, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$85, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x332)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$85

	.dwendtag $C$DW$TU$85


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86

$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_name("ADCPPB3RESULT_BITS")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x02)
$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$304, DW_AT_name("PPBRESULT")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$304, DW_AT_bit_size(0x10)
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$304, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$304, DW_AT_decl_line(0x3e8)
	.dwattr $C$DW$304, DW_AT_decl_column(0x0c)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$305, DW_AT_name("SIGN")
	.dwattr $C$DW$305, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$305, DW_AT_bit_size(0x10)
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$305, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$305, DW_AT_decl_line(0x3e9)
	.dwattr $C$DW$305, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$86, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x3e7)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$86

	.dwendtag $C$DW$TU$86


$C$DW$TU$87	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$87

$C$DW$T$87	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$87, DW_AT_name("ADCPPB3RESULT_REG")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x02)
$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$306, DW_AT_name("all")
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$306, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$306, DW_AT_decl_line(0x3ed)
	.dwattr $C$DW$306, DW_AT_decl_column(0x0d)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$307, DW_AT_name("bit")
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$307, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0x3ee)
	.dwattr $C$DW$307, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$87, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x3ec)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$87

	.dwendtag $C$DW$TU$87


$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88

$C$DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$88, DW_AT_name("ADCPPB3STAMP_BITS")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x01)
$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$308, DW_AT_name("DLYSTAMP")
	.dwattr $C$DW$308, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$308, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$308, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0x324)
	.dwattr $C$DW$308, DW_AT_decl_column(0x0c)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$309, DW_AT_name("rsvd1")
	.dwattr $C$DW$309, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$309, DW_AT_bit_size(0x04)
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$309, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0x325)
	.dwattr $C$DW$309, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$88, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x323)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$88

	.dwendtag $C$DW$TU$88


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89

$C$DW$T$89	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$89, DW_AT_name("ADCPPB3STAMP_REG")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x01)
$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$310, DW_AT_name("all")
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$310, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$310, DW_AT_decl_line(0x329)
	.dwattr $C$DW$310, DW_AT_decl_column(0x0d)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$311, DW_AT_name("bit")
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$311, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0x32a)
	.dwattr $C$DW$311, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$89, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x328)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$89

	.dwendtag $C$DW$TU$89


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90

$C$DW$T$90	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$90, DW_AT_name("ADCPPB3TRIPHI_BITS")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x02)
$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$312, DW_AT_name("LIMITHI")
	.dwattr $C$DW$312, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$312, DW_AT_bit_size(0x10)
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$312, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0x338)
	.dwattr $C$DW$312, DW_AT_decl_column(0x0c)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$313, DW_AT_name("HSIGN")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$313, DW_AT_bit_size(0x01)
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$313, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$313, DW_AT_decl_line(0x339)
	.dwattr $C$DW$313, DW_AT_decl_column(0x0c)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$314, DW_AT_name("rsvd1")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$314, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$314, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$314, DW_AT_decl_line(0x33a)
	.dwattr $C$DW$314, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$90, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x337)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$90

	.dwendtag $C$DW$TU$90


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91

$C$DW$T$91	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$91, DW_AT_name("ADCPPB3TRIPHI_REG")
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x02)
$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$315, DW_AT_name("all")
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$315, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0x33e)
	.dwattr $C$DW$315, DW_AT_decl_column(0x0d)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$316, DW_AT_name("bit")
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$316, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0x33f)
	.dwattr $C$DW$316, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$91, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x33d)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$91

	.dwendtag $C$DW$TU$91


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92

$C$DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$92, DW_AT_name("ADCPPB3TRIPLO_BITS")
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x02)
$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$317, DW_AT_name("LIMITLO")
	.dwattr $C$DW$317, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$317, DW_AT_bit_size(0x10)
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$317, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$317, DW_AT_decl_line(0x343)
	.dwattr $C$DW$317, DW_AT_decl_column(0x0c)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$318, DW_AT_name("LSIGN")
	.dwattr $C$DW$318, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$318, DW_AT_bit_size(0x01)
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$318, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$318, DW_AT_decl_line(0x344)
	.dwattr $C$DW$318, DW_AT_decl_column(0x0c)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$319, DW_AT_name("rsvd1")
	.dwattr $C$DW$319, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$319, DW_AT_bit_size(0x03)
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$319, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$319, DW_AT_decl_line(0x345)
	.dwattr $C$DW$319, DW_AT_decl_column(0x0c)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$320, DW_AT_name("REQSTAMP")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$320, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$320, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$320, DW_AT_decl_line(0x346)
	.dwattr $C$DW$320, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$92, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x342)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$92

	.dwendtag $C$DW$TU$92


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93

$C$DW$T$93	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$93, DW_AT_name("ADCPPB3TRIPLO_REG")
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x02)
$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$321, DW_AT_name("all")
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$321, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$321, DW_AT_decl_line(0x34a)
	.dwattr $C$DW$321, DW_AT_decl_column(0x0d)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$322, DW_AT_name("bit")
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$322, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$322, DW_AT_decl_line(0x34b)
	.dwattr $C$DW$322, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$93, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x349)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$93

	.dwendtag $C$DW$TU$93


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94

$C$DW$T$94	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$94, DW_AT_name("ADCPPB4CONFIG_BITS")
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x01)
$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$323, DW_AT_name("CONFIG")
	.dwattr $C$DW$323, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$323, DW_AT_bit_size(0x04)
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$323, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$323, DW_AT_decl_line(0x34f)
	.dwattr $C$DW$323, DW_AT_decl_column(0x0c)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$324, DW_AT_name("TWOSCOMPEN")
	.dwattr $C$DW$324, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$324, DW_AT_bit_size(0x01)
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$324, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$324, DW_AT_decl_line(0x350)
	.dwattr $C$DW$324, DW_AT_decl_column(0x0c)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$325, DW_AT_name("rsvd1")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$325, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$325, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$325, DW_AT_decl_line(0x351)
	.dwattr $C$DW$325, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$94, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0x34e)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$94

	.dwendtag $C$DW$TU$94


$C$DW$TU$95	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$95

$C$DW$T$95	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$95, DW_AT_name("ADCPPB4CONFIG_REG")
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x01)
$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$326, DW_AT_name("all")
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$326, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$326, DW_AT_decl_line(0x355)
	.dwattr $C$DW$326, DW_AT_decl_column(0x0d)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$327, DW_AT_name("bit")
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$327, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0x356)
	.dwattr $C$DW$327, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$95, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x354)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$95

	.dwendtag $C$DW$TU$95


$C$DW$TU$96	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$96

$C$DW$T$96	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$96, DW_AT_name("ADCPPB4OFFCAL_BITS")
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x01)
$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$328, DW_AT_name("OFFCAL")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$328, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$328, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0x364)
	.dwattr $C$DW$328, DW_AT_decl_column(0x0c)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$329, DW_AT_name("rsvd1")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$329, DW_AT_bit_size(0x06)
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$329, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0x365)
	.dwattr $C$DW$329, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$96, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x363)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$96

	.dwendtag $C$DW$TU$96


$C$DW$TU$97	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$97

$C$DW$T$97	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$97, DW_AT_name("ADCPPB4OFFCAL_REG")
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x01)
$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$330, DW_AT_name("all")
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$330, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$330, DW_AT_decl_line(0x369)
	.dwattr $C$DW$330, DW_AT_decl_column(0x0d)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$331, DW_AT_name("bit")
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$331, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$331, DW_AT_decl_line(0x36a)
	.dwattr $C$DW$331, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$97, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x368)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$97

	.dwendtag $C$DW$TU$97


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98

$C$DW$T$98	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$98, DW_AT_name("ADCPPB4RESULT_BITS")
	.dwattr $C$DW$T$98, DW_AT_byte_size(0x02)
$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$332, DW_AT_name("PPBRESULT")
	.dwattr $C$DW$332, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$332, DW_AT_bit_size(0x10)
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$332, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$332, DW_AT_decl_line(0x3f2)
	.dwattr $C$DW$332, DW_AT_decl_column(0x0c)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$333, DW_AT_name("SIGN")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$333, DW_AT_bit_size(0x10)
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$333, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$333, DW_AT_decl_line(0x3f3)
	.dwattr $C$DW$333, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$98, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x3f1)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$98

	.dwendtag $C$DW$TU$98


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99

$C$DW$T$99	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$99, DW_AT_name("ADCPPB4RESULT_REG")
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x02)
$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$334, DW_AT_name("all")
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$334, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$334, DW_AT_decl_line(0x3f7)
	.dwattr $C$DW$334, DW_AT_decl_column(0x0d)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$335, DW_AT_name("bit")
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$335, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$335, DW_AT_decl_line(0x3f8)
	.dwattr $C$DW$335, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$99, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x3f6)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$99

	.dwendtag $C$DW$TU$99


$C$DW$TU$100	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$100

$C$DW$T$100	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$100, DW_AT_name("ADCPPB4STAMP_BITS")
	.dwattr $C$DW$T$100, DW_AT_byte_size(0x01)
$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$336, DW_AT_name("DLYSTAMP")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$336, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$336, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$336, DW_AT_decl_line(0x35a)
	.dwattr $C$DW$336, DW_AT_decl_column(0x0c)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$337, DW_AT_name("rsvd1")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$337, DW_AT_bit_size(0x04)
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$337, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$337, DW_AT_decl_line(0x35b)
	.dwattr $C$DW$337, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$100, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x359)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$100

	.dwendtag $C$DW$TU$100


$C$DW$TU$101	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$101

$C$DW$T$101	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$101, DW_AT_name("ADCPPB4STAMP_REG")
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x01)
$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$338, DW_AT_name("all")
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$338, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$338, DW_AT_decl_line(0x35f)
	.dwattr $C$DW$338, DW_AT_decl_column(0x0d)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$339, DW_AT_name("bit")
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$339, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$339, DW_AT_decl_line(0x360)
	.dwattr $C$DW$339, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$101, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x35e)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$101

	.dwendtag $C$DW$TU$101


$C$DW$TU$102	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$102

$C$DW$T$102	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$102, DW_AT_name("ADCPPB4TRIPHI_BITS")
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x02)
$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$340, DW_AT_name("LIMITHI")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$340, DW_AT_bit_size(0x10)
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$340, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$340, DW_AT_decl_line(0x36e)
	.dwattr $C$DW$340, DW_AT_decl_column(0x0c)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$341, DW_AT_name("HSIGN")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$341, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$341, DW_AT_decl_line(0x36f)
	.dwattr $C$DW$341, DW_AT_decl_column(0x0c)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$342, DW_AT_name("rsvd1")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$342, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$342, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$342, DW_AT_decl_line(0x370)
	.dwattr $C$DW$342, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$102, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x36d)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$102

	.dwendtag $C$DW$TU$102


$C$DW$TU$103	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$103

$C$DW$T$103	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$103, DW_AT_name("ADCPPB4TRIPHI_REG")
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x02)
$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$343, DW_AT_name("all")
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$343, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$343, DW_AT_decl_line(0x374)
	.dwattr $C$DW$343, DW_AT_decl_column(0x0d)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$344, DW_AT_name("bit")
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$344, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0x375)
	.dwattr $C$DW$344, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$103, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x373)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$103

	.dwendtag $C$DW$TU$103


$C$DW$TU$104	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$104

$C$DW$T$104	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$104, DW_AT_name("ADCPPB4TRIPLO_BITS")
	.dwattr $C$DW$T$104, DW_AT_byte_size(0x02)
$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$345, DW_AT_name("LIMITLO")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$345, DW_AT_bit_size(0x10)
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$345, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$345, DW_AT_decl_line(0x379)
	.dwattr $C$DW$345, DW_AT_decl_column(0x0c)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$346, DW_AT_name("LSIGN")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$346, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0x37a)
	.dwattr $C$DW$346, DW_AT_decl_column(0x0c)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$347, DW_AT_name("rsvd1")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$347, DW_AT_bit_size(0x03)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$347, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$347, DW_AT_decl_line(0x37b)
	.dwattr $C$DW$347, DW_AT_decl_column(0x0c)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$348, DW_AT_name("REQSTAMP")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$348, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$348, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$348, DW_AT_decl_line(0x37c)
	.dwattr $C$DW$348, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$104, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x378)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$104

	.dwendtag $C$DW$TU$104


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105

$C$DW$T$105	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$105, DW_AT_name("ADCPPB4TRIPLO_REG")
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x02)
$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$349, DW_AT_name("all")
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$349, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0x380)
	.dwattr $C$DW$349, DW_AT_decl_column(0x0d)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$350, DW_AT_name("bit")
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$350, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0x381)
	.dwattr $C$DW$350, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$105, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x37f)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$105

	.dwendtag $C$DW$TU$105


$C$DW$TU$106	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$106

$C$DW$T$106	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$106, DW_AT_name("ADCREV_BITS")
	.dwattr $C$DW$T$106, DW_AT_byte_size(0x01)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$351, DW_AT_name("TYPE")
	.dwattr $C$DW$351, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$351, DW_AT_bit_size(0x08)
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$351, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$351, DW_AT_decl_line(0x299)
	.dwattr $C$DW$351, DW_AT_decl_column(0x0c)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$352, DW_AT_name("REV")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$352, DW_AT_bit_size(0x08)
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$352, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$352, DW_AT_decl_line(0x29a)
	.dwattr $C$DW$352, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$106, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x298)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$106

	.dwendtag $C$DW$TU$106


$C$DW$TU$107	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$107

$C$DW$T$107	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$107, DW_AT_name("ADCREV_REG")
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x01)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$353, DW_AT_name("all")
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$353, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0x29e)
	.dwattr $C$DW$353, DW_AT_decl_column(0x0d)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$354, DW_AT_name("bit")
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$354, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0x29f)
	.dwattr $C$DW$354, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$107, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x29d)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$107

	.dwendtag $C$DW$TU$107


$C$DW$TU$108	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$108

$C$DW$T$108	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$108, DW_AT_name("ADCSOC0CTL_BITS")
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x02)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$355, DW_AT_name("ACQPS")
	.dwattr $C$DW$355, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$355, DW_AT_bit_size(0x09)
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$355, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$355, DW_AT_decl_line(0x145)
	.dwattr $C$DW$355, DW_AT_decl_column(0x0c)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$356, DW_AT_name("rsvd1")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$356, DW_AT_bit_size(0x06)
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$356, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0x146)
	.dwattr $C$DW$356, DW_AT_decl_column(0x0c)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$357, DW_AT_name("CHSEL")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$357, DW_AT_bit_size(0x04)
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$357, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$357, DW_AT_decl_line(0x147)
	.dwattr $C$DW$357, DW_AT_decl_column(0x0c)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$358, DW_AT_name("rsvd2")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$358, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0x148)
	.dwattr $C$DW$358, DW_AT_decl_column(0x0c)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$359, DW_AT_name("TRIGSEL")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$359, DW_AT_bit_size(0x05)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$359, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0x149)
	.dwattr $C$DW$359, DW_AT_decl_column(0x0c)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$360, DW_AT_name("rsvd3")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$360, DW_AT_bit_size(0x07)
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$360, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$360, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$108, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x144)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$108

	.dwendtag $C$DW$TU$108


$C$DW$TU$109	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$109

$C$DW$T$109	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$109, DW_AT_name("ADCSOC0CTL_REG")
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x02)
$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$361, DW_AT_name("all")
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$361, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$361, DW_AT_decl_column(0x0d)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$362, DW_AT_name("bit")
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$362, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$362, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$109, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$109

	.dwendtag $C$DW$TU$109


$C$DW$TU$110	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$110

$C$DW$T$110	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$110, DW_AT_name("ADCSOC10CTL_BITS")
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x02)
$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$363, DW_AT_name("ACQPS")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$363, DW_AT_bit_size(0x09)
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$363, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0x1d1)
	.dwattr $C$DW$363, DW_AT_decl_column(0x0c)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$364, DW_AT_name("rsvd1")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$364, DW_AT_bit_size(0x06)
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$364, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$364, DW_AT_decl_column(0x0c)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$365, DW_AT_name("CHSEL")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$365, DW_AT_bit_size(0x04)
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$365, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$365, DW_AT_decl_line(0x1d3)
	.dwattr $C$DW$365, DW_AT_decl_column(0x0c)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$366, DW_AT_name("rsvd2")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$366, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0x1d4)
	.dwattr $C$DW$366, DW_AT_decl_column(0x0c)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$367, DW_AT_name("TRIGSEL")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$367, DW_AT_bit_size(0x05)
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$367, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0x1d5)
	.dwattr $C$DW$367, DW_AT_decl_column(0x0c)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$368, DW_AT_name("rsvd3")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$368, DW_AT_bit_size(0x07)
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$368, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0x1d6)
	.dwattr $C$DW$368, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$110, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x1d0)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$110

	.dwendtag $C$DW$TU$110


$C$DW$TU$111	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$111

$C$DW$T$111	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$111, DW_AT_name("ADCSOC10CTL_REG")
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x02)
$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$369, DW_AT_name("all")
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$369, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0x1da)
	.dwattr $C$DW$369, DW_AT_decl_column(0x0d)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$370, DW_AT_name("bit")
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$370, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0x1db)
	.dwattr $C$DW$370, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$111, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x1d9)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$111

	.dwendtag $C$DW$TU$111


$C$DW$TU$112	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$112

$C$DW$T$112	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$112, DW_AT_name("ADCSOC11CTL_BITS")
	.dwattr $C$DW$T$112, DW_AT_byte_size(0x02)
$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$371, DW_AT_name("ACQPS")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$371, DW_AT_bit_size(0x09)
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$371, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0x1df)
	.dwattr $C$DW$371, DW_AT_decl_column(0x0c)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$372, DW_AT_name("rsvd1")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$372, DW_AT_bit_size(0x06)
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$372, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0x1e0)
	.dwattr $C$DW$372, DW_AT_decl_column(0x0c)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$373, DW_AT_name("CHSEL")
	.dwattr $C$DW$373, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$373, DW_AT_bit_size(0x04)
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$373, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0x1e1)
	.dwattr $C$DW$373, DW_AT_decl_column(0x0c)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$374, DW_AT_name("rsvd2")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$374, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0x1e2)
	.dwattr $C$DW$374, DW_AT_decl_column(0x0c)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$375, DW_AT_name("TRIGSEL")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$375, DW_AT_bit_size(0x05)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$375, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0x1e3)
	.dwattr $C$DW$375, DW_AT_decl_column(0x0c)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$376, DW_AT_name("rsvd3")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$376, DW_AT_bit_size(0x07)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$376, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0x1e4)
	.dwattr $C$DW$376, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$112, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x1de)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$112

	.dwendtag $C$DW$TU$112


$C$DW$TU$113	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$113

$C$DW$T$113	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$113, DW_AT_name("ADCSOC11CTL_REG")
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x02)
$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$377, DW_AT_name("all")
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$377, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0x1e8)
	.dwattr $C$DW$377, DW_AT_decl_column(0x0d)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$378, DW_AT_name("bit")
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$378, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0x1e9)
	.dwattr $C$DW$378, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$113, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x1e7)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$113

	.dwendtag $C$DW$TU$113


$C$DW$TU$114	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$114

$C$DW$T$114	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$114, DW_AT_name("ADCSOC12CTL_BITS")
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x02)
$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$379, DW_AT_name("ACQPS")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$379, DW_AT_bit_size(0x09)
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$379, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0x1ed)
	.dwattr $C$DW$379, DW_AT_decl_column(0x0c)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$380, DW_AT_name("rsvd1")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$380, DW_AT_bit_size(0x06)
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$380, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0x1ee)
	.dwattr $C$DW$380, DW_AT_decl_column(0x0c)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$381, DW_AT_name("CHSEL")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$381, DW_AT_bit_size(0x04)
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$381, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0x1ef)
	.dwattr $C$DW$381, DW_AT_decl_column(0x0c)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$382, DW_AT_name("rsvd2")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$382, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0x1f0)
	.dwattr $C$DW$382, DW_AT_decl_column(0x0c)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$383, DW_AT_name("TRIGSEL")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$383, DW_AT_bit_size(0x05)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$383, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0x1f1)
	.dwattr $C$DW$383, DW_AT_decl_column(0x0c)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$384, DW_AT_name("rsvd3")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$384, DW_AT_bit_size(0x07)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$384, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0x1f2)
	.dwattr $C$DW$384, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$114, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x1ec)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$114

	.dwendtag $C$DW$TU$114


$C$DW$TU$115	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$115

$C$DW$T$115	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$115, DW_AT_name("ADCSOC12CTL_REG")
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x02)
$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$385, DW_AT_name("all")
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$385, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x1f6)
	.dwattr $C$DW$385, DW_AT_decl_column(0x0d)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$386, DW_AT_name("bit")
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$386, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0x1f7)
	.dwattr $C$DW$386, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$115, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$115, DW_AT_decl_line(0x1f5)
	.dwattr $C$DW$T$115, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$115

	.dwendtag $C$DW$TU$115


$C$DW$TU$116	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$116

$C$DW$T$116	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$116, DW_AT_name("ADCSOC13CTL_BITS")
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x02)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$387, DW_AT_name("ACQPS")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$387, DW_AT_bit_size(0x09)
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$387, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0x1fb)
	.dwattr $C$DW$387, DW_AT_decl_column(0x0c)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$388, DW_AT_name("rsvd1")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$388, DW_AT_bit_size(0x06)
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$388, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0x1fc)
	.dwattr $C$DW$388, DW_AT_decl_column(0x0c)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$389, DW_AT_name("CHSEL")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$389, DW_AT_bit_size(0x04)
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$389, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0x1fd)
	.dwattr $C$DW$389, DW_AT_decl_column(0x0c)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$390, DW_AT_name("rsvd2")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$390, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0x1fe)
	.dwattr $C$DW$390, DW_AT_decl_column(0x0c)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$391, DW_AT_name("TRIGSEL")
	.dwattr $C$DW$391, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$391, DW_AT_bit_size(0x05)
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$391, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0x1ff)
	.dwattr $C$DW$391, DW_AT_decl_column(0x0c)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$392, DW_AT_name("rsvd3")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$392, DW_AT_bit_size(0x07)
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$392, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0x200)
	.dwattr $C$DW$392, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$116, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x1fa)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$116

	.dwendtag $C$DW$TU$116


$C$DW$TU$117	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$117

$C$DW$T$117	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$117, DW_AT_name("ADCSOC13CTL_REG")
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x02)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$393, DW_AT_name("all")
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$393, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0x204)
	.dwattr $C$DW$393, DW_AT_decl_column(0x0d)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$394, DW_AT_name("bit")
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$394, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0x205)
	.dwattr $C$DW$394, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$117, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x203)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$117

	.dwendtag $C$DW$TU$117


$C$DW$TU$118	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$118

$C$DW$T$118	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$118, DW_AT_name("ADCSOC14CTL_BITS")
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x02)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$395, DW_AT_name("ACQPS")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$395, DW_AT_bit_size(0x09)
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$395, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x209)
	.dwattr $C$DW$395, DW_AT_decl_column(0x0c)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$396, DW_AT_name("rsvd1")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$396, DW_AT_bit_size(0x06)
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$396, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x20a)
	.dwattr $C$DW$396, DW_AT_decl_column(0x0c)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$397, DW_AT_name("CHSEL")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$397, DW_AT_bit_size(0x04)
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$397, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x20b)
	.dwattr $C$DW$397, DW_AT_decl_column(0x0c)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$398, DW_AT_name("rsvd2")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$398, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x20c)
	.dwattr $C$DW$398, DW_AT_decl_column(0x0c)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$399, DW_AT_name("TRIGSEL")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$399, DW_AT_bit_size(0x05)
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$399, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x20d)
	.dwattr $C$DW$399, DW_AT_decl_column(0x0c)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$400, DW_AT_name("rsvd3")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$400, DW_AT_bit_size(0x07)
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$400, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x20e)
	.dwattr $C$DW$400, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$118, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$118, DW_AT_decl_line(0x208)
	.dwattr $C$DW$T$118, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$118

	.dwendtag $C$DW$TU$118


$C$DW$TU$119	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$119

$C$DW$T$119	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$119, DW_AT_name("ADCSOC14CTL_REG")
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x02)
$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$401, DW_AT_name("all")
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$401, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x212)
	.dwattr $C$DW$401, DW_AT_decl_column(0x0d)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$402, DW_AT_name("bit")
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$402, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0x213)
	.dwattr $C$DW$402, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$119, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x211)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$119

	.dwendtag $C$DW$TU$119


$C$DW$TU$120	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$120

$C$DW$T$120	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$120, DW_AT_name("ADCSOC15CTL_BITS")
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x02)
$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$403, DW_AT_name("ACQPS")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$403, DW_AT_bit_size(0x09)
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$403, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0x217)
	.dwattr $C$DW$403, DW_AT_decl_column(0x0c)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$404, DW_AT_name("rsvd1")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$404, DW_AT_bit_size(0x06)
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$404, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x218)
	.dwattr $C$DW$404, DW_AT_decl_column(0x0c)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$405, DW_AT_name("CHSEL")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$405, DW_AT_bit_size(0x04)
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$405, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x219)
	.dwattr $C$DW$405, DW_AT_decl_column(0x0c)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$406, DW_AT_name("rsvd2")
	.dwattr $C$DW$406, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$406, DW_AT_bit_size(0x01)
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$406, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0x21a)
	.dwattr $C$DW$406, DW_AT_decl_column(0x0c)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$407, DW_AT_name("TRIGSEL")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$407, DW_AT_bit_size(0x05)
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$407, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0x21b)
	.dwattr $C$DW$407, DW_AT_decl_column(0x0c)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$408, DW_AT_name("rsvd3")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$408, DW_AT_bit_size(0x07)
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$408, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0x21c)
	.dwattr $C$DW$408, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$120, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x216)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$120

	.dwendtag $C$DW$TU$120


$C$DW$TU$121	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$121

$C$DW$T$121	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$121, DW_AT_name("ADCSOC15CTL_REG")
	.dwattr $C$DW$T$121, DW_AT_byte_size(0x02)
$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$409, DW_AT_name("all")
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$409, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0x220)
	.dwattr $C$DW$409, DW_AT_decl_column(0x0d)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$410, DW_AT_name("bit")
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$410, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0x221)
	.dwattr $C$DW$410, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$121, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$121, DW_AT_decl_line(0x21f)
	.dwattr $C$DW$T$121, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$121

	.dwendtag $C$DW$TU$121


$C$DW$TU$122	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$122

$C$DW$T$122	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$122, DW_AT_name("ADCSOC1CTL_BITS")
	.dwattr $C$DW$T$122, DW_AT_byte_size(0x02)
$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$411, DW_AT_name("ACQPS")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$411, DW_AT_bit_size(0x09)
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$411, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0x153)
	.dwattr $C$DW$411, DW_AT_decl_column(0x0c)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$412, DW_AT_name("rsvd1")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$412, DW_AT_bit_size(0x06)
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$412, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0x154)
	.dwattr $C$DW$412, DW_AT_decl_column(0x0c)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$413, DW_AT_name("CHSEL")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$413, DW_AT_bit_size(0x04)
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$413, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0x155)
	.dwattr $C$DW$413, DW_AT_decl_column(0x0c)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$414, DW_AT_name("rsvd2")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$414, DW_AT_bit_size(0x01)
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$414, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0x156)
	.dwattr $C$DW$414, DW_AT_decl_column(0x0c)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$415, DW_AT_name("TRIGSEL")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$415, DW_AT_bit_size(0x05)
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$415, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x157)
	.dwattr $C$DW$415, DW_AT_decl_column(0x0c)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$416, DW_AT_name("rsvd3")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$416, DW_AT_bit_size(0x07)
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$416, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0x158)
	.dwattr $C$DW$416, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$122, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0x152)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$122

	.dwendtag $C$DW$TU$122


$C$DW$TU$123	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$123

$C$DW$T$123	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$123, DW_AT_name("ADCSOC1CTL_REG")
	.dwattr $C$DW$T$123, DW_AT_byte_size(0x02)
$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$417, DW_AT_name("all")
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$417, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x15c)
	.dwattr $C$DW$417, DW_AT_decl_column(0x0d)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$418, DW_AT_name("bit")
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$418, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$418, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$123, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x15b)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$123

	.dwendtag $C$DW$TU$123


$C$DW$TU$124	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$124

$C$DW$T$124	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$124, DW_AT_name("ADCSOC2CTL_BITS")
	.dwattr $C$DW$T$124, DW_AT_byte_size(0x02)
$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$419, DW_AT_name("ACQPS")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$419, DW_AT_bit_size(0x09)
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$419, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x161)
	.dwattr $C$DW$419, DW_AT_decl_column(0x0c)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$420, DW_AT_name("rsvd1")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$420, DW_AT_bit_size(0x06)
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$420, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0x162)
	.dwattr $C$DW$420, DW_AT_decl_column(0x0c)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$421, DW_AT_name("CHSEL")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$421, DW_AT_bit_size(0x04)
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$421, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0x163)
	.dwattr $C$DW$421, DW_AT_decl_column(0x0c)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$422, DW_AT_name("rsvd2")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$422, DW_AT_bit_size(0x01)
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$422, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0x164)
	.dwattr $C$DW$422, DW_AT_decl_column(0x0c)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$423, DW_AT_name("TRIGSEL")
	.dwattr $C$DW$423, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$423, DW_AT_bit_size(0x05)
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$423, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0x165)
	.dwattr $C$DW$423, DW_AT_decl_column(0x0c)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$424, DW_AT_name("rsvd3")
	.dwattr $C$DW$424, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$424, DW_AT_bit_size(0x07)
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$424, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x166)
	.dwattr $C$DW$424, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$124, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$124, DW_AT_decl_line(0x160)
	.dwattr $C$DW$T$124, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$124

	.dwendtag $C$DW$TU$124


$C$DW$TU$125	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$125

$C$DW$T$125	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$125, DW_AT_name("ADCSOC2CTL_REG")
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x02)
$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$425, DW_AT_name("all")
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$425, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$425, DW_AT_decl_column(0x0d)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$426, DW_AT_name("bit")
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$426, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$426, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$125, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$125, DW_AT_decl_line(0x169)
	.dwattr $C$DW$T$125, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$125

	.dwendtag $C$DW$TU$125


$C$DW$TU$126	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$126

$C$DW$T$126	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$126, DW_AT_name("ADCSOC3CTL_BITS")
	.dwattr $C$DW$T$126, DW_AT_byte_size(0x02)
$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$427, DW_AT_name("ACQPS")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$427, DW_AT_bit_size(0x09)
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$427, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$427, DW_AT_decl_column(0x0c)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$428, DW_AT_name("rsvd1")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$428, DW_AT_bit_size(0x06)
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$428, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0x170)
	.dwattr $C$DW$428, DW_AT_decl_column(0x0c)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$429, DW_AT_name("CHSEL")
	.dwattr $C$DW$429, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$429, DW_AT_bit_size(0x04)
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$429, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0x171)
	.dwattr $C$DW$429, DW_AT_decl_column(0x0c)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$430, DW_AT_name("rsvd2")
	.dwattr $C$DW$430, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$430, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0x172)
	.dwattr $C$DW$430, DW_AT_decl_column(0x0c)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$431, DW_AT_name("TRIGSEL")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$431, DW_AT_bit_size(0x05)
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$431, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0x173)
	.dwattr $C$DW$431, DW_AT_decl_column(0x0c)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$432, DW_AT_name("rsvd3")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$432, DW_AT_bit_size(0x07)
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$432, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0x174)
	.dwattr $C$DW$432, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$126, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$126, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$T$126, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$126

	.dwendtag $C$DW$TU$126


$C$DW$TU$127	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$127

$C$DW$T$127	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$127, DW_AT_name("ADCSOC3CTL_REG")
	.dwattr $C$DW$T$127, DW_AT_byte_size(0x02)
$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$433, DW_AT_name("all")
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$433, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x178)
	.dwattr $C$DW$433, DW_AT_decl_column(0x0d)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$434, DW_AT_name("bit")
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$434, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x179)
	.dwattr $C$DW$434, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$127, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$127, DW_AT_decl_line(0x177)
	.dwattr $C$DW$T$127, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$127

	.dwendtag $C$DW$TU$127


$C$DW$TU$128	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$128

$C$DW$T$128	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$128, DW_AT_name("ADCSOC4CTL_BITS")
	.dwattr $C$DW$T$128, DW_AT_byte_size(0x02)
$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$435, DW_AT_name("ACQPS")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$435, DW_AT_bit_size(0x09)
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$435, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$435, DW_AT_decl_column(0x0c)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$436, DW_AT_name("rsvd1")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$436, DW_AT_bit_size(0x06)
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$436, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$436, DW_AT_decl_column(0x0c)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$437, DW_AT_name("CHSEL")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$437, DW_AT_bit_size(0x04)
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$437, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$437, DW_AT_decl_column(0x0c)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$438, DW_AT_name("rsvd2")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$438, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0x180)
	.dwattr $C$DW$438, DW_AT_decl_column(0x0c)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$439, DW_AT_name("TRIGSEL")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$439, DW_AT_bit_size(0x05)
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$439, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0x181)
	.dwattr $C$DW$439, DW_AT_decl_column(0x0c)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$440, DW_AT_name("rsvd3")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$440, DW_AT_bit_size(0x07)
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$440, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0x182)
	.dwattr $C$DW$440, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$128, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$128, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$T$128, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$128

	.dwendtag $C$DW$TU$128


$C$DW$TU$129	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$129

$C$DW$T$129	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$129, DW_AT_name("ADCSOC4CTL_REG")
	.dwattr $C$DW$T$129, DW_AT_byte_size(0x02)
$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$441, DW_AT_name("all")
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$441, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0x186)
	.dwattr $C$DW$441, DW_AT_decl_column(0x0d)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$442, DW_AT_name("bit")
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$442, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0x187)
	.dwattr $C$DW$442, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$129, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$129, DW_AT_decl_line(0x185)
	.dwattr $C$DW$T$129, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$129

	.dwendtag $C$DW$TU$129


$C$DW$TU$130	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$130

$C$DW$T$130	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$130, DW_AT_name("ADCSOC5CTL_BITS")
	.dwattr $C$DW$T$130, DW_AT_byte_size(0x02)
$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$443, DW_AT_name("ACQPS")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$443, DW_AT_bit_size(0x09)
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$443, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0x18b)
	.dwattr $C$DW$443, DW_AT_decl_column(0x0c)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$444, DW_AT_name("rsvd1")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$444, DW_AT_bit_size(0x06)
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$444, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$444, DW_AT_decl_column(0x0c)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$445, DW_AT_name("CHSEL")
	.dwattr $C$DW$445, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$445, DW_AT_bit_size(0x04)
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$445, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$445, DW_AT_decl_column(0x0c)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$446, DW_AT_name("rsvd2")
	.dwattr $C$DW$446, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$446, DW_AT_bit_size(0x01)
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$446, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$446, DW_AT_decl_column(0x0c)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$447, DW_AT_name("TRIGSEL")
	.dwattr $C$DW$447, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$447, DW_AT_bit_size(0x05)
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$447, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$447, DW_AT_decl_column(0x0c)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$448, DW_AT_name("rsvd3")
	.dwattr $C$DW$448, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$448, DW_AT_bit_size(0x07)
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$448, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0x190)
	.dwattr $C$DW$448, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$130, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$130

	.dwendtag $C$DW$TU$130


$C$DW$TU$131	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$131

$C$DW$T$131	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$131, DW_AT_name("ADCSOC5CTL_REG")
	.dwattr $C$DW$T$131, DW_AT_byte_size(0x02)
$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$449, DW_AT_name("all")
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$449, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0x194)
	.dwattr $C$DW$449, DW_AT_decl_column(0x0d)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$450, DW_AT_name("bit")
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$450, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0x195)
	.dwattr $C$DW$450, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$131, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x193)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$131

	.dwendtag $C$DW$TU$131


$C$DW$TU$132	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$132

$C$DW$T$132	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$132, DW_AT_name("ADCSOC6CTL_BITS")
	.dwattr $C$DW$T$132, DW_AT_byte_size(0x02)
$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$451, DW_AT_name("ACQPS")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$451, DW_AT_bit_size(0x09)
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$451, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0x199)
	.dwattr $C$DW$451, DW_AT_decl_column(0x0c)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$452, DW_AT_name("rsvd1")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$452, DW_AT_bit_size(0x06)
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$452, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$452, DW_AT_decl_column(0x0c)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$453, DW_AT_name("CHSEL")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$453, DW_AT_bit_size(0x04)
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$453, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$453, DW_AT_decl_column(0x0c)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$454, DW_AT_name("rsvd2")
	.dwattr $C$DW$454, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$454, DW_AT_bit_size(0x01)
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$454, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$454, DW_AT_decl_column(0x0c)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$455, DW_AT_name("TRIGSEL")
	.dwattr $C$DW$455, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$455, DW_AT_bit_size(0x05)
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$455, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$455, DW_AT_decl_column(0x0c)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$456, DW_AT_name("rsvd3")
	.dwattr $C$DW$456, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$456, DW_AT_bit_size(0x07)
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$456, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0x19e)
	.dwattr $C$DW$456, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$132, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$132, DW_AT_decl_line(0x198)
	.dwattr $C$DW$T$132, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$132

	.dwendtag $C$DW$TU$132


$C$DW$TU$133	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$133

$C$DW$T$133	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$133, DW_AT_name("ADCSOC6CTL_REG")
	.dwattr $C$DW$T$133, DW_AT_byte_size(0x02)
$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$457, DW_AT_name("all")
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$457, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$457, DW_AT_decl_column(0x0d)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$458, DW_AT_name("bit")
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$458, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x1a3)
	.dwattr $C$DW$458, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$133, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$133, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$T$133, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$133

	.dwendtag $C$DW$TU$133


$C$DW$TU$134	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$134

$C$DW$T$134	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$134, DW_AT_name("ADCSOC7CTL_BITS")
	.dwattr $C$DW$T$134, DW_AT_byte_size(0x02)
$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$459, DW_AT_name("ACQPS")
	.dwattr $C$DW$459, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$459, DW_AT_bit_size(0x09)
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$459, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x1a7)
	.dwattr $C$DW$459, DW_AT_decl_column(0x0c)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$460, DW_AT_name("rsvd1")
	.dwattr $C$DW$460, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$460, DW_AT_bit_size(0x06)
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$460, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x1a8)
	.dwattr $C$DW$460, DW_AT_decl_column(0x0c)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$461, DW_AT_name("CHSEL")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$461, DW_AT_bit_size(0x04)
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$461, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0x1a9)
	.dwattr $C$DW$461, DW_AT_decl_column(0x0c)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$462, DW_AT_name("rsvd2")
	.dwattr $C$DW$462, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$462, DW_AT_bit_size(0x01)
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$462, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0x1aa)
	.dwattr $C$DW$462, DW_AT_decl_column(0x0c)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$463, DW_AT_name("TRIGSEL")
	.dwattr $C$DW$463, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$463, DW_AT_bit_size(0x05)
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$463, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$463, DW_AT_decl_column(0x0c)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$464, DW_AT_name("rsvd3")
	.dwattr $C$DW$464, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$464, DW_AT_bit_size(0x07)
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$464, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0x1ac)
	.dwattr $C$DW$464, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$134, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0x1a6)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$134

	.dwendtag $C$DW$TU$134


$C$DW$TU$135	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$135

$C$DW$T$135	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$135, DW_AT_name("ADCSOC7CTL_REG")
	.dwattr $C$DW$T$135, DW_AT_byte_size(0x02)
$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$465, DW_AT_name("all")
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$465, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x1b0)
	.dwattr $C$DW$465, DW_AT_decl_column(0x0d)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$466, DW_AT_name("bit")
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$466, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0x1b1)
	.dwattr $C$DW$466, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$135, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$135, DW_AT_decl_line(0x1af)
	.dwattr $C$DW$T$135, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$135

	.dwendtag $C$DW$TU$135


$C$DW$TU$136	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$136

$C$DW$T$136	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$136, DW_AT_name("ADCSOC8CTL_BITS")
	.dwattr $C$DW$T$136, DW_AT_byte_size(0x02)
$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$467, DW_AT_name("ACQPS")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$467, DW_AT_bit_size(0x09)
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$467, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$467, DW_AT_decl_column(0x0c)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$468, DW_AT_name("rsvd1")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$468, DW_AT_bit_size(0x06)
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$468, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$468, DW_AT_decl_column(0x0c)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$469, DW_AT_name("CHSEL")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$469, DW_AT_bit_size(0x04)
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$469, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x1b7)
	.dwattr $C$DW$469, DW_AT_decl_column(0x0c)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$470, DW_AT_name("rsvd2")
	.dwattr $C$DW$470, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$470, DW_AT_bit_size(0x01)
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$470, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$470, DW_AT_decl_column(0x0c)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$471, DW_AT_name("TRIGSEL")
	.dwattr $C$DW$471, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$471, DW_AT_bit_size(0x05)
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$471, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$471, DW_AT_decl_column(0x0c)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$472, DW_AT_name("rsvd3")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$472, DW_AT_bit_size(0x07)
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$472, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$472, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$136, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$136

	.dwendtag $C$DW$TU$136


$C$DW$TU$137	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$137

$C$DW$T$137	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$137, DW_AT_name("ADCSOC8CTL_REG")
	.dwattr $C$DW$T$137, DW_AT_byte_size(0x02)
$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$473, DW_AT_name("all")
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$473, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x1be)
	.dwattr $C$DW$473, DW_AT_decl_column(0x0d)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$474, DW_AT_name("bit")
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$474, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$474, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$137, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$137

	.dwendtag $C$DW$TU$137


$C$DW$TU$138	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$138

$C$DW$T$138	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$138, DW_AT_name("ADCSOC9CTL_BITS")
	.dwattr $C$DW$T$138, DW_AT_byte_size(0x02)
$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$475, DW_AT_name("ACQPS")
	.dwattr $C$DW$475, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$475, DW_AT_bit_size(0x09)
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$475, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0x1c3)
	.dwattr $C$DW$475, DW_AT_decl_column(0x0c)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$476, DW_AT_name("rsvd1")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$476, DW_AT_bit_size(0x06)
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$476, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0x1c4)
	.dwattr $C$DW$476, DW_AT_decl_column(0x0c)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$477, DW_AT_name("CHSEL")
	.dwattr $C$DW$477, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$477, DW_AT_bit_size(0x04)
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$477, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0x1c5)
	.dwattr $C$DW$477, DW_AT_decl_column(0x0c)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$478, DW_AT_name("rsvd2")
	.dwattr $C$DW$478, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$478, DW_AT_bit_size(0x01)
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$478, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0x1c6)
	.dwattr $C$DW$478, DW_AT_decl_column(0x0c)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$479, DW_AT_name("TRIGSEL")
	.dwattr $C$DW$479, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$479, DW_AT_bit_size(0x05)
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$479, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0x1c7)
	.dwattr $C$DW$479, DW_AT_decl_column(0x0c)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$480, DW_AT_name("rsvd3")
	.dwattr $C$DW$480, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$480, DW_AT_bit_size(0x07)
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$480, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$480, DW_AT_decl_line(0x1c8)
	.dwattr $C$DW$480, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$138, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$138, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$T$138, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$138

	.dwendtag $C$DW$TU$138


$C$DW$TU$139	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$139

$C$DW$T$139	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$139, DW_AT_name("ADCSOC9CTL_REG")
	.dwattr $C$DW$T$139, DW_AT_byte_size(0x02)
$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$481, DW_AT_name("all")
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$481, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0x1cc)
	.dwattr $C$DW$481, DW_AT_decl_column(0x0d)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$482, DW_AT_name("bit")
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$482, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0x1cd)
	.dwattr $C$DW$482, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$139, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0x1cb)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$139

	.dwendtag $C$DW$TU$139


$C$DW$TU$140	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$140

$C$DW$T$140	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$140, DW_AT_name("ADCSOCFLG1_BITS")
	.dwattr $C$DW$T$140, DW_AT_byte_size(0x01)
$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$483, DW_AT_name("SOC0")
	.dwattr $C$DW$483, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$483, DW_AT_bit_size(0x01)
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$483, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$483, DW_AT_decl_column(0x0c)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$484, DW_AT_name("SOC1")
	.dwattr $C$DW$484, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$484, DW_AT_bit_size(0x01)
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$484, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$484, DW_AT_decl_column(0x0c)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$485, DW_AT_name("SOC2")
	.dwattr $C$DW$485, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$485, DW_AT_bit_size(0x01)
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$485, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$485, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$485, DW_AT_decl_column(0x0c)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$486, DW_AT_name("SOC3")
	.dwattr $C$DW$486, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$486, DW_AT_bit_size(0x01)
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$486, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$486, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$486, DW_AT_decl_column(0x0c)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$487, DW_AT_name("SOC4")
	.dwattr $C$DW$487, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$487, DW_AT_bit_size(0x01)
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$487, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$487, DW_AT_decl_column(0x0c)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$488, DW_AT_name("SOC5")
	.dwattr $C$DW$488, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$488, DW_AT_bit_size(0x01)
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$488, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$488, DW_AT_decl_line(0xea)
	.dwattr $C$DW$488, DW_AT_decl_column(0x0c)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$489, DW_AT_name("SOC6")
	.dwattr $C$DW$489, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$489, DW_AT_bit_size(0x01)
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$489, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$489, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$489, DW_AT_decl_column(0x0c)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$490, DW_AT_name("SOC7")
	.dwattr $C$DW$490, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$490, DW_AT_bit_size(0x01)
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$490, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$490, DW_AT_decl_line(0xec)
	.dwattr $C$DW$490, DW_AT_decl_column(0x0c)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$491, DW_AT_name("SOC8")
	.dwattr $C$DW$491, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$491, DW_AT_bit_size(0x01)
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$491, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$491, DW_AT_decl_line(0xed)
	.dwattr $C$DW$491, DW_AT_decl_column(0x0c)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$492, DW_AT_name("SOC9")
	.dwattr $C$DW$492, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$492, DW_AT_bit_size(0x01)
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$492, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0xee)
	.dwattr $C$DW$492, DW_AT_decl_column(0x0c)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$493, DW_AT_name("SOC10")
	.dwattr $C$DW$493, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$493, DW_AT_bit_size(0x01)
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$493, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$493, DW_AT_decl_line(0xef)
	.dwattr $C$DW$493, DW_AT_decl_column(0x0c)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$494, DW_AT_name("SOC11")
	.dwattr $C$DW$494, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$494, DW_AT_bit_size(0x01)
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$494, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$494, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$494, DW_AT_decl_column(0x0c)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$495, DW_AT_name("SOC12")
	.dwattr $C$DW$495, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$495, DW_AT_bit_size(0x01)
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$495, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$495, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$495, DW_AT_decl_column(0x0c)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$496, DW_AT_name("SOC13")
	.dwattr $C$DW$496, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$496, DW_AT_bit_size(0x01)
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$496, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$496, DW_AT_decl_column(0x0c)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$497, DW_AT_name("SOC14")
	.dwattr $C$DW$497, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$497, DW_AT_bit_size(0x01)
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$497, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$497, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$497, DW_AT_decl_column(0x0c)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$498, DW_AT_name("SOC15")
	.dwattr $C$DW$498, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$498, DW_AT_bit_size(0x01)
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$498, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$498, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$498, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$140, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$140

	.dwendtag $C$DW$TU$140


$C$DW$TU$141	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$141

$C$DW$T$141	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$141, DW_AT_name("ADCSOCFLG1_REG")
	.dwattr $C$DW$T$141, DW_AT_byte_size(0x01)
$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$499, DW_AT_name("all")
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$499, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$499, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$499, DW_AT_decl_column(0x0d)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$500, DW_AT_name("bit")
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$500, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$500, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$500, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$141, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$141, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$T$141, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$141

	.dwendtag $C$DW$TU$141


$C$DW$TU$142	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$142

$C$DW$T$142	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$142, DW_AT_name("ADCSOCFRC1_BITS")
	.dwattr $C$DW$T$142, DW_AT_byte_size(0x01)
$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$501, DW_AT_name("SOC0")
	.dwattr $C$DW$501, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$501, DW_AT_bit_size(0x01)
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$501, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$501, DW_AT_decl_column(0x0c)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$502, DW_AT_name("SOC1")
	.dwattr $C$DW$502, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$502, DW_AT_bit_size(0x01)
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$502, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$502, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$502, DW_AT_decl_column(0x0c)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$503, DW_AT_name("SOC2")
	.dwattr $C$DW$503, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$503, DW_AT_bit_size(0x01)
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$503, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$503, DW_AT_decl_line(0xff)
	.dwattr $C$DW$503, DW_AT_decl_column(0x0c)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$504, DW_AT_name("SOC3")
	.dwattr $C$DW$504, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$504, DW_AT_bit_size(0x01)
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$504, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$504, DW_AT_decl_line(0x100)
	.dwattr $C$DW$504, DW_AT_decl_column(0x0c)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$505, DW_AT_name("SOC4")
	.dwattr $C$DW$505, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$505, DW_AT_bit_size(0x01)
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$505, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$505, DW_AT_decl_line(0x101)
	.dwattr $C$DW$505, DW_AT_decl_column(0x0c)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$506, DW_AT_name("SOC5")
	.dwattr $C$DW$506, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$506, DW_AT_bit_size(0x01)
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$506, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0x102)
	.dwattr $C$DW$506, DW_AT_decl_column(0x0c)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$507, DW_AT_name("SOC6")
	.dwattr $C$DW$507, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$507, DW_AT_bit_size(0x01)
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$507, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$507, DW_AT_decl_line(0x103)
	.dwattr $C$DW$507, DW_AT_decl_column(0x0c)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$508, DW_AT_name("SOC7")
	.dwattr $C$DW$508, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$508, DW_AT_bit_size(0x01)
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$508, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$508, DW_AT_decl_line(0x104)
	.dwattr $C$DW$508, DW_AT_decl_column(0x0c)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$509, DW_AT_name("SOC8")
	.dwattr $C$DW$509, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$509, DW_AT_bit_size(0x01)
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$509, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$509, DW_AT_decl_line(0x105)
	.dwattr $C$DW$509, DW_AT_decl_column(0x0c)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$510, DW_AT_name("SOC9")
	.dwattr $C$DW$510, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$510, DW_AT_bit_size(0x01)
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$510, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$510, DW_AT_decl_line(0x106)
	.dwattr $C$DW$510, DW_AT_decl_column(0x0c)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$511, DW_AT_name("SOC10")
	.dwattr $C$DW$511, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$511, DW_AT_bit_size(0x01)
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$511, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$511, DW_AT_decl_line(0x107)
	.dwattr $C$DW$511, DW_AT_decl_column(0x0c)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$512, DW_AT_name("SOC11")
	.dwattr $C$DW$512, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$512, DW_AT_bit_size(0x01)
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$512, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$512, DW_AT_decl_line(0x108)
	.dwattr $C$DW$512, DW_AT_decl_column(0x0c)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$513, DW_AT_name("SOC12")
	.dwattr $C$DW$513, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$513, DW_AT_bit_size(0x01)
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$513, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$513, DW_AT_decl_line(0x109)
	.dwattr $C$DW$513, DW_AT_decl_column(0x0c)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$514, DW_AT_name("SOC13")
	.dwattr $C$DW$514, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$514, DW_AT_bit_size(0x01)
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$514, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$514, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$514, DW_AT_decl_column(0x0c)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$515, DW_AT_name("SOC14")
	.dwattr $C$DW$515, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$515, DW_AT_bit_size(0x01)
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$515, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$515, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$515, DW_AT_decl_column(0x0c)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$516, DW_AT_name("SOC15")
	.dwattr $C$DW$516, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$516, DW_AT_bit_size(0x01)
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$516, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$516, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$516, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$142, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$142, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$T$142, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$142

	.dwendtag $C$DW$TU$142


$C$DW$TU$143	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$143

$C$DW$T$143	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$143, DW_AT_name("ADCSOCFRC1_REG")
	.dwattr $C$DW$T$143, DW_AT_byte_size(0x01)
$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$517, DW_AT_name("all")
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$517, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$517, DW_AT_decl_line(0x110)
	.dwattr $C$DW$517, DW_AT_decl_column(0x0d)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$518, DW_AT_name("bit")
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$518, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$518, DW_AT_decl_line(0x111)
	.dwattr $C$DW$518, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$143, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$143, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$T$143, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$143

	.dwendtag $C$DW$TU$143


$C$DW$TU$144	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$144

$C$DW$T$144	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$144, DW_AT_name("ADCSOCOVF1_BITS")
	.dwattr $C$DW$T$144, DW_AT_byte_size(0x01)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$519, DW_AT_name("SOC0")
	.dwattr $C$DW$519, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$519, DW_AT_bit_size(0x01)
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$519, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$519, DW_AT_decl_line(0x115)
	.dwattr $C$DW$519, DW_AT_decl_column(0x0c)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$520, DW_AT_name("SOC1")
	.dwattr $C$DW$520, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$520, DW_AT_bit_size(0x01)
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$520, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$520, DW_AT_decl_line(0x116)
	.dwattr $C$DW$520, DW_AT_decl_column(0x0c)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$521, DW_AT_name("SOC2")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$521, DW_AT_bit_size(0x01)
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$521, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$521, DW_AT_decl_line(0x117)
	.dwattr $C$DW$521, DW_AT_decl_column(0x0c)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$522, DW_AT_name("SOC3")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$522, DW_AT_bit_size(0x01)
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$522, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$522, DW_AT_decl_line(0x118)
	.dwattr $C$DW$522, DW_AT_decl_column(0x0c)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$523, DW_AT_name("SOC4")
	.dwattr $C$DW$523, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$523, DW_AT_bit_size(0x01)
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$523, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$523, DW_AT_decl_line(0x119)
	.dwattr $C$DW$523, DW_AT_decl_column(0x0c)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$524, DW_AT_name("SOC5")
	.dwattr $C$DW$524, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$524, DW_AT_bit_size(0x01)
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$524, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$524, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$524, DW_AT_decl_column(0x0c)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$525, DW_AT_name("SOC6")
	.dwattr $C$DW$525, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$525, DW_AT_bit_size(0x01)
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$525, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$525, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$525, DW_AT_decl_column(0x0c)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$526, DW_AT_name("SOC7")
	.dwattr $C$DW$526, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$526, DW_AT_bit_size(0x01)
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$526, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$526, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$526, DW_AT_decl_column(0x0c)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$527, DW_AT_name("SOC8")
	.dwattr $C$DW$527, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$527, DW_AT_bit_size(0x01)
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$527, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$527, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$527, DW_AT_decl_column(0x0c)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$528, DW_AT_name("SOC9")
	.dwattr $C$DW$528, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$528, DW_AT_bit_size(0x01)
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$528, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$528, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$528, DW_AT_decl_column(0x0c)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$529, DW_AT_name("SOC10")
	.dwattr $C$DW$529, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$529, DW_AT_bit_size(0x01)
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$529, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$529, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$529, DW_AT_decl_column(0x0c)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$530, DW_AT_name("SOC11")
	.dwattr $C$DW$530, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$530, DW_AT_bit_size(0x01)
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$530, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$530, DW_AT_decl_line(0x120)
	.dwattr $C$DW$530, DW_AT_decl_column(0x0c)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$531, DW_AT_name("SOC12")
	.dwattr $C$DW$531, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$531, DW_AT_bit_size(0x01)
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$531, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$531, DW_AT_decl_line(0x121)
	.dwattr $C$DW$531, DW_AT_decl_column(0x0c)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$532, DW_AT_name("SOC13")
	.dwattr $C$DW$532, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$532, DW_AT_bit_size(0x01)
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$532, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$532, DW_AT_decl_line(0x122)
	.dwattr $C$DW$532, DW_AT_decl_column(0x0c)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$533, DW_AT_name("SOC14")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$533, DW_AT_bit_size(0x01)
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$533, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$533, DW_AT_decl_line(0x123)
	.dwattr $C$DW$533, DW_AT_decl_column(0x0c)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$534, DW_AT_name("SOC15")
	.dwattr $C$DW$534, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$534, DW_AT_bit_size(0x01)
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$534, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$534, DW_AT_decl_line(0x124)
	.dwattr $C$DW$534, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$144, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$144, DW_AT_decl_line(0x114)
	.dwattr $C$DW$T$144, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$144

	.dwendtag $C$DW$TU$144


$C$DW$TU$145	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$145

$C$DW$T$145	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$145, DW_AT_name("ADCSOCOVF1_REG")
	.dwattr $C$DW$T$145, DW_AT_byte_size(0x01)
$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$535, DW_AT_name("all")
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$535, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$535, DW_AT_decl_line(0x128)
	.dwattr $C$DW$535, DW_AT_decl_column(0x0d)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$536, DW_AT_name("bit")
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$536, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$536, DW_AT_decl_line(0x129)
	.dwattr $C$DW$536, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$145, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$145, DW_AT_decl_line(0x127)
	.dwattr $C$DW$T$145, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$145

	.dwendtag $C$DW$TU$145


$C$DW$TU$146	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$146

$C$DW$T$146	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$146, DW_AT_name("ADCSOCOVFCLR1_BITS")
	.dwattr $C$DW$T$146, DW_AT_byte_size(0x01)
$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$537, DW_AT_name("SOC0")
	.dwattr $C$DW$537, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$537, DW_AT_bit_size(0x01)
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$537, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$537, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$537, DW_AT_decl_column(0x0c)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$538, DW_AT_name("SOC1")
	.dwattr $C$DW$538, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$538, DW_AT_bit_size(0x01)
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$538, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$538, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$538, DW_AT_decl_column(0x0c)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$539, DW_AT_name("SOC2")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$539, DW_AT_bit_size(0x01)
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$539, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$539, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$539, DW_AT_decl_column(0x0c)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$540, DW_AT_name("SOC3")
	.dwattr $C$DW$540, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$540, DW_AT_bit_size(0x01)
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$540, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$540, DW_AT_decl_line(0x130)
	.dwattr $C$DW$540, DW_AT_decl_column(0x0c)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$541, DW_AT_name("SOC4")
	.dwattr $C$DW$541, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$541, DW_AT_bit_size(0x01)
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$541, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$541, DW_AT_decl_line(0x131)
	.dwattr $C$DW$541, DW_AT_decl_column(0x0c)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$542, DW_AT_name("SOC5")
	.dwattr $C$DW$542, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$542, DW_AT_bit_size(0x01)
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$542, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$542, DW_AT_decl_line(0x132)
	.dwattr $C$DW$542, DW_AT_decl_column(0x0c)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$543, DW_AT_name("SOC6")
	.dwattr $C$DW$543, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$543, DW_AT_bit_size(0x01)
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$543, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$543, DW_AT_decl_line(0x133)
	.dwattr $C$DW$543, DW_AT_decl_column(0x0c)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$544, DW_AT_name("SOC7")
	.dwattr $C$DW$544, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$544, DW_AT_bit_size(0x01)
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$544, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$544, DW_AT_decl_line(0x134)
	.dwattr $C$DW$544, DW_AT_decl_column(0x0c)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$545, DW_AT_name("SOC8")
	.dwattr $C$DW$545, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$545, DW_AT_bit_size(0x01)
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$545, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$545, DW_AT_decl_line(0x135)
	.dwattr $C$DW$545, DW_AT_decl_column(0x0c)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$546, DW_AT_name("SOC9")
	.dwattr $C$DW$546, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$546, DW_AT_bit_size(0x01)
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$546, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$546, DW_AT_decl_line(0x136)
	.dwattr $C$DW$546, DW_AT_decl_column(0x0c)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$547, DW_AT_name("SOC10")
	.dwattr $C$DW$547, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$547, DW_AT_bit_size(0x01)
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$547, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$547, DW_AT_decl_line(0x137)
	.dwattr $C$DW$547, DW_AT_decl_column(0x0c)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$548, DW_AT_name("SOC11")
	.dwattr $C$DW$548, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$548, DW_AT_bit_size(0x01)
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$548, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$548, DW_AT_decl_line(0x138)
	.dwattr $C$DW$548, DW_AT_decl_column(0x0c)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$549, DW_AT_name("SOC12")
	.dwattr $C$DW$549, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$549, DW_AT_bit_size(0x01)
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$549, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$549, DW_AT_decl_line(0x139)
	.dwattr $C$DW$549, DW_AT_decl_column(0x0c)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$550, DW_AT_name("SOC13")
	.dwattr $C$DW$550, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$550, DW_AT_bit_size(0x01)
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$550, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$550, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$550, DW_AT_decl_column(0x0c)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$551, DW_AT_name("SOC14")
	.dwattr $C$DW$551, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$551, DW_AT_bit_size(0x01)
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$551, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$551, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$551, DW_AT_decl_column(0x0c)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$552, DW_AT_name("SOC15")
	.dwattr $C$DW$552, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$552, DW_AT_bit_size(0x01)
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$552, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$552, DW_AT_decl_line(0x13c)
	.dwattr $C$DW$552, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$146, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$146, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$T$146, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$146

	.dwendtag $C$DW$TU$146


$C$DW$TU$147	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$147

$C$DW$T$147	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$147, DW_AT_name("ADCSOCOVFCLR1_REG")
	.dwattr $C$DW$T$147, DW_AT_byte_size(0x01)
$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$553, DW_AT_name("all")
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$553, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$553, DW_AT_decl_line(0x140)
	.dwattr $C$DW$553, DW_AT_decl_column(0x0d)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$554, DW_AT_name("bit")
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$554, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$554, DW_AT_decl_line(0x141)
	.dwattr $C$DW$554, DW_AT_decl_column(0x21)

	.dwattr $C$DW$T$147, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$147, DW_AT_decl_line(0x13f)
	.dwattr $C$DW$T$147, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$147

	.dwendtag $C$DW$TU$147


$C$DW$TU$148	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$148

$C$DW$T$148	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$148, DW_AT_name("ADCSOCPRICTL_BITS")
	.dwattr $C$DW$T$148, DW_AT_byte_size(0x01)
$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$555, DW_AT_name("SOCPRIORITY")
	.dwattr $C$DW$555, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$555, DW_AT_bit_size(0x05)
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$555, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$555, DW_AT_decl_line(0xba)
	.dwattr $C$DW$555, DW_AT_decl_column(0x0c)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$556, DW_AT_name("RRPOINTER")
	.dwattr $C$DW$556, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$556, DW_AT_bit_size(0x05)
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$556, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$556, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$556, DW_AT_decl_column(0x0c)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$557, DW_AT_name("rsvd1")
	.dwattr $C$DW$557, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$557, DW_AT_bit_size(0x06)
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$557, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$557, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$557, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$148, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$148, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$T$148, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$148

	.dwendtag $C$DW$TU$148


$C$DW$TU$149	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$149

$C$DW$T$149	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$149, DW_AT_name("ADCSOCPRICTL_REG")
	.dwattr $C$DW$T$149, DW_AT_byte_size(0x01)
$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$558, DW_AT_name("all")
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$558, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$558, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$558, DW_AT_decl_column(0x0d)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$559, DW_AT_name("bit")
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$559, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$559, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$559, DW_AT_decl_column(0x20)

	.dwattr $C$DW$T$149, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$149, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$T$149, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$149

	.dwendtag $C$DW$TU$149


$C$DW$TU$152	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$152

$C$DW$T$152	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$152, DW_AT_name("ADC_REGS")
	.dwattr $C$DW$T$152, DW_AT_byte_size(0x7c)
$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$560, DW_AT_name("ADCCTL1")
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$560, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$560, DW_AT_decl_line(0x385)
	.dwattr $C$DW$560, DW_AT_decl_column(0x2e)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$561, DW_AT_name("ADCCTL2")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$561, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$561, DW_AT_decl_line(0x386)
	.dwattr $C$DW$561, DW_AT_decl_column(0x2e)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$562, DW_AT_name("ADCBURSTCTL")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$562, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$562, DW_AT_decl_line(0x387)
	.dwattr $C$DW$562, DW_AT_decl_column(0x2e)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$563, DW_AT_name("ADCINTFLG")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$563, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$563, DW_AT_decl_line(0x388)
	.dwattr $C$DW$563, DW_AT_decl_column(0x2e)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$564, DW_AT_name("ADCINTFLGCLR")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$564, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$564, DW_AT_decl_line(0x389)
	.dwattr $C$DW$564, DW_AT_decl_column(0x2e)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$565, DW_AT_name("ADCINTOVF")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$565, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$565, DW_AT_decl_line(0x38a)
	.dwattr $C$DW$565, DW_AT_decl_column(0x2e)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$566, DW_AT_name("ADCINTOVFCLR")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$566, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$566, DW_AT_decl_line(0x38b)
	.dwattr $C$DW$566, DW_AT_decl_column(0x2e)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$567, DW_AT_name("ADCINTSEL1N2")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$567, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$567, DW_AT_decl_line(0x38c)
	.dwattr $C$DW$567, DW_AT_decl_column(0x2e)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$568, DW_AT_name("ADCINTSEL3N4")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$568, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$568, DW_AT_decl_line(0x38d)
	.dwattr $C$DW$568, DW_AT_decl_column(0x2e)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$569, DW_AT_name("ADCSOCPRICTL")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$569, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$569, DW_AT_decl_line(0x38e)
	.dwattr $C$DW$569, DW_AT_decl_column(0x2e)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$570, DW_AT_name("ADCINTSOCSEL1")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$570, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$570, DW_AT_decl_line(0x38f)
	.dwattr $C$DW$570, DW_AT_decl_column(0x2e)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$571, DW_AT_name("ADCINTSOCSEL2")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$571, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$571, DW_AT_decl_line(0x390)
	.dwattr $C$DW$571, DW_AT_decl_column(0x2e)

$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$572, DW_AT_name("ADCSOCFLG1")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$572, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$572, DW_AT_decl_line(0x391)
	.dwattr $C$DW$572, DW_AT_decl_column(0x2e)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$573, DW_AT_name("ADCSOCFRC1")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$573, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$573, DW_AT_decl_line(0x392)
	.dwattr $C$DW$573, DW_AT_decl_column(0x2e)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$574, DW_AT_name("ADCSOCOVF1")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$574, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$574, DW_AT_decl_line(0x393)
	.dwattr $C$DW$574, DW_AT_decl_column(0x2e)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$575, DW_AT_name("ADCSOCOVFCLR1")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$575, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$575, DW_AT_decl_line(0x394)
	.dwattr $C$DW$575, DW_AT_decl_column(0x2e)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$576, DW_AT_name("ADCSOC0CTL")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$576, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$576, DW_AT_decl_line(0x395)
	.dwattr $C$DW$576, DW_AT_decl_column(0x2e)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$577, DW_AT_name("ADCSOC1CTL")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$577, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$577, DW_AT_decl_line(0x396)
	.dwattr $C$DW$577, DW_AT_decl_column(0x2e)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$578, DW_AT_name("ADCSOC2CTL")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$578, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$578, DW_AT_decl_line(0x397)
	.dwattr $C$DW$578, DW_AT_decl_column(0x2e)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$579, DW_AT_name("ADCSOC3CTL")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$579, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$579, DW_AT_decl_line(0x398)
	.dwattr $C$DW$579, DW_AT_decl_column(0x2e)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$580, DW_AT_name("ADCSOC4CTL")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$580, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$580, DW_AT_decl_line(0x399)
	.dwattr $C$DW$580, DW_AT_decl_column(0x2e)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$581, DW_AT_name("ADCSOC5CTL")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$581, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$581, DW_AT_decl_line(0x39a)
	.dwattr $C$DW$581, DW_AT_decl_column(0x2e)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$582, DW_AT_name("ADCSOC6CTL")
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$582, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$582, DW_AT_decl_line(0x39b)
	.dwattr $C$DW$582, DW_AT_decl_column(0x2e)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$583, DW_AT_name("ADCSOC7CTL")
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$583, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$583, DW_AT_decl_line(0x39c)
	.dwattr $C$DW$583, DW_AT_decl_column(0x2e)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$584, DW_AT_name("ADCSOC8CTL")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$584, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$584, DW_AT_decl_line(0x39d)
	.dwattr $C$DW$584, DW_AT_decl_column(0x2e)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$585, DW_AT_name("ADCSOC9CTL")
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$585, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$585, DW_AT_decl_line(0x39e)
	.dwattr $C$DW$585, DW_AT_decl_column(0x2e)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$586, DW_AT_name("ADCSOC10CTL")
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$586, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$586, DW_AT_decl_line(0x39f)
	.dwattr $C$DW$586, DW_AT_decl_column(0x2e)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$587, DW_AT_name("ADCSOC11CTL")
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$587, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$587, DW_AT_decl_line(0x3a0)
	.dwattr $C$DW$587, DW_AT_decl_column(0x2e)

$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$588, DW_AT_name("ADCSOC12CTL")
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$588, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$588, DW_AT_decl_line(0x3a1)
	.dwattr $C$DW$588, DW_AT_decl_column(0x2e)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$589, DW_AT_name("ADCSOC13CTL")
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$589, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$589, DW_AT_decl_line(0x3a2)
	.dwattr $C$DW$589, DW_AT_decl_column(0x2e)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$590, DW_AT_name("ADCSOC14CTL")
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$590, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$590, DW_AT_decl_line(0x3a3)
	.dwattr $C$DW$590, DW_AT_decl_column(0x2e)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$591, DW_AT_name("ADCSOC15CTL")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$591, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$591, DW_AT_decl_line(0x3a4)
	.dwattr $C$DW$591, DW_AT_decl_column(0x2e)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$592, DW_AT_name("ADCEVTSTAT")
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$592, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$592, DW_AT_decl_line(0x3a5)
	.dwattr $C$DW$592, DW_AT_decl_column(0x2e)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$593, DW_AT_name("rsvd1")
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$593, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$593, DW_AT_decl_line(0x3a6)
	.dwattr $C$DW$593, DW_AT_decl_column(0x2e)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$594, DW_AT_name("ADCEVTCLR")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$594, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$594, DW_AT_decl_line(0x3a7)
	.dwattr $C$DW$594, DW_AT_decl_column(0x2e)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$595, DW_AT_name("rsvd2")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x33]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$595, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$595, DW_AT_decl_line(0x3a8)
	.dwattr $C$DW$595, DW_AT_decl_column(0x2e)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$596, DW_AT_name("ADCEVTSEL")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$596, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$596, DW_AT_decl_line(0x3a9)
	.dwattr $C$DW$596, DW_AT_decl_column(0x2e)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$597, DW_AT_name("rsvd3")
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x35]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$597, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$597, DW_AT_decl_line(0x3aa)
	.dwattr $C$DW$597, DW_AT_decl_column(0x2e)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$598, DW_AT_name("ADCEVTINTSEL")
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$598, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$598, DW_AT_decl_line(0x3ab)
	.dwattr $C$DW$598, DW_AT_decl_column(0x2e)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$599, DW_AT_name("rsvd4")
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x37]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$599, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$599, DW_AT_decl_line(0x3ac)
	.dwattr $C$DW$599, DW_AT_decl_column(0x2e)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$600, DW_AT_name("ADCOSDETECT")
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$600, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$600, DW_AT_decl_line(0x3ad)
	.dwattr $C$DW$600, DW_AT_decl_column(0x2e)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$601, DW_AT_name("ADCCOUNTER")
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x39]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$601, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$601, DW_AT_decl_line(0x3ae)
	.dwattr $C$DW$601, DW_AT_decl_column(0x2e)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$602, DW_AT_name("ADCREV")
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$602, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$602, DW_AT_decl_line(0x3af)
	.dwattr $C$DW$602, DW_AT_decl_column(0x2e)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$603, DW_AT_name("ADCOFFTRIM")
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x3b]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$603, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$603, DW_AT_decl_line(0x3b0)
	.dwattr $C$DW$603, DW_AT_decl_column(0x2e)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$604, DW_AT_name("rsvd5")
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$604, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$604, DW_AT_decl_line(0x3b1)
	.dwattr $C$DW$604, DW_AT_decl_column(0x2e)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$605, DW_AT_name("ADCPPB1CONFIG")
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$605, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$605, DW_AT_decl_line(0x3b2)
	.dwattr $C$DW$605, DW_AT_decl_column(0x2e)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$606, DW_AT_name("ADCPPB1STAMP")
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x41]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$606, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$606, DW_AT_decl_line(0x3b3)
	.dwattr $C$DW$606, DW_AT_decl_column(0x2e)

$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$607, DW_AT_name("ADCPPB1OFFCAL")
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$607, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$607, DW_AT_decl_line(0x3b4)
	.dwattr $C$DW$607, DW_AT_decl_column(0x2e)

$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$608, DW_AT_name("ADCPPB1OFFREF")
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x43]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$608, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$608, DW_AT_decl_line(0x3b5)
	.dwattr $C$DW$608, DW_AT_decl_column(0x2e)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$609, DW_AT_name("ADCPPB1TRIPHI")
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$609, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$609, DW_AT_decl_line(0x3b6)
	.dwattr $C$DW$609, DW_AT_decl_column(0x2e)

$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$610, DW_AT_name("ADCPPB1TRIPLO")
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$610, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$610, DW_AT_decl_line(0x3b7)
	.dwattr $C$DW$610, DW_AT_decl_column(0x2e)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$611, DW_AT_name("ADCPPB2CONFIG")
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$611, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$611, DW_AT_decl_line(0x3b8)
	.dwattr $C$DW$611, DW_AT_decl_column(0x2e)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$612, DW_AT_name("ADCPPB2STAMP")
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x49]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$612, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$612, DW_AT_decl_line(0x3b9)
	.dwattr $C$DW$612, DW_AT_decl_column(0x2e)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$613, DW_AT_name("ADCPPB2OFFCAL")
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$613, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$613, DW_AT_decl_line(0x3ba)
	.dwattr $C$DW$613, DW_AT_decl_column(0x2e)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$614, DW_AT_name("ADCPPB2OFFREF")
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x4b]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$614, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$614, DW_AT_decl_line(0x3bb)
	.dwattr $C$DW$614, DW_AT_decl_column(0x2e)

$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$615, DW_AT_name("ADCPPB2TRIPHI")
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$615, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$615, DW_AT_decl_line(0x3bc)
	.dwattr $C$DW$615, DW_AT_decl_column(0x2e)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$616, DW_AT_name("ADCPPB2TRIPLO")
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$616, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$616, DW_AT_decl_line(0x3bd)
	.dwattr $C$DW$616, DW_AT_decl_column(0x2e)

$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$617, DW_AT_name("ADCPPB3CONFIG")
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$617, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$617, DW_AT_decl_line(0x3be)
	.dwattr $C$DW$617, DW_AT_decl_column(0x2e)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$618, DW_AT_name("ADCPPB3STAMP")
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x51]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$618, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$618, DW_AT_decl_line(0x3bf)
	.dwattr $C$DW$618, DW_AT_decl_column(0x2e)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$619, DW_AT_name("ADCPPB3OFFCAL")
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$619, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$619, DW_AT_decl_line(0x3c0)
	.dwattr $C$DW$619, DW_AT_decl_column(0x2e)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$620, DW_AT_name("ADCPPB3OFFREF")
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x53]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$620, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$620, DW_AT_decl_line(0x3c1)
	.dwattr $C$DW$620, DW_AT_decl_column(0x2e)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$621, DW_AT_name("ADCPPB3TRIPHI")
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$621, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$621, DW_AT_decl_line(0x3c2)
	.dwattr $C$DW$621, DW_AT_decl_column(0x2e)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$622, DW_AT_name("ADCPPB3TRIPLO")
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$622, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$622, DW_AT_decl_line(0x3c3)
	.dwattr $C$DW$622, DW_AT_decl_column(0x2e)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$623, DW_AT_name("ADCPPB4CONFIG")
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$623, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$623, DW_AT_decl_line(0x3c4)
	.dwattr $C$DW$623, DW_AT_decl_column(0x2e)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$624, DW_AT_name("ADCPPB4STAMP")
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x59]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$624, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$624, DW_AT_decl_line(0x3c5)
	.dwattr $C$DW$624, DW_AT_decl_column(0x2e)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$625, DW_AT_name("ADCPPB4OFFCAL")
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$625, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$625, DW_AT_decl_line(0x3c6)
	.dwattr $C$DW$625, DW_AT_decl_column(0x2e)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$626, DW_AT_name("ADCPPB4OFFREF")
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x5b]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$626, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$626, DW_AT_decl_line(0x3c7)
	.dwattr $C$DW$626, DW_AT_decl_column(0x2e)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$627, DW_AT_name("ADCPPB4TRIPHI")
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$627, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$627, DW_AT_decl_line(0x3c8)
	.dwattr $C$DW$627, DW_AT_decl_column(0x2e)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$628, DW_AT_name("ADCPPB4TRIPLO")
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$628, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$628, DW_AT_decl_line(0x3c9)
	.dwattr $C$DW$628, DW_AT_decl_column(0x2e)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$629, DW_AT_name("rsvd6")
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$629, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$629, DW_AT_decl_line(0x3ca)
	.dwattr $C$DW$629, DW_AT_decl_column(0x2e)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$630, DW_AT_name("ADCINLTRIM1")
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$630, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$630, DW_AT_decl_line(0x3cb)
	.dwattr $C$DW$630, DW_AT_decl_column(0x2e)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$631, DW_AT_name("ADCINLTRIM2")
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$631, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$631, DW_AT_decl_line(0x3cc)
	.dwattr $C$DW$631, DW_AT_decl_column(0x2e)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$632, DW_AT_name("ADCINLTRIM3")
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$632, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$632, DW_AT_decl_line(0x3cd)
	.dwattr $C$DW$632, DW_AT_decl_column(0x2e)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$633, DW_AT_name("ADCINLTRIM4")
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$633, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$633, DW_AT_decl_line(0x3ce)
	.dwattr $C$DW$633, DW_AT_decl_column(0x2e)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$634, DW_AT_name("ADCINLTRIM5")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$634, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$634, DW_AT_decl_line(0x3cf)
	.dwattr $C$DW$634, DW_AT_decl_column(0x2e)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$635, DW_AT_name("ADCINLTRIM6")
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x7a]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$635, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$635, DW_AT_decl_line(0x3d0)
	.dwattr $C$DW$635, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$152, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$152, DW_AT_decl_line(0x384)
	.dwattr $C$DW$T$152, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$152

	.dwendtag $C$DW$TU$152


$C$DW$TU$220	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$220
$C$DW$636	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$152)

$C$DW$T$220	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$220, DW_AT_type(*$C$DW$636)

	.dwendtag $C$DW$TU$220


$C$DW$TU$221	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$221
$C$DW$T$221	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$221, DW_AT_type(*$C$DW$T$220)
	.dwattr $C$DW$T$221, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$221


$C$DW$TU$222	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$222
$C$DW$637	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$221)

$C$DW$T$222	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$222, DW_AT_type(*$C$DW$637)

	.dwendtag $C$DW$TU$222


$C$DW$TU$153	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$153

$C$DW$T$153	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$153, DW_AT_name("ADC_RESULT_REGS")
	.dwattr $C$DW$T$153, DW_AT_byte_size(0x18)
$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$638, DW_AT_name("ADCRESULT0")
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$638, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$638, DW_AT_decl_line(0x3fc)
	.dwattr $C$DW$638, DW_AT_decl_column(0x2e)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$639, DW_AT_name("ADCRESULT1")
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$639, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$639, DW_AT_decl_line(0x3fd)
	.dwattr $C$DW$639, DW_AT_decl_column(0x2e)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$640, DW_AT_name("ADCRESULT2")
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$640, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$640, DW_AT_decl_line(0x3fe)
	.dwattr $C$DW$640, DW_AT_decl_column(0x2e)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$641, DW_AT_name("ADCRESULT3")
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$641, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$641, DW_AT_decl_line(0x3ff)
	.dwattr $C$DW$641, DW_AT_decl_column(0x2e)

$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$642, DW_AT_name("ADCRESULT4")
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$642, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$642, DW_AT_decl_line(0x400)
	.dwattr $C$DW$642, DW_AT_decl_column(0x2e)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$643, DW_AT_name("ADCRESULT5")
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$643, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$643, DW_AT_decl_line(0x401)
	.dwattr $C$DW$643, DW_AT_decl_column(0x2e)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$644, DW_AT_name("ADCRESULT6")
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$644, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$644, DW_AT_decl_line(0x402)
	.dwattr $C$DW$644, DW_AT_decl_column(0x2e)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$645, DW_AT_name("ADCRESULT7")
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$645, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$645, DW_AT_decl_line(0x403)
	.dwattr $C$DW$645, DW_AT_decl_column(0x2e)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$646, DW_AT_name("ADCRESULT8")
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$646, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$646, DW_AT_decl_line(0x404)
	.dwattr $C$DW$646, DW_AT_decl_column(0x2e)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$647, DW_AT_name("ADCRESULT9")
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$647, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$647, DW_AT_decl_line(0x405)
	.dwattr $C$DW$647, DW_AT_decl_column(0x2e)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$648, DW_AT_name("ADCRESULT10")
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$648, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$648, DW_AT_decl_line(0x406)
	.dwattr $C$DW$648, DW_AT_decl_column(0x2e)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$649, DW_AT_name("ADCRESULT11")
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$649, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$649, DW_AT_decl_line(0x407)
	.dwattr $C$DW$649, DW_AT_decl_column(0x2e)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$650, DW_AT_name("ADCRESULT12")
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$650, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$650, DW_AT_decl_line(0x408)
	.dwattr $C$DW$650, DW_AT_decl_column(0x2e)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$651, DW_AT_name("ADCRESULT13")
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$651, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$651, DW_AT_decl_line(0x409)
	.dwattr $C$DW$651, DW_AT_decl_column(0x2e)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$652, DW_AT_name("ADCRESULT14")
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$652, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$652, DW_AT_decl_line(0x40a)
	.dwattr $C$DW$652, DW_AT_decl_column(0x2e)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$653, DW_AT_name("ADCRESULT15")
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$653, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$653, DW_AT_decl_line(0x40b)
	.dwattr $C$DW$653, DW_AT_decl_column(0x2e)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$654, DW_AT_name("ADCPPB1RESULT")
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$654, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$654, DW_AT_decl_line(0x40c)
	.dwattr $C$DW$654, DW_AT_decl_column(0x2e)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$655, DW_AT_name("ADCPPB2RESULT")
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$655, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$655, DW_AT_decl_line(0x40d)
	.dwattr $C$DW$655, DW_AT_decl_column(0x2e)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$656, DW_AT_name("ADCPPB3RESULT")
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$656, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$656, DW_AT_decl_line(0x40e)
	.dwattr $C$DW$656, DW_AT_decl_column(0x2e)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$657, DW_AT_name("ADCPPB4RESULT")
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$657, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$657, DW_AT_decl_line(0x40f)
	.dwattr $C$DW$657, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$153, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_adc.h")
	.dwattr $C$DW$T$153, DW_AT_decl_line(0x3fb)
	.dwattr $C$DW$T$153, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$153

	.dwendtag $C$DW$TU$153


$C$DW$TU$223	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$223
$C$DW$658	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$153)

$C$DW$T$223	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$223, DW_AT_type(*$C$DW$658)

	.dwendtag $C$DW$TU$223


$C$DW$TU$154	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$154

$C$DW$T$154	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$154, DW_AT_name("PIEACK_BITS")
	.dwattr $C$DW$T$154, DW_AT_byte_size(0x01)
$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$659, DW_AT_name("ACK1")
	.dwattr $C$DW$659, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$659, DW_AT_bit_size(0x01)
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$659, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$659, DW_AT_decl_line(0x41)
	.dwattr $C$DW$659, DW_AT_decl_column(0x0c)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$660, DW_AT_name("ACK2")
	.dwattr $C$DW$660, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$660, DW_AT_bit_size(0x01)
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$660, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$660, DW_AT_decl_line(0x42)
	.dwattr $C$DW$660, DW_AT_decl_column(0x0c)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$661, DW_AT_name("ACK3")
	.dwattr $C$DW$661, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$661, DW_AT_bit_size(0x01)
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$661, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$661, DW_AT_decl_line(0x43)
	.dwattr $C$DW$661, DW_AT_decl_column(0x0c)

$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$662, DW_AT_name("ACK4")
	.dwattr $C$DW$662, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$662, DW_AT_bit_size(0x01)
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$662, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$662, DW_AT_decl_line(0x44)
	.dwattr $C$DW$662, DW_AT_decl_column(0x0c)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$663, DW_AT_name("ACK5")
	.dwattr $C$DW$663, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$663, DW_AT_bit_size(0x01)
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$663, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$663, DW_AT_decl_line(0x45)
	.dwattr $C$DW$663, DW_AT_decl_column(0x0c)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$664, DW_AT_name("ACK6")
	.dwattr $C$DW$664, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$664, DW_AT_bit_size(0x01)
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$664, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$664, DW_AT_decl_line(0x46)
	.dwattr $C$DW$664, DW_AT_decl_column(0x0c)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$665, DW_AT_name("ACK7")
	.dwattr $C$DW$665, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$665, DW_AT_bit_size(0x01)
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$665, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$665, DW_AT_decl_line(0x47)
	.dwattr $C$DW$665, DW_AT_decl_column(0x0c)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$666, DW_AT_name("ACK8")
	.dwattr $C$DW$666, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$666, DW_AT_bit_size(0x01)
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$666, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$666, DW_AT_decl_line(0x48)
	.dwattr $C$DW$666, DW_AT_decl_column(0x0c)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$667, DW_AT_name("ACK9")
	.dwattr $C$DW$667, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$667, DW_AT_bit_size(0x01)
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$667, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$667, DW_AT_decl_line(0x49)
	.dwattr $C$DW$667, DW_AT_decl_column(0x0c)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$668, DW_AT_name("ACK10")
	.dwattr $C$DW$668, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$668, DW_AT_bit_size(0x01)
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$668, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$668, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$668, DW_AT_decl_column(0x0c)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$669, DW_AT_name("ACK11")
	.dwattr $C$DW$669, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$669, DW_AT_bit_size(0x01)
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$669, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$669, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$669, DW_AT_decl_column(0x0c)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$670, DW_AT_name("ACK12")
	.dwattr $C$DW$670, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$670, DW_AT_bit_size(0x01)
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$670, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$670, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$670, DW_AT_decl_column(0x0c)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$671, DW_AT_name("rsvd1")
	.dwattr $C$DW$671, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$671, DW_AT_bit_size(0x04)
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$671, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$671, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$671, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$154, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$154, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$154, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$154

	.dwendtag $C$DW$TU$154


$C$DW$TU$155	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$155

$C$DW$T$155	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$155, DW_AT_name("PIEACK_REG")
	.dwattr $C$DW$T$155, DW_AT_byte_size(0x01)
$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$672, DW_AT_name("all")
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$672, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$672, DW_AT_decl_line(0x51)
	.dwattr $C$DW$672, DW_AT_decl_column(0x0d)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$673, DW_AT_name("bit")
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$673, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$673, DW_AT_decl_line(0x52)
	.dwattr $C$DW$673, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$155, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$155, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$155, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$155

	.dwendtag $C$DW$TU$155


$C$DW$TU$156	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$156

$C$DW$T$156	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$156, DW_AT_name("PIECTRL_BITS")
	.dwattr $C$DW$T$156, DW_AT_byte_size(0x01)
$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$674, DW_AT_name("ENPIE")
	.dwattr $C$DW$674, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$674, DW_AT_bit_size(0x01)
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$674, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$674, DW_AT_decl_line(0x37)
	.dwattr $C$DW$674, DW_AT_decl_column(0x0c)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$675, DW_AT_name("PIEVECT")
	.dwattr $C$DW$675, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$675, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$675, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$675, DW_AT_decl_line(0x38)
	.dwattr $C$DW$675, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$156, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$156, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$156, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$156

	.dwendtag $C$DW$TU$156


$C$DW$TU$157	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$157

$C$DW$T$157	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$157, DW_AT_name("PIECTRL_REG")
	.dwattr $C$DW$T$157, DW_AT_byte_size(0x01)
$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$676, DW_AT_name("all")
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$676, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$676, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$676, DW_AT_decl_column(0x0d)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$677, DW_AT_name("bit")
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$677, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$677, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$677, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$157, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$157, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$157, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$157

	.dwendtag $C$DW$TU$157


$C$DW$TU$158	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$158

$C$DW$T$158	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$158, DW_AT_name("PIEIER10_BITS")
	.dwattr $C$DW$T$158, DW_AT_byte_size(0x01)
$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$678, DW_AT_name("INTx1")
	.dwattr $C$DW$678, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$678, DW_AT_bit_size(0x01)
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$678, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$678, DW_AT_decl_line(0x206)
	.dwattr $C$DW$678, DW_AT_decl_column(0x0c)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$679, DW_AT_name("INTx2")
	.dwattr $C$DW$679, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$679, DW_AT_bit_size(0x01)
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$679, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$679, DW_AT_decl_line(0x207)
	.dwattr $C$DW$679, DW_AT_decl_column(0x0c)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$680, DW_AT_name("INTx3")
	.dwattr $C$DW$680, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$680, DW_AT_bit_size(0x01)
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$680, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$680, DW_AT_decl_line(0x208)
	.dwattr $C$DW$680, DW_AT_decl_column(0x0c)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$681, DW_AT_name("INTx4")
	.dwattr $C$DW$681, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$681, DW_AT_bit_size(0x01)
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$681, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$681, DW_AT_decl_line(0x209)
	.dwattr $C$DW$681, DW_AT_decl_column(0x0c)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$682, DW_AT_name("INTx5")
	.dwattr $C$DW$682, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$682, DW_AT_bit_size(0x01)
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$682, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$682, DW_AT_decl_line(0x20a)
	.dwattr $C$DW$682, DW_AT_decl_column(0x0c)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$683, DW_AT_name("INTx6")
	.dwattr $C$DW$683, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$683, DW_AT_bit_size(0x01)
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$683, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$683, DW_AT_decl_line(0x20b)
	.dwattr $C$DW$683, DW_AT_decl_column(0x0c)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$684, DW_AT_name("INTx7")
	.dwattr $C$DW$684, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$684, DW_AT_bit_size(0x01)
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$684, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$684, DW_AT_decl_line(0x20c)
	.dwattr $C$DW$684, DW_AT_decl_column(0x0c)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$685, DW_AT_name("INTx8")
	.dwattr $C$DW$685, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$685, DW_AT_bit_size(0x01)
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$685, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$685, DW_AT_decl_line(0x20d)
	.dwattr $C$DW$685, DW_AT_decl_column(0x0c)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$686, DW_AT_name("INTx9")
	.dwattr $C$DW$686, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$686, DW_AT_bit_size(0x01)
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$686, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$686, DW_AT_decl_line(0x20e)
	.dwattr $C$DW$686, DW_AT_decl_column(0x0c)

$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$687, DW_AT_name("INTx10")
	.dwattr $C$DW$687, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$687, DW_AT_bit_size(0x01)
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$687, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$687, DW_AT_decl_line(0x20f)
	.dwattr $C$DW$687, DW_AT_decl_column(0x0c)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$688, DW_AT_name("INTx11")
	.dwattr $C$DW$688, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$688, DW_AT_bit_size(0x01)
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$688, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$688, DW_AT_decl_line(0x210)
	.dwattr $C$DW$688, DW_AT_decl_column(0x0c)

$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$689, DW_AT_name("INTx12")
	.dwattr $C$DW$689, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$689, DW_AT_bit_size(0x01)
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$689, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$689, DW_AT_decl_line(0x211)
	.dwattr $C$DW$689, DW_AT_decl_column(0x0c)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$690, DW_AT_name("INTx13")
	.dwattr $C$DW$690, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$690, DW_AT_bit_size(0x01)
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$690, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$690, DW_AT_decl_line(0x212)
	.dwattr $C$DW$690, DW_AT_decl_column(0x0c)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$691, DW_AT_name("INTx14")
	.dwattr $C$DW$691, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$691, DW_AT_bit_size(0x01)
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$691, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$691, DW_AT_decl_line(0x213)
	.dwattr $C$DW$691, DW_AT_decl_column(0x0c)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$692, DW_AT_name("INTx15")
	.dwattr $C$DW$692, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$692, DW_AT_bit_size(0x01)
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$692, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$692, DW_AT_decl_line(0x214)
	.dwattr $C$DW$692, DW_AT_decl_column(0x0c)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$693, DW_AT_name("INTx16")
	.dwattr $C$DW$693, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$693, DW_AT_bit_size(0x01)
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$693, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$693, DW_AT_decl_line(0x215)
	.dwattr $C$DW$693, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$158, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$158, DW_AT_decl_line(0x205)
	.dwattr $C$DW$T$158, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$158

	.dwendtag $C$DW$TU$158


$C$DW$TU$159	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$159

$C$DW$T$159	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$159, DW_AT_name("PIEIER10_REG")
	.dwattr $C$DW$T$159, DW_AT_byte_size(0x01)
$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$694, DW_AT_name("all")
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$694, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$694, DW_AT_decl_line(0x219)
	.dwattr $C$DW$694, DW_AT_decl_column(0x0d)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$695, DW_AT_name("bit")
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$695, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$695, DW_AT_decl_line(0x21a)
	.dwattr $C$DW$695, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$159, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$159, DW_AT_decl_line(0x218)
	.dwattr $C$DW$T$159, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$159

	.dwendtag $C$DW$TU$159


$C$DW$TU$160	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$160

$C$DW$T$160	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$160, DW_AT_name("PIEIER11_BITS")
	.dwattr $C$DW$T$160, DW_AT_byte_size(0x01)
$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$696, DW_AT_name("INTx1")
	.dwattr $C$DW$696, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$696, DW_AT_bit_size(0x01)
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$696, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$696, DW_AT_decl_line(0x236)
	.dwattr $C$DW$696, DW_AT_decl_column(0x0c)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$697, DW_AT_name("INTx2")
	.dwattr $C$DW$697, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$697, DW_AT_bit_size(0x01)
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$697, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$697, DW_AT_decl_line(0x237)
	.dwattr $C$DW$697, DW_AT_decl_column(0x0c)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$698, DW_AT_name("INTx3")
	.dwattr $C$DW$698, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$698, DW_AT_bit_size(0x01)
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$698, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$698, DW_AT_decl_line(0x238)
	.dwattr $C$DW$698, DW_AT_decl_column(0x0c)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$699, DW_AT_name("INTx4")
	.dwattr $C$DW$699, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$699, DW_AT_bit_size(0x01)
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$699, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$699, DW_AT_decl_line(0x239)
	.dwattr $C$DW$699, DW_AT_decl_column(0x0c)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$700, DW_AT_name("INTx5")
	.dwattr $C$DW$700, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$700, DW_AT_bit_size(0x01)
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$700, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$700, DW_AT_decl_line(0x23a)
	.dwattr $C$DW$700, DW_AT_decl_column(0x0c)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$701, DW_AT_name("INTx6")
	.dwattr $C$DW$701, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$701, DW_AT_bit_size(0x01)
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$701, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$701, DW_AT_decl_line(0x23b)
	.dwattr $C$DW$701, DW_AT_decl_column(0x0c)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$702, DW_AT_name("INTx7")
	.dwattr $C$DW$702, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$702, DW_AT_bit_size(0x01)
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$702, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$702, DW_AT_decl_line(0x23c)
	.dwattr $C$DW$702, DW_AT_decl_column(0x0c)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$703, DW_AT_name("INTx8")
	.dwattr $C$DW$703, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$703, DW_AT_bit_size(0x01)
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$703, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$703, DW_AT_decl_line(0x23d)
	.dwattr $C$DW$703, DW_AT_decl_column(0x0c)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$704, DW_AT_name("INTx9")
	.dwattr $C$DW$704, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$704, DW_AT_bit_size(0x01)
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$704, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$704, DW_AT_decl_line(0x23e)
	.dwattr $C$DW$704, DW_AT_decl_column(0x0c)

$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$705, DW_AT_name("INTx10")
	.dwattr $C$DW$705, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$705, DW_AT_bit_size(0x01)
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$705, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$705, DW_AT_decl_line(0x23f)
	.dwattr $C$DW$705, DW_AT_decl_column(0x0c)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$706, DW_AT_name("INTx11")
	.dwattr $C$DW$706, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$706, DW_AT_bit_size(0x01)
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$706, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$706, DW_AT_decl_line(0x240)
	.dwattr $C$DW$706, DW_AT_decl_column(0x0c)

$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$707, DW_AT_name("INTx12")
	.dwattr $C$DW$707, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$707, DW_AT_bit_size(0x01)
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$707, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$707, DW_AT_decl_line(0x241)
	.dwattr $C$DW$707, DW_AT_decl_column(0x0c)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$708, DW_AT_name("INTx13")
	.dwattr $C$DW$708, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$708, DW_AT_bit_size(0x01)
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$708, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$708, DW_AT_decl_line(0x242)
	.dwattr $C$DW$708, DW_AT_decl_column(0x0c)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$709, DW_AT_name("INTx14")
	.dwattr $C$DW$709, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$709, DW_AT_bit_size(0x01)
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$709, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$709, DW_AT_decl_line(0x243)
	.dwattr $C$DW$709, DW_AT_decl_column(0x0c)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$710, DW_AT_name("INTx15")
	.dwattr $C$DW$710, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$710, DW_AT_bit_size(0x01)
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$710, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$710, DW_AT_decl_line(0x244)
	.dwattr $C$DW$710, DW_AT_decl_column(0x0c)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$711, DW_AT_name("INTx16")
	.dwattr $C$DW$711, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$711, DW_AT_bit_size(0x01)
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$711, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$711, DW_AT_decl_line(0x245)
	.dwattr $C$DW$711, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$160, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$160, DW_AT_decl_line(0x235)
	.dwattr $C$DW$T$160, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$160

	.dwendtag $C$DW$TU$160


$C$DW$TU$161	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$161

$C$DW$T$161	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$161, DW_AT_name("PIEIER11_REG")
	.dwattr $C$DW$T$161, DW_AT_byte_size(0x01)
$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$712, DW_AT_name("all")
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$712, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$712, DW_AT_decl_line(0x249)
	.dwattr $C$DW$712, DW_AT_decl_column(0x0d)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$713, DW_AT_name("bit")
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$713, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$713, DW_AT_decl_line(0x24a)
	.dwattr $C$DW$713, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$161, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$161, DW_AT_decl_line(0x248)
	.dwattr $C$DW$T$161, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$161

	.dwendtag $C$DW$TU$161


$C$DW$TU$162	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$162

$C$DW$T$162	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$162, DW_AT_name("PIEIER12_BITS")
	.dwattr $C$DW$T$162, DW_AT_byte_size(0x01)
$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$714, DW_AT_name("INTx1")
	.dwattr $C$DW$714, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$714, DW_AT_bit_size(0x01)
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$714, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$714, DW_AT_decl_line(0x266)
	.dwattr $C$DW$714, DW_AT_decl_column(0x0c)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$715, DW_AT_name("INTx2")
	.dwattr $C$DW$715, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$715, DW_AT_bit_size(0x01)
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$715, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$715, DW_AT_decl_line(0x267)
	.dwattr $C$DW$715, DW_AT_decl_column(0x0c)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$716, DW_AT_name("INTx3")
	.dwattr $C$DW$716, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$716, DW_AT_bit_size(0x01)
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$716, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$716, DW_AT_decl_line(0x268)
	.dwattr $C$DW$716, DW_AT_decl_column(0x0c)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$717, DW_AT_name("INTx4")
	.dwattr $C$DW$717, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$717, DW_AT_bit_size(0x01)
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$717, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$717, DW_AT_decl_line(0x269)
	.dwattr $C$DW$717, DW_AT_decl_column(0x0c)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$718, DW_AT_name("INTx5")
	.dwattr $C$DW$718, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$718, DW_AT_bit_size(0x01)
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$718, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$718, DW_AT_decl_line(0x26a)
	.dwattr $C$DW$718, DW_AT_decl_column(0x0c)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$719, DW_AT_name("INTx6")
	.dwattr $C$DW$719, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$719, DW_AT_bit_size(0x01)
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$719, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$719, DW_AT_decl_line(0x26b)
	.dwattr $C$DW$719, DW_AT_decl_column(0x0c)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$720, DW_AT_name("INTx7")
	.dwattr $C$DW$720, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$720, DW_AT_bit_size(0x01)
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$720, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$720, DW_AT_decl_line(0x26c)
	.dwattr $C$DW$720, DW_AT_decl_column(0x0c)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$721, DW_AT_name("INTx8")
	.dwattr $C$DW$721, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$721, DW_AT_bit_size(0x01)
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$721, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$721, DW_AT_decl_line(0x26d)
	.dwattr $C$DW$721, DW_AT_decl_column(0x0c)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$722, DW_AT_name("INTx9")
	.dwattr $C$DW$722, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$722, DW_AT_bit_size(0x01)
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$722, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$722, DW_AT_decl_line(0x26e)
	.dwattr $C$DW$722, DW_AT_decl_column(0x0c)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$723, DW_AT_name("INTx10")
	.dwattr $C$DW$723, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$723, DW_AT_bit_size(0x01)
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$723, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$723, DW_AT_decl_line(0x26f)
	.dwattr $C$DW$723, DW_AT_decl_column(0x0c)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$724, DW_AT_name("INTx11")
	.dwattr $C$DW$724, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$724, DW_AT_bit_size(0x01)
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$724, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$724, DW_AT_decl_line(0x270)
	.dwattr $C$DW$724, DW_AT_decl_column(0x0c)

$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$725, DW_AT_name("INTx12")
	.dwattr $C$DW$725, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$725, DW_AT_bit_size(0x01)
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$725, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$725, DW_AT_decl_line(0x271)
	.dwattr $C$DW$725, DW_AT_decl_column(0x0c)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$726, DW_AT_name("INTx13")
	.dwattr $C$DW$726, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$726, DW_AT_bit_size(0x01)
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$726, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$726, DW_AT_decl_line(0x272)
	.dwattr $C$DW$726, DW_AT_decl_column(0x0c)

$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$727, DW_AT_name("INTx14")
	.dwattr $C$DW$727, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$727, DW_AT_bit_size(0x01)
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$727, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$727, DW_AT_decl_line(0x273)
	.dwattr $C$DW$727, DW_AT_decl_column(0x0c)

$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$728, DW_AT_name("INTx15")
	.dwattr $C$DW$728, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$728, DW_AT_bit_size(0x01)
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$728, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$728, DW_AT_decl_line(0x274)
	.dwattr $C$DW$728, DW_AT_decl_column(0x0c)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$729, DW_AT_name("INTx16")
	.dwattr $C$DW$729, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$729, DW_AT_bit_size(0x01)
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$729, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$729, DW_AT_decl_line(0x275)
	.dwattr $C$DW$729, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$162, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$162, DW_AT_decl_line(0x265)
	.dwattr $C$DW$T$162, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$162

	.dwendtag $C$DW$TU$162


$C$DW$TU$163	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$163

$C$DW$T$163	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$163, DW_AT_name("PIEIER12_REG")
	.dwattr $C$DW$T$163, DW_AT_byte_size(0x01)
$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$730, DW_AT_name("all")
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$730, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$730, DW_AT_decl_line(0x279)
	.dwattr $C$DW$730, DW_AT_decl_column(0x0d)

$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$731, DW_AT_name("bit")
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$731, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$731, DW_AT_decl_line(0x27a)
	.dwattr $C$DW$731, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$163, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$163, DW_AT_decl_line(0x278)
	.dwattr $C$DW$T$163, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$163

	.dwendtag $C$DW$TU$163


$C$DW$TU$164	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$164

$C$DW$T$164	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$164, DW_AT_name("PIEIER1_BITS")
	.dwattr $C$DW$T$164, DW_AT_byte_size(0x01)
$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$732, DW_AT_name("INTx1")
	.dwattr $C$DW$732, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$732, DW_AT_bit_size(0x01)
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$732, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$732, DW_AT_decl_line(0x56)
	.dwattr $C$DW$732, DW_AT_decl_column(0x0c)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$733, DW_AT_name("INTx2")
	.dwattr $C$DW$733, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$733, DW_AT_bit_size(0x01)
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$733, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$733, DW_AT_decl_line(0x57)
	.dwattr $C$DW$733, DW_AT_decl_column(0x0c)

$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$734, DW_AT_name("INTx3")
	.dwattr $C$DW$734, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$734, DW_AT_bit_size(0x01)
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$734, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$734, DW_AT_decl_line(0x58)
	.dwattr $C$DW$734, DW_AT_decl_column(0x0c)

$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$735, DW_AT_name("INTx4")
	.dwattr $C$DW$735, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$735, DW_AT_bit_size(0x01)
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$735, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$735, DW_AT_decl_line(0x59)
	.dwattr $C$DW$735, DW_AT_decl_column(0x0c)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$736, DW_AT_name("INTx5")
	.dwattr $C$DW$736, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$736, DW_AT_bit_size(0x01)
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$736, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$736, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$736, DW_AT_decl_column(0x0c)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$737, DW_AT_name("INTx6")
	.dwattr $C$DW$737, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$737, DW_AT_bit_size(0x01)
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$737, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$737, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$737, DW_AT_decl_column(0x0c)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$738, DW_AT_name("INTx7")
	.dwattr $C$DW$738, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$738, DW_AT_bit_size(0x01)
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$738, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$738, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$738, DW_AT_decl_column(0x0c)

$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$739, DW_AT_name("INTx8")
	.dwattr $C$DW$739, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$739, DW_AT_bit_size(0x01)
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$739, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$739, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$739, DW_AT_decl_column(0x0c)

$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$740, DW_AT_name("INTx9")
	.dwattr $C$DW$740, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$740, DW_AT_bit_size(0x01)
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$740, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$740, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$740, DW_AT_decl_column(0x0c)

$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$741, DW_AT_name("INTx10")
	.dwattr $C$DW$741, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$741, DW_AT_bit_size(0x01)
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$741, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$741, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$741, DW_AT_decl_column(0x0c)

$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$742, DW_AT_name("INTx11")
	.dwattr $C$DW$742, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$742, DW_AT_bit_size(0x01)
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$742, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$742, DW_AT_decl_line(0x60)
	.dwattr $C$DW$742, DW_AT_decl_column(0x0c)

$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$743, DW_AT_name("INTx12")
	.dwattr $C$DW$743, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$743, DW_AT_bit_size(0x01)
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$743, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$743, DW_AT_decl_line(0x61)
	.dwattr $C$DW$743, DW_AT_decl_column(0x0c)

$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$744, DW_AT_name("INTx13")
	.dwattr $C$DW$744, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$744, DW_AT_bit_size(0x01)
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$744, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$744, DW_AT_decl_line(0x62)
	.dwattr $C$DW$744, DW_AT_decl_column(0x0c)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$745, DW_AT_name("INTx14")
	.dwattr $C$DW$745, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$745, DW_AT_bit_size(0x01)
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$745, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$745, DW_AT_decl_line(0x63)
	.dwattr $C$DW$745, DW_AT_decl_column(0x0c)

$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$746, DW_AT_name("INTx15")
	.dwattr $C$DW$746, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$746, DW_AT_bit_size(0x01)
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$746, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$746, DW_AT_decl_line(0x64)
	.dwattr $C$DW$746, DW_AT_decl_column(0x0c)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$747, DW_AT_name("INTx16")
	.dwattr $C$DW$747, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$747, DW_AT_bit_size(0x01)
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$747, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$747, DW_AT_decl_line(0x65)
	.dwattr $C$DW$747, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$164, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$164, DW_AT_decl_line(0x55)
	.dwattr $C$DW$T$164, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$164

	.dwendtag $C$DW$TU$164


$C$DW$TU$165	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$165

$C$DW$T$165	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$165, DW_AT_name("PIEIER1_REG")
	.dwattr $C$DW$T$165, DW_AT_byte_size(0x01)
$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$748, DW_AT_name("all")
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$748, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$748, DW_AT_decl_line(0x69)
	.dwattr $C$DW$748, DW_AT_decl_column(0x0d)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$749, DW_AT_name("bit")
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$749, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$749, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$749, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$165, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$165, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$165, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$165

	.dwendtag $C$DW$TU$165


$C$DW$TU$166	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$166

$C$DW$T$166	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$166, DW_AT_name("PIEIER2_BITS")
	.dwattr $C$DW$T$166, DW_AT_byte_size(0x01)
$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$750, DW_AT_name("INTx1")
	.dwattr $C$DW$750, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$750, DW_AT_bit_size(0x01)
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$750, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$750, DW_AT_decl_line(0x86)
	.dwattr $C$DW$750, DW_AT_decl_column(0x0c)

$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$751, DW_AT_name("INTx2")
	.dwattr $C$DW$751, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$751, DW_AT_bit_size(0x01)
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$751, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$751, DW_AT_decl_line(0x87)
	.dwattr $C$DW$751, DW_AT_decl_column(0x0c)

$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$752, DW_AT_name("INTx3")
	.dwattr $C$DW$752, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$752, DW_AT_bit_size(0x01)
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$752, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$752, DW_AT_decl_line(0x88)
	.dwattr $C$DW$752, DW_AT_decl_column(0x0c)

$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$753, DW_AT_name("INTx4")
	.dwattr $C$DW$753, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$753, DW_AT_bit_size(0x01)
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$753, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$753, DW_AT_decl_line(0x89)
	.dwattr $C$DW$753, DW_AT_decl_column(0x0c)

$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$754, DW_AT_name("INTx5")
	.dwattr $C$DW$754, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$754, DW_AT_bit_size(0x01)
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$754, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$754, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$754, DW_AT_decl_column(0x0c)

$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$755, DW_AT_name("INTx6")
	.dwattr $C$DW$755, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$755, DW_AT_bit_size(0x01)
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$755, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$755, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$755, DW_AT_decl_column(0x0c)

$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$756, DW_AT_name("INTx7")
	.dwattr $C$DW$756, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$756, DW_AT_bit_size(0x01)
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$756, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$756, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$756, DW_AT_decl_column(0x0c)

$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$757, DW_AT_name("INTx8")
	.dwattr $C$DW$757, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$757, DW_AT_bit_size(0x01)
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$757, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$757, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$757, DW_AT_decl_column(0x0c)

$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$758, DW_AT_name("INTx9")
	.dwattr $C$DW$758, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$758, DW_AT_bit_size(0x01)
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$758, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$758, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$758, DW_AT_decl_column(0x0c)

$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$759, DW_AT_name("INTx10")
	.dwattr $C$DW$759, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$759, DW_AT_bit_size(0x01)
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$759, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$759, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$759, DW_AT_decl_column(0x0c)

$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$760, DW_AT_name("INTx11")
	.dwattr $C$DW$760, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$760, DW_AT_bit_size(0x01)
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$760, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$760, DW_AT_decl_line(0x90)
	.dwattr $C$DW$760, DW_AT_decl_column(0x0c)

$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$761, DW_AT_name("INTx12")
	.dwattr $C$DW$761, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$761, DW_AT_bit_size(0x01)
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$761, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$761, DW_AT_decl_line(0x91)
	.dwattr $C$DW$761, DW_AT_decl_column(0x0c)

$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$762, DW_AT_name("INTx13")
	.dwattr $C$DW$762, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$762, DW_AT_bit_size(0x01)
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$762, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$762, DW_AT_decl_line(0x92)
	.dwattr $C$DW$762, DW_AT_decl_column(0x0c)

$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$763, DW_AT_name("INTx14")
	.dwattr $C$DW$763, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$763, DW_AT_bit_size(0x01)
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$763, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$763, DW_AT_decl_line(0x93)
	.dwattr $C$DW$763, DW_AT_decl_column(0x0c)

$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$764, DW_AT_name("INTx15")
	.dwattr $C$DW$764, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$764, DW_AT_bit_size(0x01)
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$764, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$764, DW_AT_decl_line(0x94)
	.dwattr $C$DW$764, DW_AT_decl_column(0x0c)

$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$765, DW_AT_name("INTx16")
	.dwattr $C$DW$765, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$765, DW_AT_bit_size(0x01)
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$765, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$765, DW_AT_decl_line(0x95)
	.dwattr $C$DW$765, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$166, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$166, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$166, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$166

	.dwendtag $C$DW$TU$166


$C$DW$TU$167	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$167

$C$DW$T$167	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$167, DW_AT_name("PIEIER2_REG")
	.dwattr $C$DW$T$167, DW_AT_byte_size(0x01)
$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$766, DW_AT_name("all")
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$766, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$766, DW_AT_decl_line(0x99)
	.dwattr $C$DW$766, DW_AT_decl_column(0x0d)

$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$767, DW_AT_name("bit")
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$767, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$767, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$767, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$167, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$167, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$167, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$167

	.dwendtag $C$DW$TU$167


$C$DW$TU$168	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$168

$C$DW$T$168	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$168, DW_AT_name("PIEIER3_BITS")
	.dwattr $C$DW$T$168, DW_AT_byte_size(0x01)
$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$768, DW_AT_name("INTx1")
	.dwattr $C$DW$768, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$768, DW_AT_bit_size(0x01)
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$768, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$768, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$768, DW_AT_decl_column(0x0c)

$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$769, DW_AT_name("INTx2")
	.dwattr $C$DW$769, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$769, DW_AT_bit_size(0x01)
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$769, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$769, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$769, DW_AT_decl_column(0x0c)

$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$770, DW_AT_name("INTx3")
	.dwattr $C$DW$770, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$770, DW_AT_bit_size(0x01)
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$770, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$770, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$770, DW_AT_decl_column(0x0c)

$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$771, DW_AT_name("INTx4")
	.dwattr $C$DW$771, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$771, DW_AT_bit_size(0x01)
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$771, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$771, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$771, DW_AT_decl_column(0x0c)

$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$772, DW_AT_name("INTx5")
	.dwattr $C$DW$772, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$772, DW_AT_bit_size(0x01)
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$772, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$772, DW_AT_decl_line(0xba)
	.dwattr $C$DW$772, DW_AT_decl_column(0x0c)

$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$773, DW_AT_name("INTx6")
	.dwattr $C$DW$773, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$773, DW_AT_bit_size(0x01)
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$773, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$773, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$773, DW_AT_decl_column(0x0c)

$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$774, DW_AT_name("INTx7")
	.dwattr $C$DW$774, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$774, DW_AT_bit_size(0x01)
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$774, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$774, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$774, DW_AT_decl_column(0x0c)

$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$775, DW_AT_name("INTx8")
	.dwattr $C$DW$775, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$775, DW_AT_bit_size(0x01)
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$775, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$775, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$775, DW_AT_decl_column(0x0c)

$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$776, DW_AT_name("INTx9")
	.dwattr $C$DW$776, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$776, DW_AT_bit_size(0x01)
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$776, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$776, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$776, DW_AT_decl_column(0x0c)

$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$777, DW_AT_name("INTx10")
	.dwattr $C$DW$777, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$777, DW_AT_bit_size(0x01)
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$777, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$777, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$777, DW_AT_decl_column(0x0c)

$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$778, DW_AT_name("INTx11")
	.dwattr $C$DW$778, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$778, DW_AT_bit_size(0x01)
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$778, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$778, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$778, DW_AT_decl_column(0x0c)

$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$779, DW_AT_name("INTx12")
	.dwattr $C$DW$779, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$779, DW_AT_bit_size(0x01)
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$779, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$779, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$779, DW_AT_decl_column(0x0c)

$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$780, DW_AT_name("INTx13")
	.dwattr $C$DW$780, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$780, DW_AT_bit_size(0x01)
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$780, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$780, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$780, DW_AT_decl_column(0x0c)

$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$781, DW_AT_name("INTx14")
	.dwattr $C$DW$781, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$781, DW_AT_bit_size(0x01)
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$781, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$781, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$781, DW_AT_decl_column(0x0c)

$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$782, DW_AT_name("INTx15")
	.dwattr $C$DW$782, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$782, DW_AT_bit_size(0x01)
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$782, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$782, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$782, DW_AT_decl_column(0x0c)

$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$783, DW_AT_name("INTx16")
	.dwattr $C$DW$783, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$783, DW_AT_bit_size(0x01)
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$783, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$783, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$783, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$168, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$168, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$T$168, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$168

	.dwendtag $C$DW$TU$168


$C$DW$TU$169	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$169

$C$DW$T$169	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$169, DW_AT_name("PIEIER3_REG")
	.dwattr $C$DW$T$169, DW_AT_byte_size(0x01)
$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$784, DW_AT_name("all")
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$784, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$784, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$784, DW_AT_decl_column(0x0d)

$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$168)
	.dwattr $C$DW$785, DW_AT_name("bit")
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$785, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$785, DW_AT_decl_line(0xca)
	.dwattr $C$DW$785, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$169, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$169, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$T$169, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$169

	.dwendtag $C$DW$TU$169


$C$DW$TU$170	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$170

$C$DW$T$170	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$170, DW_AT_name("PIEIER4_BITS")
	.dwattr $C$DW$T$170, DW_AT_byte_size(0x01)
$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$786, DW_AT_name("INTx1")
	.dwattr $C$DW$786, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$786, DW_AT_bit_size(0x01)
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$786, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$786, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$786, DW_AT_decl_column(0x0c)

$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$787, DW_AT_name("INTx2")
	.dwattr $C$DW$787, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$787, DW_AT_bit_size(0x01)
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$787, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$787, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$787, DW_AT_decl_column(0x0c)

$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$788, DW_AT_name("INTx3")
	.dwattr $C$DW$788, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$788, DW_AT_bit_size(0x01)
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$788, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$788, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$788, DW_AT_decl_column(0x0c)

$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$789, DW_AT_name("INTx4")
	.dwattr $C$DW$789, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$789, DW_AT_bit_size(0x01)
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$789, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$789, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$789, DW_AT_decl_column(0x0c)

$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$790, DW_AT_name("INTx5")
	.dwattr $C$DW$790, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$790, DW_AT_bit_size(0x01)
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$790, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$790, DW_AT_decl_line(0xea)
	.dwattr $C$DW$790, DW_AT_decl_column(0x0c)

$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$791, DW_AT_name("INTx6")
	.dwattr $C$DW$791, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$791, DW_AT_bit_size(0x01)
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$791, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$791, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$791, DW_AT_decl_column(0x0c)

$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$792, DW_AT_name("INTx7")
	.dwattr $C$DW$792, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$792, DW_AT_bit_size(0x01)
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$792, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$792, DW_AT_decl_line(0xec)
	.dwattr $C$DW$792, DW_AT_decl_column(0x0c)

$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$793, DW_AT_name("INTx8")
	.dwattr $C$DW$793, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$793, DW_AT_bit_size(0x01)
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$793, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$793, DW_AT_decl_line(0xed)
	.dwattr $C$DW$793, DW_AT_decl_column(0x0c)

$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$794, DW_AT_name("INTx9")
	.dwattr $C$DW$794, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$794, DW_AT_bit_size(0x01)
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$794, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$794, DW_AT_decl_line(0xee)
	.dwattr $C$DW$794, DW_AT_decl_column(0x0c)

$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$795, DW_AT_name("INTx10")
	.dwattr $C$DW$795, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$795, DW_AT_bit_size(0x01)
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$795, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$795, DW_AT_decl_line(0xef)
	.dwattr $C$DW$795, DW_AT_decl_column(0x0c)

$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$796, DW_AT_name("INTx11")
	.dwattr $C$DW$796, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$796, DW_AT_bit_size(0x01)
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$796, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$796, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$796, DW_AT_decl_column(0x0c)

$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$797, DW_AT_name("INTx12")
	.dwattr $C$DW$797, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$797, DW_AT_bit_size(0x01)
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$797, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$797, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$797, DW_AT_decl_column(0x0c)

$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$798, DW_AT_name("INTx13")
	.dwattr $C$DW$798, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$798, DW_AT_bit_size(0x01)
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$798, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$798, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$798, DW_AT_decl_column(0x0c)

$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$799, DW_AT_name("INTx14")
	.dwattr $C$DW$799, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$799, DW_AT_bit_size(0x01)
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$799, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$799, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$799, DW_AT_decl_column(0x0c)

$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$800, DW_AT_name("INTx15")
	.dwattr $C$DW$800, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$800, DW_AT_bit_size(0x01)
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$800, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$800, DW_AT_decl_line(0xf4)
	.dwattr $C$DW$800, DW_AT_decl_column(0x0c)

$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$801, DW_AT_name("INTx16")
	.dwattr $C$DW$801, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$801, DW_AT_bit_size(0x01)
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$801, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$801, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$801, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$170, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$170, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$T$170, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$170

	.dwendtag $C$DW$TU$170


$C$DW$TU$171	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$171

$C$DW$T$171	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$171, DW_AT_name("PIEIER4_REG")
	.dwattr $C$DW$T$171, DW_AT_byte_size(0x01)
$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$802, DW_AT_name("all")
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$802, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$802, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$802, DW_AT_decl_column(0x0d)

$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$170)
	.dwattr $C$DW$803, DW_AT_name("bit")
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$803, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$803, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$803, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$171, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$171, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$T$171, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$171

	.dwendtag $C$DW$TU$171


$C$DW$TU$172	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$172

$C$DW$T$172	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$172, DW_AT_name("PIEIER5_BITS")
	.dwattr $C$DW$T$172, DW_AT_byte_size(0x01)
$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$804, DW_AT_name("INTx1")
	.dwattr $C$DW$804, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$804, DW_AT_bit_size(0x01)
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$804, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$804, DW_AT_decl_line(0x116)
	.dwattr $C$DW$804, DW_AT_decl_column(0x0c)

$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$805, DW_AT_name("INTx2")
	.dwattr $C$DW$805, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$805, DW_AT_bit_size(0x01)
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$805, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$805, DW_AT_decl_line(0x117)
	.dwattr $C$DW$805, DW_AT_decl_column(0x0c)

$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$806, DW_AT_name("INTx3")
	.dwattr $C$DW$806, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$806, DW_AT_bit_size(0x01)
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$806, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$806, DW_AT_decl_line(0x118)
	.dwattr $C$DW$806, DW_AT_decl_column(0x0c)

$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$807, DW_AT_name("INTx4")
	.dwattr $C$DW$807, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$807, DW_AT_bit_size(0x01)
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$807, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$807, DW_AT_decl_line(0x119)
	.dwattr $C$DW$807, DW_AT_decl_column(0x0c)

$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$808, DW_AT_name("INTx5")
	.dwattr $C$DW$808, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$808, DW_AT_bit_size(0x01)
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$808, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$808, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$808, DW_AT_decl_column(0x0c)

$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$809, DW_AT_name("INTx6")
	.dwattr $C$DW$809, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$809, DW_AT_bit_size(0x01)
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$809, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$809, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$809, DW_AT_decl_column(0x0c)

$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$810, DW_AT_name("INTx7")
	.dwattr $C$DW$810, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$810, DW_AT_bit_size(0x01)
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$810, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$810, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$810, DW_AT_decl_column(0x0c)

$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$811, DW_AT_name("INTx8")
	.dwattr $C$DW$811, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$811, DW_AT_bit_size(0x01)
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$811, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$811, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$811, DW_AT_decl_column(0x0c)

$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$812, DW_AT_name("INTx9")
	.dwattr $C$DW$812, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$812, DW_AT_bit_size(0x01)
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$812, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$812, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$812, DW_AT_decl_column(0x0c)

$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$813, DW_AT_name("INTx10")
	.dwattr $C$DW$813, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$813, DW_AT_bit_size(0x01)
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$813, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$813, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$813, DW_AT_decl_column(0x0c)

$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$814, DW_AT_name("INTx11")
	.dwattr $C$DW$814, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$814, DW_AT_bit_size(0x01)
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$814, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$814, DW_AT_decl_line(0x120)
	.dwattr $C$DW$814, DW_AT_decl_column(0x0c)

$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$815, DW_AT_name("INTx12")
	.dwattr $C$DW$815, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$815, DW_AT_bit_size(0x01)
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$815, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$815, DW_AT_decl_line(0x121)
	.dwattr $C$DW$815, DW_AT_decl_column(0x0c)

$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$816, DW_AT_name("INTx13")
	.dwattr $C$DW$816, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$816, DW_AT_bit_size(0x01)
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$816, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$816, DW_AT_decl_line(0x122)
	.dwattr $C$DW$816, DW_AT_decl_column(0x0c)

$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$817, DW_AT_name("INTx14")
	.dwattr $C$DW$817, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$817, DW_AT_bit_size(0x01)
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$817, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$817, DW_AT_decl_line(0x123)
	.dwattr $C$DW$817, DW_AT_decl_column(0x0c)

$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$818, DW_AT_name("INTx15")
	.dwattr $C$DW$818, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$818, DW_AT_bit_size(0x01)
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$818, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$818, DW_AT_decl_line(0x124)
	.dwattr $C$DW$818, DW_AT_decl_column(0x0c)

$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$819, DW_AT_name("INTx16")
	.dwattr $C$DW$819, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$819, DW_AT_bit_size(0x01)
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$819, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$819, DW_AT_decl_line(0x125)
	.dwattr $C$DW$819, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$172, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$172, DW_AT_decl_line(0x115)
	.dwattr $C$DW$T$172, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$172

	.dwendtag $C$DW$TU$172


$C$DW$TU$173	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$173

$C$DW$T$173	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$173, DW_AT_name("PIEIER5_REG")
	.dwattr $C$DW$T$173, DW_AT_byte_size(0x01)
$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$820, DW_AT_name("all")
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$820, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$820, DW_AT_decl_line(0x129)
	.dwattr $C$DW$820, DW_AT_decl_column(0x0d)

$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$821, DW_AT_name("bit")
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$821, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$821, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$821, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$173, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$173, DW_AT_decl_line(0x128)
	.dwattr $C$DW$T$173, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$173

	.dwendtag $C$DW$TU$173


$C$DW$TU$174	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$174

$C$DW$T$174	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$174, DW_AT_name("PIEIER6_BITS")
	.dwattr $C$DW$T$174, DW_AT_byte_size(0x01)
$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$822, DW_AT_name("INTx1")
	.dwattr $C$DW$822, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$822, DW_AT_bit_size(0x01)
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$822, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$822, DW_AT_decl_line(0x146)
	.dwattr $C$DW$822, DW_AT_decl_column(0x0c)

$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$823, DW_AT_name("INTx2")
	.dwattr $C$DW$823, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$823, DW_AT_bit_size(0x01)
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$823, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$823, DW_AT_decl_line(0x147)
	.dwattr $C$DW$823, DW_AT_decl_column(0x0c)

$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$824, DW_AT_name("INTx3")
	.dwattr $C$DW$824, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$824, DW_AT_bit_size(0x01)
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$824, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$824, DW_AT_decl_line(0x148)
	.dwattr $C$DW$824, DW_AT_decl_column(0x0c)

$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$825, DW_AT_name("INTx4")
	.dwattr $C$DW$825, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$825, DW_AT_bit_size(0x01)
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$825, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$825, DW_AT_decl_line(0x149)
	.dwattr $C$DW$825, DW_AT_decl_column(0x0c)

$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$826, DW_AT_name("INTx5")
	.dwattr $C$DW$826, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$826, DW_AT_bit_size(0x01)
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$826, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$826, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$826, DW_AT_decl_column(0x0c)

$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$827, DW_AT_name("INTx6")
	.dwattr $C$DW$827, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$827, DW_AT_bit_size(0x01)
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$827, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$827, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$827, DW_AT_decl_column(0x0c)

$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$828, DW_AT_name("INTx7")
	.dwattr $C$DW$828, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$828, DW_AT_bit_size(0x01)
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$828, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$828, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$828, DW_AT_decl_column(0x0c)

$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$829, DW_AT_name("INTx8")
	.dwattr $C$DW$829, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$829, DW_AT_bit_size(0x01)
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$829, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$829, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$829, DW_AT_decl_column(0x0c)

$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$830, DW_AT_name("INTx9")
	.dwattr $C$DW$830, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$830, DW_AT_bit_size(0x01)
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$830, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$830, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$830, DW_AT_decl_column(0x0c)

$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$831, DW_AT_name("INTx10")
	.dwattr $C$DW$831, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$831, DW_AT_bit_size(0x01)
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$831, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$831, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$831, DW_AT_decl_column(0x0c)

$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$832, DW_AT_name("INTx11")
	.dwattr $C$DW$832, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$832, DW_AT_bit_size(0x01)
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$832, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$832, DW_AT_decl_line(0x150)
	.dwattr $C$DW$832, DW_AT_decl_column(0x0c)

$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$833, DW_AT_name("INTx12")
	.dwattr $C$DW$833, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$833, DW_AT_bit_size(0x01)
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$833, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$833, DW_AT_decl_line(0x151)
	.dwattr $C$DW$833, DW_AT_decl_column(0x0c)

$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$834, DW_AT_name("INTx13")
	.dwattr $C$DW$834, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$834, DW_AT_bit_size(0x01)
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$834, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$834, DW_AT_decl_line(0x152)
	.dwattr $C$DW$834, DW_AT_decl_column(0x0c)

$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$835, DW_AT_name("INTx14")
	.dwattr $C$DW$835, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$835, DW_AT_bit_size(0x01)
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$835, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$835, DW_AT_decl_line(0x153)
	.dwattr $C$DW$835, DW_AT_decl_column(0x0c)

$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$836, DW_AT_name("INTx15")
	.dwattr $C$DW$836, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$836, DW_AT_bit_size(0x01)
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$836, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$836, DW_AT_decl_line(0x154)
	.dwattr $C$DW$836, DW_AT_decl_column(0x0c)

$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$837, DW_AT_name("INTx16")
	.dwattr $C$DW$837, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$837, DW_AT_bit_size(0x01)
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$837, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$837, DW_AT_decl_line(0x155)
	.dwattr $C$DW$837, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$174, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$174, DW_AT_decl_line(0x145)
	.dwattr $C$DW$T$174, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$174

	.dwendtag $C$DW$TU$174


$C$DW$TU$175	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$175

$C$DW$T$175	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$175, DW_AT_name("PIEIER6_REG")
	.dwattr $C$DW$T$175, DW_AT_byte_size(0x01)
$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$838, DW_AT_name("all")
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$838, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$838, DW_AT_decl_line(0x159)
	.dwattr $C$DW$838, DW_AT_decl_column(0x0d)

$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$839, DW_AT_name("bit")
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$839, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$839, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$839, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$175, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$175, DW_AT_decl_line(0x158)
	.dwattr $C$DW$T$175, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$175

	.dwendtag $C$DW$TU$175


$C$DW$TU$176	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$176

$C$DW$T$176	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$176, DW_AT_name("PIEIER7_BITS")
	.dwattr $C$DW$T$176, DW_AT_byte_size(0x01)
$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$840, DW_AT_name("INTx1")
	.dwattr $C$DW$840, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$840, DW_AT_bit_size(0x01)
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$840, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$840, DW_AT_decl_line(0x176)
	.dwattr $C$DW$840, DW_AT_decl_column(0x0c)

$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$841, DW_AT_name("INTx2")
	.dwattr $C$DW$841, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$841, DW_AT_bit_size(0x01)
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$841, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$841, DW_AT_decl_line(0x177)
	.dwattr $C$DW$841, DW_AT_decl_column(0x0c)

$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$842, DW_AT_name("INTx3")
	.dwattr $C$DW$842, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$842, DW_AT_bit_size(0x01)
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$842, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$842, DW_AT_decl_line(0x178)
	.dwattr $C$DW$842, DW_AT_decl_column(0x0c)

$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$843, DW_AT_name("INTx4")
	.dwattr $C$DW$843, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$843, DW_AT_bit_size(0x01)
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$843, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$843, DW_AT_decl_line(0x179)
	.dwattr $C$DW$843, DW_AT_decl_column(0x0c)

$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$844, DW_AT_name("INTx5")
	.dwattr $C$DW$844, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$844, DW_AT_bit_size(0x01)
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$844, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$844, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$844, DW_AT_decl_column(0x0c)

$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$845, DW_AT_name("INTx6")
	.dwattr $C$DW$845, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$845, DW_AT_bit_size(0x01)
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$845, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$845, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$845, DW_AT_decl_column(0x0c)

$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$846, DW_AT_name("INTx7")
	.dwattr $C$DW$846, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$846, DW_AT_bit_size(0x01)
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$846, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$846, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$846, DW_AT_decl_column(0x0c)

$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$847, DW_AT_name("INTx8")
	.dwattr $C$DW$847, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$847, DW_AT_bit_size(0x01)
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$847, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$847, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$847, DW_AT_decl_column(0x0c)

$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$848, DW_AT_name("INTx9")
	.dwattr $C$DW$848, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$848, DW_AT_bit_size(0x01)
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$848, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$848, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$848, DW_AT_decl_column(0x0c)

$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$849, DW_AT_name("INTx10")
	.dwattr $C$DW$849, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$849, DW_AT_bit_size(0x01)
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$849, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$849, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$849, DW_AT_decl_column(0x0c)

$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$850, DW_AT_name("INTx11")
	.dwattr $C$DW$850, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$850, DW_AT_bit_size(0x01)
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$850, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$850, DW_AT_decl_line(0x180)
	.dwattr $C$DW$850, DW_AT_decl_column(0x0c)

$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$851, DW_AT_name("INTx12")
	.dwattr $C$DW$851, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$851, DW_AT_bit_size(0x01)
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$851, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$851, DW_AT_decl_line(0x181)
	.dwattr $C$DW$851, DW_AT_decl_column(0x0c)

$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$852, DW_AT_name("INTx13")
	.dwattr $C$DW$852, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$852, DW_AT_bit_size(0x01)
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$852, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$852, DW_AT_decl_line(0x182)
	.dwattr $C$DW$852, DW_AT_decl_column(0x0c)

$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$853, DW_AT_name("INTx14")
	.dwattr $C$DW$853, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$853, DW_AT_bit_size(0x01)
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$853, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$853, DW_AT_decl_line(0x183)
	.dwattr $C$DW$853, DW_AT_decl_column(0x0c)

$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$854, DW_AT_name("INTx15")
	.dwattr $C$DW$854, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$854, DW_AT_bit_size(0x01)
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$854, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$854, DW_AT_decl_line(0x184)
	.dwattr $C$DW$854, DW_AT_decl_column(0x0c)

$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$855, DW_AT_name("INTx16")
	.dwattr $C$DW$855, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$855, DW_AT_bit_size(0x01)
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$855, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$855, DW_AT_decl_line(0x185)
	.dwattr $C$DW$855, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$176, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$176, DW_AT_decl_line(0x175)
	.dwattr $C$DW$T$176, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$176

	.dwendtag $C$DW$TU$176


$C$DW$TU$177	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$177

$C$DW$T$177	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$177, DW_AT_name("PIEIER7_REG")
	.dwattr $C$DW$T$177, DW_AT_byte_size(0x01)
$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$856, DW_AT_name("all")
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$856, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$856, DW_AT_decl_line(0x189)
	.dwattr $C$DW$856, DW_AT_decl_column(0x0d)

$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$857, DW_AT_name("bit")
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$857, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$857, DW_AT_decl_line(0x18a)
	.dwattr $C$DW$857, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$177, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$177, DW_AT_decl_line(0x188)
	.dwattr $C$DW$T$177, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$177

	.dwendtag $C$DW$TU$177


$C$DW$TU$178	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$178

$C$DW$T$178	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$178, DW_AT_name("PIEIER8_BITS")
	.dwattr $C$DW$T$178, DW_AT_byte_size(0x01)
$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$858, DW_AT_name("INTx1")
	.dwattr $C$DW$858, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$858, DW_AT_bit_size(0x01)
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$858, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$858, DW_AT_decl_line(0x1a6)
	.dwattr $C$DW$858, DW_AT_decl_column(0x0c)

$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$859, DW_AT_name("INTx2")
	.dwattr $C$DW$859, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$859, DW_AT_bit_size(0x01)
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$859, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$859, DW_AT_decl_line(0x1a7)
	.dwattr $C$DW$859, DW_AT_decl_column(0x0c)

$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$860, DW_AT_name("INTx3")
	.dwattr $C$DW$860, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$860, DW_AT_bit_size(0x01)
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$860, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$860, DW_AT_decl_line(0x1a8)
	.dwattr $C$DW$860, DW_AT_decl_column(0x0c)

$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$861, DW_AT_name("INTx4")
	.dwattr $C$DW$861, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$861, DW_AT_bit_size(0x01)
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$861, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$861, DW_AT_decl_line(0x1a9)
	.dwattr $C$DW$861, DW_AT_decl_column(0x0c)

$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$862, DW_AT_name("INTx5")
	.dwattr $C$DW$862, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$862, DW_AT_bit_size(0x01)
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$862, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$862, DW_AT_decl_line(0x1aa)
	.dwattr $C$DW$862, DW_AT_decl_column(0x0c)

$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$863, DW_AT_name("INTx6")
	.dwattr $C$DW$863, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$863, DW_AT_bit_size(0x01)
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$863, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$863, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$863, DW_AT_decl_column(0x0c)

$C$DW$864	.dwtag  DW_TAG_member
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$864, DW_AT_name("INTx7")
	.dwattr $C$DW$864, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$864, DW_AT_bit_size(0x01)
	.dwattr $C$DW$864, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$864, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$864, DW_AT_decl_line(0x1ac)
	.dwattr $C$DW$864, DW_AT_decl_column(0x0c)

$C$DW$865	.dwtag  DW_TAG_member
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$865, DW_AT_name("INTx8")
	.dwattr $C$DW$865, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$865, DW_AT_bit_size(0x01)
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$865, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$865, DW_AT_decl_line(0x1ad)
	.dwattr $C$DW$865, DW_AT_decl_column(0x0c)

$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$866, DW_AT_name("INTx9")
	.dwattr $C$DW$866, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$866, DW_AT_bit_size(0x01)
	.dwattr $C$DW$866, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$866, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$866, DW_AT_decl_line(0x1ae)
	.dwattr $C$DW$866, DW_AT_decl_column(0x0c)

$C$DW$867	.dwtag  DW_TAG_member
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$867, DW_AT_name("INTx10")
	.dwattr $C$DW$867, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$867, DW_AT_bit_size(0x01)
	.dwattr $C$DW$867, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$867, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$867, DW_AT_decl_line(0x1af)
	.dwattr $C$DW$867, DW_AT_decl_column(0x0c)

$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$868, DW_AT_name("INTx11")
	.dwattr $C$DW$868, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$868, DW_AT_bit_size(0x01)
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$868, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$868, DW_AT_decl_line(0x1b0)
	.dwattr $C$DW$868, DW_AT_decl_column(0x0c)

$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$869, DW_AT_name("INTx12")
	.dwattr $C$DW$869, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$869, DW_AT_bit_size(0x01)
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$869, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$869, DW_AT_decl_line(0x1b1)
	.dwattr $C$DW$869, DW_AT_decl_column(0x0c)

$C$DW$870	.dwtag  DW_TAG_member
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$870, DW_AT_name("INTx13")
	.dwattr $C$DW$870, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$870, DW_AT_bit_size(0x01)
	.dwattr $C$DW$870, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$870, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$870, DW_AT_decl_line(0x1b2)
	.dwattr $C$DW$870, DW_AT_decl_column(0x0c)

$C$DW$871	.dwtag  DW_TAG_member
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$871, DW_AT_name("INTx14")
	.dwattr $C$DW$871, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$871, DW_AT_bit_size(0x01)
	.dwattr $C$DW$871, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$871, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$871, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$871, DW_AT_decl_column(0x0c)

$C$DW$872	.dwtag  DW_TAG_member
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$872, DW_AT_name("INTx15")
	.dwattr $C$DW$872, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$872, DW_AT_bit_size(0x01)
	.dwattr $C$DW$872, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$872, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$872, DW_AT_decl_line(0x1b4)
	.dwattr $C$DW$872, DW_AT_decl_column(0x0c)

$C$DW$873	.dwtag  DW_TAG_member
	.dwattr $C$DW$873, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$873, DW_AT_name("INTx16")
	.dwattr $C$DW$873, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$873, DW_AT_bit_size(0x01)
	.dwattr $C$DW$873, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$873, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$873, DW_AT_decl_line(0x1b5)
	.dwattr $C$DW$873, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$178, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$178, DW_AT_decl_line(0x1a5)
	.dwattr $C$DW$T$178, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$178

	.dwendtag $C$DW$TU$178


$C$DW$TU$179	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$179

$C$DW$T$179	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$179, DW_AT_name("PIEIER8_REG")
	.dwattr $C$DW$T$179, DW_AT_byte_size(0x01)
$C$DW$874	.dwtag  DW_TAG_member
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$874, DW_AT_name("all")
	.dwattr $C$DW$874, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$874, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$874, DW_AT_decl_line(0x1b9)
	.dwattr $C$DW$874, DW_AT_decl_column(0x0d)

$C$DW$875	.dwtag  DW_TAG_member
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$875, DW_AT_name("bit")
	.dwattr $C$DW$875, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$875, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$875, DW_AT_decl_line(0x1ba)
	.dwattr $C$DW$875, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$179, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$179, DW_AT_decl_line(0x1b8)
	.dwattr $C$DW$T$179, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$179

	.dwendtag $C$DW$TU$179


$C$DW$TU$180	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$180

$C$DW$T$180	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$180, DW_AT_name("PIEIER9_BITS")
	.dwattr $C$DW$T$180, DW_AT_byte_size(0x01)
$C$DW$876	.dwtag  DW_TAG_member
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$876, DW_AT_name("INTx1")
	.dwattr $C$DW$876, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$876, DW_AT_bit_size(0x01)
	.dwattr $C$DW$876, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$876, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$876, DW_AT_decl_line(0x1d6)
	.dwattr $C$DW$876, DW_AT_decl_column(0x0c)

$C$DW$877	.dwtag  DW_TAG_member
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$877, DW_AT_name("INTx2")
	.dwattr $C$DW$877, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$877, DW_AT_bit_size(0x01)
	.dwattr $C$DW$877, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$877, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$877, DW_AT_decl_line(0x1d7)
	.dwattr $C$DW$877, DW_AT_decl_column(0x0c)

$C$DW$878	.dwtag  DW_TAG_member
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$878, DW_AT_name("INTx3")
	.dwattr $C$DW$878, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$878, DW_AT_bit_size(0x01)
	.dwattr $C$DW$878, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$878, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$878, DW_AT_decl_line(0x1d8)
	.dwattr $C$DW$878, DW_AT_decl_column(0x0c)

$C$DW$879	.dwtag  DW_TAG_member
	.dwattr $C$DW$879, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$879, DW_AT_name("INTx4")
	.dwattr $C$DW$879, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$879, DW_AT_bit_size(0x01)
	.dwattr $C$DW$879, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$879, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$879, DW_AT_decl_line(0x1d9)
	.dwattr $C$DW$879, DW_AT_decl_column(0x0c)

$C$DW$880	.dwtag  DW_TAG_member
	.dwattr $C$DW$880, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$880, DW_AT_name("INTx5")
	.dwattr $C$DW$880, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$880, DW_AT_bit_size(0x01)
	.dwattr $C$DW$880, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$880, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$880, DW_AT_decl_line(0x1da)
	.dwattr $C$DW$880, DW_AT_decl_column(0x0c)

$C$DW$881	.dwtag  DW_TAG_member
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$881, DW_AT_name("INTx6")
	.dwattr $C$DW$881, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$881, DW_AT_bit_size(0x01)
	.dwattr $C$DW$881, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$881, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$881, DW_AT_decl_line(0x1db)
	.dwattr $C$DW$881, DW_AT_decl_column(0x0c)

$C$DW$882	.dwtag  DW_TAG_member
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$882, DW_AT_name("INTx7")
	.dwattr $C$DW$882, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$882, DW_AT_bit_size(0x01)
	.dwattr $C$DW$882, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$882, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$882, DW_AT_decl_line(0x1dc)
	.dwattr $C$DW$882, DW_AT_decl_column(0x0c)

$C$DW$883	.dwtag  DW_TAG_member
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$883, DW_AT_name("INTx8")
	.dwattr $C$DW$883, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$883, DW_AT_bit_size(0x01)
	.dwattr $C$DW$883, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$883, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$883, DW_AT_decl_line(0x1dd)
	.dwattr $C$DW$883, DW_AT_decl_column(0x0c)

$C$DW$884	.dwtag  DW_TAG_member
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$884, DW_AT_name("INTx9")
	.dwattr $C$DW$884, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$884, DW_AT_bit_size(0x01)
	.dwattr $C$DW$884, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$884, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$884, DW_AT_decl_line(0x1de)
	.dwattr $C$DW$884, DW_AT_decl_column(0x0c)

$C$DW$885	.dwtag  DW_TAG_member
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$885, DW_AT_name("INTx10")
	.dwattr $C$DW$885, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$885, DW_AT_bit_size(0x01)
	.dwattr $C$DW$885, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$885, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$885, DW_AT_decl_line(0x1df)
	.dwattr $C$DW$885, DW_AT_decl_column(0x0c)

$C$DW$886	.dwtag  DW_TAG_member
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$886, DW_AT_name("INTx11")
	.dwattr $C$DW$886, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$886, DW_AT_bit_size(0x01)
	.dwattr $C$DW$886, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$886, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$886, DW_AT_decl_line(0x1e0)
	.dwattr $C$DW$886, DW_AT_decl_column(0x0c)

$C$DW$887	.dwtag  DW_TAG_member
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$887, DW_AT_name("INTx12")
	.dwattr $C$DW$887, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$887, DW_AT_bit_size(0x01)
	.dwattr $C$DW$887, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$887, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$887, DW_AT_decl_line(0x1e1)
	.dwattr $C$DW$887, DW_AT_decl_column(0x0c)

$C$DW$888	.dwtag  DW_TAG_member
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$888, DW_AT_name("INTx13")
	.dwattr $C$DW$888, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$888, DW_AT_bit_size(0x01)
	.dwattr $C$DW$888, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$888, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$888, DW_AT_decl_line(0x1e2)
	.dwattr $C$DW$888, DW_AT_decl_column(0x0c)

$C$DW$889	.dwtag  DW_TAG_member
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$889, DW_AT_name("INTx14")
	.dwattr $C$DW$889, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$889, DW_AT_bit_size(0x01)
	.dwattr $C$DW$889, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$889, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$889, DW_AT_decl_line(0x1e3)
	.dwattr $C$DW$889, DW_AT_decl_column(0x0c)

$C$DW$890	.dwtag  DW_TAG_member
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$890, DW_AT_name("INTx15")
	.dwattr $C$DW$890, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$890, DW_AT_bit_size(0x01)
	.dwattr $C$DW$890, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$890, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$890, DW_AT_decl_line(0x1e4)
	.dwattr $C$DW$890, DW_AT_decl_column(0x0c)

$C$DW$891	.dwtag  DW_TAG_member
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$891, DW_AT_name("INTx16")
	.dwattr $C$DW$891, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$891, DW_AT_bit_size(0x01)
	.dwattr $C$DW$891, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$891, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$891, DW_AT_decl_line(0x1e5)
	.dwattr $C$DW$891, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$180, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$180, DW_AT_decl_line(0x1d5)
	.dwattr $C$DW$T$180, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$180

	.dwendtag $C$DW$TU$180


$C$DW$TU$181	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$181

$C$DW$T$181	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$181, DW_AT_name("PIEIER9_REG")
	.dwattr $C$DW$T$181, DW_AT_byte_size(0x01)
$C$DW$892	.dwtag  DW_TAG_member
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$892, DW_AT_name("all")
	.dwattr $C$DW$892, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$892, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$892, DW_AT_decl_line(0x1e9)
	.dwattr $C$DW$892, DW_AT_decl_column(0x0d)

$C$DW$893	.dwtag  DW_TAG_member
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$893, DW_AT_name("bit")
	.dwattr $C$DW$893, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$893, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$893, DW_AT_decl_line(0x1ea)
	.dwattr $C$DW$893, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$181, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$181, DW_AT_decl_line(0x1e8)
	.dwattr $C$DW$T$181, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$181

	.dwendtag $C$DW$TU$181


$C$DW$TU$182	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$182

$C$DW$T$182	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$182, DW_AT_name("PIEIFR10_BITS")
	.dwattr $C$DW$T$182, DW_AT_byte_size(0x01)
$C$DW$894	.dwtag  DW_TAG_member
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$894, DW_AT_name("INTx1")
	.dwattr $C$DW$894, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$894, DW_AT_bit_size(0x01)
	.dwattr $C$DW$894, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$894, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$894, DW_AT_decl_line(0x21e)
	.dwattr $C$DW$894, DW_AT_decl_column(0x0c)

$C$DW$895	.dwtag  DW_TAG_member
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$895, DW_AT_name("INTx2")
	.dwattr $C$DW$895, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$895, DW_AT_bit_size(0x01)
	.dwattr $C$DW$895, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$895, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$895, DW_AT_decl_line(0x21f)
	.dwattr $C$DW$895, DW_AT_decl_column(0x0c)

$C$DW$896	.dwtag  DW_TAG_member
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$896, DW_AT_name("INTx3")
	.dwattr $C$DW$896, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$896, DW_AT_bit_size(0x01)
	.dwattr $C$DW$896, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$896, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$896, DW_AT_decl_line(0x220)
	.dwattr $C$DW$896, DW_AT_decl_column(0x0c)

$C$DW$897	.dwtag  DW_TAG_member
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$897, DW_AT_name("INTx4")
	.dwattr $C$DW$897, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$897, DW_AT_bit_size(0x01)
	.dwattr $C$DW$897, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$897, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$897, DW_AT_decl_line(0x221)
	.dwattr $C$DW$897, DW_AT_decl_column(0x0c)

$C$DW$898	.dwtag  DW_TAG_member
	.dwattr $C$DW$898, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$898, DW_AT_name("INTx5")
	.dwattr $C$DW$898, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$898, DW_AT_bit_size(0x01)
	.dwattr $C$DW$898, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$898, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$898, DW_AT_decl_line(0x222)
	.dwattr $C$DW$898, DW_AT_decl_column(0x0c)

$C$DW$899	.dwtag  DW_TAG_member
	.dwattr $C$DW$899, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$899, DW_AT_name("INTx6")
	.dwattr $C$DW$899, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$899, DW_AT_bit_size(0x01)
	.dwattr $C$DW$899, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$899, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$899, DW_AT_decl_line(0x223)
	.dwattr $C$DW$899, DW_AT_decl_column(0x0c)

$C$DW$900	.dwtag  DW_TAG_member
	.dwattr $C$DW$900, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$900, DW_AT_name("INTx7")
	.dwattr $C$DW$900, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$900, DW_AT_bit_size(0x01)
	.dwattr $C$DW$900, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$900, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$900, DW_AT_decl_line(0x224)
	.dwattr $C$DW$900, DW_AT_decl_column(0x0c)

$C$DW$901	.dwtag  DW_TAG_member
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$901, DW_AT_name("INTx8")
	.dwattr $C$DW$901, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$901, DW_AT_bit_size(0x01)
	.dwattr $C$DW$901, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$901, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$901, DW_AT_decl_line(0x225)
	.dwattr $C$DW$901, DW_AT_decl_column(0x0c)

$C$DW$902	.dwtag  DW_TAG_member
	.dwattr $C$DW$902, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$902, DW_AT_name("INTx9")
	.dwattr $C$DW$902, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$902, DW_AT_bit_size(0x01)
	.dwattr $C$DW$902, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$902, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$902, DW_AT_decl_line(0x226)
	.dwattr $C$DW$902, DW_AT_decl_column(0x0c)

$C$DW$903	.dwtag  DW_TAG_member
	.dwattr $C$DW$903, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$903, DW_AT_name("INTx10")
	.dwattr $C$DW$903, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$903, DW_AT_bit_size(0x01)
	.dwattr $C$DW$903, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$903, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$903, DW_AT_decl_line(0x227)
	.dwattr $C$DW$903, DW_AT_decl_column(0x0c)

$C$DW$904	.dwtag  DW_TAG_member
	.dwattr $C$DW$904, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$904, DW_AT_name("INTx11")
	.dwattr $C$DW$904, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$904, DW_AT_bit_size(0x01)
	.dwattr $C$DW$904, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$904, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$904, DW_AT_decl_line(0x228)
	.dwattr $C$DW$904, DW_AT_decl_column(0x0c)

$C$DW$905	.dwtag  DW_TAG_member
	.dwattr $C$DW$905, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$905, DW_AT_name("INTx12")
	.dwattr $C$DW$905, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$905, DW_AT_bit_size(0x01)
	.dwattr $C$DW$905, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$905, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$905, DW_AT_decl_line(0x229)
	.dwattr $C$DW$905, DW_AT_decl_column(0x0c)

$C$DW$906	.dwtag  DW_TAG_member
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$906, DW_AT_name("INTx13")
	.dwattr $C$DW$906, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$906, DW_AT_bit_size(0x01)
	.dwattr $C$DW$906, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$906, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$906, DW_AT_decl_line(0x22a)
	.dwattr $C$DW$906, DW_AT_decl_column(0x0c)

$C$DW$907	.dwtag  DW_TAG_member
	.dwattr $C$DW$907, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$907, DW_AT_name("INTx14")
	.dwattr $C$DW$907, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$907, DW_AT_bit_size(0x01)
	.dwattr $C$DW$907, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$907, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$907, DW_AT_decl_line(0x22b)
	.dwattr $C$DW$907, DW_AT_decl_column(0x0c)

$C$DW$908	.dwtag  DW_TAG_member
	.dwattr $C$DW$908, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$908, DW_AT_name("INTx15")
	.dwattr $C$DW$908, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$908, DW_AT_bit_size(0x01)
	.dwattr $C$DW$908, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$908, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$908, DW_AT_decl_line(0x22c)
	.dwattr $C$DW$908, DW_AT_decl_column(0x0c)

$C$DW$909	.dwtag  DW_TAG_member
	.dwattr $C$DW$909, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$909, DW_AT_name("INTx16")
	.dwattr $C$DW$909, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$909, DW_AT_bit_size(0x01)
	.dwattr $C$DW$909, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$909, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$909, DW_AT_decl_line(0x22d)
	.dwattr $C$DW$909, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$182, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$182, DW_AT_decl_line(0x21d)
	.dwattr $C$DW$T$182, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$182

	.dwendtag $C$DW$TU$182


$C$DW$TU$183	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$183

$C$DW$T$183	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$183, DW_AT_name("PIEIFR10_REG")
	.dwattr $C$DW$T$183, DW_AT_byte_size(0x01)
$C$DW$910	.dwtag  DW_TAG_member
	.dwattr $C$DW$910, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$910, DW_AT_name("all")
	.dwattr $C$DW$910, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$910, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$910, DW_AT_decl_line(0x231)
	.dwattr $C$DW$910, DW_AT_decl_column(0x0d)

$C$DW$911	.dwtag  DW_TAG_member
	.dwattr $C$DW$911, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$911, DW_AT_name("bit")
	.dwattr $C$DW$911, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$911, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$911, DW_AT_decl_line(0x232)
	.dwattr $C$DW$911, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$183, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$183, DW_AT_decl_line(0x230)
	.dwattr $C$DW$T$183, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$183

	.dwendtag $C$DW$TU$183


$C$DW$TU$184	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$184

$C$DW$T$184	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$184, DW_AT_name("PIEIFR11_BITS")
	.dwattr $C$DW$T$184, DW_AT_byte_size(0x01)
$C$DW$912	.dwtag  DW_TAG_member
	.dwattr $C$DW$912, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$912, DW_AT_name("INTx1")
	.dwattr $C$DW$912, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$912, DW_AT_bit_size(0x01)
	.dwattr $C$DW$912, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$912, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$912, DW_AT_decl_line(0x24e)
	.dwattr $C$DW$912, DW_AT_decl_column(0x0c)

$C$DW$913	.dwtag  DW_TAG_member
	.dwattr $C$DW$913, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$913, DW_AT_name("INTx2")
	.dwattr $C$DW$913, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$913, DW_AT_bit_size(0x01)
	.dwattr $C$DW$913, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$913, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$913, DW_AT_decl_line(0x24f)
	.dwattr $C$DW$913, DW_AT_decl_column(0x0c)

$C$DW$914	.dwtag  DW_TAG_member
	.dwattr $C$DW$914, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$914, DW_AT_name("INTx3")
	.dwattr $C$DW$914, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$914, DW_AT_bit_size(0x01)
	.dwattr $C$DW$914, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$914, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$914, DW_AT_decl_line(0x250)
	.dwattr $C$DW$914, DW_AT_decl_column(0x0c)

$C$DW$915	.dwtag  DW_TAG_member
	.dwattr $C$DW$915, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$915, DW_AT_name("INTx4")
	.dwattr $C$DW$915, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$915, DW_AT_bit_size(0x01)
	.dwattr $C$DW$915, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$915, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$915, DW_AT_decl_line(0x251)
	.dwattr $C$DW$915, DW_AT_decl_column(0x0c)

$C$DW$916	.dwtag  DW_TAG_member
	.dwattr $C$DW$916, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$916, DW_AT_name("INTx5")
	.dwattr $C$DW$916, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$916, DW_AT_bit_size(0x01)
	.dwattr $C$DW$916, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$916, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$916, DW_AT_decl_line(0x252)
	.dwattr $C$DW$916, DW_AT_decl_column(0x0c)

$C$DW$917	.dwtag  DW_TAG_member
	.dwattr $C$DW$917, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$917, DW_AT_name("INTx6")
	.dwattr $C$DW$917, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$917, DW_AT_bit_size(0x01)
	.dwattr $C$DW$917, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$917, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$917, DW_AT_decl_line(0x253)
	.dwattr $C$DW$917, DW_AT_decl_column(0x0c)

$C$DW$918	.dwtag  DW_TAG_member
	.dwattr $C$DW$918, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$918, DW_AT_name("INTx7")
	.dwattr $C$DW$918, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$918, DW_AT_bit_size(0x01)
	.dwattr $C$DW$918, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$918, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$918, DW_AT_decl_line(0x254)
	.dwattr $C$DW$918, DW_AT_decl_column(0x0c)

$C$DW$919	.dwtag  DW_TAG_member
	.dwattr $C$DW$919, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$919, DW_AT_name("INTx8")
	.dwattr $C$DW$919, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$919, DW_AT_bit_size(0x01)
	.dwattr $C$DW$919, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$919, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$919, DW_AT_decl_line(0x255)
	.dwattr $C$DW$919, DW_AT_decl_column(0x0c)

$C$DW$920	.dwtag  DW_TAG_member
	.dwattr $C$DW$920, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$920, DW_AT_name("INTx9")
	.dwattr $C$DW$920, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$920, DW_AT_bit_size(0x01)
	.dwattr $C$DW$920, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$920, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$920, DW_AT_decl_line(0x256)
	.dwattr $C$DW$920, DW_AT_decl_column(0x0c)

$C$DW$921	.dwtag  DW_TAG_member
	.dwattr $C$DW$921, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$921, DW_AT_name("INTx10")
	.dwattr $C$DW$921, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$921, DW_AT_bit_size(0x01)
	.dwattr $C$DW$921, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$921, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$921, DW_AT_decl_line(0x257)
	.dwattr $C$DW$921, DW_AT_decl_column(0x0c)

$C$DW$922	.dwtag  DW_TAG_member
	.dwattr $C$DW$922, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$922, DW_AT_name("INTx11")
	.dwattr $C$DW$922, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$922, DW_AT_bit_size(0x01)
	.dwattr $C$DW$922, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$922, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$922, DW_AT_decl_line(0x258)
	.dwattr $C$DW$922, DW_AT_decl_column(0x0c)

$C$DW$923	.dwtag  DW_TAG_member
	.dwattr $C$DW$923, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$923, DW_AT_name("INTx12")
	.dwattr $C$DW$923, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$923, DW_AT_bit_size(0x01)
	.dwattr $C$DW$923, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$923, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$923, DW_AT_decl_line(0x259)
	.dwattr $C$DW$923, DW_AT_decl_column(0x0c)

$C$DW$924	.dwtag  DW_TAG_member
	.dwattr $C$DW$924, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$924, DW_AT_name("INTx13")
	.dwattr $C$DW$924, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$924, DW_AT_bit_size(0x01)
	.dwattr $C$DW$924, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$924, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$924, DW_AT_decl_line(0x25a)
	.dwattr $C$DW$924, DW_AT_decl_column(0x0c)

$C$DW$925	.dwtag  DW_TAG_member
	.dwattr $C$DW$925, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$925, DW_AT_name("INTx14")
	.dwattr $C$DW$925, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$925, DW_AT_bit_size(0x01)
	.dwattr $C$DW$925, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$925, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$925, DW_AT_decl_line(0x25b)
	.dwattr $C$DW$925, DW_AT_decl_column(0x0c)

$C$DW$926	.dwtag  DW_TAG_member
	.dwattr $C$DW$926, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$926, DW_AT_name("INTx15")
	.dwattr $C$DW$926, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$926, DW_AT_bit_size(0x01)
	.dwattr $C$DW$926, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$926, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$926, DW_AT_decl_line(0x25c)
	.dwattr $C$DW$926, DW_AT_decl_column(0x0c)

$C$DW$927	.dwtag  DW_TAG_member
	.dwattr $C$DW$927, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$927, DW_AT_name("INTx16")
	.dwattr $C$DW$927, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$927, DW_AT_bit_size(0x01)
	.dwattr $C$DW$927, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$927, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$927, DW_AT_decl_line(0x25d)
	.dwattr $C$DW$927, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$184, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$184, DW_AT_decl_line(0x24d)
	.dwattr $C$DW$T$184, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$184

	.dwendtag $C$DW$TU$184


$C$DW$TU$185	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$185

$C$DW$T$185	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$185, DW_AT_name("PIEIFR11_REG")
	.dwattr $C$DW$T$185, DW_AT_byte_size(0x01)
$C$DW$928	.dwtag  DW_TAG_member
	.dwattr $C$DW$928, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$928, DW_AT_name("all")
	.dwattr $C$DW$928, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$928, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$928, DW_AT_decl_line(0x261)
	.dwattr $C$DW$928, DW_AT_decl_column(0x0d)

$C$DW$929	.dwtag  DW_TAG_member
	.dwattr $C$DW$929, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$929, DW_AT_name("bit")
	.dwattr $C$DW$929, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$929, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$929, DW_AT_decl_line(0x262)
	.dwattr $C$DW$929, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$185, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$185, DW_AT_decl_line(0x260)
	.dwattr $C$DW$T$185, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$185

	.dwendtag $C$DW$TU$185


$C$DW$TU$186	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$186

$C$DW$T$186	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$186, DW_AT_name("PIEIFR12_BITS")
	.dwattr $C$DW$T$186, DW_AT_byte_size(0x01)
$C$DW$930	.dwtag  DW_TAG_member
	.dwattr $C$DW$930, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$930, DW_AT_name("INTx1")
	.dwattr $C$DW$930, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$930, DW_AT_bit_size(0x01)
	.dwattr $C$DW$930, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$930, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$930, DW_AT_decl_line(0x27e)
	.dwattr $C$DW$930, DW_AT_decl_column(0x0c)

$C$DW$931	.dwtag  DW_TAG_member
	.dwattr $C$DW$931, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$931, DW_AT_name("INTx2")
	.dwattr $C$DW$931, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$931, DW_AT_bit_size(0x01)
	.dwattr $C$DW$931, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$931, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$931, DW_AT_decl_line(0x27f)
	.dwattr $C$DW$931, DW_AT_decl_column(0x0c)

$C$DW$932	.dwtag  DW_TAG_member
	.dwattr $C$DW$932, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$932, DW_AT_name("INTx3")
	.dwattr $C$DW$932, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$932, DW_AT_bit_size(0x01)
	.dwattr $C$DW$932, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$932, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$932, DW_AT_decl_line(0x280)
	.dwattr $C$DW$932, DW_AT_decl_column(0x0c)

$C$DW$933	.dwtag  DW_TAG_member
	.dwattr $C$DW$933, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$933, DW_AT_name("INTx4")
	.dwattr $C$DW$933, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$933, DW_AT_bit_size(0x01)
	.dwattr $C$DW$933, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$933, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$933, DW_AT_decl_line(0x281)
	.dwattr $C$DW$933, DW_AT_decl_column(0x0c)

$C$DW$934	.dwtag  DW_TAG_member
	.dwattr $C$DW$934, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$934, DW_AT_name("INTx5")
	.dwattr $C$DW$934, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$934, DW_AT_bit_size(0x01)
	.dwattr $C$DW$934, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$934, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$934, DW_AT_decl_line(0x282)
	.dwattr $C$DW$934, DW_AT_decl_column(0x0c)

$C$DW$935	.dwtag  DW_TAG_member
	.dwattr $C$DW$935, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$935, DW_AT_name("INTx6")
	.dwattr $C$DW$935, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$935, DW_AT_bit_size(0x01)
	.dwattr $C$DW$935, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$935, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$935, DW_AT_decl_line(0x283)
	.dwattr $C$DW$935, DW_AT_decl_column(0x0c)

$C$DW$936	.dwtag  DW_TAG_member
	.dwattr $C$DW$936, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$936, DW_AT_name("INTx7")
	.dwattr $C$DW$936, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$936, DW_AT_bit_size(0x01)
	.dwattr $C$DW$936, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$936, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$936, DW_AT_decl_line(0x284)
	.dwattr $C$DW$936, DW_AT_decl_column(0x0c)

$C$DW$937	.dwtag  DW_TAG_member
	.dwattr $C$DW$937, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$937, DW_AT_name("INTx8")
	.dwattr $C$DW$937, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$937, DW_AT_bit_size(0x01)
	.dwattr $C$DW$937, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$937, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$937, DW_AT_decl_line(0x285)
	.dwattr $C$DW$937, DW_AT_decl_column(0x0c)

$C$DW$938	.dwtag  DW_TAG_member
	.dwattr $C$DW$938, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$938, DW_AT_name("INTx9")
	.dwattr $C$DW$938, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$938, DW_AT_bit_size(0x01)
	.dwattr $C$DW$938, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$938, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$938, DW_AT_decl_line(0x286)
	.dwattr $C$DW$938, DW_AT_decl_column(0x0c)

$C$DW$939	.dwtag  DW_TAG_member
	.dwattr $C$DW$939, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$939, DW_AT_name("INTx10")
	.dwattr $C$DW$939, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$939, DW_AT_bit_size(0x01)
	.dwattr $C$DW$939, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$939, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$939, DW_AT_decl_line(0x287)
	.dwattr $C$DW$939, DW_AT_decl_column(0x0c)

$C$DW$940	.dwtag  DW_TAG_member
	.dwattr $C$DW$940, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$940, DW_AT_name("INTx11")
	.dwattr $C$DW$940, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$940, DW_AT_bit_size(0x01)
	.dwattr $C$DW$940, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$940, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$940, DW_AT_decl_line(0x288)
	.dwattr $C$DW$940, DW_AT_decl_column(0x0c)

$C$DW$941	.dwtag  DW_TAG_member
	.dwattr $C$DW$941, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$941, DW_AT_name("INTx12")
	.dwattr $C$DW$941, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$941, DW_AT_bit_size(0x01)
	.dwattr $C$DW$941, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$941, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$941, DW_AT_decl_line(0x289)
	.dwattr $C$DW$941, DW_AT_decl_column(0x0c)

$C$DW$942	.dwtag  DW_TAG_member
	.dwattr $C$DW$942, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$942, DW_AT_name("INTx13")
	.dwattr $C$DW$942, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$942, DW_AT_bit_size(0x01)
	.dwattr $C$DW$942, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$942, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$942, DW_AT_decl_line(0x28a)
	.dwattr $C$DW$942, DW_AT_decl_column(0x0c)

$C$DW$943	.dwtag  DW_TAG_member
	.dwattr $C$DW$943, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$943, DW_AT_name("INTx14")
	.dwattr $C$DW$943, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$943, DW_AT_bit_size(0x01)
	.dwattr $C$DW$943, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$943, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$943, DW_AT_decl_line(0x28b)
	.dwattr $C$DW$943, DW_AT_decl_column(0x0c)

$C$DW$944	.dwtag  DW_TAG_member
	.dwattr $C$DW$944, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$944, DW_AT_name("INTx15")
	.dwattr $C$DW$944, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$944, DW_AT_bit_size(0x01)
	.dwattr $C$DW$944, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$944, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$944, DW_AT_decl_line(0x28c)
	.dwattr $C$DW$944, DW_AT_decl_column(0x0c)

$C$DW$945	.dwtag  DW_TAG_member
	.dwattr $C$DW$945, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$945, DW_AT_name("INTx16")
	.dwattr $C$DW$945, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$945, DW_AT_bit_size(0x01)
	.dwattr $C$DW$945, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$945, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$945, DW_AT_decl_line(0x28d)
	.dwattr $C$DW$945, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$186, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$186, DW_AT_decl_line(0x27d)
	.dwattr $C$DW$T$186, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$186

	.dwendtag $C$DW$TU$186


$C$DW$TU$187	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$187

$C$DW$T$187	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$187, DW_AT_name("PIEIFR12_REG")
	.dwattr $C$DW$T$187, DW_AT_byte_size(0x01)
$C$DW$946	.dwtag  DW_TAG_member
	.dwattr $C$DW$946, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$946, DW_AT_name("all")
	.dwattr $C$DW$946, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$946, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$946, DW_AT_decl_line(0x291)
	.dwattr $C$DW$946, DW_AT_decl_column(0x0d)

$C$DW$947	.dwtag  DW_TAG_member
	.dwattr $C$DW$947, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$947, DW_AT_name("bit")
	.dwattr $C$DW$947, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$947, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$947, DW_AT_decl_line(0x292)
	.dwattr $C$DW$947, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$187, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$187, DW_AT_decl_line(0x290)
	.dwattr $C$DW$T$187, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$187

	.dwendtag $C$DW$TU$187


$C$DW$TU$188	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$188

$C$DW$T$188	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$188, DW_AT_name("PIEIFR1_BITS")
	.dwattr $C$DW$T$188, DW_AT_byte_size(0x01)
$C$DW$948	.dwtag  DW_TAG_member
	.dwattr $C$DW$948, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$948, DW_AT_name("INTx1")
	.dwattr $C$DW$948, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$948, DW_AT_bit_size(0x01)
	.dwattr $C$DW$948, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$948, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$948, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$948, DW_AT_decl_column(0x0c)

$C$DW$949	.dwtag  DW_TAG_member
	.dwattr $C$DW$949, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$949, DW_AT_name("INTx2")
	.dwattr $C$DW$949, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$949, DW_AT_bit_size(0x01)
	.dwattr $C$DW$949, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$949, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$949, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$949, DW_AT_decl_column(0x0c)

$C$DW$950	.dwtag  DW_TAG_member
	.dwattr $C$DW$950, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$950, DW_AT_name("INTx3")
	.dwattr $C$DW$950, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$950, DW_AT_bit_size(0x01)
	.dwattr $C$DW$950, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$950, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$950, DW_AT_decl_line(0x70)
	.dwattr $C$DW$950, DW_AT_decl_column(0x0c)

$C$DW$951	.dwtag  DW_TAG_member
	.dwattr $C$DW$951, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$951, DW_AT_name("INTx4")
	.dwattr $C$DW$951, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$951, DW_AT_bit_size(0x01)
	.dwattr $C$DW$951, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$951, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$951, DW_AT_decl_line(0x71)
	.dwattr $C$DW$951, DW_AT_decl_column(0x0c)

$C$DW$952	.dwtag  DW_TAG_member
	.dwattr $C$DW$952, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$952, DW_AT_name("INTx5")
	.dwattr $C$DW$952, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$952, DW_AT_bit_size(0x01)
	.dwattr $C$DW$952, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$952, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$952, DW_AT_decl_line(0x72)
	.dwattr $C$DW$952, DW_AT_decl_column(0x0c)

$C$DW$953	.dwtag  DW_TAG_member
	.dwattr $C$DW$953, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$953, DW_AT_name("INTx6")
	.dwattr $C$DW$953, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$953, DW_AT_bit_size(0x01)
	.dwattr $C$DW$953, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$953, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$953, DW_AT_decl_line(0x73)
	.dwattr $C$DW$953, DW_AT_decl_column(0x0c)

$C$DW$954	.dwtag  DW_TAG_member
	.dwattr $C$DW$954, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$954, DW_AT_name("INTx7")
	.dwattr $C$DW$954, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$954, DW_AT_bit_size(0x01)
	.dwattr $C$DW$954, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$954, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$954, DW_AT_decl_line(0x74)
	.dwattr $C$DW$954, DW_AT_decl_column(0x0c)

$C$DW$955	.dwtag  DW_TAG_member
	.dwattr $C$DW$955, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$955, DW_AT_name("INTx8")
	.dwattr $C$DW$955, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$955, DW_AT_bit_size(0x01)
	.dwattr $C$DW$955, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$955, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$955, DW_AT_decl_line(0x75)
	.dwattr $C$DW$955, DW_AT_decl_column(0x0c)

$C$DW$956	.dwtag  DW_TAG_member
	.dwattr $C$DW$956, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$956, DW_AT_name("INTx9")
	.dwattr $C$DW$956, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$956, DW_AT_bit_size(0x01)
	.dwattr $C$DW$956, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$956, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$956, DW_AT_decl_line(0x76)
	.dwattr $C$DW$956, DW_AT_decl_column(0x0c)

$C$DW$957	.dwtag  DW_TAG_member
	.dwattr $C$DW$957, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$957, DW_AT_name("INTx10")
	.dwattr $C$DW$957, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$957, DW_AT_bit_size(0x01)
	.dwattr $C$DW$957, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$957, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$957, DW_AT_decl_line(0x77)
	.dwattr $C$DW$957, DW_AT_decl_column(0x0c)

$C$DW$958	.dwtag  DW_TAG_member
	.dwattr $C$DW$958, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$958, DW_AT_name("INTx11")
	.dwattr $C$DW$958, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$958, DW_AT_bit_size(0x01)
	.dwattr $C$DW$958, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$958, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$958, DW_AT_decl_line(0x78)
	.dwattr $C$DW$958, DW_AT_decl_column(0x0c)

$C$DW$959	.dwtag  DW_TAG_member
	.dwattr $C$DW$959, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$959, DW_AT_name("INTx12")
	.dwattr $C$DW$959, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$959, DW_AT_bit_size(0x01)
	.dwattr $C$DW$959, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$959, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$959, DW_AT_decl_line(0x79)
	.dwattr $C$DW$959, DW_AT_decl_column(0x0c)

$C$DW$960	.dwtag  DW_TAG_member
	.dwattr $C$DW$960, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$960, DW_AT_name("INTx13")
	.dwattr $C$DW$960, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$960, DW_AT_bit_size(0x01)
	.dwattr $C$DW$960, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$960, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$960, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$960, DW_AT_decl_column(0x0c)

$C$DW$961	.dwtag  DW_TAG_member
	.dwattr $C$DW$961, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$961, DW_AT_name("INTx14")
	.dwattr $C$DW$961, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$961, DW_AT_bit_size(0x01)
	.dwattr $C$DW$961, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$961, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$961, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$961, DW_AT_decl_column(0x0c)

$C$DW$962	.dwtag  DW_TAG_member
	.dwattr $C$DW$962, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$962, DW_AT_name("INTx15")
	.dwattr $C$DW$962, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$962, DW_AT_bit_size(0x01)
	.dwattr $C$DW$962, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$962, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$962, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$962, DW_AT_decl_column(0x0c)

$C$DW$963	.dwtag  DW_TAG_member
	.dwattr $C$DW$963, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$963, DW_AT_name("INTx16")
	.dwattr $C$DW$963, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$963, DW_AT_bit_size(0x01)
	.dwattr $C$DW$963, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$963, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$963, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$963, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$188, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$188, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$188, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$188

	.dwendtag $C$DW$TU$188


$C$DW$TU$189	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$189

$C$DW$T$189	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$189, DW_AT_name("PIEIFR1_REG")
	.dwattr $C$DW$T$189, DW_AT_byte_size(0x01)
$C$DW$964	.dwtag  DW_TAG_member
	.dwattr $C$DW$964, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$964, DW_AT_name("all")
	.dwattr $C$DW$964, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$964, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$964, DW_AT_decl_line(0x81)
	.dwattr $C$DW$964, DW_AT_decl_column(0x0d)

$C$DW$965	.dwtag  DW_TAG_member
	.dwattr $C$DW$965, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$965, DW_AT_name("bit")
	.dwattr $C$DW$965, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$965, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$965, DW_AT_decl_line(0x82)
	.dwattr $C$DW$965, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$189, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$189, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$189, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$189

	.dwendtag $C$DW$TU$189


$C$DW$TU$190	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$190

$C$DW$T$190	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$190, DW_AT_name("PIEIFR2_BITS")
	.dwattr $C$DW$T$190, DW_AT_byte_size(0x01)
$C$DW$966	.dwtag  DW_TAG_member
	.dwattr $C$DW$966, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$966, DW_AT_name("INTx1")
	.dwattr $C$DW$966, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$966, DW_AT_bit_size(0x01)
	.dwattr $C$DW$966, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$966, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$966, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$966, DW_AT_decl_column(0x0c)

$C$DW$967	.dwtag  DW_TAG_member
	.dwattr $C$DW$967, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$967, DW_AT_name("INTx2")
	.dwattr $C$DW$967, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$967, DW_AT_bit_size(0x01)
	.dwattr $C$DW$967, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$967, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$967, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$967, DW_AT_decl_column(0x0c)

$C$DW$968	.dwtag  DW_TAG_member
	.dwattr $C$DW$968, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$968, DW_AT_name("INTx3")
	.dwattr $C$DW$968, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$968, DW_AT_bit_size(0x01)
	.dwattr $C$DW$968, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$968, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$968, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$968, DW_AT_decl_column(0x0c)

$C$DW$969	.dwtag  DW_TAG_member
	.dwattr $C$DW$969, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$969, DW_AT_name("INTx4")
	.dwattr $C$DW$969, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$969, DW_AT_bit_size(0x01)
	.dwattr $C$DW$969, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$969, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$969, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$969, DW_AT_decl_column(0x0c)

$C$DW$970	.dwtag  DW_TAG_member
	.dwattr $C$DW$970, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$970, DW_AT_name("INTx5")
	.dwattr $C$DW$970, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$970, DW_AT_bit_size(0x01)
	.dwattr $C$DW$970, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$970, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$970, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$970, DW_AT_decl_column(0x0c)

$C$DW$971	.dwtag  DW_TAG_member
	.dwattr $C$DW$971, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$971, DW_AT_name("INTx6")
	.dwattr $C$DW$971, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$971, DW_AT_bit_size(0x01)
	.dwattr $C$DW$971, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$971, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$971, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$971, DW_AT_decl_column(0x0c)

$C$DW$972	.dwtag  DW_TAG_member
	.dwattr $C$DW$972, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$972, DW_AT_name("INTx7")
	.dwattr $C$DW$972, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$972, DW_AT_bit_size(0x01)
	.dwattr $C$DW$972, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$972, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$972, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$972, DW_AT_decl_column(0x0c)

$C$DW$973	.dwtag  DW_TAG_member
	.dwattr $C$DW$973, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$973, DW_AT_name("INTx8")
	.dwattr $C$DW$973, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$973, DW_AT_bit_size(0x01)
	.dwattr $C$DW$973, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$973, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$973, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$973, DW_AT_decl_column(0x0c)

$C$DW$974	.dwtag  DW_TAG_member
	.dwattr $C$DW$974, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$974, DW_AT_name("INTx9")
	.dwattr $C$DW$974, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$974, DW_AT_bit_size(0x01)
	.dwattr $C$DW$974, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$974, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$974, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$974, DW_AT_decl_column(0x0c)

$C$DW$975	.dwtag  DW_TAG_member
	.dwattr $C$DW$975, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$975, DW_AT_name("INTx10")
	.dwattr $C$DW$975, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$975, DW_AT_bit_size(0x01)
	.dwattr $C$DW$975, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$975, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$975, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$975, DW_AT_decl_column(0x0c)

$C$DW$976	.dwtag  DW_TAG_member
	.dwattr $C$DW$976, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$976, DW_AT_name("INTx11")
	.dwattr $C$DW$976, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$976, DW_AT_bit_size(0x01)
	.dwattr $C$DW$976, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$976, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$976, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$976, DW_AT_decl_column(0x0c)

$C$DW$977	.dwtag  DW_TAG_member
	.dwattr $C$DW$977, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$977, DW_AT_name("INTx12")
	.dwattr $C$DW$977, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$977, DW_AT_bit_size(0x01)
	.dwattr $C$DW$977, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$977, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$977, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$977, DW_AT_decl_column(0x0c)

$C$DW$978	.dwtag  DW_TAG_member
	.dwattr $C$DW$978, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$978, DW_AT_name("INTx13")
	.dwattr $C$DW$978, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$978, DW_AT_bit_size(0x01)
	.dwattr $C$DW$978, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$978, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$978, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$978, DW_AT_decl_column(0x0c)

$C$DW$979	.dwtag  DW_TAG_member
	.dwattr $C$DW$979, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$979, DW_AT_name("INTx14")
	.dwattr $C$DW$979, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$979, DW_AT_bit_size(0x01)
	.dwattr $C$DW$979, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$979, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$979, DW_AT_decl_line(0xab)
	.dwattr $C$DW$979, DW_AT_decl_column(0x0c)

$C$DW$980	.dwtag  DW_TAG_member
	.dwattr $C$DW$980, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$980, DW_AT_name("INTx15")
	.dwattr $C$DW$980, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$980, DW_AT_bit_size(0x01)
	.dwattr $C$DW$980, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$980, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$980, DW_AT_decl_line(0xac)
	.dwattr $C$DW$980, DW_AT_decl_column(0x0c)

$C$DW$981	.dwtag  DW_TAG_member
	.dwattr $C$DW$981, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$981, DW_AT_name("INTx16")
	.dwattr $C$DW$981, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$981, DW_AT_bit_size(0x01)
	.dwattr $C$DW$981, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$981, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$981, DW_AT_decl_line(0xad)
	.dwattr $C$DW$981, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$190, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$190, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$T$190, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$190

	.dwendtag $C$DW$TU$190


$C$DW$TU$191	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$191

$C$DW$T$191	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$191, DW_AT_name("PIEIFR2_REG")
	.dwattr $C$DW$T$191, DW_AT_byte_size(0x01)
$C$DW$982	.dwtag  DW_TAG_member
	.dwattr $C$DW$982, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$982, DW_AT_name("all")
	.dwattr $C$DW$982, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$982, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$982, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$982, DW_AT_decl_column(0x0d)

$C$DW$983	.dwtag  DW_TAG_member
	.dwattr $C$DW$983, DW_AT_type(*$C$DW$T$190)
	.dwattr $C$DW$983, DW_AT_name("bit")
	.dwattr $C$DW$983, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$983, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$983, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$983, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$191, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$191, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$191, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$191

	.dwendtag $C$DW$TU$191


$C$DW$TU$192	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$192

$C$DW$T$192	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$192, DW_AT_name("PIEIFR3_BITS")
	.dwattr $C$DW$T$192, DW_AT_byte_size(0x01)
$C$DW$984	.dwtag  DW_TAG_member
	.dwattr $C$DW$984, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$984, DW_AT_name("INTx1")
	.dwattr $C$DW$984, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$984, DW_AT_bit_size(0x01)
	.dwattr $C$DW$984, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$984, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$984, DW_AT_decl_line(0xce)
	.dwattr $C$DW$984, DW_AT_decl_column(0x0c)

$C$DW$985	.dwtag  DW_TAG_member
	.dwattr $C$DW$985, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$985, DW_AT_name("INTx2")
	.dwattr $C$DW$985, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$985, DW_AT_bit_size(0x01)
	.dwattr $C$DW$985, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$985, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$985, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$985, DW_AT_decl_column(0x0c)

$C$DW$986	.dwtag  DW_TAG_member
	.dwattr $C$DW$986, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$986, DW_AT_name("INTx3")
	.dwattr $C$DW$986, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$986, DW_AT_bit_size(0x01)
	.dwattr $C$DW$986, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$986, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$986, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$986, DW_AT_decl_column(0x0c)

$C$DW$987	.dwtag  DW_TAG_member
	.dwattr $C$DW$987, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$987, DW_AT_name("INTx4")
	.dwattr $C$DW$987, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$987, DW_AT_bit_size(0x01)
	.dwattr $C$DW$987, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$987, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$987, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$987, DW_AT_decl_column(0x0c)

$C$DW$988	.dwtag  DW_TAG_member
	.dwattr $C$DW$988, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$988, DW_AT_name("INTx5")
	.dwattr $C$DW$988, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$988, DW_AT_bit_size(0x01)
	.dwattr $C$DW$988, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$988, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$988, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$988, DW_AT_decl_column(0x0c)

$C$DW$989	.dwtag  DW_TAG_member
	.dwattr $C$DW$989, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$989, DW_AT_name("INTx6")
	.dwattr $C$DW$989, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$989, DW_AT_bit_size(0x01)
	.dwattr $C$DW$989, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$989, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$989, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$989, DW_AT_decl_column(0x0c)

$C$DW$990	.dwtag  DW_TAG_member
	.dwattr $C$DW$990, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$990, DW_AT_name("INTx7")
	.dwattr $C$DW$990, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$990, DW_AT_bit_size(0x01)
	.dwattr $C$DW$990, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$990, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$990, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$990, DW_AT_decl_column(0x0c)

$C$DW$991	.dwtag  DW_TAG_member
	.dwattr $C$DW$991, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$991, DW_AT_name("INTx8")
	.dwattr $C$DW$991, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$991, DW_AT_bit_size(0x01)
	.dwattr $C$DW$991, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$991, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$991, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$991, DW_AT_decl_column(0x0c)

$C$DW$992	.dwtag  DW_TAG_member
	.dwattr $C$DW$992, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$992, DW_AT_name("INTx9")
	.dwattr $C$DW$992, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$992, DW_AT_bit_size(0x01)
	.dwattr $C$DW$992, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$992, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$992, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$992, DW_AT_decl_column(0x0c)

$C$DW$993	.dwtag  DW_TAG_member
	.dwattr $C$DW$993, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$993, DW_AT_name("INTx10")
	.dwattr $C$DW$993, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$993, DW_AT_bit_size(0x01)
	.dwattr $C$DW$993, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$993, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$993, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$993, DW_AT_decl_column(0x0c)

$C$DW$994	.dwtag  DW_TAG_member
	.dwattr $C$DW$994, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$994, DW_AT_name("INTx11")
	.dwattr $C$DW$994, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$994, DW_AT_bit_size(0x01)
	.dwattr $C$DW$994, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$994, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$994, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$994, DW_AT_decl_column(0x0c)

$C$DW$995	.dwtag  DW_TAG_member
	.dwattr $C$DW$995, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$995, DW_AT_name("INTx12")
	.dwattr $C$DW$995, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$995, DW_AT_bit_size(0x01)
	.dwattr $C$DW$995, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$995, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$995, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$995, DW_AT_decl_column(0x0c)

$C$DW$996	.dwtag  DW_TAG_member
	.dwattr $C$DW$996, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$996, DW_AT_name("INTx13")
	.dwattr $C$DW$996, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$996, DW_AT_bit_size(0x01)
	.dwattr $C$DW$996, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$996, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$996, DW_AT_decl_line(0xda)
	.dwattr $C$DW$996, DW_AT_decl_column(0x0c)

$C$DW$997	.dwtag  DW_TAG_member
	.dwattr $C$DW$997, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$997, DW_AT_name("INTx14")
	.dwattr $C$DW$997, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$997, DW_AT_bit_size(0x01)
	.dwattr $C$DW$997, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$997, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$997, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$997, DW_AT_decl_column(0x0c)

$C$DW$998	.dwtag  DW_TAG_member
	.dwattr $C$DW$998, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$998, DW_AT_name("INTx15")
	.dwattr $C$DW$998, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$998, DW_AT_bit_size(0x01)
	.dwattr $C$DW$998, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$998, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$998, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$998, DW_AT_decl_column(0x0c)

$C$DW$999	.dwtag  DW_TAG_member
	.dwattr $C$DW$999, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$999, DW_AT_name("INTx16")
	.dwattr $C$DW$999, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$999, DW_AT_bit_size(0x01)
	.dwattr $C$DW$999, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$999, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$999, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$999, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$192, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$192, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$T$192, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$192

	.dwendtag $C$DW$TU$192


$C$DW$TU$193	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$193

$C$DW$T$193	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$193, DW_AT_name("PIEIFR3_REG")
	.dwattr $C$DW$T$193, DW_AT_byte_size(0x01)
$C$DW$1000	.dwtag  DW_TAG_member
	.dwattr $C$DW$1000, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1000, DW_AT_name("all")
	.dwattr $C$DW$1000, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1000, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1000, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$1000, DW_AT_decl_column(0x0d)

$C$DW$1001	.dwtag  DW_TAG_member
	.dwattr $C$DW$1001, DW_AT_type(*$C$DW$T$192)
	.dwattr $C$DW$1001, DW_AT_name("bit")
	.dwattr $C$DW$1001, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1001, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1001, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$1001, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$193, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$193, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$T$193, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$193

	.dwendtag $C$DW$TU$193


$C$DW$TU$194	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$194

$C$DW$T$194	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$194, DW_AT_name("PIEIFR4_BITS")
	.dwattr $C$DW$T$194, DW_AT_byte_size(0x01)
$C$DW$1002	.dwtag  DW_TAG_member
	.dwattr $C$DW$1002, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1002, DW_AT_name("INTx1")
	.dwattr $C$DW$1002, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1002, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1002, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1002, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1002, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$1002, DW_AT_decl_column(0x0c)

$C$DW$1003	.dwtag  DW_TAG_member
	.dwattr $C$DW$1003, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1003, DW_AT_name("INTx2")
	.dwattr $C$DW$1003, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1003, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1003, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1003, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1003, DW_AT_decl_line(0xff)
	.dwattr $C$DW$1003, DW_AT_decl_column(0x0c)

$C$DW$1004	.dwtag  DW_TAG_member
	.dwattr $C$DW$1004, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1004, DW_AT_name("INTx3")
	.dwattr $C$DW$1004, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1004, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1004, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1004, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1004, DW_AT_decl_line(0x100)
	.dwattr $C$DW$1004, DW_AT_decl_column(0x0c)

$C$DW$1005	.dwtag  DW_TAG_member
	.dwattr $C$DW$1005, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1005, DW_AT_name("INTx4")
	.dwattr $C$DW$1005, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1005, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1005, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1005, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1005, DW_AT_decl_line(0x101)
	.dwattr $C$DW$1005, DW_AT_decl_column(0x0c)

$C$DW$1006	.dwtag  DW_TAG_member
	.dwattr $C$DW$1006, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1006, DW_AT_name("INTx5")
	.dwattr $C$DW$1006, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1006, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1006, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1006, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1006, DW_AT_decl_line(0x102)
	.dwattr $C$DW$1006, DW_AT_decl_column(0x0c)

$C$DW$1007	.dwtag  DW_TAG_member
	.dwattr $C$DW$1007, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1007, DW_AT_name("INTx6")
	.dwattr $C$DW$1007, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1007, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1007, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1007, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1007, DW_AT_decl_line(0x103)
	.dwattr $C$DW$1007, DW_AT_decl_column(0x0c)

$C$DW$1008	.dwtag  DW_TAG_member
	.dwattr $C$DW$1008, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1008, DW_AT_name("INTx7")
	.dwattr $C$DW$1008, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1008, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1008, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1008, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1008, DW_AT_decl_line(0x104)
	.dwattr $C$DW$1008, DW_AT_decl_column(0x0c)

$C$DW$1009	.dwtag  DW_TAG_member
	.dwattr $C$DW$1009, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1009, DW_AT_name("INTx8")
	.dwattr $C$DW$1009, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1009, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1009, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1009, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1009, DW_AT_decl_line(0x105)
	.dwattr $C$DW$1009, DW_AT_decl_column(0x0c)

$C$DW$1010	.dwtag  DW_TAG_member
	.dwattr $C$DW$1010, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1010, DW_AT_name("INTx9")
	.dwattr $C$DW$1010, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1010, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1010, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1010, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1010, DW_AT_decl_line(0x106)
	.dwattr $C$DW$1010, DW_AT_decl_column(0x0c)

$C$DW$1011	.dwtag  DW_TAG_member
	.dwattr $C$DW$1011, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1011, DW_AT_name("INTx10")
	.dwattr $C$DW$1011, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1011, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1011, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1011, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1011, DW_AT_decl_line(0x107)
	.dwattr $C$DW$1011, DW_AT_decl_column(0x0c)

$C$DW$1012	.dwtag  DW_TAG_member
	.dwattr $C$DW$1012, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1012, DW_AT_name("INTx11")
	.dwattr $C$DW$1012, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1012, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1012, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1012, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1012, DW_AT_decl_line(0x108)
	.dwattr $C$DW$1012, DW_AT_decl_column(0x0c)

$C$DW$1013	.dwtag  DW_TAG_member
	.dwattr $C$DW$1013, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1013, DW_AT_name("INTx12")
	.dwattr $C$DW$1013, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1013, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1013, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1013, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1013, DW_AT_decl_line(0x109)
	.dwattr $C$DW$1013, DW_AT_decl_column(0x0c)

$C$DW$1014	.dwtag  DW_TAG_member
	.dwattr $C$DW$1014, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1014, DW_AT_name("INTx13")
	.dwattr $C$DW$1014, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1014, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1014, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1014, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1014, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$1014, DW_AT_decl_column(0x0c)

$C$DW$1015	.dwtag  DW_TAG_member
	.dwattr $C$DW$1015, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1015, DW_AT_name("INTx14")
	.dwattr $C$DW$1015, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1015, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1015, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1015, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1015, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$1015, DW_AT_decl_column(0x0c)

$C$DW$1016	.dwtag  DW_TAG_member
	.dwattr $C$DW$1016, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1016, DW_AT_name("INTx15")
	.dwattr $C$DW$1016, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1016, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1016, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1016, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1016, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$1016, DW_AT_decl_column(0x0c)

$C$DW$1017	.dwtag  DW_TAG_member
	.dwattr $C$DW$1017, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1017, DW_AT_name("INTx16")
	.dwattr $C$DW$1017, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1017, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1017, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1017, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1017, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$1017, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$194, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$194, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$T$194, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$194

	.dwendtag $C$DW$TU$194


$C$DW$TU$195	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$195

$C$DW$T$195	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$195, DW_AT_name("PIEIFR4_REG")
	.dwattr $C$DW$T$195, DW_AT_byte_size(0x01)
$C$DW$1018	.dwtag  DW_TAG_member
	.dwattr $C$DW$1018, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1018, DW_AT_name("all")
	.dwattr $C$DW$1018, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1018, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1018, DW_AT_decl_line(0x111)
	.dwattr $C$DW$1018, DW_AT_decl_column(0x0d)

$C$DW$1019	.dwtag  DW_TAG_member
	.dwattr $C$DW$1019, DW_AT_type(*$C$DW$T$194)
	.dwattr $C$DW$1019, DW_AT_name("bit")
	.dwattr $C$DW$1019, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1019, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1019, DW_AT_decl_line(0x112)
	.dwattr $C$DW$1019, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$195, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$195, DW_AT_decl_line(0x110)
	.dwattr $C$DW$T$195, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$195

	.dwendtag $C$DW$TU$195


$C$DW$TU$196	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$196

$C$DW$T$196	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$196, DW_AT_name("PIEIFR5_BITS")
	.dwattr $C$DW$T$196, DW_AT_byte_size(0x01)
$C$DW$1020	.dwtag  DW_TAG_member
	.dwattr $C$DW$1020, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1020, DW_AT_name("INTx1")
	.dwattr $C$DW$1020, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1020, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1020, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1020, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1020, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$1020, DW_AT_decl_column(0x0c)

$C$DW$1021	.dwtag  DW_TAG_member
	.dwattr $C$DW$1021, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1021, DW_AT_name("INTx2")
	.dwattr $C$DW$1021, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1021, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1021, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1021, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1021, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$1021, DW_AT_decl_column(0x0c)

$C$DW$1022	.dwtag  DW_TAG_member
	.dwattr $C$DW$1022, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1022, DW_AT_name("INTx3")
	.dwattr $C$DW$1022, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1022, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1022, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1022, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1022, DW_AT_decl_line(0x130)
	.dwattr $C$DW$1022, DW_AT_decl_column(0x0c)

$C$DW$1023	.dwtag  DW_TAG_member
	.dwattr $C$DW$1023, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1023, DW_AT_name("INTx4")
	.dwattr $C$DW$1023, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1023, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1023, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1023, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1023, DW_AT_decl_line(0x131)
	.dwattr $C$DW$1023, DW_AT_decl_column(0x0c)

$C$DW$1024	.dwtag  DW_TAG_member
	.dwattr $C$DW$1024, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1024, DW_AT_name("INTx5")
	.dwattr $C$DW$1024, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1024, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1024, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1024, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1024, DW_AT_decl_line(0x132)
	.dwattr $C$DW$1024, DW_AT_decl_column(0x0c)

$C$DW$1025	.dwtag  DW_TAG_member
	.dwattr $C$DW$1025, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1025, DW_AT_name("INTx6")
	.dwattr $C$DW$1025, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1025, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1025, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1025, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1025, DW_AT_decl_line(0x133)
	.dwattr $C$DW$1025, DW_AT_decl_column(0x0c)

$C$DW$1026	.dwtag  DW_TAG_member
	.dwattr $C$DW$1026, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1026, DW_AT_name("INTx7")
	.dwattr $C$DW$1026, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1026, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1026, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1026, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1026, DW_AT_decl_line(0x134)
	.dwattr $C$DW$1026, DW_AT_decl_column(0x0c)

$C$DW$1027	.dwtag  DW_TAG_member
	.dwattr $C$DW$1027, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1027, DW_AT_name("INTx8")
	.dwattr $C$DW$1027, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1027, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1027, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1027, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1027, DW_AT_decl_line(0x135)
	.dwattr $C$DW$1027, DW_AT_decl_column(0x0c)

$C$DW$1028	.dwtag  DW_TAG_member
	.dwattr $C$DW$1028, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1028, DW_AT_name("INTx9")
	.dwattr $C$DW$1028, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1028, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1028, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1028, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1028, DW_AT_decl_line(0x136)
	.dwattr $C$DW$1028, DW_AT_decl_column(0x0c)

$C$DW$1029	.dwtag  DW_TAG_member
	.dwattr $C$DW$1029, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1029, DW_AT_name("INTx10")
	.dwattr $C$DW$1029, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1029, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1029, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1029, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1029, DW_AT_decl_line(0x137)
	.dwattr $C$DW$1029, DW_AT_decl_column(0x0c)

$C$DW$1030	.dwtag  DW_TAG_member
	.dwattr $C$DW$1030, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1030, DW_AT_name("INTx11")
	.dwattr $C$DW$1030, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1030, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1030, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1030, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1030, DW_AT_decl_line(0x138)
	.dwattr $C$DW$1030, DW_AT_decl_column(0x0c)

$C$DW$1031	.dwtag  DW_TAG_member
	.dwattr $C$DW$1031, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1031, DW_AT_name("INTx12")
	.dwattr $C$DW$1031, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1031, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1031, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1031, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1031, DW_AT_decl_line(0x139)
	.dwattr $C$DW$1031, DW_AT_decl_column(0x0c)

$C$DW$1032	.dwtag  DW_TAG_member
	.dwattr $C$DW$1032, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1032, DW_AT_name("INTx13")
	.dwattr $C$DW$1032, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1032, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1032, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1032, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1032, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$1032, DW_AT_decl_column(0x0c)

$C$DW$1033	.dwtag  DW_TAG_member
	.dwattr $C$DW$1033, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1033, DW_AT_name("INTx14")
	.dwattr $C$DW$1033, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1033, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1033, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1033, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1033, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$1033, DW_AT_decl_column(0x0c)

$C$DW$1034	.dwtag  DW_TAG_member
	.dwattr $C$DW$1034, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1034, DW_AT_name("INTx15")
	.dwattr $C$DW$1034, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1034, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1034, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1034, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1034, DW_AT_decl_line(0x13c)
	.dwattr $C$DW$1034, DW_AT_decl_column(0x0c)

$C$DW$1035	.dwtag  DW_TAG_member
	.dwattr $C$DW$1035, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1035, DW_AT_name("INTx16")
	.dwattr $C$DW$1035, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1035, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1035, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1035, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1035, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$1035, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$196, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$196, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$T$196, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$196

	.dwendtag $C$DW$TU$196


$C$DW$TU$197	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$197

$C$DW$T$197	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$197, DW_AT_name("PIEIFR5_REG")
	.dwattr $C$DW$T$197, DW_AT_byte_size(0x01)
$C$DW$1036	.dwtag  DW_TAG_member
	.dwattr $C$DW$1036, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1036, DW_AT_name("all")
	.dwattr $C$DW$1036, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1036, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1036, DW_AT_decl_line(0x141)
	.dwattr $C$DW$1036, DW_AT_decl_column(0x0d)

$C$DW$1037	.dwtag  DW_TAG_member
	.dwattr $C$DW$1037, DW_AT_type(*$C$DW$T$196)
	.dwattr $C$DW$1037, DW_AT_name("bit")
	.dwattr $C$DW$1037, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1037, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1037, DW_AT_decl_line(0x142)
	.dwattr $C$DW$1037, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$197, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$197, DW_AT_decl_line(0x140)
	.dwattr $C$DW$T$197, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$197

	.dwendtag $C$DW$TU$197


$C$DW$TU$198	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$198

$C$DW$T$198	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$198, DW_AT_name("PIEIFR6_BITS")
	.dwattr $C$DW$T$198, DW_AT_byte_size(0x01)
$C$DW$1038	.dwtag  DW_TAG_member
	.dwattr $C$DW$1038, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1038, DW_AT_name("INTx1")
	.dwattr $C$DW$1038, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1038, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1038, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1038, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1038, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$1038, DW_AT_decl_column(0x0c)

$C$DW$1039	.dwtag  DW_TAG_member
	.dwattr $C$DW$1039, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1039, DW_AT_name("INTx2")
	.dwattr $C$DW$1039, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1039, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1039, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1039, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1039, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$1039, DW_AT_decl_column(0x0c)

$C$DW$1040	.dwtag  DW_TAG_member
	.dwattr $C$DW$1040, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1040, DW_AT_name("INTx3")
	.dwattr $C$DW$1040, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1040, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1040, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1040, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1040, DW_AT_decl_line(0x160)
	.dwattr $C$DW$1040, DW_AT_decl_column(0x0c)

$C$DW$1041	.dwtag  DW_TAG_member
	.dwattr $C$DW$1041, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1041, DW_AT_name("INTx4")
	.dwattr $C$DW$1041, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1041, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1041, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1041, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1041, DW_AT_decl_line(0x161)
	.dwattr $C$DW$1041, DW_AT_decl_column(0x0c)

$C$DW$1042	.dwtag  DW_TAG_member
	.dwattr $C$DW$1042, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1042, DW_AT_name("INTx5")
	.dwattr $C$DW$1042, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1042, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1042, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1042, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1042, DW_AT_decl_line(0x162)
	.dwattr $C$DW$1042, DW_AT_decl_column(0x0c)

$C$DW$1043	.dwtag  DW_TAG_member
	.dwattr $C$DW$1043, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1043, DW_AT_name("INTx6")
	.dwattr $C$DW$1043, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1043, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1043, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1043, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1043, DW_AT_decl_line(0x163)
	.dwattr $C$DW$1043, DW_AT_decl_column(0x0c)

$C$DW$1044	.dwtag  DW_TAG_member
	.dwattr $C$DW$1044, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1044, DW_AT_name("INTx7")
	.dwattr $C$DW$1044, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1044, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1044, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1044, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1044, DW_AT_decl_line(0x164)
	.dwattr $C$DW$1044, DW_AT_decl_column(0x0c)

$C$DW$1045	.dwtag  DW_TAG_member
	.dwattr $C$DW$1045, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1045, DW_AT_name("INTx8")
	.dwattr $C$DW$1045, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1045, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1045, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1045, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1045, DW_AT_decl_line(0x165)
	.dwattr $C$DW$1045, DW_AT_decl_column(0x0c)

$C$DW$1046	.dwtag  DW_TAG_member
	.dwattr $C$DW$1046, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1046, DW_AT_name("INTx9")
	.dwattr $C$DW$1046, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1046, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1046, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1046, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1046, DW_AT_decl_line(0x166)
	.dwattr $C$DW$1046, DW_AT_decl_column(0x0c)

$C$DW$1047	.dwtag  DW_TAG_member
	.dwattr $C$DW$1047, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1047, DW_AT_name("INTx10")
	.dwattr $C$DW$1047, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1047, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1047, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1047, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1047, DW_AT_decl_line(0x167)
	.dwattr $C$DW$1047, DW_AT_decl_column(0x0c)

$C$DW$1048	.dwtag  DW_TAG_member
	.dwattr $C$DW$1048, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1048, DW_AT_name("INTx11")
	.dwattr $C$DW$1048, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1048, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1048, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1048, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1048, DW_AT_decl_line(0x168)
	.dwattr $C$DW$1048, DW_AT_decl_column(0x0c)

$C$DW$1049	.dwtag  DW_TAG_member
	.dwattr $C$DW$1049, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1049, DW_AT_name("INTx12")
	.dwattr $C$DW$1049, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1049, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1049, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1049, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1049, DW_AT_decl_line(0x169)
	.dwattr $C$DW$1049, DW_AT_decl_column(0x0c)

$C$DW$1050	.dwtag  DW_TAG_member
	.dwattr $C$DW$1050, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1050, DW_AT_name("INTx13")
	.dwattr $C$DW$1050, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1050, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1050, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1050, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1050, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$1050, DW_AT_decl_column(0x0c)

$C$DW$1051	.dwtag  DW_TAG_member
	.dwattr $C$DW$1051, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1051, DW_AT_name("INTx14")
	.dwattr $C$DW$1051, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1051, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1051, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1051, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1051, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$1051, DW_AT_decl_column(0x0c)

$C$DW$1052	.dwtag  DW_TAG_member
	.dwattr $C$DW$1052, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1052, DW_AT_name("INTx15")
	.dwattr $C$DW$1052, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1052, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1052, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1052, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1052, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$1052, DW_AT_decl_column(0x0c)

$C$DW$1053	.dwtag  DW_TAG_member
	.dwattr $C$DW$1053, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1053, DW_AT_name("INTx16")
	.dwattr $C$DW$1053, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1053, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1053, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1053, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1053, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$1053, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$198, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$198, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$T$198, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$198

	.dwendtag $C$DW$TU$198


$C$DW$TU$199	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$199

$C$DW$T$199	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$199, DW_AT_name("PIEIFR6_REG")
	.dwattr $C$DW$T$199, DW_AT_byte_size(0x01)
$C$DW$1054	.dwtag  DW_TAG_member
	.dwattr $C$DW$1054, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1054, DW_AT_name("all")
	.dwattr $C$DW$1054, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1054, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1054, DW_AT_decl_line(0x171)
	.dwattr $C$DW$1054, DW_AT_decl_column(0x0d)

$C$DW$1055	.dwtag  DW_TAG_member
	.dwattr $C$DW$1055, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$1055, DW_AT_name("bit")
	.dwattr $C$DW$1055, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1055, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1055, DW_AT_decl_line(0x172)
	.dwattr $C$DW$1055, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$199, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$199, DW_AT_decl_line(0x170)
	.dwattr $C$DW$T$199, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$199

	.dwendtag $C$DW$TU$199


$C$DW$TU$200	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$200

$C$DW$T$200	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$200, DW_AT_name("PIEIFR7_BITS")
	.dwattr $C$DW$T$200, DW_AT_byte_size(0x01)
$C$DW$1056	.dwtag  DW_TAG_member
	.dwattr $C$DW$1056, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1056, DW_AT_name("INTx1")
	.dwattr $C$DW$1056, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1056, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1056, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1056, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1056, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$1056, DW_AT_decl_column(0x0c)

$C$DW$1057	.dwtag  DW_TAG_member
	.dwattr $C$DW$1057, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1057, DW_AT_name("INTx2")
	.dwattr $C$DW$1057, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1057, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1057, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1057, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1057, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$1057, DW_AT_decl_column(0x0c)

$C$DW$1058	.dwtag  DW_TAG_member
	.dwattr $C$DW$1058, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1058, DW_AT_name("INTx3")
	.dwattr $C$DW$1058, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1058, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1058, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1058, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1058, DW_AT_decl_line(0x190)
	.dwattr $C$DW$1058, DW_AT_decl_column(0x0c)

$C$DW$1059	.dwtag  DW_TAG_member
	.dwattr $C$DW$1059, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1059, DW_AT_name("INTx4")
	.dwattr $C$DW$1059, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1059, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1059, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1059, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1059, DW_AT_decl_line(0x191)
	.dwattr $C$DW$1059, DW_AT_decl_column(0x0c)

$C$DW$1060	.dwtag  DW_TAG_member
	.dwattr $C$DW$1060, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1060, DW_AT_name("INTx5")
	.dwattr $C$DW$1060, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1060, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1060, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1060, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1060, DW_AT_decl_line(0x192)
	.dwattr $C$DW$1060, DW_AT_decl_column(0x0c)

$C$DW$1061	.dwtag  DW_TAG_member
	.dwattr $C$DW$1061, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1061, DW_AT_name("INTx6")
	.dwattr $C$DW$1061, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1061, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1061, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1061, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1061, DW_AT_decl_line(0x193)
	.dwattr $C$DW$1061, DW_AT_decl_column(0x0c)

$C$DW$1062	.dwtag  DW_TAG_member
	.dwattr $C$DW$1062, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1062, DW_AT_name("INTx7")
	.dwattr $C$DW$1062, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1062, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1062, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1062, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1062, DW_AT_decl_line(0x194)
	.dwattr $C$DW$1062, DW_AT_decl_column(0x0c)

$C$DW$1063	.dwtag  DW_TAG_member
	.dwattr $C$DW$1063, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1063, DW_AT_name("INTx8")
	.dwattr $C$DW$1063, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1063, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1063, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1063, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1063, DW_AT_decl_line(0x195)
	.dwattr $C$DW$1063, DW_AT_decl_column(0x0c)

$C$DW$1064	.dwtag  DW_TAG_member
	.dwattr $C$DW$1064, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1064, DW_AT_name("INTx9")
	.dwattr $C$DW$1064, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1064, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1064, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1064, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1064, DW_AT_decl_line(0x196)
	.dwattr $C$DW$1064, DW_AT_decl_column(0x0c)

$C$DW$1065	.dwtag  DW_TAG_member
	.dwattr $C$DW$1065, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1065, DW_AT_name("INTx10")
	.dwattr $C$DW$1065, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1065, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1065, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1065, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1065, DW_AT_decl_line(0x197)
	.dwattr $C$DW$1065, DW_AT_decl_column(0x0c)

$C$DW$1066	.dwtag  DW_TAG_member
	.dwattr $C$DW$1066, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1066, DW_AT_name("INTx11")
	.dwattr $C$DW$1066, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1066, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1066, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1066, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1066, DW_AT_decl_line(0x198)
	.dwattr $C$DW$1066, DW_AT_decl_column(0x0c)

$C$DW$1067	.dwtag  DW_TAG_member
	.dwattr $C$DW$1067, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1067, DW_AT_name("INTx12")
	.dwattr $C$DW$1067, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1067, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1067, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1067, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1067, DW_AT_decl_line(0x199)
	.dwattr $C$DW$1067, DW_AT_decl_column(0x0c)

$C$DW$1068	.dwtag  DW_TAG_member
	.dwattr $C$DW$1068, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1068, DW_AT_name("INTx13")
	.dwattr $C$DW$1068, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1068, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1068, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1068, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1068, DW_AT_decl_line(0x19a)
	.dwattr $C$DW$1068, DW_AT_decl_column(0x0c)

$C$DW$1069	.dwtag  DW_TAG_member
	.dwattr $C$DW$1069, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1069, DW_AT_name("INTx14")
	.dwattr $C$DW$1069, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1069, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1069, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1069, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1069, DW_AT_decl_line(0x19b)
	.dwattr $C$DW$1069, DW_AT_decl_column(0x0c)

$C$DW$1070	.dwtag  DW_TAG_member
	.dwattr $C$DW$1070, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1070, DW_AT_name("INTx15")
	.dwattr $C$DW$1070, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1070, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1070, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1070, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1070, DW_AT_decl_line(0x19c)
	.dwattr $C$DW$1070, DW_AT_decl_column(0x0c)

$C$DW$1071	.dwtag  DW_TAG_member
	.dwattr $C$DW$1071, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1071, DW_AT_name("INTx16")
	.dwattr $C$DW$1071, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1071, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1071, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1071, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1071, DW_AT_decl_line(0x19d)
	.dwattr $C$DW$1071, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$200, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$200, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$T$200, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$200

	.dwendtag $C$DW$TU$200


$C$DW$TU$201	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$201

$C$DW$T$201	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$201, DW_AT_name("PIEIFR7_REG")
	.dwattr $C$DW$T$201, DW_AT_byte_size(0x01)
$C$DW$1072	.dwtag  DW_TAG_member
	.dwattr $C$DW$1072, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1072, DW_AT_name("all")
	.dwattr $C$DW$1072, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1072, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1072, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$1072, DW_AT_decl_column(0x0d)

$C$DW$1073	.dwtag  DW_TAG_member
	.dwattr $C$DW$1073, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$1073, DW_AT_name("bit")
	.dwattr $C$DW$1073, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1073, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1073, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$1073, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$201, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$201, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$T$201, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$201

	.dwendtag $C$DW$TU$201


$C$DW$TU$202	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$202

$C$DW$T$202	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$202, DW_AT_name("PIEIFR8_BITS")
	.dwattr $C$DW$T$202, DW_AT_byte_size(0x01)
$C$DW$1074	.dwtag  DW_TAG_member
	.dwattr $C$DW$1074, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1074, DW_AT_name("INTx1")
	.dwattr $C$DW$1074, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1074, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1074, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1074, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1074, DW_AT_decl_line(0x1be)
	.dwattr $C$DW$1074, DW_AT_decl_column(0x0c)

$C$DW$1075	.dwtag  DW_TAG_member
	.dwattr $C$DW$1075, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1075, DW_AT_name("INTx2")
	.dwattr $C$DW$1075, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1075, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1075, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1075, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1075, DW_AT_decl_line(0x1bf)
	.dwattr $C$DW$1075, DW_AT_decl_column(0x0c)

$C$DW$1076	.dwtag  DW_TAG_member
	.dwattr $C$DW$1076, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1076, DW_AT_name("INTx3")
	.dwattr $C$DW$1076, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1076, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1076, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1076, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1076, DW_AT_decl_line(0x1c0)
	.dwattr $C$DW$1076, DW_AT_decl_column(0x0c)

$C$DW$1077	.dwtag  DW_TAG_member
	.dwattr $C$DW$1077, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1077, DW_AT_name("INTx4")
	.dwattr $C$DW$1077, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1077, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1077, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1077, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1077, DW_AT_decl_line(0x1c1)
	.dwattr $C$DW$1077, DW_AT_decl_column(0x0c)

$C$DW$1078	.dwtag  DW_TAG_member
	.dwattr $C$DW$1078, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1078, DW_AT_name("INTx5")
	.dwattr $C$DW$1078, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1078, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1078, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1078, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1078, DW_AT_decl_line(0x1c2)
	.dwattr $C$DW$1078, DW_AT_decl_column(0x0c)

$C$DW$1079	.dwtag  DW_TAG_member
	.dwattr $C$DW$1079, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1079, DW_AT_name("INTx6")
	.dwattr $C$DW$1079, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1079, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1079, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1079, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1079, DW_AT_decl_line(0x1c3)
	.dwattr $C$DW$1079, DW_AT_decl_column(0x0c)

$C$DW$1080	.dwtag  DW_TAG_member
	.dwattr $C$DW$1080, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1080, DW_AT_name("INTx7")
	.dwattr $C$DW$1080, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1080, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1080, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1080, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1080, DW_AT_decl_line(0x1c4)
	.dwattr $C$DW$1080, DW_AT_decl_column(0x0c)

$C$DW$1081	.dwtag  DW_TAG_member
	.dwattr $C$DW$1081, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1081, DW_AT_name("INTx8")
	.dwattr $C$DW$1081, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1081, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1081, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1081, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1081, DW_AT_decl_line(0x1c5)
	.dwattr $C$DW$1081, DW_AT_decl_column(0x0c)

$C$DW$1082	.dwtag  DW_TAG_member
	.dwattr $C$DW$1082, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1082, DW_AT_name("INTx9")
	.dwattr $C$DW$1082, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1082, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1082, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1082, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1082, DW_AT_decl_line(0x1c6)
	.dwattr $C$DW$1082, DW_AT_decl_column(0x0c)

$C$DW$1083	.dwtag  DW_TAG_member
	.dwattr $C$DW$1083, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1083, DW_AT_name("INTx10")
	.dwattr $C$DW$1083, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1083, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1083, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1083, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1083, DW_AT_decl_line(0x1c7)
	.dwattr $C$DW$1083, DW_AT_decl_column(0x0c)

$C$DW$1084	.dwtag  DW_TAG_member
	.dwattr $C$DW$1084, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1084, DW_AT_name("INTx11")
	.dwattr $C$DW$1084, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1084, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1084, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1084, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1084, DW_AT_decl_line(0x1c8)
	.dwattr $C$DW$1084, DW_AT_decl_column(0x0c)

$C$DW$1085	.dwtag  DW_TAG_member
	.dwattr $C$DW$1085, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1085, DW_AT_name("INTx12")
	.dwattr $C$DW$1085, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1085, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1085, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1085, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1085, DW_AT_decl_line(0x1c9)
	.dwattr $C$DW$1085, DW_AT_decl_column(0x0c)

$C$DW$1086	.dwtag  DW_TAG_member
	.dwattr $C$DW$1086, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1086, DW_AT_name("INTx13")
	.dwattr $C$DW$1086, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1086, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1086, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1086, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1086, DW_AT_decl_line(0x1ca)
	.dwattr $C$DW$1086, DW_AT_decl_column(0x0c)

$C$DW$1087	.dwtag  DW_TAG_member
	.dwattr $C$DW$1087, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1087, DW_AT_name("INTx14")
	.dwattr $C$DW$1087, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1087, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1087, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1087, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1087, DW_AT_decl_line(0x1cb)
	.dwattr $C$DW$1087, DW_AT_decl_column(0x0c)

$C$DW$1088	.dwtag  DW_TAG_member
	.dwattr $C$DW$1088, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1088, DW_AT_name("INTx15")
	.dwattr $C$DW$1088, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1088, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1088, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1088, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1088, DW_AT_decl_line(0x1cc)
	.dwattr $C$DW$1088, DW_AT_decl_column(0x0c)

$C$DW$1089	.dwtag  DW_TAG_member
	.dwattr $C$DW$1089, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1089, DW_AT_name("INTx16")
	.dwattr $C$DW$1089, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1089, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1089, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1089, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1089, DW_AT_decl_line(0x1cd)
	.dwattr $C$DW$1089, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$202, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$202, DW_AT_decl_line(0x1bd)
	.dwattr $C$DW$T$202, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$202

	.dwendtag $C$DW$TU$202


$C$DW$TU$203	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$203

$C$DW$T$203	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$203, DW_AT_name("PIEIFR8_REG")
	.dwattr $C$DW$T$203, DW_AT_byte_size(0x01)
$C$DW$1090	.dwtag  DW_TAG_member
	.dwattr $C$DW$1090, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1090, DW_AT_name("all")
	.dwattr $C$DW$1090, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1090, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1090, DW_AT_decl_line(0x1d1)
	.dwattr $C$DW$1090, DW_AT_decl_column(0x0d)

$C$DW$1091	.dwtag  DW_TAG_member
	.dwattr $C$DW$1091, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$1091, DW_AT_name("bit")
	.dwattr $C$DW$1091, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1091, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1091, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$1091, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$203, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$203, DW_AT_decl_line(0x1d0)
	.dwattr $C$DW$T$203, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$203

	.dwendtag $C$DW$TU$203


$C$DW$TU$204	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$204

$C$DW$T$204	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$204, DW_AT_name("PIEIFR9_BITS")
	.dwattr $C$DW$T$204, DW_AT_byte_size(0x01)
$C$DW$1092	.dwtag  DW_TAG_member
	.dwattr $C$DW$1092, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1092, DW_AT_name("INTx1")
	.dwattr $C$DW$1092, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1092, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1092, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1092, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1092, DW_AT_decl_line(0x1ee)
	.dwattr $C$DW$1092, DW_AT_decl_column(0x0c)

$C$DW$1093	.dwtag  DW_TAG_member
	.dwattr $C$DW$1093, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1093, DW_AT_name("INTx2")
	.dwattr $C$DW$1093, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1093, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1093, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1093, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1093, DW_AT_decl_line(0x1ef)
	.dwattr $C$DW$1093, DW_AT_decl_column(0x0c)

$C$DW$1094	.dwtag  DW_TAG_member
	.dwattr $C$DW$1094, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1094, DW_AT_name("INTx3")
	.dwattr $C$DW$1094, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1094, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1094, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1094, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1094, DW_AT_decl_line(0x1f0)
	.dwattr $C$DW$1094, DW_AT_decl_column(0x0c)

$C$DW$1095	.dwtag  DW_TAG_member
	.dwattr $C$DW$1095, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1095, DW_AT_name("INTx4")
	.dwattr $C$DW$1095, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1095, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1095, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1095, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1095, DW_AT_decl_line(0x1f1)
	.dwattr $C$DW$1095, DW_AT_decl_column(0x0c)

$C$DW$1096	.dwtag  DW_TAG_member
	.dwattr $C$DW$1096, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1096, DW_AT_name("INTx5")
	.dwattr $C$DW$1096, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1096, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1096, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1096, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1096, DW_AT_decl_line(0x1f2)
	.dwattr $C$DW$1096, DW_AT_decl_column(0x0c)

$C$DW$1097	.dwtag  DW_TAG_member
	.dwattr $C$DW$1097, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1097, DW_AT_name("INTx6")
	.dwattr $C$DW$1097, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1097, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1097, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1097, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1097, DW_AT_decl_line(0x1f3)
	.dwattr $C$DW$1097, DW_AT_decl_column(0x0c)

$C$DW$1098	.dwtag  DW_TAG_member
	.dwattr $C$DW$1098, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1098, DW_AT_name("INTx7")
	.dwattr $C$DW$1098, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1098, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1098, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1098, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1098, DW_AT_decl_line(0x1f4)
	.dwattr $C$DW$1098, DW_AT_decl_column(0x0c)

$C$DW$1099	.dwtag  DW_TAG_member
	.dwattr $C$DW$1099, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1099, DW_AT_name("INTx8")
	.dwattr $C$DW$1099, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1099, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1099, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1099, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1099, DW_AT_decl_line(0x1f5)
	.dwattr $C$DW$1099, DW_AT_decl_column(0x0c)

$C$DW$1100	.dwtag  DW_TAG_member
	.dwattr $C$DW$1100, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1100, DW_AT_name("INTx9")
	.dwattr $C$DW$1100, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$1100, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1100, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1100, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1100, DW_AT_decl_line(0x1f6)
	.dwattr $C$DW$1100, DW_AT_decl_column(0x0c)

$C$DW$1101	.dwtag  DW_TAG_member
	.dwattr $C$DW$1101, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1101, DW_AT_name("INTx10")
	.dwattr $C$DW$1101, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1101, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1101, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1101, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1101, DW_AT_decl_line(0x1f7)
	.dwattr $C$DW$1101, DW_AT_decl_column(0x0c)

$C$DW$1102	.dwtag  DW_TAG_member
	.dwattr $C$DW$1102, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1102, DW_AT_name("INTx11")
	.dwattr $C$DW$1102, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1102, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1102, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1102, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1102, DW_AT_decl_line(0x1f8)
	.dwattr $C$DW$1102, DW_AT_decl_column(0x0c)

$C$DW$1103	.dwtag  DW_TAG_member
	.dwattr $C$DW$1103, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1103, DW_AT_name("INTx12")
	.dwattr $C$DW$1103, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1103, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1103, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1103, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1103, DW_AT_decl_line(0x1f9)
	.dwattr $C$DW$1103, DW_AT_decl_column(0x0c)

$C$DW$1104	.dwtag  DW_TAG_member
	.dwattr $C$DW$1104, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1104, DW_AT_name("INTx13")
	.dwattr $C$DW$1104, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1104, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1104, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1104, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1104, DW_AT_decl_line(0x1fa)
	.dwattr $C$DW$1104, DW_AT_decl_column(0x0c)

$C$DW$1105	.dwtag  DW_TAG_member
	.dwattr $C$DW$1105, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1105, DW_AT_name("INTx14")
	.dwattr $C$DW$1105, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1105, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1105, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1105, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1105, DW_AT_decl_line(0x1fb)
	.dwattr $C$DW$1105, DW_AT_decl_column(0x0c)

$C$DW$1106	.dwtag  DW_TAG_member
	.dwattr $C$DW$1106, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1106, DW_AT_name("INTx15")
	.dwattr $C$DW$1106, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1106, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1106, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1106, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1106, DW_AT_decl_line(0x1fc)
	.dwattr $C$DW$1106, DW_AT_decl_column(0x0c)

$C$DW$1107	.dwtag  DW_TAG_member
	.dwattr $C$DW$1107, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1107, DW_AT_name("INTx16")
	.dwattr $C$DW$1107, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1107, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1107, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1107, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1107, DW_AT_decl_line(0x1fd)
	.dwattr $C$DW$1107, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$204, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$204, DW_AT_decl_line(0x1ed)
	.dwattr $C$DW$T$204, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$204

	.dwendtag $C$DW$TU$204


$C$DW$TU$205	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$205

$C$DW$T$205	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$205, DW_AT_name("PIEIFR9_REG")
	.dwattr $C$DW$T$205, DW_AT_byte_size(0x01)
$C$DW$1108	.dwtag  DW_TAG_member
	.dwattr $C$DW$1108, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$1108, DW_AT_name("all")
	.dwattr $C$DW$1108, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1108, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1108, DW_AT_decl_line(0x201)
	.dwattr $C$DW$1108, DW_AT_decl_column(0x0d)

$C$DW$1109	.dwtag  DW_TAG_member
	.dwattr $C$DW$1109, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$1109, DW_AT_name("bit")
	.dwattr $C$DW$1109, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1109, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1109, DW_AT_decl_line(0x202)
	.dwattr $C$DW$1109, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$205, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$205, DW_AT_decl_line(0x200)
	.dwattr $C$DW$T$205, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$205

	.dwendtag $C$DW$TU$205


$C$DW$TU$206	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$206

$C$DW$T$206	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$206, DW_AT_name("PIE_CTRL_REGS")
	.dwattr $C$DW$T$206, DW_AT_byte_size(0x1a)
$C$DW$1110	.dwtag  DW_TAG_member
	.dwattr $C$DW$1110, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$1110, DW_AT_name("PIECTRL")
	.dwattr $C$DW$1110, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1110, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1110, DW_AT_decl_line(0x296)
	.dwattr $C$DW$1110, DW_AT_decl_column(0x2e)

$C$DW$1111	.dwtag  DW_TAG_member
	.dwattr $C$DW$1111, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$1111, DW_AT_name("PIEACK")
	.dwattr $C$DW$1111, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1111, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1111, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1111, DW_AT_decl_line(0x297)
	.dwattr $C$DW$1111, DW_AT_decl_column(0x2e)

$C$DW$1112	.dwtag  DW_TAG_member
	.dwattr $C$DW$1112, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$1112, DW_AT_name("PIEIER1")
	.dwattr $C$DW$1112, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1112, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1112, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1112, DW_AT_decl_line(0x298)
	.dwattr $C$DW$1112, DW_AT_decl_column(0x2e)

$C$DW$1113	.dwtag  DW_TAG_member
	.dwattr $C$DW$1113, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$1113, DW_AT_name("PIEIFR1")
	.dwattr $C$DW$1113, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$1113, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1113, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1113, DW_AT_decl_line(0x299)
	.dwattr $C$DW$1113, DW_AT_decl_column(0x2e)

$C$DW$1114	.dwtag  DW_TAG_member
	.dwattr $C$DW$1114, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$1114, DW_AT_name("PIEIER2")
	.dwattr $C$DW$1114, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1114, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1114, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1114, DW_AT_decl_line(0x29a)
	.dwattr $C$DW$1114, DW_AT_decl_column(0x2e)

$C$DW$1115	.dwtag  DW_TAG_member
	.dwattr $C$DW$1115, DW_AT_type(*$C$DW$T$191)
	.dwattr $C$DW$1115, DW_AT_name("PIEIFR2")
	.dwattr $C$DW$1115, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$1115, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1115, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1115, DW_AT_decl_line(0x29b)
	.dwattr $C$DW$1115, DW_AT_decl_column(0x2e)

$C$DW$1116	.dwtag  DW_TAG_member
	.dwattr $C$DW$1116, DW_AT_type(*$C$DW$T$169)
	.dwattr $C$DW$1116, DW_AT_name("PIEIER3")
	.dwattr $C$DW$1116, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1116, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1116, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1116, DW_AT_decl_line(0x29c)
	.dwattr $C$DW$1116, DW_AT_decl_column(0x2e)

$C$DW$1117	.dwtag  DW_TAG_member
	.dwattr $C$DW$1117, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$1117, DW_AT_name("PIEIFR3")
	.dwattr $C$DW$1117, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$1117, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1117, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1117, DW_AT_decl_line(0x29d)
	.dwattr $C$DW$1117, DW_AT_decl_column(0x2e)

$C$DW$1118	.dwtag  DW_TAG_member
	.dwattr $C$DW$1118, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$1118, DW_AT_name("PIEIER4")
	.dwattr $C$DW$1118, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1118, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1118, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1118, DW_AT_decl_line(0x29e)
	.dwattr $C$DW$1118, DW_AT_decl_column(0x2e)

$C$DW$1119	.dwtag  DW_TAG_member
	.dwattr $C$DW$1119, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$1119, DW_AT_name("PIEIFR4")
	.dwattr $C$DW$1119, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$1119, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1119, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1119, DW_AT_decl_line(0x29f)
	.dwattr $C$DW$1119, DW_AT_decl_column(0x2e)

$C$DW$1120	.dwtag  DW_TAG_member
	.dwattr $C$DW$1120, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$1120, DW_AT_name("PIEIER5")
	.dwattr $C$DW$1120, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1120, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1120, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1120, DW_AT_decl_line(0x2a0)
	.dwattr $C$DW$1120, DW_AT_decl_column(0x2e)

$C$DW$1121	.dwtag  DW_TAG_member
	.dwattr $C$DW$1121, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$1121, DW_AT_name("PIEIFR5")
	.dwattr $C$DW$1121, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$1121, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1121, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1121, DW_AT_decl_line(0x2a1)
	.dwattr $C$DW$1121, DW_AT_decl_column(0x2e)

$C$DW$1122	.dwtag  DW_TAG_member
	.dwattr $C$DW$1122, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$1122, DW_AT_name("PIEIER6")
	.dwattr $C$DW$1122, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1122, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1122, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1122, DW_AT_decl_line(0x2a2)
	.dwattr $C$DW$1122, DW_AT_decl_column(0x2e)

$C$DW$1123	.dwtag  DW_TAG_member
	.dwattr $C$DW$1123, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$1123, DW_AT_name("PIEIFR6")
	.dwattr $C$DW$1123, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$1123, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1123, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1123, DW_AT_decl_line(0x2a3)
	.dwattr $C$DW$1123, DW_AT_decl_column(0x2e)

$C$DW$1124	.dwtag  DW_TAG_member
	.dwattr $C$DW$1124, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$1124, DW_AT_name("PIEIER7")
	.dwattr $C$DW$1124, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1124, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1124, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1124, DW_AT_decl_line(0x2a4)
	.dwattr $C$DW$1124, DW_AT_decl_column(0x2e)

$C$DW$1125	.dwtag  DW_TAG_member
	.dwattr $C$DW$1125, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$1125, DW_AT_name("PIEIFR7")
	.dwattr $C$DW$1125, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$1125, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1125, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1125, DW_AT_decl_line(0x2a5)
	.dwattr $C$DW$1125, DW_AT_decl_column(0x2e)

$C$DW$1126	.dwtag  DW_TAG_member
	.dwattr $C$DW$1126, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$1126, DW_AT_name("PIEIER8")
	.dwattr $C$DW$1126, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1126, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1126, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1126, DW_AT_decl_line(0x2a6)
	.dwattr $C$DW$1126, DW_AT_decl_column(0x2e)

$C$DW$1127	.dwtag  DW_TAG_member
	.dwattr $C$DW$1127, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$1127, DW_AT_name("PIEIFR8")
	.dwattr $C$DW$1127, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$1127, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1127, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1127, DW_AT_decl_line(0x2a7)
	.dwattr $C$DW$1127, DW_AT_decl_column(0x2e)

$C$DW$1128	.dwtag  DW_TAG_member
	.dwattr $C$DW$1128, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$1128, DW_AT_name("PIEIER9")
	.dwattr $C$DW$1128, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1128, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1128, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1128, DW_AT_decl_line(0x2a8)
	.dwattr $C$DW$1128, DW_AT_decl_column(0x2e)

$C$DW$1129	.dwtag  DW_TAG_member
	.dwattr $C$DW$1129, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$1129, DW_AT_name("PIEIFR9")
	.dwattr $C$DW$1129, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$1129, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1129, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1129, DW_AT_decl_line(0x2a9)
	.dwattr $C$DW$1129, DW_AT_decl_column(0x2e)

$C$DW$1130	.dwtag  DW_TAG_member
	.dwattr $C$DW$1130, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$1130, DW_AT_name("PIEIER10")
	.dwattr $C$DW$1130, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$1130, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1130, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1130, DW_AT_decl_line(0x2aa)
	.dwattr $C$DW$1130, DW_AT_decl_column(0x2e)

$C$DW$1131	.dwtag  DW_TAG_member
	.dwattr $C$DW$1131, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$1131, DW_AT_name("PIEIFR10")
	.dwattr $C$DW$1131, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$1131, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1131, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1131, DW_AT_decl_line(0x2ab)
	.dwattr $C$DW$1131, DW_AT_decl_column(0x2e)

$C$DW$1132	.dwtag  DW_TAG_member
	.dwattr $C$DW$1132, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$1132, DW_AT_name("PIEIER11")
	.dwattr $C$DW$1132, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$1132, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1132, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1132, DW_AT_decl_line(0x2ac)
	.dwattr $C$DW$1132, DW_AT_decl_column(0x2e)

$C$DW$1133	.dwtag  DW_TAG_member
	.dwattr $C$DW$1133, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$1133, DW_AT_name("PIEIFR11")
	.dwattr $C$DW$1133, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$1133, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1133, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1133, DW_AT_decl_line(0x2ad)
	.dwattr $C$DW$1133, DW_AT_decl_column(0x2e)

$C$DW$1134	.dwtag  DW_TAG_member
	.dwattr $C$DW$1134, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$1134, DW_AT_name("PIEIER12")
	.dwattr $C$DW$1134, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$1134, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1134, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1134, DW_AT_decl_line(0x2ae)
	.dwattr $C$DW$1134, DW_AT_decl_column(0x2e)

$C$DW$1135	.dwtag  DW_TAG_member
	.dwattr $C$DW$1135, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$1135, DW_AT_name("PIEIFR12")
	.dwattr $C$DW$1135, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$1135, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$1135, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$1135, DW_AT_decl_line(0x2af)
	.dwattr $C$DW$1135, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$206, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_piectrl.h")
	.dwattr $C$DW$T$206, DW_AT_decl_line(0x295)
	.dwattr $C$DW$T$206, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$206

	.dwendtag $C$DW$TU$206


$C$DW$TU$225	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$225
$C$DW$1136	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1136, DW_AT_type(*$C$DW$T$206)

$C$DW$T$225	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$225, DW_AT_type(*$C$DW$1136)

	.dwendtag $C$DW$TU$225


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


$C$DW$TU$236	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$236
$C$DW$T$236	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$236, DW_AT_name("__int16_t")
	.dwattr $C$DW$T$236, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$236, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$236, DW_AT_decl_line(0x40)
	.dwattr $C$DW$T$236, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$236


$C$DW$TU$237	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$237
$C$DW$T$237	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$237, DW_AT_name("int16_t")
	.dwattr $C$DW$T$237, DW_AT_type(*$C$DW$T$236)
	.dwattr $C$DW$T$237, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$237, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$237, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$237


$C$DW$TU$9	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$9
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$9


$C$DW$TU$233	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$233
$C$DW$T$233	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$233, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$233, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$233, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$233, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$233, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$233


$C$DW$TU$234	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$234
$C$DW$T$234	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$234, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$234, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$T$234, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$234, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$234, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$234


$C$DW$TU$239	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$239
$C$DW$1137	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1137, DW_AT_type(*$C$DW$T$234)

$C$DW$T$239	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$239, DW_AT_type(*$C$DW$1137)

	.dwendtag $C$DW$TU$239


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


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("Uint16")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$20, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_device.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x124)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$20


$C$DW$TU$150	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$150

$C$DW$T$150	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$150, DW_AT_byte_size(0x04)
$C$DW$1138	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1138, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$150

	.dwendtag $C$DW$TU$150


$C$DW$TU$151	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$151

$C$DW$T$151	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$151, DW_AT_byte_size(0x10)
$C$DW$1139	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1139, DW_AT_upper_bound(0x0f)

	.dwendtag $C$DW$T$151

	.dwendtag $C$DW$TU$151


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


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62
$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("Uint32")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$62, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_device.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x125)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$62


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

