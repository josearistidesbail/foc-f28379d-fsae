;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Sat May 30 20:22:51 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../imported/hal/drv8305.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen Unix v25.11.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("GPIO_SetupPinMux")
	.dwattr $C$DW$1, DW_AT_linkage_name("GPIO_SetupPinMux")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/common/include/F2837xD_GlobalPrototypes.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x102)
	.dwattr $C$DW$1, DW_AT_decl_column(0x0d)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$19)

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$19)

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$19)

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

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("SpiaRegs")
	.dwattr $C$DW$7, DW_AT_linkage_name("SpiaRegs")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$7, DW_AT_decl_column(0x21)

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("GpioDataRegs")
	.dwattr $C$DW$8, DW_AT_linkage_name("GpioDataRegs")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0xf1d)
	.dwattr $C$DW$8, DW_AT_decl_column(0x27)

;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TI6WTKANnMj /tmp/TI6WTRvTHPQ --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TI6WT1rxDdJ 
	.sect	".text:drv8305_write"
	.clink
	.global	||drv8305_write||

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("drv8305_write")
	.dwattr $C$DW$9, DW_AT_low_pc(||drv8305_write||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_linkage_name("drv8305_write")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("../imported/hal/drv8305.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x28)
	.dwattr $C$DW$9, DW_AT_decl_column(0x06)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/drv8305.c",line 41,column 1,is_stmt,address ||drv8305_write||,isa 0

	.dwfde $C$DW$CIE, ||drv8305_write||
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("reg")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("data")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg1]


;***************************************************************
;* FNAME: drv8305_write                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||drv8305_write||:
;* AL    assigned to reg
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("reg")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg0]

;* AR6   assigned to data
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("data")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AH                ; [CPU_ALU] |41| 
	.dwpsn	file "../imported/hal/drv8305.c",line 43,column 5,is_stmt,isa 0
        MOV       ACC,AL << #11         ; [CPU_ALU] |43| 
        MOVW      DP,#||SpiaRegs||+8    ; [CPU_ARAU] 
        AND       AH,AR6,#0x07ff        ; [CPU_ALU] |43| 
        OR        AH,AL                 ; [CPU_ALU] |43| 
        MOV       @$BLOCKED(||SpiaRegs||)+8,AH ; [CPU_ALU] |43| 
||$C$L1||:    
	.dwpsn	file "../imported/hal/drv8305.c",line 44,column 12,is_stmt,isa 0
        TBIT      @$BLOCKED(||SpiaRegs||)+2,#6 ; [CPU_ALU] |44| 
        B         ||$C$L1||,NTC         ; [CPU_ALU] |44| 
        ; branchcc occurs ; [] |44| 
	.dwpsn	file "../imported/hal/drv8305.c",line 45,column 5,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||SpiaRegs||)+7 ; [CPU_ALU] |45| 
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../imported/hal/drv8305.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x2e)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:drv8305_set_sense_gain"
	.clink
	.global	||drv8305_set_sense_gain||

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("drv8305_set_sense_gain")
	.dwattr $C$DW$15, DW_AT_low_pc(||drv8305_set_sense_gain||)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_linkage_name("drv8305_set_sense_gain")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("../imported/hal/drv8305.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$15, DW_AT_decl_column(0x06)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/drv8305.c",line 61,column 1,is_stmt,address ||drv8305_set_sense_gain||,isa 0

	.dwfde $C$DW$CIE, ||drv8305_set_sense_gain||
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("gain")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: drv8305_set_sense_gain        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||drv8305_set_sense_gain||:
;* AH    assigned to gain
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("gain")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg1]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOV       AH,AL                 ; [CPU_ALU] |61| 
	.dwpsn	file "../imported/hal/drv8305.c",line 62,column 5,is_stmt,isa 0
        MOVB      AL,#12                ; [CPU_ALU] |62| 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("drv8305_write")
	.dwattr $C$DW$18, DW_AT_TI_call

        LCR       #||drv8305_write||    ; [CPU_ALU] |62| 
        ; call occurs [#||drv8305_write||] ; [] |62| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("../imported/hal/drv8305.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x3f)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

	.sect	".text:drv8305_read"
	.clink
	.global	||drv8305_read||

$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("drv8305_read")
	.dwattr $C$DW$20, DW_AT_low_pc(||drv8305_read||)
	.dwattr $C$DW$20, DW_AT_high_pc(0x00)
	.dwattr $C$DW$20, DW_AT_linkage_name("drv8305_read")
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$20, DW_AT_decl_file("../imported/hal/drv8305.c")
	.dwattr $C$DW$20, DW_AT_decl_line(0x20)
	.dwattr $C$DW$20, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$20, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/drv8305.c",line 33,column 1,is_stmt,address ||drv8305_read||,isa 0

	.dwfde $C$DW$CIE, ||drv8305_read||
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_name("reg")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: drv8305_read                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||drv8305_read||:
;* AL    assigned to reg
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("reg")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../imported/hal/drv8305.c",line 35,column 5,is_stmt,isa 0
        MOV       ACC,AL << #11         ; [CPU_ALU] |35| 
        MOVW      DP,#||SpiaRegs||+8    ; [CPU_ARAU] 
        OR        AL,#0x8000            ; [CPU_ALU] |35| 
        MOV       @$BLOCKED(||SpiaRegs||)+8,AL ; [CPU_ALU] |35| 
||$C$L2||:    
	.dwpsn	file "../imported/hal/drv8305.c",line 36,column 12,is_stmt,isa 0
        TBIT      @$BLOCKED(||SpiaRegs||)+2,#6 ; [CPU_ALU] |36| 
        B         ||$C$L2||,NTC         ; [CPU_ALU] |36| 
        ; branchcc occurs ; [] |36| 
	.dwpsn	file "../imported/hal/drv8305.c",line 37,column 5,is_stmt,isa 0
        AND       AL,@$BLOCKED(||SpiaRegs||)+7,#0x07ff ; [CPU_ALU] |37| 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$20, DW_AT_TI_end_file("../imported/hal/drv8305.c")
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x26)
	.dwattr $C$DW$20, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$20

	.sect	".text:drv8305_is_faulted"
	.clink
	.global	||drv8305_is_faulted||

$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("drv8305_is_faulted")
	.dwattr $C$DW$24, DW_AT_low_pc(||drv8305_is_faulted||)
	.dwattr $C$DW$24, DW_AT_high_pc(0x00)
	.dwattr $C$DW$24, DW_AT_linkage_name("drv8305_is_faulted")
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$24, DW_AT_decl_file("../imported/hal/drv8305.c")
	.dwattr $C$DW$24, DW_AT_decl_line(0x44)
	.dwattr $C$DW$24, DW_AT_decl_column(0x06)
	.dwattr $C$DW$24, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/drv8305.c",line 68,column 31,is_stmt,address ||drv8305_is_faulted||,isa 0

	.dwfde $C$DW$CIE, ||drv8305_is_faulted||

;***************************************************************
;* FNAME: drv8305_is_faulted            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||drv8305_is_faulted||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||GpioDataRegs||+1 ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/drv8305.c",line 68,column 33,is_stmt,isa 0
        MOV       AL,@$BLOCKED(||GpioDataRegs||)+1 ; [CPU_ALU] |68| 
        LSR       AL,3                  ; [CPU_ALU] |68| 
        XORB      AL,#0x01              ; [CPU_ALU] |68| 
        ANDB      AL,#0x01              ; [CPU_ALU] |68| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_TI_return

        LRETR     ; [CPU_FPU] 
        ; return occurs ; [] 
	.dwattr $C$DW$24, DW_AT_TI_end_file("../imported/hal/drv8305.c")
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x44)
	.dwattr $C$DW$24, DW_AT_TI_end_column(0x3c)
	.dwendentry
	.dwendtag $C$DW$24

	.sect	".text:spi_init"
	.clink

$C$DW$26	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$26, DW_AT_name("spi_init")
	.dwattr $C$DW$26, DW_AT_low_pc(||spi_init||)
	.dwattr $C$DW$26, DW_AT_high_pc(0x00)
	.dwattr $C$DW$26, DW_AT_linkage_name("spi_init")
	.dwattr $C$DW$26, DW_AT_decl_file("../imported/hal/drv8305.c")
	.dwattr $C$DW$26, DW_AT_decl_line(0x0a)
	.dwattr $C$DW$26, DW_AT_decl_column(0x0d)
	.dwattr $C$DW$26, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/drv8305.c",line 11,column 1,is_stmt,address ||spi_init||,isa 0

	.dwfde $C$DW$CIE, ||spi_init||

;***************************************************************
;* FNAME: spi_init                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||spi_init||:
;* AR4   assigned to $O$C1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
 EALLOW
	.dwpsn	file "../imported/hal/drv8305.c",line 13,column 5,is_stmt,isa 0
        MOVB      AL,#58                ; [CPU_ALU] |13| 
        MOVB      XAR4,#15              ; [CPU_ALU] |13| 
        MOVB      AH,#0                 ; [CPU_ALU] |13| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("GPIO_SetupPinMux")
	.dwattr $C$DW$27, DW_AT_TI_call

        LCR       #||GPIO_SetupPinMux|| ; [CPU_ALU] |13| 
        ; call occurs [#||GPIO_SetupPinMux||] ; [] |13| 
	.dwpsn	file "../imported/hal/drv8305.c",line 14,column 5,is_stmt,isa 0
        MOVB      AL,#59                ; [CPU_ALU] |14| 
        MOVB      XAR4,#15              ; [CPU_ALU] |14| 
        MOVB      AH,#0                 ; [CPU_ALU] |14| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("GPIO_SetupPinMux")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #||GPIO_SetupPinMux|| ; [CPU_ALU] |14| 
        ; call occurs [#||GPIO_SetupPinMux||] ; [] |14| 
	.dwpsn	file "../imported/hal/drv8305.c",line 15,column 5,is_stmt,isa 0
        MOVB      AL,#60                ; [CPU_ALU] |15| 
        MOVB      XAR4,#15              ; [CPU_ALU] |15| 
        MOVB      AH,#0                 ; [CPU_ALU] |15| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("GPIO_SetupPinMux")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #||GPIO_SetupPinMux|| ; [CPU_ALU] |15| 
        ; call occurs [#||GPIO_SetupPinMux||] ; [] |15| 
	.dwpsn	file "../imported/hal/drv8305.c",line 16,column 5,is_stmt,isa 0
        MOVB      AL,#61                ; [CPU_ALU] |16| 
        MOVB      XAR4,#15              ; [CPU_ALU] |16| 
        MOVB      AH,#0                 ; [CPU_ALU] |16| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("GPIO_SetupPinMux")
	.dwattr $C$DW$30, DW_AT_TI_call

        LCR       #||GPIO_SetupPinMux|| ; [CPU_ALU] |16| 
        ; call occurs [#||GPIO_SetupPinMux||] ; [] |16| 
	.dwpsn	file "../imported/hal/drv8305.c",line 18,column 5,is_stmt,isa 0
        MOVL      XAR4,#||SpiaRegs||    ; [CPU_ARAU] |18| 
        MOVW      DP,#||SpiaRegs||+1    ; [CPU_ARAU] 
        AND       *+XAR4[0],#0xff7f     ; [CPU_ALU] |18| 
	.dwpsn	file "../imported/hal/drv8305.c",line 19,column 5,is_stmt,isa 0
        AND       *+XAR4[0],#0xffbf     ; [CPU_ALU] |19| 
	.dwpsn	file "../imported/hal/drv8305.c",line 20,column 5,is_stmt,isa 0
        OR        *+XAR4[0],#0x000f     ; [CPU_ALU] |20| 
	.dwpsn	file "../imported/hal/drv8305.c",line 21,column 5,is_stmt,isa 0
        OR        *+XAR4[1],#0x0008     ; [CPU_ALU] |21| 
	.dwpsn	file "../imported/hal/drv8305.c",line 22,column 5,is_stmt,isa 0
        OR        @$BLOCKED(||SpiaRegs||)+1,#0x0004 ; [CPU_ALU] |22| 
	.dwpsn	file "../imported/hal/drv8305.c",line 23,column 5,is_stmt,isa 0
        OR        @$BLOCKED(||SpiaRegs||)+1,#0x0002 ; [CPU_ALU] |23| 
	.dwpsn	file "../imported/hal/drv8305.c",line 26,column 5,is_stmt,isa 0
        AND       AL,*+XAR4[4],#0xff80  ; [CPU_ALU] |26| 
        ORB       AL,#0x09              ; [CPU_ALU] |26| 
        MOV       @$BLOCKED(||SpiaRegs||)+4,AL ; [CPU_ALU] |26| 
	.dwpsn	file "../imported/hal/drv8305.c",line 28,column 5,is_stmt,isa 0
        OR        @$BLOCKED(||SpiaRegs||),#0x0080 ; [CPU_ALU] |28| 
 EDIS
        SPM       #0                    ; [CPU_ALU] 
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$26, DW_AT_TI_end_file("../imported/hal/drv8305.c")
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x1e)
	.dwattr $C$DW$26, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$26

	.sect	".text:drv8305_disable"
	.clink
	.global	||drv8305_disable||

$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("drv8305_disable")
	.dwattr $C$DW$32, DW_AT_low_pc(||drv8305_disable||)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_linkage_name("drv8305_disable")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("../imported/hal/drv8305.c")
	.dwattr $C$DW$32, DW_AT_decl_line(0x42)
	.dwattr $C$DW$32, DW_AT_decl_column(0x06)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/drv8305.c",line 66,column 28,is_stmt,address ||drv8305_disable||,isa 0

	.dwfde $C$DW$CIE, ||drv8305_disable||

;***************************************************************
;* FNAME: drv8305_disable               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||drv8305_disable||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||GpioDataRegs||+29 ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/drv8305.c",line 66,column 30,is_stmt,isa 0
        OR        @$BLOCKED(||GpioDataRegs||)+29,#0x1000 ; [CPU_ALU] |66| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$32, DW_AT_TI_end_file("../imported/hal/drv8305.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x42)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$32

	.sect	".text:drv8305_enable"
	.clink
	.global	||drv8305_enable||

$C$DW$34	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$34, DW_AT_name("drv8305_enable")
	.dwattr $C$DW$34, DW_AT_low_pc(||drv8305_enable||)
	.dwattr $C$DW$34, DW_AT_high_pc(0x00)
	.dwattr $C$DW$34, DW_AT_linkage_name("drv8305_enable")
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_decl_file("../imported/hal/drv8305.c")
	.dwattr $C$DW$34, DW_AT_decl_line(0x41)
	.dwattr $C$DW$34, DW_AT_decl_column(0x06)
	.dwattr $C$DW$34, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/drv8305.c",line 65,column 28,is_stmt,address ||drv8305_enable||,isa 0

	.dwfde $C$DW$CIE, ||drv8305_enable||

;***************************************************************
;* FNAME: drv8305_enable                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||drv8305_enable||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||GpioDataRegs||+27 ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/drv8305.c",line 65,column 30,is_stmt,isa 0
        OR        @$BLOCKED(||GpioDataRegs||)+27,#0x1000 ; [CPU_ALU] |65| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$34, DW_AT_TI_end_file("../imported/hal/drv8305.c")
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x41)
	.dwattr $C$DW$34, DW_AT_TI_end_column(0x2e)
	.dwendentry
	.dwendtag $C$DW$34

	.sect	".text:drv8305_init"
	.clink
	.global	||drv8305_init||

$C$DW$36	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$36, DW_AT_name("drv8305_init")
	.dwattr $C$DW$36, DW_AT_low_pc(||drv8305_init||)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_linkage_name("drv8305_init")
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_decl_file("../imported/hal/drv8305.c")
	.dwattr $C$DW$36, DW_AT_decl_line(0x30)
	.dwattr $C$DW$36, DW_AT_decl_column(0x06)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/drv8305.c",line 49,column 1,is_stmt,address ||drv8305_init||,isa 0

	.dwfde $C$DW$CIE, ||drv8305_init||

;***************************************************************
;* FNAME: drv8305_init                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||drv8305_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../imported/hal/drv8305.c",line 50,column 5,is_stmt,isa 0
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("spi_init")
	.dwattr $C$DW$37, DW_AT_TI_call

        LCR       #||spi_init||         ; [CPU_ALU] |50| 
        ; call occurs [#||spi_init||] ; [] |50| 
	.dwpsn	file "../imported/hal/drv8305.c",line 51,column 5,is_stmt,isa 0
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("drv8305_disable")
	.dwattr $C$DW$38, DW_AT_TI_call

        LCR       #||drv8305_disable||  ; [CPU_ALU] |51| 
        ; call occurs [#||drv8305_disable||] ; [] |51| 
        CLRC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../imported/hal/drv8305.c",line 52,column 5,is_stmt,isa 0
        MOV       ACC,#39998            ; [CPU_ALU] |52| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("F28x_usDelay")
	.dwattr $C$DW$39, DW_AT_TI_call

        LCR       #||F28x_usDelay||     ; [CPU_ALU] |52| 
        ; call occurs [#||F28x_usDelay||] ; [] |52| 
	.dwpsn	file "../imported/hal/drv8305.c",line 53,column 5,is_stmt,isa 0
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("drv8305_enable")
	.dwattr $C$DW$40, DW_AT_TI_call

        LCR       #||drv8305_enable||   ; [CPU_ALU] |53| 
        ; call occurs [#||drv8305_enable||] ; [] |53| 
	.dwpsn	file "../imported/hal/drv8305.c",line 54,column 5,is_stmt,isa 0
        MOVL      XAR4,#199998          ; [CPU_ARAU] |54| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |54| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("F28x_usDelay")
	.dwattr $C$DW$41, DW_AT_TI_call

        LCR       #||F28x_usDelay||     ; [CPU_ALU] |54| 
        ; call occurs [#||F28x_usDelay||] ; [] |54| 
	.dwpsn	file "../imported/hal/drv8305.c",line 56,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |56| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("drv8305_set_sense_gain")
	.dwattr $C$DW$42, DW_AT_TI_call

        LCR       #||drv8305_set_sense_gain|| ; [CPU_ALU] |56| 
        ; call occurs [#||drv8305_set_sense_gain||] ; [] |56| 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$36, DW_AT_TI_end_file("../imported/hal/drv8305.c")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0x3a)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||GPIO_SetupPinMux||
	.global	||F28x_usDelay||
	.global	||SpiaRegs||
	.global	||GpioDataRegs||

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

$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88

$C$DW$T$88	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x01)
$C$DW$44	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$44, DW_AT_name("DRV8305_REG_HS_GATE_CTRL")
	.dwattr $C$DW$44, DW_AT_const_value(0x05)
	.dwattr $C$DW$44, DW_AT_decl_file("../imported/hal/drv8305.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0x11)
	.dwattr $C$DW$44, DW_AT_decl_column(0x05)

$C$DW$45	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$45, DW_AT_name("DRV8305_REG_LS_GATE_CTRL")
	.dwattr $C$DW$45, DW_AT_const_value(0x06)
	.dwattr $C$DW$45, DW_AT_decl_file("../imported/hal/drv8305.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0x12)
	.dwattr $C$DW$45, DW_AT_decl_column(0x05)

$C$DW$46	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$46, DW_AT_name("DRV8305_REG_GATE_DRIVE")
	.dwattr $C$DW$46, DW_AT_const_value(0x07)
	.dwattr $C$DW$46, DW_AT_decl_file("../imported/hal/drv8305.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0x13)
	.dwattr $C$DW$46, DW_AT_decl_column(0x05)

$C$DW$47	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$47, DW_AT_name("DRV8305_REG_SENSE_CTRL")
	.dwattr $C$DW$47, DW_AT_const_value(0x0c)
	.dwattr $C$DW$47, DW_AT_decl_file("../imported/hal/drv8305.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0x14)
	.dwattr $C$DW$47, DW_AT_decl_column(0x05)

$C$DW$48	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$48, DW_AT_name("DRV8305_REG_DRIVER_CTRL")
	.dwattr $C$DW$48, DW_AT_const_value(0x09)
	.dwattr $C$DW$48, DW_AT_decl_file("../imported/hal/drv8305.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0x15)
	.dwattr $C$DW$48, DW_AT_decl_column(0x05)

$C$DW$49	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$49, DW_AT_name("DRV8305_REG_WATCHDOG")
	.dwattr $C$DW$49, DW_AT_const_value(0x0a)
	.dwattr $C$DW$49, DW_AT_decl_file("../imported/hal/drv8305.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0x16)
	.dwattr $C$DW$49, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$88, DW_AT_decl_file("../imported/hal/drv8305.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x10)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x0e)
	.dwendtag $C$DW$T$88

	.dwendtag $C$DW$TU$88


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89
$C$DW$T$89	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$89, DW_AT_name("drv8305_reg_t")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$89, DW_AT_decl_file("../imported/hal/drv8305.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x17)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$89


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90
$C$DW$50	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$89)

$C$DW$T$90	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$50)

	.dwendtag $C$DW$TU$90


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91
$C$DW$51	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$89)

$C$DW$T$91	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$51)

	.dwendtag $C$DW$TU$91


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92

$C$DW$T$92	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x01)
$C$DW$52	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$52, DW_AT_name("DRV8305_SENSE_GAIN_10VPV")
	.dwattr $C$DW$52, DW_AT_const_value(0x00)
	.dwattr $C$DW$52, DW_AT_decl_file("../imported/hal/drv8305.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$52, DW_AT_decl_column(0x05)

$C$DW$53	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$53, DW_AT_name("DRV8305_SENSE_GAIN_20VPV")
	.dwattr $C$DW$53, DW_AT_const_value(0x55)
	.dwattr $C$DW$53, DW_AT_decl_file("../imported/hal/drv8305.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$53, DW_AT_decl_column(0x05)

$C$DW$54	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$54, DW_AT_name("DRV8305_SENSE_GAIN_40VPV")
	.dwattr $C$DW$54, DW_AT_const_value(0xaa)
	.dwattr $C$DW$54, DW_AT_decl_file("../imported/hal/drv8305.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$54, DW_AT_decl_column(0x05)

$C$DW$55	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$55, DW_AT_name("DRV8305_SENSE_GAIN_80VPV")
	.dwattr $C$DW$55, DW_AT_const_value(0xff)
	.dwattr $C$DW$55, DW_AT_decl_file("../imported/hal/drv8305.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$55, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$92, DW_AT_decl_file("../imported/hal/drv8305.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x19)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x0e)
	.dwendtag $C$DW$T$92

	.dwendtag $C$DW$TU$92


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93
$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("drv8305_sense_gain_t")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_decl_file("../imported/hal/drv8305.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$93


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94
$C$DW$56	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$93)

$C$DW$T$94	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$56)

	.dwendtag $C$DW$TU$94


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("GPACLEAR_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x02)
$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$57, DW_AT_name("GPIO0")
	.dwattr $C$DW$57, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$57, DW_AT_bit_size(0x01)
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$57, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0xb8e)
	.dwattr $C$DW$57, DW_AT_decl_column(0x0c)

$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$58, DW_AT_name("GPIO1")
	.dwattr $C$DW$58, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$58, DW_AT_bit_size(0x01)
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$58, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0xb8f)
	.dwattr $C$DW$58, DW_AT_decl_column(0x0c)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$59, DW_AT_name("GPIO2")
	.dwattr $C$DW$59, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$59, DW_AT_bit_size(0x01)
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$59, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0xb90)
	.dwattr $C$DW$59, DW_AT_decl_column(0x0c)

$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_name("GPIO3")
	.dwattr $C$DW$60, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$60, DW_AT_bit_size(0x01)
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$60, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0xb91)
	.dwattr $C$DW$60, DW_AT_decl_column(0x0c)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_name("GPIO4")
	.dwattr $C$DW$61, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$61, DW_AT_bit_size(0x01)
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$61, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0xb92)
	.dwattr $C$DW$61, DW_AT_decl_column(0x0c)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_name("GPIO5")
	.dwattr $C$DW$62, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$62, DW_AT_bit_size(0x01)
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$62, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0xb93)
	.dwattr $C$DW$62, DW_AT_decl_column(0x0c)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_name("GPIO6")
	.dwattr $C$DW$63, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$63, DW_AT_bit_size(0x01)
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$63, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0xb94)
	.dwattr $C$DW$63, DW_AT_decl_column(0x0c)

$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$64, DW_AT_name("GPIO7")
	.dwattr $C$DW$64, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$64, DW_AT_bit_size(0x01)
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$64, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$64, DW_AT_decl_line(0xb95)
	.dwattr $C$DW$64, DW_AT_decl_column(0x0c)

$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_name("GPIO8")
	.dwattr $C$DW$65, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$65, DW_AT_bit_size(0x01)
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$65, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$65, DW_AT_decl_line(0xb96)
	.dwattr $C$DW$65, DW_AT_decl_column(0x0c)

$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_name("GPIO9")
	.dwattr $C$DW$66, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$66, DW_AT_bit_size(0x01)
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$66, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0xb97)
	.dwattr $C$DW$66, DW_AT_decl_column(0x0c)

$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_name("GPIO10")
	.dwattr $C$DW$67, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$67, DW_AT_bit_size(0x01)
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$67, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0xb98)
	.dwattr $C$DW$67, DW_AT_decl_column(0x0c)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_name("GPIO11")
	.dwattr $C$DW$68, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$68, DW_AT_bit_size(0x01)
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$68, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0xb99)
	.dwattr $C$DW$68, DW_AT_decl_column(0x0c)

$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_name("GPIO12")
	.dwattr $C$DW$69, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$69, DW_AT_bit_size(0x01)
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$69, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0xb9a)
	.dwattr $C$DW$69, DW_AT_decl_column(0x0c)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$70, DW_AT_name("GPIO13")
	.dwattr $C$DW$70, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$70, DW_AT_bit_size(0x01)
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$70, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0xb9b)
	.dwattr $C$DW$70, DW_AT_decl_column(0x0c)

$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_name("GPIO14")
	.dwattr $C$DW$71, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$71, DW_AT_bit_size(0x01)
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$71, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0xb9c)
	.dwattr $C$DW$71, DW_AT_decl_column(0x0c)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$72, DW_AT_name("GPIO15")
	.dwattr $C$DW$72, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$72, DW_AT_bit_size(0x01)
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$72, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0xb9d)
	.dwattr $C$DW$72, DW_AT_decl_column(0x0c)

$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$73, DW_AT_name("GPIO16")
	.dwattr $C$DW$73, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$73, DW_AT_bit_size(0x01)
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$73, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0xb9e)
	.dwattr $C$DW$73, DW_AT_decl_column(0x0c)

$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$74, DW_AT_name("GPIO17")
	.dwattr $C$DW$74, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$74, DW_AT_bit_size(0x01)
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$74, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0xb9f)
	.dwattr $C$DW$74, DW_AT_decl_column(0x0c)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$75, DW_AT_name("GPIO18")
	.dwattr $C$DW$75, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$75, DW_AT_bit_size(0x01)
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$75, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0xba0)
	.dwattr $C$DW$75, DW_AT_decl_column(0x0c)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$76, DW_AT_name("GPIO19")
	.dwattr $C$DW$76, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$76, DW_AT_bit_size(0x01)
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$76, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0xba1)
	.dwattr $C$DW$76, DW_AT_decl_column(0x0c)

$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_name("GPIO20")
	.dwattr $C$DW$77, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$77, DW_AT_bit_size(0x01)
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$77, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0xba2)
	.dwattr $C$DW$77, DW_AT_decl_column(0x0c)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$78, DW_AT_name("GPIO21")
	.dwattr $C$DW$78, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$78, DW_AT_bit_size(0x01)
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$78, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0xba3)
	.dwattr $C$DW$78, DW_AT_decl_column(0x0c)

$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_name("GPIO22")
	.dwattr $C$DW$79, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$79, DW_AT_bit_size(0x01)
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$79, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0xba4)
	.dwattr $C$DW$79, DW_AT_decl_column(0x0c)

$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_name("GPIO23")
	.dwattr $C$DW$80, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$80, DW_AT_bit_size(0x01)
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$80, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0xba5)
	.dwattr $C$DW$80, DW_AT_decl_column(0x0c)

$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$81, DW_AT_name("GPIO24")
	.dwattr $C$DW$81, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$81, DW_AT_bit_size(0x01)
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$81, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0xba6)
	.dwattr $C$DW$81, DW_AT_decl_column(0x0c)

$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$82, DW_AT_name("GPIO25")
	.dwattr $C$DW$82, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$82, DW_AT_bit_size(0x01)
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$82, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0xba7)
	.dwattr $C$DW$82, DW_AT_decl_column(0x0c)

$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$83, DW_AT_name("GPIO26")
	.dwattr $C$DW$83, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$83, DW_AT_bit_size(0x01)
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$83, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0xba8)
	.dwattr $C$DW$83, DW_AT_decl_column(0x0c)

$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$84, DW_AT_name("GPIO27")
	.dwattr $C$DW$84, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$84, DW_AT_bit_size(0x01)
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$84, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0xba9)
	.dwattr $C$DW$84, DW_AT_decl_column(0x0c)

$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_name("GPIO28")
	.dwattr $C$DW$85, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$85, DW_AT_bit_size(0x01)
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$85, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0xbaa)
	.dwattr $C$DW$85, DW_AT_decl_column(0x0c)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_name("GPIO29")
	.dwattr $C$DW$86, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$86, DW_AT_bit_size(0x01)
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$86, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0xbab)
	.dwattr $C$DW$86, DW_AT_decl_column(0x0c)

$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_name("GPIO30")
	.dwattr $C$DW$87, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$87, DW_AT_bit_size(0x01)
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$87, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0xbac)
	.dwattr $C$DW$87, DW_AT_decl_column(0x0c)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$88, DW_AT_name("GPIO31")
	.dwattr $C$DW$88, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$88, DW_AT_bit_size(0x01)
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$88, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0xbad)
	.dwattr $C$DW$88, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$20, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0xb8d)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$20

	.dwendtag $C$DW$TU$20


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$22, DW_AT_name("GPACLEAR_REG")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$89, DW_AT_name("all")
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$89, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0xbb1)
	.dwattr $C$DW$89, DW_AT_decl_column(0x0d)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$90, DW_AT_name("bit")
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$90, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0xbb2)
	.dwattr $C$DW$90, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$22, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0xbb0)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("GPADAT_BITS")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x02)
$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_name("GPIO0")
	.dwattr $C$DW$91, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$91, DW_AT_bit_size(0x01)
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$91, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0xb3e)
	.dwattr $C$DW$91, DW_AT_decl_column(0x0c)

$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_name("GPIO1")
	.dwattr $C$DW$92, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$92, DW_AT_bit_size(0x01)
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$92, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0xb3f)
	.dwattr $C$DW$92, DW_AT_decl_column(0x0c)

$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_name("GPIO2")
	.dwattr $C$DW$93, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$93, DW_AT_bit_size(0x01)
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$93, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0xb40)
	.dwattr $C$DW$93, DW_AT_decl_column(0x0c)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$94, DW_AT_name("GPIO3")
	.dwattr $C$DW$94, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$94, DW_AT_bit_size(0x01)
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$94, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0xb41)
	.dwattr $C$DW$94, DW_AT_decl_column(0x0c)

$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$95, DW_AT_name("GPIO4")
	.dwattr $C$DW$95, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$95, DW_AT_bit_size(0x01)
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$95, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0xb42)
	.dwattr $C$DW$95, DW_AT_decl_column(0x0c)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$96, DW_AT_name("GPIO5")
	.dwattr $C$DW$96, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$96, DW_AT_bit_size(0x01)
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$96, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0xb43)
	.dwattr $C$DW$96, DW_AT_decl_column(0x0c)

$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$97, DW_AT_name("GPIO6")
	.dwattr $C$DW$97, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$97, DW_AT_bit_size(0x01)
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$97, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0xb44)
	.dwattr $C$DW$97, DW_AT_decl_column(0x0c)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$98, DW_AT_name("GPIO7")
	.dwattr $C$DW$98, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$98, DW_AT_bit_size(0x01)
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$98, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0xb45)
	.dwattr $C$DW$98, DW_AT_decl_column(0x0c)

$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$99, DW_AT_name("GPIO8")
	.dwattr $C$DW$99, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$99, DW_AT_bit_size(0x01)
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$99, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0xb46)
	.dwattr $C$DW$99, DW_AT_decl_column(0x0c)

$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_name("GPIO9")
	.dwattr $C$DW$100, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$100, DW_AT_bit_size(0x01)
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$100, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0xb47)
	.dwattr $C$DW$100, DW_AT_decl_column(0x0c)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_name("GPIO10")
	.dwattr $C$DW$101, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$101, DW_AT_bit_size(0x01)
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$101, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0xb48)
	.dwattr $C$DW$101, DW_AT_decl_column(0x0c)

$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_name("GPIO11")
	.dwattr $C$DW$102, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$102, DW_AT_bit_size(0x01)
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$102, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0xb49)
	.dwattr $C$DW$102, DW_AT_decl_column(0x0c)

$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$103, DW_AT_name("GPIO12")
	.dwattr $C$DW$103, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$103, DW_AT_bit_size(0x01)
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$103, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0xb4a)
	.dwattr $C$DW$103, DW_AT_decl_column(0x0c)

$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$104, DW_AT_name("GPIO13")
	.dwattr $C$DW$104, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$104, DW_AT_bit_size(0x01)
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$104, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0xb4b)
	.dwattr $C$DW$104, DW_AT_decl_column(0x0c)

$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$105, DW_AT_name("GPIO14")
	.dwattr $C$DW$105, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$105, DW_AT_bit_size(0x01)
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$105, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0xb4c)
	.dwattr $C$DW$105, DW_AT_decl_column(0x0c)

$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$106, DW_AT_name("GPIO15")
	.dwattr $C$DW$106, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$106, DW_AT_bit_size(0x01)
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$106, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0xb4d)
	.dwattr $C$DW$106, DW_AT_decl_column(0x0c)

$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$107, DW_AT_name("GPIO16")
	.dwattr $C$DW$107, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$107, DW_AT_bit_size(0x01)
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$107, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0xb4e)
	.dwattr $C$DW$107, DW_AT_decl_column(0x0c)

$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$108, DW_AT_name("GPIO17")
	.dwattr $C$DW$108, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$108, DW_AT_bit_size(0x01)
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$108, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0xb4f)
	.dwattr $C$DW$108, DW_AT_decl_column(0x0c)

$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_name("GPIO18")
	.dwattr $C$DW$109, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$109, DW_AT_bit_size(0x01)
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$109, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0xb50)
	.dwattr $C$DW$109, DW_AT_decl_column(0x0c)

$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_name("GPIO19")
	.dwattr $C$DW$110, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$110, DW_AT_bit_size(0x01)
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$110, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0xb51)
	.dwattr $C$DW$110, DW_AT_decl_column(0x0c)

$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_name("GPIO20")
	.dwattr $C$DW$111, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$111, DW_AT_bit_size(0x01)
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$111, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0xb52)
	.dwattr $C$DW$111, DW_AT_decl_column(0x0c)

$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$112, DW_AT_name("GPIO21")
	.dwattr $C$DW$112, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$112, DW_AT_bit_size(0x01)
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$112, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0xb53)
	.dwattr $C$DW$112, DW_AT_decl_column(0x0c)

$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_name("GPIO22")
	.dwattr $C$DW$113, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$113, DW_AT_bit_size(0x01)
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$113, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0xb54)
	.dwattr $C$DW$113, DW_AT_decl_column(0x0c)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$114, DW_AT_name("GPIO23")
	.dwattr $C$DW$114, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$114, DW_AT_bit_size(0x01)
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$114, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0xb55)
	.dwattr $C$DW$114, DW_AT_decl_column(0x0c)

$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_name("GPIO24")
	.dwattr $C$DW$115, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$115, DW_AT_bit_size(0x01)
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$115, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0xb56)
	.dwattr $C$DW$115, DW_AT_decl_column(0x0c)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_name("GPIO25")
	.dwattr $C$DW$116, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$116, DW_AT_bit_size(0x01)
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$116, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0xb57)
	.dwattr $C$DW$116, DW_AT_decl_column(0x0c)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_name("GPIO26")
	.dwattr $C$DW$117, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$117, DW_AT_bit_size(0x01)
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$117, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0xb58)
	.dwattr $C$DW$117, DW_AT_decl_column(0x0c)

$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$118, DW_AT_name("GPIO27")
	.dwattr $C$DW$118, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$118, DW_AT_bit_size(0x01)
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$118, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0xb59)
	.dwattr $C$DW$118, DW_AT_decl_column(0x0c)

$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$119, DW_AT_name("GPIO28")
	.dwattr $C$DW$119, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$119, DW_AT_bit_size(0x01)
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$119, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0xb5a)
	.dwattr $C$DW$119, DW_AT_decl_column(0x0c)

$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$120, DW_AT_name("GPIO29")
	.dwattr $C$DW$120, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$120, DW_AT_bit_size(0x01)
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$120, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0xb5b)
	.dwattr $C$DW$120, DW_AT_decl_column(0x0c)

$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$121, DW_AT_name("GPIO30")
	.dwattr $C$DW$121, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$121, DW_AT_bit_size(0x01)
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$121, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$121, DW_AT_decl_line(0xb5c)
	.dwattr $C$DW$121, DW_AT_decl_column(0x0c)

$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$122, DW_AT_name("GPIO31")
	.dwattr $C$DW$122, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$122, DW_AT_bit_size(0x01)
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$122, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0xb5d)
	.dwattr $C$DW$122, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$23, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0xb3d)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$24, DW_AT_name("GPADAT_REG")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x02)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$123, DW_AT_name("all")
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$123, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0xb61)
	.dwattr $C$DW$123, DW_AT_decl_column(0x0d)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$124, DW_AT_name("bit")
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$124, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0xb62)
	.dwattr $C$DW$124, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$24, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0xb60)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("GPASET_BITS")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x02)
$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$125, DW_AT_name("GPIO0")
	.dwattr $C$DW$125, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$125, DW_AT_bit_size(0x01)
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$125, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0xb66)
	.dwattr $C$DW$125, DW_AT_decl_column(0x0c)

$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_name("GPIO1")
	.dwattr $C$DW$126, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$126, DW_AT_bit_size(0x01)
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$126, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0xb67)
	.dwattr $C$DW$126, DW_AT_decl_column(0x0c)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$127, DW_AT_name("GPIO2")
	.dwattr $C$DW$127, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$127, DW_AT_bit_size(0x01)
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$127, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0xb68)
	.dwattr $C$DW$127, DW_AT_decl_column(0x0c)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$128, DW_AT_name("GPIO3")
	.dwattr $C$DW$128, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$128, DW_AT_bit_size(0x01)
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$128, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0xb69)
	.dwattr $C$DW$128, DW_AT_decl_column(0x0c)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_name("GPIO4")
	.dwattr $C$DW$129, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$129, DW_AT_bit_size(0x01)
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$129, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0xb6a)
	.dwattr $C$DW$129, DW_AT_decl_column(0x0c)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$130, DW_AT_name("GPIO5")
	.dwattr $C$DW$130, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$130, DW_AT_bit_size(0x01)
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$130, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0xb6b)
	.dwattr $C$DW$130, DW_AT_decl_column(0x0c)

$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_name("GPIO6")
	.dwattr $C$DW$131, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$131, DW_AT_bit_size(0x01)
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$131, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0xb6c)
	.dwattr $C$DW$131, DW_AT_decl_column(0x0c)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_name("GPIO7")
	.dwattr $C$DW$132, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$132, DW_AT_bit_size(0x01)
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$132, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0xb6d)
	.dwattr $C$DW$132, DW_AT_decl_column(0x0c)

$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$133, DW_AT_name("GPIO8")
	.dwattr $C$DW$133, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$133, DW_AT_bit_size(0x01)
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$133, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0xb6e)
	.dwattr $C$DW$133, DW_AT_decl_column(0x0c)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_name("GPIO9")
	.dwattr $C$DW$134, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$134, DW_AT_bit_size(0x01)
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$134, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$134, DW_AT_decl_line(0xb6f)
	.dwattr $C$DW$134, DW_AT_decl_column(0x0c)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_name("GPIO10")
	.dwattr $C$DW$135, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$135, DW_AT_bit_size(0x01)
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$135, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$135, DW_AT_decl_line(0xb70)
	.dwattr $C$DW$135, DW_AT_decl_column(0x0c)

$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$136, DW_AT_name("GPIO11")
	.dwattr $C$DW$136, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$136, DW_AT_bit_size(0x01)
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$136, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$136, DW_AT_decl_line(0xb71)
	.dwattr $C$DW$136, DW_AT_decl_column(0x0c)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_name("GPIO12")
	.dwattr $C$DW$137, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$137, DW_AT_bit_size(0x01)
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$137, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$137, DW_AT_decl_line(0xb72)
	.dwattr $C$DW$137, DW_AT_decl_column(0x0c)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_name("GPIO13")
	.dwattr $C$DW$138, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$138, DW_AT_bit_size(0x01)
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$138, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0xb73)
	.dwattr $C$DW$138, DW_AT_decl_column(0x0c)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_name("GPIO14")
	.dwattr $C$DW$139, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$139, DW_AT_bit_size(0x01)
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$139, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0xb74)
	.dwattr $C$DW$139, DW_AT_decl_column(0x0c)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_name("GPIO15")
	.dwattr $C$DW$140, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$140, DW_AT_bit_size(0x01)
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$140, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0xb75)
	.dwattr $C$DW$140, DW_AT_decl_column(0x0c)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_name("GPIO16")
	.dwattr $C$DW$141, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$141, DW_AT_bit_size(0x01)
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$141, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0xb76)
	.dwattr $C$DW$141, DW_AT_decl_column(0x0c)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_name("GPIO17")
	.dwattr $C$DW$142, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$142, DW_AT_bit_size(0x01)
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$142, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0xb77)
	.dwattr $C$DW$142, DW_AT_decl_column(0x0c)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_name("GPIO18")
	.dwattr $C$DW$143, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$143, DW_AT_bit_size(0x01)
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$143, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0xb78)
	.dwattr $C$DW$143, DW_AT_decl_column(0x0c)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_name("GPIO19")
	.dwattr $C$DW$144, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$144, DW_AT_bit_size(0x01)
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$144, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0xb79)
	.dwattr $C$DW$144, DW_AT_decl_column(0x0c)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_name("GPIO20")
	.dwattr $C$DW$145, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$145, DW_AT_bit_size(0x01)
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$145, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0xb7a)
	.dwattr $C$DW$145, DW_AT_decl_column(0x0c)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_name("GPIO21")
	.dwattr $C$DW$146, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$146, DW_AT_bit_size(0x01)
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$146, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0xb7b)
	.dwattr $C$DW$146, DW_AT_decl_column(0x0c)

$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$147, DW_AT_name("GPIO22")
	.dwattr $C$DW$147, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$147, DW_AT_bit_size(0x01)
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$147, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0xb7c)
	.dwattr $C$DW$147, DW_AT_decl_column(0x0c)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_name("GPIO23")
	.dwattr $C$DW$148, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$148, DW_AT_bit_size(0x01)
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$148, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0xb7d)
	.dwattr $C$DW$148, DW_AT_decl_column(0x0c)

$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_name("GPIO24")
	.dwattr $C$DW$149, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$149, DW_AT_bit_size(0x01)
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$149, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0xb7e)
	.dwattr $C$DW$149, DW_AT_decl_column(0x0c)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$150, DW_AT_name("GPIO25")
	.dwattr $C$DW$150, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$150, DW_AT_bit_size(0x01)
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$150, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0xb7f)
	.dwattr $C$DW$150, DW_AT_decl_column(0x0c)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_name("GPIO26")
	.dwattr $C$DW$151, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$151, DW_AT_bit_size(0x01)
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$151, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0xb80)
	.dwattr $C$DW$151, DW_AT_decl_column(0x0c)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_name("GPIO27")
	.dwattr $C$DW$152, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$152, DW_AT_bit_size(0x01)
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$152, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0xb81)
	.dwattr $C$DW$152, DW_AT_decl_column(0x0c)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$153, DW_AT_name("GPIO28")
	.dwattr $C$DW$153, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$153, DW_AT_bit_size(0x01)
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$153, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$153, DW_AT_decl_line(0xb82)
	.dwattr $C$DW$153, DW_AT_decl_column(0x0c)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$154, DW_AT_name("GPIO29")
	.dwattr $C$DW$154, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$154, DW_AT_bit_size(0x01)
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$154, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$154, DW_AT_decl_line(0xb83)
	.dwattr $C$DW$154, DW_AT_decl_column(0x0c)

$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$155, DW_AT_name("GPIO30")
	.dwattr $C$DW$155, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$155, DW_AT_bit_size(0x01)
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$155, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$155, DW_AT_decl_line(0xb84)
	.dwattr $C$DW$155, DW_AT_decl_column(0x0c)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_name("GPIO31")
	.dwattr $C$DW$156, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$156, DW_AT_bit_size(0x01)
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$156, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$156, DW_AT_decl_line(0xb85)
	.dwattr $C$DW$156, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$25, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xb65)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$26, DW_AT_name("GPASET_REG")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x02)
$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$157, DW_AT_name("all")
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$157, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$157, DW_AT_decl_line(0xb89)
	.dwattr $C$DW$157, DW_AT_decl_column(0x0d)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$158, DW_AT_name("bit")
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$158, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$158, DW_AT_decl_line(0xb8a)
	.dwattr $C$DW$158, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$26, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0xb88)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27

$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_name("GPATOGGLE_BITS")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x02)
$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_name("GPIO0")
	.dwattr $C$DW$159, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$159, DW_AT_bit_size(0x01)
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$159, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$159, DW_AT_decl_line(0xbb6)
	.dwattr $C$DW$159, DW_AT_decl_column(0x0c)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_name("GPIO1")
	.dwattr $C$DW$160, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$160, DW_AT_bit_size(0x01)
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$160, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$160, DW_AT_decl_line(0xbb7)
	.dwattr $C$DW$160, DW_AT_decl_column(0x0c)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_name("GPIO2")
	.dwattr $C$DW$161, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$161, DW_AT_bit_size(0x01)
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$161, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$161, DW_AT_decl_line(0xbb8)
	.dwattr $C$DW$161, DW_AT_decl_column(0x0c)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_name("GPIO3")
	.dwattr $C$DW$162, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$162, DW_AT_bit_size(0x01)
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$162, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$162, DW_AT_decl_line(0xbb9)
	.dwattr $C$DW$162, DW_AT_decl_column(0x0c)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_name("GPIO4")
	.dwattr $C$DW$163, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$163, DW_AT_bit_size(0x01)
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$163, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$163, DW_AT_decl_line(0xbba)
	.dwattr $C$DW$163, DW_AT_decl_column(0x0c)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_name("GPIO5")
	.dwattr $C$DW$164, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$164, DW_AT_bit_size(0x01)
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$164, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$164, DW_AT_decl_line(0xbbb)
	.dwattr $C$DW$164, DW_AT_decl_column(0x0c)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_name("GPIO6")
	.dwattr $C$DW$165, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$165, DW_AT_bit_size(0x01)
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$165, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$165, DW_AT_decl_line(0xbbc)
	.dwattr $C$DW$165, DW_AT_decl_column(0x0c)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_name("GPIO7")
	.dwattr $C$DW$166, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$166, DW_AT_bit_size(0x01)
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$166, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$166, DW_AT_decl_line(0xbbd)
	.dwattr $C$DW$166, DW_AT_decl_column(0x0c)

$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$167, DW_AT_name("GPIO8")
	.dwattr $C$DW$167, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$167, DW_AT_bit_size(0x01)
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$167, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$167, DW_AT_decl_line(0xbbe)
	.dwattr $C$DW$167, DW_AT_decl_column(0x0c)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$168, DW_AT_name("GPIO9")
	.dwattr $C$DW$168, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$168, DW_AT_bit_size(0x01)
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$168, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$168, DW_AT_decl_line(0xbbf)
	.dwattr $C$DW$168, DW_AT_decl_column(0x0c)

$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$169, DW_AT_name("GPIO10")
	.dwattr $C$DW$169, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$169, DW_AT_bit_size(0x01)
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$169, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$169, DW_AT_decl_line(0xbc0)
	.dwattr $C$DW$169, DW_AT_decl_column(0x0c)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$170, DW_AT_name("GPIO11")
	.dwattr $C$DW$170, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$170, DW_AT_bit_size(0x01)
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$170, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$170, DW_AT_decl_line(0xbc1)
	.dwattr $C$DW$170, DW_AT_decl_column(0x0c)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$171, DW_AT_name("GPIO12")
	.dwattr $C$DW$171, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$171, DW_AT_bit_size(0x01)
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$171, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$171, DW_AT_decl_line(0xbc2)
	.dwattr $C$DW$171, DW_AT_decl_column(0x0c)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$172, DW_AT_name("GPIO13")
	.dwattr $C$DW$172, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$172, DW_AT_bit_size(0x01)
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$172, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$172, DW_AT_decl_line(0xbc3)
	.dwattr $C$DW$172, DW_AT_decl_column(0x0c)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_name("GPIO14")
	.dwattr $C$DW$173, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$173, DW_AT_bit_size(0x01)
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$173, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$173, DW_AT_decl_line(0xbc4)
	.dwattr $C$DW$173, DW_AT_decl_column(0x0c)

$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_name("GPIO15")
	.dwattr $C$DW$174, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$174, DW_AT_bit_size(0x01)
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$174, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$174, DW_AT_decl_line(0xbc5)
	.dwattr $C$DW$174, DW_AT_decl_column(0x0c)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_name("GPIO16")
	.dwattr $C$DW$175, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$175, DW_AT_bit_size(0x01)
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$175, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$175, DW_AT_decl_line(0xbc6)
	.dwattr $C$DW$175, DW_AT_decl_column(0x0c)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_name("GPIO17")
	.dwattr $C$DW$176, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$176, DW_AT_bit_size(0x01)
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$176, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$176, DW_AT_decl_line(0xbc7)
	.dwattr $C$DW$176, DW_AT_decl_column(0x0c)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$177, DW_AT_name("GPIO18")
	.dwattr $C$DW$177, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$177, DW_AT_bit_size(0x01)
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$177, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$177, DW_AT_decl_line(0xbc8)
	.dwattr $C$DW$177, DW_AT_decl_column(0x0c)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$178, DW_AT_name("GPIO19")
	.dwattr $C$DW$178, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$178, DW_AT_bit_size(0x01)
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$178, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$178, DW_AT_decl_line(0xbc9)
	.dwattr $C$DW$178, DW_AT_decl_column(0x0c)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_name("GPIO20")
	.dwattr $C$DW$179, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$179, DW_AT_bit_size(0x01)
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$179, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$179, DW_AT_decl_line(0xbca)
	.dwattr $C$DW$179, DW_AT_decl_column(0x0c)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$180, DW_AT_name("GPIO21")
	.dwattr $C$DW$180, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$180, DW_AT_bit_size(0x01)
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$180, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$180, DW_AT_decl_line(0xbcb)
	.dwattr $C$DW$180, DW_AT_decl_column(0x0c)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_name("GPIO22")
	.dwattr $C$DW$181, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$181, DW_AT_bit_size(0x01)
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$181, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$181, DW_AT_decl_line(0xbcc)
	.dwattr $C$DW$181, DW_AT_decl_column(0x0c)

$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$182, DW_AT_name("GPIO23")
	.dwattr $C$DW$182, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$182, DW_AT_bit_size(0x01)
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$182, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$182, DW_AT_decl_line(0xbcd)
	.dwattr $C$DW$182, DW_AT_decl_column(0x0c)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_name("GPIO24")
	.dwattr $C$DW$183, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$183, DW_AT_bit_size(0x01)
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$183, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$183, DW_AT_decl_line(0xbce)
	.dwattr $C$DW$183, DW_AT_decl_column(0x0c)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$184, DW_AT_name("GPIO25")
	.dwattr $C$DW$184, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$184, DW_AT_bit_size(0x01)
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$184, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$184, DW_AT_decl_line(0xbcf)
	.dwattr $C$DW$184, DW_AT_decl_column(0x0c)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$185, DW_AT_name("GPIO26")
	.dwattr $C$DW$185, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$185, DW_AT_bit_size(0x01)
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$185, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$185, DW_AT_decl_line(0xbd0)
	.dwattr $C$DW$185, DW_AT_decl_column(0x0c)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$186, DW_AT_name("GPIO27")
	.dwattr $C$DW$186, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$186, DW_AT_bit_size(0x01)
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$186, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$186, DW_AT_decl_line(0xbd1)
	.dwattr $C$DW$186, DW_AT_decl_column(0x0c)

$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$187, DW_AT_name("GPIO28")
	.dwattr $C$DW$187, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$187, DW_AT_bit_size(0x01)
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$187, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0xbd2)
	.dwattr $C$DW$187, DW_AT_decl_column(0x0c)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$188, DW_AT_name("GPIO29")
	.dwattr $C$DW$188, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$188, DW_AT_bit_size(0x01)
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$188, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$188, DW_AT_decl_line(0xbd3)
	.dwattr $C$DW$188, DW_AT_decl_column(0x0c)

$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_name("GPIO30")
	.dwattr $C$DW$189, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$189, DW_AT_bit_size(0x01)
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$189, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$189, DW_AT_decl_line(0xbd4)
	.dwattr $C$DW$189, DW_AT_decl_column(0x0c)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_name("GPIO31")
	.dwattr $C$DW$190, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$190, DW_AT_bit_size(0x01)
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$190, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$190, DW_AT_decl_line(0xbd5)
	.dwattr $C$DW$190, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$27, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0xbb5)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$28, DW_AT_name("GPATOGGLE_REG")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x02)
$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$191, DW_AT_name("all")
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$191, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0xbd9)
	.dwattr $C$DW$191, DW_AT_decl_column(0x0d)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$192, DW_AT_name("bit")
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$192, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0xbda)
	.dwattr $C$DW$192, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$28, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0xbd8)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("GPBCLEAR_BITS")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x02)
$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$193, DW_AT_name("GPIO32")
	.dwattr $C$DW$193, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$193, DW_AT_bit_size(0x01)
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$193, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$193, DW_AT_decl_line(0xc2e)
	.dwattr $C$DW$193, DW_AT_decl_column(0x0c)

$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$194, DW_AT_name("GPIO33")
	.dwattr $C$DW$194, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$194, DW_AT_bit_size(0x01)
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$194, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$194, DW_AT_decl_line(0xc2f)
	.dwattr $C$DW$194, DW_AT_decl_column(0x0c)

$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$195, DW_AT_name("GPIO34")
	.dwattr $C$DW$195, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$195, DW_AT_bit_size(0x01)
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$195, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0xc30)
	.dwattr $C$DW$195, DW_AT_decl_column(0x0c)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_name("GPIO35")
	.dwattr $C$DW$196, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$196, DW_AT_bit_size(0x01)
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$196, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0xc31)
	.dwattr $C$DW$196, DW_AT_decl_column(0x0c)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$197, DW_AT_name("GPIO36")
	.dwattr $C$DW$197, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$197, DW_AT_bit_size(0x01)
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$197, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$197, DW_AT_decl_line(0xc32)
	.dwattr $C$DW$197, DW_AT_decl_column(0x0c)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_name("GPIO37")
	.dwattr $C$DW$198, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$198, DW_AT_bit_size(0x01)
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$198, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$198, DW_AT_decl_line(0xc33)
	.dwattr $C$DW$198, DW_AT_decl_column(0x0c)

$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_name("GPIO38")
	.dwattr $C$DW$199, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$199, DW_AT_bit_size(0x01)
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$199, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$199, DW_AT_decl_line(0xc34)
	.dwattr $C$DW$199, DW_AT_decl_column(0x0c)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_name("GPIO39")
	.dwattr $C$DW$200, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$200, DW_AT_bit_size(0x01)
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$200, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$200, DW_AT_decl_line(0xc35)
	.dwattr $C$DW$200, DW_AT_decl_column(0x0c)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_name("GPIO40")
	.dwattr $C$DW$201, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$201, DW_AT_bit_size(0x01)
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$201, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$201, DW_AT_decl_line(0xc36)
	.dwattr $C$DW$201, DW_AT_decl_column(0x0c)

$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_name("GPIO41")
	.dwattr $C$DW$202, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$202, DW_AT_bit_size(0x01)
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$202, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$202, DW_AT_decl_line(0xc37)
	.dwattr $C$DW$202, DW_AT_decl_column(0x0c)

$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$203, DW_AT_name("GPIO42")
	.dwattr $C$DW$203, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$203, DW_AT_bit_size(0x01)
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$203, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$203, DW_AT_decl_line(0xc38)
	.dwattr $C$DW$203, DW_AT_decl_column(0x0c)

$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$204, DW_AT_name("GPIO43")
	.dwattr $C$DW$204, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$204, DW_AT_bit_size(0x01)
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$204, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$204, DW_AT_decl_line(0xc39)
	.dwattr $C$DW$204, DW_AT_decl_column(0x0c)

$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$205, DW_AT_name("GPIO44")
	.dwattr $C$DW$205, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$205, DW_AT_bit_size(0x01)
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$205, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$205, DW_AT_decl_line(0xc3a)
	.dwattr $C$DW$205, DW_AT_decl_column(0x0c)

$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$206, DW_AT_name("GPIO45")
	.dwattr $C$DW$206, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$206, DW_AT_bit_size(0x01)
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$206, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$206, DW_AT_decl_line(0xc3b)
	.dwattr $C$DW$206, DW_AT_decl_column(0x0c)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_name("GPIO46")
	.dwattr $C$DW$207, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$207, DW_AT_bit_size(0x01)
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$207, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$207, DW_AT_decl_line(0xc3c)
	.dwattr $C$DW$207, DW_AT_decl_column(0x0c)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$208, DW_AT_name("GPIO47")
	.dwattr $C$DW$208, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$208, DW_AT_bit_size(0x01)
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$208, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$208, DW_AT_decl_line(0xc3d)
	.dwattr $C$DW$208, DW_AT_decl_column(0x0c)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$209, DW_AT_name("GPIO48")
	.dwattr $C$DW$209, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$209, DW_AT_bit_size(0x01)
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$209, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$209, DW_AT_decl_line(0xc3e)
	.dwattr $C$DW$209, DW_AT_decl_column(0x0c)

$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$210, DW_AT_name("GPIO49")
	.dwattr $C$DW$210, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$210, DW_AT_bit_size(0x01)
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$210, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$210, DW_AT_decl_line(0xc3f)
	.dwattr $C$DW$210, DW_AT_decl_column(0x0c)

$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$211, DW_AT_name("GPIO50")
	.dwattr $C$DW$211, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$211, DW_AT_bit_size(0x01)
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$211, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0xc40)
	.dwattr $C$DW$211, DW_AT_decl_column(0x0c)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_name("GPIO51")
	.dwattr $C$DW$212, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$212, DW_AT_bit_size(0x01)
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$212, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$212, DW_AT_decl_line(0xc41)
	.dwattr $C$DW$212, DW_AT_decl_column(0x0c)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_name("GPIO52")
	.dwattr $C$DW$213, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$213, DW_AT_bit_size(0x01)
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$213, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$213, DW_AT_decl_line(0xc42)
	.dwattr $C$DW$213, DW_AT_decl_column(0x0c)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_name("GPIO53")
	.dwattr $C$DW$214, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$214, DW_AT_bit_size(0x01)
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$214, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$214, DW_AT_decl_line(0xc43)
	.dwattr $C$DW$214, DW_AT_decl_column(0x0c)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$215, DW_AT_name("GPIO54")
	.dwattr $C$DW$215, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$215, DW_AT_bit_size(0x01)
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$215, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$215, DW_AT_decl_line(0xc44)
	.dwattr $C$DW$215, DW_AT_decl_column(0x0c)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$216, DW_AT_name("GPIO55")
	.dwattr $C$DW$216, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$216, DW_AT_bit_size(0x01)
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$216, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$216, DW_AT_decl_line(0xc45)
	.dwattr $C$DW$216, DW_AT_decl_column(0x0c)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$217, DW_AT_name("GPIO56")
	.dwattr $C$DW$217, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$217, DW_AT_bit_size(0x01)
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$217, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$217, DW_AT_decl_line(0xc46)
	.dwattr $C$DW$217, DW_AT_decl_column(0x0c)

$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_name("GPIO57")
	.dwattr $C$DW$218, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$218, DW_AT_bit_size(0x01)
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$218, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$218, DW_AT_decl_line(0xc47)
	.dwattr $C$DW$218, DW_AT_decl_column(0x0c)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_name("GPIO58")
	.dwattr $C$DW$219, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$219, DW_AT_bit_size(0x01)
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$219, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$219, DW_AT_decl_line(0xc48)
	.dwattr $C$DW$219, DW_AT_decl_column(0x0c)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_name("GPIO59")
	.dwattr $C$DW$220, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$220, DW_AT_bit_size(0x01)
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$220, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$220, DW_AT_decl_line(0xc49)
	.dwattr $C$DW$220, DW_AT_decl_column(0x0c)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$221, DW_AT_name("GPIO60")
	.dwattr $C$DW$221, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$221, DW_AT_bit_size(0x01)
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$221, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$221, DW_AT_decl_line(0xc4a)
	.dwattr $C$DW$221, DW_AT_decl_column(0x0c)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$222, DW_AT_name("GPIO61")
	.dwattr $C$DW$222, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$222, DW_AT_bit_size(0x01)
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$222, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$222, DW_AT_decl_line(0xc4b)
	.dwattr $C$DW$222, DW_AT_decl_column(0x0c)

$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$223, DW_AT_name("GPIO62")
	.dwattr $C$DW$223, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$223, DW_AT_bit_size(0x01)
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$223, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$223, DW_AT_decl_line(0xc4c)
	.dwattr $C$DW$223, DW_AT_decl_column(0x0c)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$224, DW_AT_name("GPIO63")
	.dwattr $C$DW$224, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$224, DW_AT_bit_size(0x01)
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$224, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$224, DW_AT_decl_line(0xc4d)
	.dwattr $C$DW$224, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$29, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0xc2d)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$30, DW_AT_name("GPBCLEAR_REG")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x02)
$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$225, DW_AT_name("all")
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$225, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$225, DW_AT_decl_line(0xc51)
	.dwattr $C$DW$225, DW_AT_decl_column(0x0d)

$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$226, DW_AT_name("bit")
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$226, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$226, DW_AT_decl_line(0xc52)
	.dwattr $C$DW$226, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$30, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0xc50)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("GPBDAT_BITS")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x02)
$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_name("GPIO32")
	.dwattr $C$DW$227, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$227, DW_AT_bit_size(0x01)
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$227, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$227, DW_AT_decl_line(0xbde)
	.dwattr $C$DW$227, DW_AT_decl_column(0x0c)

$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_name("GPIO33")
	.dwattr $C$DW$228, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$228, DW_AT_bit_size(0x01)
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$228, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$228, DW_AT_decl_line(0xbdf)
	.dwattr $C$DW$228, DW_AT_decl_column(0x0c)

$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_name("GPIO34")
	.dwattr $C$DW$229, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$229, DW_AT_bit_size(0x01)
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$229, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$229, DW_AT_decl_line(0xbe0)
	.dwattr $C$DW$229, DW_AT_decl_column(0x0c)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_name("GPIO35")
	.dwattr $C$DW$230, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$230, DW_AT_bit_size(0x01)
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$230, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$230, DW_AT_decl_line(0xbe1)
	.dwattr $C$DW$230, DW_AT_decl_column(0x0c)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_name("GPIO36")
	.dwattr $C$DW$231, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$231, DW_AT_bit_size(0x01)
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$231, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$231, DW_AT_decl_line(0xbe2)
	.dwattr $C$DW$231, DW_AT_decl_column(0x0c)

$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$232, DW_AT_name("GPIO37")
	.dwattr $C$DW$232, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$232, DW_AT_bit_size(0x01)
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$232, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$232, DW_AT_decl_line(0xbe3)
	.dwattr $C$DW$232, DW_AT_decl_column(0x0c)

$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_name("GPIO38")
	.dwattr $C$DW$233, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$233, DW_AT_bit_size(0x01)
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$233, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$233, DW_AT_decl_line(0xbe4)
	.dwattr $C$DW$233, DW_AT_decl_column(0x0c)

$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$234, DW_AT_name("GPIO39")
	.dwattr $C$DW$234, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$234, DW_AT_bit_size(0x01)
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$234, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$234, DW_AT_decl_line(0xbe5)
	.dwattr $C$DW$234, DW_AT_decl_column(0x0c)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$235, DW_AT_name("GPIO40")
	.dwattr $C$DW$235, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$235, DW_AT_bit_size(0x01)
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$235, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$235, DW_AT_decl_line(0xbe6)
	.dwattr $C$DW$235, DW_AT_decl_column(0x0c)

$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$236, DW_AT_name("GPIO41")
	.dwattr $C$DW$236, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$236, DW_AT_bit_size(0x01)
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$236, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$236, DW_AT_decl_line(0xbe7)
	.dwattr $C$DW$236, DW_AT_decl_column(0x0c)

$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$237, DW_AT_name("GPIO42")
	.dwattr $C$DW$237, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$237, DW_AT_bit_size(0x01)
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$237, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$237, DW_AT_decl_line(0xbe8)
	.dwattr $C$DW$237, DW_AT_decl_column(0x0c)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$238, DW_AT_name("GPIO43")
	.dwattr $C$DW$238, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$238, DW_AT_bit_size(0x01)
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$238, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$238, DW_AT_decl_line(0xbe9)
	.dwattr $C$DW$238, DW_AT_decl_column(0x0c)

$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$239, DW_AT_name("GPIO44")
	.dwattr $C$DW$239, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$239, DW_AT_bit_size(0x01)
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$239, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$239, DW_AT_decl_line(0xbea)
	.dwattr $C$DW$239, DW_AT_decl_column(0x0c)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_name("GPIO45")
	.dwattr $C$DW$240, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$240, DW_AT_bit_size(0x01)
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$240, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$240, DW_AT_decl_line(0xbeb)
	.dwattr $C$DW$240, DW_AT_decl_column(0x0c)

$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$241, DW_AT_name("GPIO46")
	.dwattr $C$DW$241, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$241, DW_AT_bit_size(0x01)
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$241, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$241, DW_AT_decl_line(0xbec)
	.dwattr $C$DW$241, DW_AT_decl_column(0x0c)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$242, DW_AT_name("GPIO47")
	.dwattr $C$DW$242, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$242, DW_AT_bit_size(0x01)
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$242, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$242, DW_AT_decl_line(0xbed)
	.dwattr $C$DW$242, DW_AT_decl_column(0x0c)

$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$243, DW_AT_name("GPIO48")
	.dwattr $C$DW$243, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$243, DW_AT_bit_size(0x01)
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$243, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$243, DW_AT_decl_line(0xbee)
	.dwattr $C$DW$243, DW_AT_decl_column(0x0c)

$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_name("GPIO49")
	.dwattr $C$DW$244, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$244, DW_AT_bit_size(0x01)
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$244, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$244, DW_AT_decl_line(0xbef)
	.dwattr $C$DW$244, DW_AT_decl_column(0x0c)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$245, DW_AT_name("GPIO50")
	.dwattr $C$DW$245, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$245, DW_AT_bit_size(0x01)
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$245, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$245, DW_AT_decl_line(0xbf0)
	.dwattr $C$DW$245, DW_AT_decl_column(0x0c)

$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$246, DW_AT_name("GPIO51")
	.dwattr $C$DW$246, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$246, DW_AT_bit_size(0x01)
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$246, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$246, DW_AT_decl_line(0xbf1)
	.dwattr $C$DW$246, DW_AT_decl_column(0x0c)

$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$247, DW_AT_name("GPIO52")
	.dwattr $C$DW$247, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$247, DW_AT_bit_size(0x01)
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$247, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$247, DW_AT_decl_line(0xbf2)
	.dwattr $C$DW$247, DW_AT_decl_column(0x0c)

$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$248, DW_AT_name("GPIO53")
	.dwattr $C$DW$248, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$248, DW_AT_bit_size(0x01)
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$248, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$248, DW_AT_decl_line(0xbf3)
	.dwattr $C$DW$248, DW_AT_decl_column(0x0c)

$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$249, DW_AT_name("GPIO54")
	.dwattr $C$DW$249, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$249, DW_AT_bit_size(0x01)
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$249, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$249, DW_AT_decl_line(0xbf4)
	.dwattr $C$DW$249, DW_AT_decl_column(0x0c)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$250, DW_AT_name("GPIO55")
	.dwattr $C$DW$250, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$250, DW_AT_bit_size(0x01)
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$250, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$250, DW_AT_decl_line(0xbf5)
	.dwattr $C$DW$250, DW_AT_decl_column(0x0c)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_name("GPIO56")
	.dwattr $C$DW$251, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$251, DW_AT_bit_size(0x01)
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$251, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$251, DW_AT_decl_line(0xbf6)
	.dwattr $C$DW$251, DW_AT_decl_column(0x0c)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$252, DW_AT_name("GPIO57")
	.dwattr $C$DW$252, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$252, DW_AT_bit_size(0x01)
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$252, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$252, DW_AT_decl_line(0xbf7)
	.dwattr $C$DW$252, DW_AT_decl_column(0x0c)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$253, DW_AT_name("GPIO58")
	.dwattr $C$DW$253, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$253, DW_AT_bit_size(0x01)
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$253, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$253, DW_AT_decl_line(0xbf8)
	.dwattr $C$DW$253, DW_AT_decl_column(0x0c)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$254, DW_AT_name("GPIO59")
	.dwattr $C$DW$254, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$254, DW_AT_bit_size(0x01)
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$254, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$254, DW_AT_decl_line(0xbf9)
	.dwattr $C$DW$254, DW_AT_decl_column(0x0c)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$255, DW_AT_name("GPIO60")
	.dwattr $C$DW$255, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$255, DW_AT_bit_size(0x01)
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$255, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$255, DW_AT_decl_line(0xbfa)
	.dwattr $C$DW$255, DW_AT_decl_column(0x0c)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$256, DW_AT_name("GPIO61")
	.dwattr $C$DW$256, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$256, DW_AT_bit_size(0x01)
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$256, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$256, DW_AT_decl_line(0xbfb)
	.dwattr $C$DW$256, DW_AT_decl_column(0x0c)

$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$257, DW_AT_name("GPIO62")
	.dwattr $C$DW$257, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$257, DW_AT_bit_size(0x01)
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$257, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$257, DW_AT_decl_line(0xbfc)
	.dwattr $C$DW$257, DW_AT_decl_column(0x0c)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$258, DW_AT_name("GPIO63")
	.dwattr $C$DW$258, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$258, DW_AT_bit_size(0x01)
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$258, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$258, DW_AT_decl_line(0xbfd)
	.dwattr $C$DW$258, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$31, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0xbdd)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$32, DW_AT_name("GPBDAT_REG")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x02)
$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$259, DW_AT_name("all")
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$259, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$259, DW_AT_decl_line(0xc01)
	.dwattr $C$DW$259, DW_AT_decl_column(0x0d)

$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$260, DW_AT_name("bit")
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$260, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$260, DW_AT_decl_line(0xc02)
	.dwattr $C$DW$260, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$32, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0xc00)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("GPBSET_BITS")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x02)
$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_name("GPIO32")
	.dwattr $C$DW$261, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$261, DW_AT_bit_size(0x01)
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$261, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$261, DW_AT_decl_line(0xc06)
	.dwattr $C$DW$261, DW_AT_decl_column(0x0c)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_name("GPIO33")
	.dwattr $C$DW$262, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$262, DW_AT_bit_size(0x01)
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$262, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$262, DW_AT_decl_line(0xc07)
	.dwattr $C$DW$262, DW_AT_decl_column(0x0c)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_name("GPIO34")
	.dwattr $C$DW$263, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$263, DW_AT_bit_size(0x01)
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$263, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0xc08)
	.dwattr $C$DW$263, DW_AT_decl_column(0x0c)

$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_name("GPIO35")
	.dwattr $C$DW$264, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$264, DW_AT_bit_size(0x01)
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$264, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$264, DW_AT_decl_line(0xc09)
	.dwattr $C$DW$264, DW_AT_decl_column(0x0c)

$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_name("GPIO36")
	.dwattr $C$DW$265, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$265, DW_AT_bit_size(0x01)
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$265, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$265, DW_AT_decl_line(0xc0a)
	.dwattr $C$DW$265, DW_AT_decl_column(0x0c)

$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$266, DW_AT_name("GPIO37")
	.dwattr $C$DW$266, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$266, DW_AT_bit_size(0x01)
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$266, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$266, DW_AT_decl_line(0xc0b)
	.dwattr $C$DW$266, DW_AT_decl_column(0x0c)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_name("GPIO38")
	.dwattr $C$DW$267, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$267, DW_AT_bit_size(0x01)
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$267, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$267, DW_AT_decl_line(0xc0c)
	.dwattr $C$DW$267, DW_AT_decl_column(0x0c)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$268, DW_AT_name("GPIO39")
	.dwattr $C$DW$268, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$268, DW_AT_bit_size(0x01)
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$268, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$268, DW_AT_decl_line(0xc0d)
	.dwattr $C$DW$268, DW_AT_decl_column(0x0c)

$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$269, DW_AT_name("GPIO40")
	.dwattr $C$DW$269, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$269, DW_AT_bit_size(0x01)
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$269, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$269, DW_AT_decl_line(0xc0e)
	.dwattr $C$DW$269, DW_AT_decl_column(0x0c)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$270, DW_AT_name("GPIO41")
	.dwattr $C$DW$270, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$270, DW_AT_bit_size(0x01)
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$270, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$270, DW_AT_decl_line(0xc0f)
	.dwattr $C$DW$270, DW_AT_decl_column(0x0c)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$271, DW_AT_name("GPIO42")
	.dwattr $C$DW$271, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$271, DW_AT_bit_size(0x01)
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$271, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0xc10)
	.dwattr $C$DW$271, DW_AT_decl_column(0x0c)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$272, DW_AT_name("GPIO43")
	.dwattr $C$DW$272, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$272, DW_AT_bit_size(0x01)
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$272, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$272, DW_AT_decl_line(0xc11)
	.dwattr $C$DW$272, DW_AT_decl_column(0x0c)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$273, DW_AT_name("GPIO44")
	.dwattr $C$DW$273, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$273, DW_AT_bit_size(0x01)
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$273, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$273, DW_AT_decl_line(0xc12)
	.dwattr $C$DW$273, DW_AT_decl_column(0x0c)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$274, DW_AT_name("GPIO45")
	.dwattr $C$DW$274, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$274, DW_AT_bit_size(0x01)
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$274, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$274, DW_AT_decl_line(0xc13)
	.dwattr $C$DW$274, DW_AT_decl_column(0x0c)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$275, DW_AT_name("GPIO46")
	.dwattr $C$DW$275, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$275, DW_AT_bit_size(0x01)
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$275, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$275, DW_AT_decl_line(0xc14)
	.dwattr $C$DW$275, DW_AT_decl_column(0x0c)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$276, DW_AT_name("GPIO47")
	.dwattr $C$DW$276, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$276, DW_AT_bit_size(0x01)
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$276, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0xc15)
	.dwattr $C$DW$276, DW_AT_decl_column(0x0c)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$277, DW_AT_name("GPIO48")
	.dwattr $C$DW$277, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$277, DW_AT_bit_size(0x01)
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$277, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$277, DW_AT_decl_line(0xc16)
	.dwattr $C$DW$277, DW_AT_decl_column(0x0c)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$278, DW_AT_name("GPIO49")
	.dwattr $C$DW$278, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$278, DW_AT_bit_size(0x01)
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$278, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$278, DW_AT_decl_line(0xc17)
	.dwattr $C$DW$278, DW_AT_decl_column(0x0c)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$279, DW_AT_name("GPIO50")
	.dwattr $C$DW$279, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$279, DW_AT_bit_size(0x01)
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$279, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$279, DW_AT_decl_line(0xc18)
	.dwattr $C$DW$279, DW_AT_decl_column(0x0c)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$280, DW_AT_name("GPIO51")
	.dwattr $C$DW$280, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$280, DW_AT_bit_size(0x01)
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$280, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0xc19)
	.dwattr $C$DW$280, DW_AT_decl_column(0x0c)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_name("GPIO52")
	.dwattr $C$DW$281, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$281, DW_AT_bit_size(0x01)
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$281, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$281, DW_AT_decl_line(0xc1a)
	.dwattr $C$DW$281, DW_AT_decl_column(0x0c)

$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("GPIO53")
	.dwattr $C$DW$282, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$282, DW_AT_bit_size(0x01)
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$282, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$282, DW_AT_decl_line(0xc1b)
	.dwattr $C$DW$282, DW_AT_decl_column(0x0c)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_name("GPIO54")
	.dwattr $C$DW$283, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$283, DW_AT_bit_size(0x01)
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$283, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$283, DW_AT_decl_line(0xc1c)
	.dwattr $C$DW$283, DW_AT_decl_column(0x0c)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$284, DW_AT_name("GPIO55")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$284, DW_AT_bit_size(0x01)
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$284, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$284, DW_AT_decl_line(0xc1d)
	.dwattr $C$DW$284, DW_AT_decl_column(0x0c)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$285, DW_AT_name("GPIO56")
	.dwattr $C$DW$285, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$285, DW_AT_bit_size(0x01)
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$285, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$285, DW_AT_decl_line(0xc1e)
	.dwattr $C$DW$285, DW_AT_decl_column(0x0c)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$286, DW_AT_name("GPIO57")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$286, DW_AT_bit_size(0x01)
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$286, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$286, DW_AT_decl_line(0xc1f)
	.dwattr $C$DW$286, DW_AT_decl_column(0x0c)

$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("GPIO58")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$287, DW_AT_bit_size(0x01)
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$287, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$287, DW_AT_decl_line(0xc20)
	.dwattr $C$DW$287, DW_AT_decl_column(0x0c)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("GPIO59")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$288, DW_AT_bit_size(0x01)
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$288, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$288, DW_AT_decl_line(0xc21)
	.dwattr $C$DW$288, DW_AT_decl_column(0x0c)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("GPIO60")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$289, DW_AT_bit_size(0x01)
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$289, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$289, DW_AT_decl_line(0xc22)
	.dwattr $C$DW$289, DW_AT_decl_column(0x0c)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_name("GPIO61")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$290, DW_AT_bit_size(0x01)
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$290, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$290, DW_AT_decl_line(0xc23)
	.dwattr $C$DW$290, DW_AT_decl_column(0x0c)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("GPIO62")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$291, DW_AT_bit_size(0x01)
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$291, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$291, DW_AT_decl_line(0xc24)
	.dwattr $C$DW$291, DW_AT_decl_column(0x0c)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("GPIO63")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$292, DW_AT_bit_size(0x01)
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$292, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$292, DW_AT_decl_line(0xc25)
	.dwattr $C$DW$292, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$33, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0xc05)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$34, DW_AT_name("GPBSET_REG")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x02)
$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$293, DW_AT_name("all")
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$293, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$293, DW_AT_decl_line(0xc29)
	.dwattr $C$DW$293, DW_AT_decl_column(0x0d)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$294, DW_AT_name("bit")
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$294, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0xc2a)
	.dwattr $C$DW$294, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$34, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0xc28)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("GPBTOGGLE_BITS")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x02)
$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("GPIO32")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$295, DW_AT_bit_size(0x01)
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$295, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$295, DW_AT_decl_line(0xc56)
	.dwattr $C$DW$295, DW_AT_decl_column(0x0c)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_name("GPIO33")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$296, DW_AT_bit_size(0x01)
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$296, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$296, DW_AT_decl_line(0xc57)
	.dwattr $C$DW$296, DW_AT_decl_column(0x0c)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_name("GPIO34")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$297, DW_AT_bit_size(0x01)
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$297, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$297, DW_AT_decl_line(0xc58)
	.dwattr $C$DW$297, DW_AT_decl_column(0x0c)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("GPIO35")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$298, DW_AT_bit_size(0x01)
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$298, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0xc59)
	.dwattr $C$DW$298, DW_AT_decl_column(0x0c)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_name("GPIO36")
	.dwattr $C$DW$299, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$299, DW_AT_bit_size(0x01)
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$299, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$299, DW_AT_decl_line(0xc5a)
	.dwattr $C$DW$299, DW_AT_decl_column(0x0c)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$300, DW_AT_name("GPIO37")
	.dwattr $C$DW$300, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$300, DW_AT_bit_size(0x01)
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$300, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$300, DW_AT_decl_line(0xc5b)
	.dwattr $C$DW$300, DW_AT_decl_column(0x0c)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_name("GPIO38")
	.dwattr $C$DW$301, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$301, DW_AT_bit_size(0x01)
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$301, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$301, DW_AT_decl_line(0xc5c)
	.dwattr $C$DW$301, DW_AT_decl_column(0x0c)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_name("GPIO39")
	.dwattr $C$DW$302, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$302, DW_AT_bit_size(0x01)
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$302, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$302, DW_AT_decl_line(0xc5d)
	.dwattr $C$DW$302, DW_AT_decl_column(0x0c)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$303, DW_AT_name("GPIO40")
	.dwattr $C$DW$303, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$303, DW_AT_bit_size(0x01)
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$303, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$303, DW_AT_decl_line(0xc5e)
	.dwattr $C$DW$303, DW_AT_decl_column(0x0c)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("GPIO41")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$304, DW_AT_bit_size(0x01)
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$304, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$304, DW_AT_decl_line(0xc5f)
	.dwattr $C$DW$304, DW_AT_decl_column(0x0c)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$305, DW_AT_name("GPIO42")
	.dwattr $C$DW$305, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$305, DW_AT_bit_size(0x01)
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$305, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$305, DW_AT_decl_line(0xc60)
	.dwattr $C$DW$305, DW_AT_decl_column(0x0c)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$306, DW_AT_name("GPIO43")
	.dwattr $C$DW$306, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$306, DW_AT_bit_size(0x01)
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$306, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$306, DW_AT_decl_line(0xc61)
	.dwattr $C$DW$306, DW_AT_decl_column(0x0c)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$307, DW_AT_name("GPIO44")
	.dwattr $C$DW$307, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$307, DW_AT_bit_size(0x01)
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$307, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0xc62)
	.dwattr $C$DW$307, DW_AT_decl_column(0x0c)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$308, DW_AT_name("GPIO45")
	.dwattr $C$DW$308, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$308, DW_AT_bit_size(0x01)
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$308, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0xc63)
	.dwattr $C$DW$308, DW_AT_decl_column(0x0c)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$309, DW_AT_name("GPIO46")
	.dwattr $C$DW$309, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$309, DW_AT_bit_size(0x01)
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$309, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0xc64)
	.dwattr $C$DW$309, DW_AT_decl_column(0x0c)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$310, DW_AT_name("GPIO47")
	.dwattr $C$DW$310, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$310, DW_AT_bit_size(0x01)
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$310, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$310, DW_AT_decl_line(0xc65)
	.dwattr $C$DW$310, DW_AT_decl_column(0x0c)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_name("GPIO48")
	.dwattr $C$DW$311, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$311, DW_AT_bit_size(0x01)
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$311, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0xc66)
	.dwattr $C$DW$311, DW_AT_decl_column(0x0c)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_name("GPIO49")
	.dwattr $C$DW$312, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$312, DW_AT_bit_size(0x01)
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$312, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0xc67)
	.dwattr $C$DW$312, DW_AT_decl_column(0x0c)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_name("GPIO50")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$313, DW_AT_bit_size(0x01)
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$313, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$313, DW_AT_decl_line(0xc68)
	.dwattr $C$DW$313, DW_AT_decl_column(0x0c)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_name("GPIO51")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$314, DW_AT_bit_size(0x01)
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$314, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$314, DW_AT_decl_line(0xc69)
	.dwattr $C$DW$314, DW_AT_decl_column(0x0c)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$315, DW_AT_name("GPIO52")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$315, DW_AT_bit_size(0x01)
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$315, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0xc6a)
	.dwattr $C$DW$315, DW_AT_decl_column(0x0c)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_name("GPIO53")
	.dwattr $C$DW$316, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$316, DW_AT_bit_size(0x01)
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$316, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0xc6b)
	.dwattr $C$DW$316, DW_AT_decl_column(0x0c)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$317, DW_AT_name("GPIO54")
	.dwattr $C$DW$317, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$317, DW_AT_bit_size(0x01)
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$317, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$317, DW_AT_decl_line(0xc6c)
	.dwattr $C$DW$317, DW_AT_decl_column(0x0c)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$318, DW_AT_name("GPIO55")
	.dwattr $C$DW$318, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$318, DW_AT_bit_size(0x01)
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$318, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$318, DW_AT_decl_line(0xc6d)
	.dwattr $C$DW$318, DW_AT_decl_column(0x0c)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$319, DW_AT_name("GPIO56")
	.dwattr $C$DW$319, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$319, DW_AT_bit_size(0x01)
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$319, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$319, DW_AT_decl_line(0xc6e)
	.dwattr $C$DW$319, DW_AT_decl_column(0x0c)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_name("GPIO57")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$320, DW_AT_bit_size(0x01)
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$320, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$320, DW_AT_decl_line(0xc6f)
	.dwattr $C$DW$320, DW_AT_decl_column(0x0c)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$321, DW_AT_name("GPIO58")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$321, DW_AT_bit_size(0x01)
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$321, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$321, DW_AT_decl_line(0xc70)
	.dwattr $C$DW$321, DW_AT_decl_column(0x0c)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$322, DW_AT_name("GPIO59")
	.dwattr $C$DW$322, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$322, DW_AT_bit_size(0x01)
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$322, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$322, DW_AT_decl_line(0xc71)
	.dwattr $C$DW$322, DW_AT_decl_column(0x0c)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$323, DW_AT_name("GPIO60")
	.dwattr $C$DW$323, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$323, DW_AT_bit_size(0x01)
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$323, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$323, DW_AT_decl_line(0xc72)
	.dwattr $C$DW$323, DW_AT_decl_column(0x0c)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$324, DW_AT_name("GPIO61")
	.dwattr $C$DW$324, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$324, DW_AT_bit_size(0x01)
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$324, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$324, DW_AT_decl_line(0xc73)
	.dwattr $C$DW$324, DW_AT_decl_column(0x0c)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_name("GPIO62")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$325, DW_AT_bit_size(0x01)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$325, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$325, DW_AT_decl_line(0xc74)
	.dwattr $C$DW$325, DW_AT_decl_column(0x0c)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_name("GPIO63")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$326, DW_AT_bit_size(0x01)
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$326, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$326, DW_AT_decl_line(0xc75)
	.dwattr $C$DW$326, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$35, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0xc55)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$36, DW_AT_name("GPBTOGGLE_REG")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x02)
$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$327, DW_AT_name("all")
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$327, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0xc79)
	.dwattr $C$DW$327, DW_AT_decl_column(0x0d)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$328, DW_AT_name("bit")
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$328, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0xc7a)
	.dwattr $C$DW$328, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$36, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0xc78)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_name("GPCCLEAR_BITS")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x02)
$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$329, DW_AT_name("GPIO64")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$329, DW_AT_bit_size(0x01)
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$329, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0xcce)
	.dwattr $C$DW$329, DW_AT_decl_column(0x0c)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("GPIO65")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$330, DW_AT_bit_size(0x01)
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$330, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$330, DW_AT_decl_line(0xccf)
	.dwattr $C$DW$330, DW_AT_decl_column(0x0c)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$331, DW_AT_name("GPIO66")
	.dwattr $C$DW$331, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$331, DW_AT_bit_size(0x01)
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$331, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$331, DW_AT_decl_line(0xcd0)
	.dwattr $C$DW$331, DW_AT_decl_column(0x0c)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$332, DW_AT_name("GPIO67")
	.dwattr $C$DW$332, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$332, DW_AT_bit_size(0x01)
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$332, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$332, DW_AT_decl_line(0xcd1)
	.dwattr $C$DW$332, DW_AT_decl_column(0x0c)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$333, DW_AT_name("GPIO68")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$333, DW_AT_bit_size(0x01)
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$333, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$333, DW_AT_decl_line(0xcd2)
	.dwattr $C$DW$333, DW_AT_decl_column(0x0c)

$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$334, DW_AT_name("GPIO69")
	.dwattr $C$DW$334, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$334, DW_AT_bit_size(0x01)
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$334, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$334, DW_AT_decl_line(0xcd3)
	.dwattr $C$DW$334, DW_AT_decl_column(0x0c)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$335, DW_AT_name("GPIO70")
	.dwattr $C$DW$335, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$335, DW_AT_bit_size(0x01)
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$335, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$335, DW_AT_decl_line(0xcd4)
	.dwattr $C$DW$335, DW_AT_decl_column(0x0c)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_name("GPIO71")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$336, DW_AT_bit_size(0x01)
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$336, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$336, DW_AT_decl_line(0xcd5)
	.dwattr $C$DW$336, DW_AT_decl_column(0x0c)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$337, DW_AT_name("GPIO72")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$337, DW_AT_bit_size(0x01)
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$337, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$337, DW_AT_decl_line(0xcd6)
	.dwattr $C$DW$337, DW_AT_decl_column(0x0c)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$338, DW_AT_name("GPIO73")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$338, DW_AT_bit_size(0x01)
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$338, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$338, DW_AT_decl_line(0xcd7)
	.dwattr $C$DW$338, DW_AT_decl_column(0x0c)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("GPIO74")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$339, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$339, DW_AT_decl_line(0xcd8)
	.dwattr $C$DW$339, DW_AT_decl_column(0x0c)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("GPIO75")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$340, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$340, DW_AT_decl_line(0xcd9)
	.dwattr $C$DW$340, DW_AT_decl_column(0x0c)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("GPIO76")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$341, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$341, DW_AT_decl_line(0xcda)
	.dwattr $C$DW$341, DW_AT_decl_column(0x0c)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("GPIO77")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$342, DW_AT_bit_size(0x01)
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$342, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$342, DW_AT_decl_line(0xcdb)
	.dwattr $C$DW$342, DW_AT_decl_column(0x0c)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_name("GPIO78")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$343, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$343, DW_AT_decl_line(0xcdc)
	.dwattr $C$DW$343, DW_AT_decl_column(0x0c)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("GPIO79")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$344, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0xcdd)
	.dwattr $C$DW$344, DW_AT_decl_column(0x0c)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_name("GPIO80")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$345, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$345, DW_AT_decl_line(0xcde)
	.dwattr $C$DW$345, DW_AT_decl_column(0x0c)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("GPIO81")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$346, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0xcdf)
	.dwattr $C$DW$346, DW_AT_decl_column(0x0c)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("GPIO82")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$347, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$347, DW_AT_decl_line(0xce0)
	.dwattr $C$DW$347, DW_AT_decl_column(0x0c)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("GPIO83")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$348, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$348, DW_AT_decl_line(0xce1)
	.dwattr $C$DW$348, DW_AT_decl_column(0x0c)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("GPIO84")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$349, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0xce2)
	.dwattr $C$DW$349, DW_AT_decl_column(0x0c)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_name("GPIO85")
	.dwattr $C$DW$350, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$350, DW_AT_bit_size(0x01)
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$350, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0xce3)
	.dwattr $C$DW$350, DW_AT_decl_column(0x0c)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$351, DW_AT_name("GPIO86")
	.dwattr $C$DW$351, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$351, DW_AT_bit_size(0x01)
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$351, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$351, DW_AT_decl_line(0xce4)
	.dwattr $C$DW$351, DW_AT_decl_column(0x0c)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$352, DW_AT_name("GPIO87")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$352, DW_AT_bit_size(0x01)
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$352, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$352, DW_AT_decl_line(0xce5)
	.dwattr $C$DW$352, DW_AT_decl_column(0x0c)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$353, DW_AT_name("GPIO88")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$353, DW_AT_bit_size(0x01)
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$353, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0xce6)
	.dwattr $C$DW$353, DW_AT_decl_column(0x0c)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$354, DW_AT_name("GPIO89")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$354, DW_AT_bit_size(0x01)
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$354, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0xce7)
	.dwattr $C$DW$354, DW_AT_decl_column(0x0c)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$355, DW_AT_name("GPIO90")
	.dwattr $C$DW$355, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$355, DW_AT_bit_size(0x01)
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$355, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$355, DW_AT_decl_line(0xce8)
	.dwattr $C$DW$355, DW_AT_decl_column(0x0c)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$356, DW_AT_name("GPIO91")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$356, DW_AT_bit_size(0x01)
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$356, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0xce9)
	.dwattr $C$DW$356, DW_AT_decl_column(0x0c)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("GPIO92")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$357, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$357, DW_AT_decl_line(0xcea)
	.dwattr $C$DW$357, DW_AT_decl_column(0x0c)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$358, DW_AT_name("GPIO93")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$358, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0xceb)
	.dwattr $C$DW$358, DW_AT_decl_column(0x0c)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("GPIO94")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$359, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0xcec)
	.dwattr $C$DW$359, DW_AT_decl_column(0x0c)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("GPIO95")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$360, DW_AT_bit_size(0x01)
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$360, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0xced)
	.dwattr $C$DW$360, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$37, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0xccd)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$38, DW_AT_name("GPCCLEAR_REG")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x02)
$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$361, DW_AT_name("all")
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$361, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0xcf1)
	.dwattr $C$DW$361, DW_AT_decl_column(0x0d)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$362, DW_AT_name("bit")
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$362, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0xcf2)
	.dwattr $C$DW$362, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$38, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0xcf0)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_name("GPCDAT_BITS")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x02)
$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("GPIO64")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$363, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0xc7e)
	.dwattr $C$DW$363, DW_AT_decl_column(0x0c)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("GPIO65")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$364, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0xc7f)
	.dwattr $C$DW$364, DW_AT_decl_column(0x0c)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("GPIO66")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$365, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$365, DW_AT_decl_line(0xc80)
	.dwattr $C$DW$365, DW_AT_decl_column(0x0c)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$366, DW_AT_name("GPIO67")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$366, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0xc81)
	.dwattr $C$DW$366, DW_AT_decl_column(0x0c)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("GPIO68")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$367, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0xc82)
	.dwattr $C$DW$367, DW_AT_decl_column(0x0c)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("GPIO69")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$368, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0xc83)
	.dwattr $C$DW$368, DW_AT_decl_column(0x0c)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$369, DW_AT_name("GPIO70")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$369, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0xc84)
	.dwattr $C$DW$369, DW_AT_decl_column(0x0c)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$370, DW_AT_name("GPIO71")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$370, DW_AT_bit_size(0x01)
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$370, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0xc85)
	.dwattr $C$DW$370, DW_AT_decl_column(0x0c)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$371, DW_AT_name("GPIO72")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$371, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0xc86)
	.dwattr $C$DW$371, DW_AT_decl_column(0x0c)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_name("GPIO73")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$372, DW_AT_bit_size(0x01)
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$372, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0xc87)
	.dwattr $C$DW$372, DW_AT_decl_column(0x0c)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$373, DW_AT_name("GPIO74")
	.dwattr $C$DW$373, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$373, DW_AT_bit_size(0x01)
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$373, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0xc88)
	.dwattr $C$DW$373, DW_AT_decl_column(0x0c)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_name("GPIO75")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$374, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0xc89)
	.dwattr $C$DW$374, DW_AT_decl_column(0x0c)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_name("GPIO76")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$375, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0xc8a)
	.dwattr $C$DW$375, DW_AT_decl_column(0x0c)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("GPIO77")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$376, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0xc8b)
	.dwattr $C$DW$376, DW_AT_decl_column(0x0c)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("GPIO78")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$377, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0xc8c)
	.dwattr $C$DW$377, DW_AT_decl_column(0x0c)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_name("GPIO79")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$378, DW_AT_bit_size(0x01)
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$378, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0xc8d)
	.dwattr $C$DW$378, DW_AT_decl_column(0x0c)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("GPIO80")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$379, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0xc8e)
	.dwattr $C$DW$379, DW_AT_decl_column(0x0c)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("GPIO81")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$380, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0xc8f)
	.dwattr $C$DW$380, DW_AT_decl_column(0x0c)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_name("GPIO82")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$381, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0xc90)
	.dwattr $C$DW$381, DW_AT_decl_column(0x0c)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$382, DW_AT_name("GPIO83")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$382, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0xc91)
	.dwattr $C$DW$382, DW_AT_decl_column(0x0c)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_name("GPIO84")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$383, DW_AT_bit_size(0x01)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$383, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0xc92)
	.dwattr $C$DW$383, DW_AT_decl_column(0x0c)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_name("GPIO85")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$384, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0xc93)
	.dwattr $C$DW$384, DW_AT_decl_column(0x0c)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("GPIO86")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$385, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0xc94)
	.dwattr $C$DW$385, DW_AT_decl_column(0x0c)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("GPIO87")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$386, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0xc95)
	.dwattr $C$DW$386, DW_AT_decl_column(0x0c)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$387, DW_AT_name("GPIO88")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$387, DW_AT_bit_size(0x01)
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$387, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0xc96)
	.dwattr $C$DW$387, DW_AT_decl_column(0x0c)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("GPIO89")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$388, DW_AT_bit_size(0x01)
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$388, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0xc97)
	.dwattr $C$DW$388, DW_AT_decl_column(0x0c)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$389, DW_AT_name("GPIO90")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$389, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0xc98)
	.dwattr $C$DW$389, DW_AT_decl_column(0x0c)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_name("GPIO91")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$390, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0xc99)
	.dwattr $C$DW$390, DW_AT_decl_column(0x0c)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$391, DW_AT_name("GPIO92")
	.dwattr $C$DW$391, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$391, DW_AT_bit_size(0x01)
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$391, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0xc9a)
	.dwattr $C$DW$391, DW_AT_decl_column(0x0c)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$392, DW_AT_name("GPIO93")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$392, DW_AT_bit_size(0x01)
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$392, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0xc9b)
	.dwattr $C$DW$392, DW_AT_decl_column(0x0c)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$393, DW_AT_name("GPIO94")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$393, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0xc9c)
	.dwattr $C$DW$393, DW_AT_decl_column(0x0c)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_name("GPIO95")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$394, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0xc9d)
	.dwattr $C$DW$394, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$39, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0xc7d)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40

$C$DW$T$40	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$40, DW_AT_name("GPCDAT_REG")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x02)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$395, DW_AT_name("all")
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$395, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0xca1)
	.dwattr $C$DW$395, DW_AT_decl_column(0x0d)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$396, DW_AT_name("bit")
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$396, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0xca2)
	.dwattr $C$DW$396, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$40, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0xca0)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$40

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("GPCSET_BITS")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x02)
$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("GPIO64")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$397, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0xca6)
	.dwattr $C$DW$397, DW_AT_decl_column(0x0c)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("GPIO65")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$398, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0xca7)
	.dwattr $C$DW$398, DW_AT_decl_column(0x0c)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("GPIO66")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$399, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0xca8)
	.dwattr $C$DW$399, DW_AT_decl_column(0x0c)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("GPIO67")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$400, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0xca9)
	.dwattr $C$DW$400, DW_AT_decl_column(0x0c)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("GPIO68")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$401, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0xcaa)
	.dwattr $C$DW$401, DW_AT_decl_column(0x0c)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("GPIO69")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$402, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0xcab)
	.dwattr $C$DW$402, DW_AT_decl_column(0x0c)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("GPIO70")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$403, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0xcac)
	.dwattr $C$DW$403, DW_AT_decl_column(0x0c)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("GPIO71")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$404, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0xcad)
	.dwattr $C$DW$404, DW_AT_decl_column(0x0c)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("GPIO72")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$405, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0xcae)
	.dwattr $C$DW$405, DW_AT_decl_column(0x0c)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_name("GPIO73")
	.dwattr $C$DW$406, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$406, DW_AT_bit_size(0x01)
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$406, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0xcaf)
	.dwattr $C$DW$406, DW_AT_decl_column(0x0c)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_name("GPIO74")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$407, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0xcb0)
	.dwattr $C$DW$407, DW_AT_decl_column(0x0c)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("GPIO75")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$408, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0xcb1)
	.dwattr $C$DW$408, DW_AT_decl_column(0x0c)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$409, DW_AT_name("GPIO76")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$409, DW_AT_bit_size(0x01)
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$409, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0xcb2)
	.dwattr $C$DW$409, DW_AT_decl_column(0x0c)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_name("GPIO77")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$410, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0xcb3)
	.dwattr $C$DW$410, DW_AT_decl_column(0x0c)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$411, DW_AT_name("GPIO78")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$411, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0xcb4)
	.dwattr $C$DW$411, DW_AT_decl_column(0x0c)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("GPIO79")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$412, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0xcb5)
	.dwattr $C$DW$412, DW_AT_decl_column(0x0c)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("GPIO80")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$413, DW_AT_bit_size(0x01)
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$413, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0xcb6)
	.dwattr $C$DW$413, DW_AT_decl_column(0x0c)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("GPIO81")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$414, DW_AT_bit_size(0x01)
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$414, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0xcb7)
	.dwattr $C$DW$414, DW_AT_decl_column(0x0c)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("GPIO82")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$415, DW_AT_bit_size(0x01)
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$415, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0xcb8)
	.dwattr $C$DW$415, DW_AT_decl_column(0x0c)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$416, DW_AT_name("GPIO83")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$416, DW_AT_bit_size(0x01)
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$416, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0xcb9)
	.dwattr $C$DW$416, DW_AT_decl_column(0x0c)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("GPIO84")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$417, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0xcba)
	.dwattr $C$DW$417, DW_AT_decl_column(0x0c)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("GPIO85")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$418, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0xcbb)
	.dwattr $C$DW$418, DW_AT_decl_column(0x0c)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$419, DW_AT_name("GPIO86")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$419, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0xcbc)
	.dwattr $C$DW$419, DW_AT_decl_column(0x0c)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("GPIO87")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$420, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0xcbd)
	.dwattr $C$DW$420, DW_AT_decl_column(0x0c)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("GPIO88")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$421, DW_AT_bit_size(0x01)
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$421, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0xcbe)
	.dwattr $C$DW$421, DW_AT_decl_column(0x0c)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_name("GPIO89")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$422, DW_AT_bit_size(0x01)
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$422, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0xcbf)
	.dwattr $C$DW$422, DW_AT_decl_column(0x0c)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$423, DW_AT_name("GPIO90")
	.dwattr $C$DW$423, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$423, DW_AT_bit_size(0x01)
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$423, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0xcc0)
	.dwattr $C$DW$423, DW_AT_decl_column(0x0c)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$424, DW_AT_name("GPIO91")
	.dwattr $C$DW$424, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$424, DW_AT_bit_size(0x01)
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$424, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0xcc1)
	.dwattr $C$DW$424, DW_AT_decl_column(0x0c)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$425, DW_AT_name("GPIO92")
	.dwattr $C$DW$425, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$425, DW_AT_bit_size(0x01)
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$425, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0xcc2)
	.dwattr $C$DW$425, DW_AT_decl_column(0x0c)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_name("GPIO93")
	.dwattr $C$DW$426, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$426, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0xcc3)
	.dwattr $C$DW$426, DW_AT_decl_column(0x0c)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$427, DW_AT_name("GPIO94")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$427, DW_AT_bit_size(0x01)
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$427, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0xcc4)
	.dwattr $C$DW$427, DW_AT_decl_column(0x0c)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("GPIO95")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$428, DW_AT_bit_size(0x01)
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$428, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0xcc5)
	.dwattr $C$DW$428, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$41, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0xca5)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42

$C$DW$T$42	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$42, DW_AT_name("GPCSET_REG")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x02)
$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$429, DW_AT_name("all")
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$429, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0xcc9)
	.dwattr $C$DW$429, DW_AT_decl_column(0x0d)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$430, DW_AT_name("bit")
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$430, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0xcca)
	.dwattr $C$DW$430, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$42, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0xcc8)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$42

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("GPCTOGGLE_BITS")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x02)
$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("GPIO64")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$431, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0xcf6)
	.dwattr $C$DW$431, DW_AT_decl_column(0x0c)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("GPIO65")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$432, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0xcf7)
	.dwattr $C$DW$432, DW_AT_decl_column(0x0c)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$433, DW_AT_name("GPIO66")
	.dwattr $C$DW$433, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$433, DW_AT_bit_size(0x01)
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$433, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0xcf8)
	.dwattr $C$DW$433, DW_AT_decl_column(0x0c)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("GPIO67")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$434, DW_AT_bit_size(0x01)
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$434, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0xcf9)
	.dwattr $C$DW$434, DW_AT_decl_column(0x0c)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$435, DW_AT_name("GPIO68")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$435, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0xcfa)
	.dwattr $C$DW$435, DW_AT_decl_column(0x0c)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$436, DW_AT_name("GPIO69")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$436, DW_AT_bit_size(0x01)
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$436, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0xcfb)
	.dwattr $C$DW$436, DW_AT_decl_column(0x0c)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$437, DW_AT_name("GPIO70")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$437, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0xcfc)
	.dwattr $C$DW$437, DW_AT_decl_column(0x0c)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$438, DW_AT_name("GPIO71")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$438, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0xcfd)
	.dwattr $C$DW$438, DW_AT_decl_column(0x0c)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$439, DW_AT_name("GPIO72")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$439, DW_AT_bit_size(0x01)
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$439, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0xcfe)
	.dwattr $C$DW$439, DW_AT_decl_column(0x0c)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$440, DW_AT_name("GPIO73")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$440, DW_AT_bit_size(0x01)
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$440, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0xcff)
	.dwattr $C$DW$440, DW_AT_decl_column(0x0c)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$441, DW_AT_name("GPIO74")
	.dwattr $C$DW$441, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$441, DW_AT_bit_size(0x01)
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$441, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0xd00)
	.dwattr $C$DW$441, DW_AT_decl_column(0x0c)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$442, DW_AT_name("GPIO75")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$442, DW_AT_bit_size(0x01)
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$442, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0xd01)
	.dwattr $C$DW$442, DW_AT_decl_column(0x0c)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$443, DW_AT_name("GPIO76")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$443, DW_AT_bit_size(0x01)
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$443, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0xd02)
	.dwattr $C$DW$443, DW_AT_decl_column(0x0c)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$444, DW_AT_name("GPIO77")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$444, DW_AT_bit_size(0x01)
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$444, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0xd03)
	.dwattr $C$DW$444, DW_AT_decl_column(0x0c)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$445, DW_AT_name("GPIO78")
	.dwattr $C$DW$445, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$445, DW_AT_bit_size(0x01)
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$445, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0xd04)
	.dwattr $C$DW$445, DW_AT_decl_column(0x0c)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$446, DW_AT_name("GPIO79")
	.dwattr $C$DW$446, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$446, DW_AT_bit_size(0x01)
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$446, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0xd05)
	.dwattr $C$DW$446, DW_AT_decl_column(0x0c)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$447, DW_AT_name("GPIO80")
	.dwattr $C$DW$447, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$447, DW_AT_bit_size(0x01)
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$447, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0xd06)
	.dwattr $C$DW$447, DW_AT_decl_column(0x0c)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$448, DW_AT_name("GPIO81")
	.dwattr $C$DW$448, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$448, DW_AT_bit_size(0x01)
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$448, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0xd07)
	.dwattr $C$DW$448, DW_AT_decl_column(0x0c)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("GPIO82")
	.dwattr $C$DW$449, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$449, DW_AT_bit_size(0x01)
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$449, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0xd08)
	.dwattr $C$DW$449, DW_AT_decl_column(0x0c)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$450, DW_AT_name("GPIO83")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$450, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0xd09)
	.dwattr $C$DW$450, DW_AT_decl_column(0x0c)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("GPIO84")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$451, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0xd0a)
	.dwattr $C$DW$451, DW_AT_decl_column(0x0c)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_name("GPIO85")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$452, DW_AT_bit_size(0x01)
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$452, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0xd0b)
	.dwattr $C$DW$452, DW_AT_decl_column(0x0c)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("GPIO86")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$453, DW_AT_bit_size(0x01)
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$453, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0xd0c)
	.dwattr $C$DW$453, DW_AT_decl_column(0x0c)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$454, DW_AT_name("GPIO87")
	.dwattr $C$DW$454, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$454, DW_AT_bit_size(0x01)
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$454, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0xd0d)
	.dwattr $C$DW$454, DW_AT_decl_column(0x0c)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$455, DW_AT_name("GPIO88")
	.dwattr $C$DW$455, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$455, DW_AT_bit_size(0x01)
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$455, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0xd0e)
	.dwattr $C$DW$455, DW_AT_decl_column(0x0c)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("GPIO89")
	.dwattr $C$DW$456, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$456, DW_AT_bit_size(0x01)
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$456, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0xd0f)
	.dwattr $C$DW$456, DW_AT_decl_column(0x0c)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_name("GPIO90")
	.dwattr $C$DW$457, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$457, DW_AT_bit_size(0x01)
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$457, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0xd10)
	.dwattr $C$DW$457, DW_AT_decl_column(0x0c)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_name("GPIO91")
	.dwattr $C$DW$458, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$458, DW_AT_bit_size(0x01)
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$458, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0xd11)
	.dwattr $C$DW$458, DW_AT_decl_column(0x0c)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$459, DW_AT_name("GPIO92")
	.dwattr $C$DW$459, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$459, DW_AT_bit_size(0x01)
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$459, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0xd12)
	.dwattr $C$DW$459, DW_AT_decl_column(0x0c)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("GPIO93")
	.dwattr $C$DW$460, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$460, DW_AT_bit_size(0x01)
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$460, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0xd13)
	.dwattr $C$DW$460, DW_AT_decl_column(0x0c)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("GPIO94")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$461, DW_AT_bit_size(0x01)
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$461, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0xd14)
	.dwattr $C$DW$461, DW_AT_decl_column(0x0c)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("GPIO95")
	.dwattr $C$DW$462, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$462, DW_AT_bit_size(0x01)
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$462, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0xd15)
	.dwattr $C$DW$462, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$43, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0xcf5)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44

$C$DW$T$44	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$44, DW_AT_name("GPCTOGGLE_REG")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x02)
$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$463, DW_AT_name("all")
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$463, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0xd19)
	.dwattr $C$DW$463, DW_AT_decl_column(0x0d)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$464, DW_AT_name("bit")
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$464, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0xd1a)
	.dwattr $C$DW$464, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$44, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0xd18)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$44

	.dwendtag $C$DW$TU$44


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_name("GPDCLEAR_BITS")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x02)
$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("GPIO96")
	.dwattr $C$DW$465, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$465, DW_AT_bit_size(0x01)
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$465, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0xd6e)
	.dwattr $C$DW$465, DW_AT_decl_column(0x0c)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_name("GPIO97")
	.dwattr $C$DW$466, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$466, DW_AT_bit_size(0x01)
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$466, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0xd6f)
	.dwattr $C$DW$466, DW_AT_decl_column(0x0c)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("GPIO98")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$467, DW_AT_bit_size(0x01)
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$467, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0xd70)
	.dwattr $C$DW$467, DW_AT_decl_column(0x0c)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_name("GPIO99")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$468, DW_AT_bit_size(0x01)
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$468, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0xd71)
	.dwattr $C$DW$468, DW_AT_decl_column(0x0c)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("GPIO100")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$469, DW_AT_bit_size(0x01)
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$469, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0xd72)
	.dwattr $C$DW$469, DW_AT_decl_column(0x0c)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$470, DW_AT_name("GPIO101")
	.dwattr $C$DW$470, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$470, DW_AT_bit_size(0x01)
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$470, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0xd73)
	.dwattr $C$DW$470, DW_AT_decl_column(0x0c)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$471, DW_AT_name("GPIO102")
	.dwattr $C$DW$471, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$471, DW_AT_bit_size(0x01)
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$471, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0xd74)
	.dwattr $C$DW$471, DW_AT_decl_column(0x0c)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$472, DW_AT_name("GPIO103")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$472, DW_AT_bit_size(0x01)
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$472, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0xd75)
	.dwattr $C$DW$472, DW_AT_decl_column(0x0c)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_name("GPIO104")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$473, DW_AT_bit_size(0x01)
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$473, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0xd76)
	.dwattr $C$DW$473, DW_AT_decl_column(0x0c)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_name("GPIO105")
	.dwattr $C$DW$474, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$474, DW_AT_bit_size(0x01)
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$474, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0xd77)
	.dwattr $C$DW$474, DW_AT_decl_column(0x0c)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$475, DW_AT_name("GPIO106")
	.dwattr $C$DW$475, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$475, DW_AT_bit_size(0x01)
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$475, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0xd78)
	.dwattr $C$DW$475, DW_AT_decl_column(0x0c)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$476, DW_AT_name("GPIO107")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$476, DW_AT_bit_size(0x01)
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$476, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0xd79)
	.dwattr $C$DW$476, DW_AT_decl_column(0x0c)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$477, DW_AT_name("GPIO108")
	.dwattr $C$DW$477, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$477, DW_AT_bit_size(0x01)
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$477, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0xd7a)
	.dwattr $C$DW$477, DW_AT_decl_column(0x0c)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$478, DW_AT_name("GPIO109")
	.dwattr $C$DW$478, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$478, DW_AT_bit_size(0x01)
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$478, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0xd7b)
	.dwattr $C$DW$478, DW_AT_decl_column(0x0c)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$479, DW_AT_name("GPIO110")
	.dwattr $C$DW$479, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$479, DW_AT_bit_size(0x01)
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$479, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0xd7c)
	.dwattr $C$DW$479, DW_AT_decl_column(0x0c)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$480, DW_AT_name("GPIO111")
	.dwattr $C$DW$480, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$480, DW_AT_bit_size(0x01)
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$480, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$480, DW_AT_decl_line(0xd7d)
	.dwattr $C$DW$480, DW_AT_decl_column(0x0c)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$481, DW_AT_name("GPIO112")
	.dwattr $C$DW$481, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$481, DW_AT_bit_size(0x01)
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$481, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0xd7e)
	.dwattr $C$DW$481, DW_AT_decl_column(0x0c)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$482, DW_AT_name("GPIO113")
	.dwattr $C$DW$482, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$482, DW_AT_bit_size(0x01)
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$482, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0xd7f)
	.dwattr $C$DW$482, DW_AT_decl_column(0x0c)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$483, DW_AT_name("GPIO114")
	.dwattr $C$DW$483, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$483, DW_AT_bit_size(0x01)
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$483, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0xd80)
	.dwattr $C$DW$483, DW_AT_decl_column(0x0c)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$484, DW_AT_name("GPIO115")
	.dwattr $C$DW$484, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$484, DW_AT_bit_size(0x01)
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$484, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0xd81)
	.dwattr $C$DW$484, DW_AT_decl_column(0x0c)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$485, DW_AT_name("GPIO116")
	.dwattr $C$DW$485, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$485, DW_AT_bit_size(0x01)
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$485, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$485, DW_AT_decl_line(0xd82)
	.dwattr $C$DW$485, DW_AT_decl_column(0x0c)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$486, DW_AT_name("GPIO117")
	.dwattr $C$DW$486, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$486, DW_AT_bit_size(0x01)
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$486, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$486, DW_AT_decl_line(0xd83)
	.dwattr $C$DW$486, DW_AT_decl_column(0x0c)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$487, DW_AT_name("GPIO118")
	.dwattr $C$DW$487, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$487, DW_AT_bit_size(0x01)
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$487, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0xd84)
	.dwattr $C$DW$487, DW_AT_decl_column(0x0c)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$488, DW_AT_name("GPIO119")
	.dwattr $C$DW$488, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$488, DW_AT_bit_size(0x01)
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$488, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$488, DW_AT_decl_line(0xd85)
	.dwattr $C$DW$488, DW_AT_decl_column(0x0c)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$489, DW_AT_name("GPIO120")
	.dwattr $C$DW$489, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$489, DW_AT_bit_size(0x01)
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$489, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$489, DW_AT_decl_line(0xd86)
	.dwattr $C$DW$489, DW_AT_decl_column(0x0c)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$490, DW_AT_name("GPIO121")
	.dwattr $C$DW$490, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$490, DW_AT_bit_size(0x01)
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$490, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$490, DW_AT_decl_line(0xd87)
	.dwattr $C$DW$490, DW_AT_decl_column(0x0c)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$491, DW_AT_name("GPIO122")
	.dwattr $C$DW$491, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$491, DW_AT_bit_size(0x01)
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$491, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$491, DW_AT_decl_line(0xd88)
	.dwattr $C$DW$491, DW_AT_decl_column(0x0c)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$492, DW_AT_name("GPIO123")
	.dwattr $C$DW$492, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$492, DW_AT_bit_size(0x01)
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$492, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0xd89)
	.dwattr $C$DW$492, DW_AT_decl_column(0x0c)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$493, DW_AT_name("GPIO124")
	.dwattr $C$DW$493, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$493, DW_AT_bit_size(0x01)
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$493, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$493, DW_AT_decl_line(0xd8a)
	.dwattr $C$DW$493, DW_AT_decl_column(0x0c)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$494, DW_AT_name("GPIO125")
	.dwattr $C$DW$494, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$494, DW_AT_bit_size(0x01)
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$494, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$494, DW_AT_decl_line(0xd8b)
	.dwattr $C$DW$494, DW_AT_decl_column(0x0c)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$495, DW_AT_name("GPIO126")
	.dwattr $C$DW$495, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$495, DW_AT_bit_size(0x01)
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$495, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$495, DW_AT_decl_line(0xd8c)
	.dwattr $C$DW$495, DW_AT_decl_column(0x0c)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$496, DW_AT_name("GPIO127")
	.dwattr $C$DW$496, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$496, DW_AT_bit_size(0x01)
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$496, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0xd8d)
	.dwattr $C$DW$496, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$45, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0xd6d)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$45

	.dwendtag $C$DW$TU$45


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46

$C$DW$T$46	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$46, DW_AT_name("GPDCLEAR_REG")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x02)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$497, DW_AT_name("all")
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$497, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$497, DW_AT_decl_line(0xd91)
	.dwattr $C$DW$497, DW_AT_decl_column(0x0d)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$498, DW_AT_name("bit")
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$498, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$498, DW_AT_decl_line(0xd92)
	.dwattr $C$DW$498, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$46, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0xd90)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$46

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47

$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_name("GPDDAT_BITS")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x02)
$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$499, DW_AT_name("GPIO96")
	.dwattr $C$DW$499, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$499, DW_AT_bit_size(0x01)
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$499, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$499, DW_AT_decl_line(0xd1e)
	.dwattr $C$DW$499, DW_AT_decl_column(0x0c)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$500, DW_AT_name("GPIO97")
	.dwattr $C$DW$500, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$500, DW_AT_bit_size(0x01)
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$500, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$500, DW_AT_decl_line(0xd1f)
	.dwattr $C$DW$500, DW_AT_decl_column(0x0c)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$501, DW_AT_name("GPIO98")
	.dwattr $C$DW$501, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$501, DW_AT_bit_size(0x01)
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$501, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0xd20)
	.dwattr $C$DW$501, DW_AT_decl_column(0x0c)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$502, DW_AT_name("GPIO99")
	.dwattr $C$DW$502, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$502, DW_AT_bit_size(0x01)
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$502, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$502, DW_AT_decl_line(0xd21)
	.dwattr $C$DW$502, DW_AT_decl_column(0x0c)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$503, DW_AT_name("GPIO100")
	.dwattr $C$DW$503, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$503, DW_AT_bit_size(0x01)
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$503, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$503, DW_AT_decl_line(0xd22)
	.dwattr $C$DW$503, DW_AT_decl_column(0x0c)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$504, DW_AT_name("GPIO101")
	.dwattr $C$DW$504, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$504, DW_AT_bit_size(0x01)
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$504, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$504, DW_AT_decl_line(0xd23)
	.dwattr $C$DW$504, DW_AT_decl_column(0x0c)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$505, DW_AT_name("GPIO102")
	.dwattr $C$DW$505, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$505, DW_AT_bit_size(0x01)
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$505, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$505, DW_AT_decl_line(0xd24)
	.dwattr $C$DW$505, DW_AT_decl_column(0x0c)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$506, DW_AT_name("GPIO103")
	.dwattr $C$DW$506, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$506, DW_AT_bit_size(0x01)
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$506, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0xd25)
	.dwattr $C$DW$506, DW_AT_decl_column(0x0c)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$507, DW_AT_name("GPIO104")
	.dwattr $C$DW$507, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$507, DW_AT_bit_size(0x01)
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$507, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$507, DW_AT_decl_line(0xd26)
	.dwattr $C$DW$507, DW_AT_decl_column(0x0c)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$508, DW_AT_name("GPIO105")
	.dwattr $C$DW$508, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$508, DW_AT_bit_size(0x01)
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$508, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$508, DW_AT_decl_line(0xd27)
	.dwattr $C$DW$508, DW_AT_decl_column(0x0c)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$509, DW_AT_name("GPIO106")
	.dwattr $C$DW$509, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$509, DW_AT_bit_size(0x01)
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$509, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$509, DW_AT_decl_line(0xd28)
	.dwattr $C$DW$509, DW_AT_decl_column(0x0c)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_name("GPIO107")
	.dwattr $C$DW$510, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$510, DW_AT_bit_size(0x01)
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$510, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$510, DW_AT_decl_line(0xd29)
	.dwattr $C$DW$510, DW_AT_decl_column(0x0c)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_name("GPIO108")
	.dwattr $C$DW$511, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$511, DW_AT_bit_size(0x01)
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$511, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$511, DW_AT_decl_line(0xd2a)
	.dwattr $C$DW$511, DW_AT_decl_column(0x0c)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$512, DW_AT_name("GPIO109")
	.dwattr $C$DW$512, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$512, DW_AT_bit_size(0x01)
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$512, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$512, DW_AT_decl_line(0xd2b)
	.dwattr $C$DW$512, DW_AT_decl_column(0x0c)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$513, DW_AT_name("GPIO110")
	.dwattr $C$DW$513, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$513, DW_AT_bit_size(0x01)
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$513, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$513, DW_AT_decl_line(0xd2c)
	.dwattr $C$DW$513, DW_AT_decl_column(0x0c)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$514, DW_AT_name("GPIO111")
	.dwattr $C$DW$514, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$514, DW_AT_bit_size(0x01)
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$514, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$514, DW_AT_decl_line(0xd2d)
	.dwattr $C$DW$514, DW_AT_decl_column(0x0c)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$515, DW_AT_name("GPIO112")
	.dwattr $C$DW$515, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$515, DW_AT_bit_size(0x01)
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$515, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$515, DW_AT_decl_line(0xd2e)
	.dwattr $C$DW$515, DW_AT_decl_column(0x0c)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$516, DW_AT_name("GPIO113")
	.dwattr $C$DW$516, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$516, DW_AT_bit_size(0x01)
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$516, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$516, DW_AT_decl_line(0xd2f)
	.dwattr $C$DW$516, DW_AT_decl_column(0x0c)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$517, DW_AT_name("GPIO114")
	.dwattr $C$DW$517, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$517, DW_AT_bit_size(0x01)
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$517, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$517, DW_AT_decl_line(0xd30)
	.dwattr $C$DW$517, DW_AT_decl_column(0x0c)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$518, DW_AT_name("GPIO115")
	.dwattr $C$DW$518, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$518, DW_AT_bit_size(0x01)
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$518, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$518, DW_AT_decl_line(0xd31)
	.dwattr $C$DW$518, DW_AT_decl_column(0x0c)

$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$519, DW_AT_name("GPIO116")
	.dwattr $C$DW$519, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$519, DW_AT_bit_size(0x01)
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$519, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$519, DW_AT_decl_line(0xd32)
	.dwattr $C$DW$519, DW_AT_decl_column(0x0c)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$520, DW_AT_name("GPIO117")
	.dwattr $C$DW$520, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$520, DW_AT_bit_size(0x01)
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$520, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$520, DW_AT_decl_line(0xd33)
	.dwattr $C$DW$520, DW_AT_decl_column(0x0c)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_name("GPIO118")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$521, DW_AT_bit_size(0x01)
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$521, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$521, DW_AT_decl_line(0xd34)
	.dwattr $C$DW$521, DW_AT_decl_column(0x0c)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$522, DW_AT_name("GPIO119")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$522, DW_AT_bit_size(0x01)
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$522, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$522, DW_AT_decl_line(0xd35)
	.dwattr $C$DW$522, DW_AT_decl_column(0x0c)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$523, DW_AT_name("GPIO120")
	.dwattr $C$DW$523, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$523, DW_AT_bit_size(0x01)
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$523, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$523, DW_AT_decl_line(0xd36)
	.dwattr $C$DW$523, DW_AT_decl_column(0x0c)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$524, DW_AT_name("GPIO121")
	.dwattr $C$DW$524, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$524, DW_AT_bit_size(0x01)
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$524, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$524, DW_AT_decl_line(0xd37)
	.dwattr $C$DW$524, DW_AT_decl_column(0x0c)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$525, DW_AT_name("GPIO122")
	.dwattr $C$DW$525, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$525, DW_AT_bit_size(0x01)
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$525, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$525, DW_AT_decl_line(0xd38)
	.dwattr $C$DW$525, DW_AT_decl_column(0x0c)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$526, DW_AT_name("GPIO123")
	.dwattr $C$DW$526, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$526, DW_AT_bit_size(0x01)
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$526, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$526, DW_AT_decl_line(0xd39)
	.dwattr $C$DW$526, DW_AT_decl_column(0x0c)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$527, DW_AT_name("GPIO124")
	.dwattr $C$DW$527, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$527, DW_AT_bit_size(0x01)
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$527, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$527, DW_AT_decl_line(0xd3a)
	.dwattr $C$DW$527, DW_AT_decl_column(0x0c)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$528, DW_AT_name("GPIO125")
	.dwattr $C$DW$528, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$528, DW_AT_bit_size(0x01)
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$528, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$528, DW_AT_decl_line(0xd3b)
	.dwattr $C$DW$528, DW_AT_decl_column(0x0c)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("GPIO126")
	.dwattr $C$DW$529, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$529, DW_AT_bit_size(0x01)
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$529, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$529, DW_AT_decl_line(0xd3c)
	.dwattr $C$DW$529, DW_AT_decl_column(0x0c)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_name("GPIO127")
	.dwattr $C$DW$530, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$530, DW_AT_bit_size(0x01)
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$530, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$530, DW_AT_decl_line(0xd3d)
	.dwattr $C$DW$530, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$47, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0xd1d)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$47

	.dwendtag $C$DW$TU$47


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48

$C$DW$T$48	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$48, DW_AT_name("GPDDAT_REG")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x02)
$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$531, DW_AT_name("all")
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$531, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$531, DW_AT_decl_line(0xd41)
	.dwattr $C$DW$531, DW_AT_decl_column(0x0d)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$532, DW_AT_name("bit")
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$532, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$532, DW_AT_decl_line(0xd42)
	.dwattr $C$DW$532, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$48, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0xd40)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$48

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("GPDSET_BITS")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x02)
$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("GPIO96")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$533, DW_AT_bit_size(0x01)
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$533, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$533, DW_AT_decl_line(0xd46)
	.dwattr $C$DW$533, DW_AT_decl_column(0x0c)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("GPIO97")
	.dwattr $C$DW$534, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$534, DW_AT_bit_size(0x01)
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$534, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$534, DW_AT_decl_line(0xd47)
	.dwattr $C$DW$534, DW_AT_decl_column(0x0c)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$535, DW_AT_name("GPIO98")
	.dwattr $C$DW$535, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$535, DW_AT_bit_size(0x01)
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$535, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$535, DW_AT_decl_line(0xd48)
	.dwattr $C$DW$535, DW_AT_decl_column(0x0c)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$536, DW_AT_name("GPIO99")
	.dwattr $C$DW$536, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$536, DW_AT_bit_size(0x01)
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$536, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$536, DW_AT_decl_line(0xd49)
	.dwattr $C$DW$536, DW_AT_decl_column(0x0c)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$537, DW_AT_name("GPIO100")
	.dwattr $C$DW$537, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$537, DW_AT_bit_size(0x01)
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$537, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$537, DW_AT_decl_line(0xd4a)
	.dwattr $C$DW$537, DW_AT_decl_column(0x0c)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$538, DW_AT_name("GPIO101")
	.dwattr $C$DW$538, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$538, DW_AT_bit_size(0x01)
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$538, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$538, DW_AT_decl_line(0xd4b)
	.dwattr $C$DW$538, DW_AT_decl_column(0x0c)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$539, DW_AT_name("GPIO102")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$539, DW_AT_bit_size(0x01)
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$539, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$539, DW_AT_decl_line(0xd4c)
	.dwattr $C$DW$539, DW_AT_decl_column(0x0c)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$540, DW_AT_name("GPIO103")
	.dwattr $C$DW$540, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$540, DW_AT_bit_size(0x01)
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$540, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$540, DW_AT_decl_line(0xd4d)
	.dwattr $C$DW$540, DW_AT_decl_column(0x0c)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$541, DW_AT_name("GPIO104")
	.dwattr $C$DW$541, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$541, DW_AT_bit_size(0x01)
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$541, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$541, DW_AT_decl_line(0xd4e)
	.dwattr $C$DW$541, DW_AT_decl_column(0x0c)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$542, DW_AT_name("GPIO105")
	.dwattr $C$DW$542, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$542, DW_AT_bit_size(0x01)
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$542, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$542, DW_AT_decl_line(0xd4f)
	.dwattr $C$DW$542, DW_AT_decl_column(0x0c)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$543, DW_AT_name("GPIO106")
	.dwattr $C$DW$543, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$543, DW_AT_bit_size(0x01)
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$543, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$543, DW_AT_decl_line(0xd50)
	.dwattr $C$DW$543, DW_AT_decl_column(0x0c)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$544, DW_AT_name("GPIO107")
	.dwattr $C$DW$544, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$544, DW_AT_bit_size(0x01)
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$544, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$544, DW_AT_decl_line(0xd51)
	.dwattr $C$DW$544, DW_AT_decl_column(0x0c)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$545, DW_AT_name("GPIO108")
	.dwattr $C$DW$545, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$545, DW_AT_bit_size(0x01)
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$545, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$545, DW_AT_decl_line(0xd52)
	.dwattr $C$DW$545, DW_AT_decl_column(0x0c)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$546, DW_AT_name("GPIO109")
	.dwattr $C$DW$546, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$546, DW_AT_bit_size(0x01)
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$546, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$546, DW_AT_decl_line(0xd53)
	.dwattr $C$DW$546, DW_AT_decl_column(0x0c)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$547, DW_AT_name("GPIO110")
	.dwattr $C$DW$547, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$547, DW_AT_bit_size(0x01)
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$547, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$547, DW_AT_decl_line(0xd54)
	.dwattr $C$DW$547, DW_AT_decl_column(0x0c)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$548, DW_AT_name("GPIO111")
	.dwattr $C$DW$548, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$548, DW_AT_bit_size(0x01)
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$548, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$548, DW_AT_decl_line(0xd55)
	.dwattr $C$DW$548, DW_AT_decl_column(0x0c)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$549, DW_AT_name("GPIO112")
	.dwattr $C$DW$549, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$549, DW_AT_bit_size(0x01)
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$549, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$549, DW_AT_decl_line(0xd56)
	.dwattr $C$DW$549, DW_AT_decl_column(0x0c)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$550, DW_AT_name("GPIO113")
	.dwattr $C$DW$550, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$550, DW_AT_bit_size(0x01)
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$550, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$550, DW_AT_decl_line(0xd57)
	.dwattr $C$DW$550, DW_AT_decl_column(0x0c)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$551, DW_AT_name("GPIO114")
	.dwattr $C$DW$551, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$551, DW_AT_bit_size(0x01)
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$551, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$551, DW_AT_decl_line(0xd58)
	.dwattr $C$DW$551, DW_AT_decl_column(0x0c)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$552, DW_AT_name("GPIO115")
	.dwattr $C$DW$552, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$552, DW_AT_bit_size(0x01)
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$552, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$552, DW_AT_decl_line(0xd59)
	.dwattr $C$DW$552, DW_AT_decl_column(0x0c)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$553, DW_AT_name("GPIO116")
	.dwattr $C$DW$553, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$553, DW_AT_bit_size(0x01)
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$553, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$553, DW_AT_decl_line(0xd5a)
	.dwattr $C$DW$553, DW_AT_decl_column(0x0c)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$554, DW_AT_name("GPIO117")
	.dwattr $C$DW$554, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$554, DW_AT_bit_size(0x01)
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$554, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$554, DW_AT_decl_line(0xd5b)
	.dwattr $C$DW$554, DW_AT_decl_column(0x0c)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$555, DW_AT_name("GPIO118")
	.dwattr $C$DW$555, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$555, DW_AT_bit_size(0x01)
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$555, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$555, DW_AT_decl_line(0xd5c)
	.dwattr $C$DW$555, DW_AT_decl_column(0x0c)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$556, DW_AT_name("GPIO119")
	.dwattr $C$DW$556, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$556, DW_AT_bit_size(0x01)
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$556, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$556, DW_AT_decl_line(0xd5d)
	.dwattr $C$DW$556, DW_AT_decl_column(0x0c)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$557, DW_AT_name("GPIO120")
	.dwattr $C$DW$557, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$557, DW_AT_bit_size(0x01)
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$557, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$557, DW_AT_decl_line(0xd5e)
	.dwattr $C$DW$557, DW_AT_decl_column(0x0c)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$558, DW_AT_name("GPIO121")
	.dwattr $C$DW$558, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$558, DW_AT_bit_size(0x01)
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$558, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$558, DW_AT_decl_line(0xd5f)
	.dwattr $C$DW$558, DW_AT_decl_column(0x0c)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$559, DW_AT_name("GPIO122")
	.dwattr $C$DW$559, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$559, DW_AT_bit_size(0x01)
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$559, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$559, DW_AT_decl_line(0xd60)
	.dwattr $C$DW$559, DW_AT_decl_column(0x0c)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$560, DW_AT_name("GPIO123")
	.dwattr $C$DW$560, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$560, DW_AT_bit_size(0x01)
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$560, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$560, DW_AT_decl_line(0xd61)
	.dwattr $C$DW$560, DW_AT_decl_column(0x0c)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$561, DW_AT_name("GPIO124")
	.dwattr $C$DW$561, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$561, DW_AT_bit_size(0x01)
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$561, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$561, DW_AT_decl_line(0xd62)
	.dwattr $C$DW$561, DW_AT_decl_column(0x0c)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$562, DW_AT_name("GPIO125")
	.dwattr $C$DW$562, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$562, DW_AT_bit_size(0x01)
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$562, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$562, DW_AT_decl_line(0xd63)
	.dwattr $C$DW$562, DW_AT_decl_column(0x0c)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$563, DW_AT_name("GPIO126")
	.dwattr $C$DW$563, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$563, DW_AT_bit_size(0x01)
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$563, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$563, DW_AT_decl_line(0xd64)
	.dwattr $C$DW$563, DW_AT_decl_column(0x0c)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$564, DW_AT_name("GPIO127")
	.dwattr $C$DW$564, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$564, DW_AT_bit_size(0x01)
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$564, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$564, DW_AT_decl_line(0xd65)
	.dwattr $C$DW$564, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$49, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0xd45)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50

$C$DW$T$50	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$50, DW_AT_name("GPDSET_REG")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x02)
$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$565, DW_AT_name("all")
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$565, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$565, DW_AT_decl_line(0xd69)
	.dwattr $C$DW$565, DW_AT_decl_column(0x0d)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$566, DW_AT_name("bit")
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$566, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$566, DW_AT_decl_line(0xd6a)
	.dwattr $C$DW$566, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$50, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0xd68)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$50

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("GPDTOGGLE_BITS")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x02)
$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$567, DW_AT_name("GPIO96")
	.dwattr $C$DW$567, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$567, DW_AT_bit_size(0x01)
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$567, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$567, DW_AT_decl_line(0xd96)
	.dwattr $C$DW$567, DW_AT_decl_column(0x0c)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$568, DW_AT_name("GPIO97")
	.dwattr $C$DW$568, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$568, DW_AT_bit_size(0x01)
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$568, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$568, DW_AT_decl_line(0xd97)
	.dwattr $C$DW$568, DW_AT_decl_column(0x0c)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$569, DW_AT_name("GPIO98")
	.dwattr $C$DW$569, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$569, DW_AT_bit_size(0x01)
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$569, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$569, DW_AT_decl_line(0xd98)
	.dwattr $C$DW$569, DW_AT_decl_column(0x0c)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$570, DW_AT_name("GPIO99")
	.dwattr $C$DW$570, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$570, DW_AT_bit_size(0x01)
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$570, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$570, DW_AT_decl_line(0xd99)
	.dwattr $C$DW$570, DW_AT_decl_column(0x0c)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$571, DW_AT_name("GPIO100")
	.dwattr $C$DW$571, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$571, DW_AT_bit_size(0x01)
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$571, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$571, DW_AT_decl_line(0xd9a)
	.dwattr $C$DW$571, DW_AT_decl_column(0x0c)

$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$572, DW_AT_name("GPIO101")
	.dwattr $C$DW$572, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$572, DW_AT_bit_size(0x01)
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$572, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$572, DW_AT_decl_line(0xd9b)
	.dwattr $C$DW$572, DW_AT_decl_column(0x0c)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$573, DW_AT_name("GPIO102")
	.dwattr $C$DW$573, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$573, DW_AT_bit_size(0x01)
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$573, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$573, DW_AT_decl_line(0xd9c)
	.dwattr $C$DW$573, DW_AT_decl_column(0x0c)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$574, DW_AT_name("GPIO103")
	.dwattr $C$DW$574, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$574, DW_AT_bit_size(0x01)
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$574, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$574, DW_AT_decl_line(0xd9d)
	.dwattr $C$DW$574, DW_AT_decl_column(0x0c)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$575, DW_AT_name("GPIO104")
	.dwattr $C$DW$575, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$575, DW_AT_bit_size(0x01)
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$575, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$575, DW_AT_decl_line(0xd9e)
	.dwattr $C$DW$575, DW_AT_decl_column(0x0c)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$576, DW_AT_name("GPIO105")
	.dwattr $C$DW$576, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$576, DW_AT_bit_size(0x01)
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$576, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$576, DW_AT_decl_line(0xd9f)
	.dwattr $C$DW$576, DW_AT_decl_column(0x0c)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$577, DW_AT_name("GPIO106")
	.dwattr $C$DW$577, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$577, DW_AT_bit_size(0x01)
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$577, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$577, DW_AT_decl_line(0xda0)
	.dwattr $C$DW$577, DW_AT_decl_column(0x0c)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$578, DW_AT_name("GPIO107")
	.dwattr $C$DW$578, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$578, DW_AT_bit_size(0x01)
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$578, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$578, DW_AT_decl_line(0xda1)
	.dwattr $C$DW$578, DW_AT_decl_column(0x0c)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$579, DW_AT_name("GPIO108")
	.dwattr $C$DW$579, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$579, DW_AT_bit_size(0x01)
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$579, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$579, DW_AT_decl_line(0xda2)
	.dwattr $C$DW$579, DW_AT_decl_column(0x0c)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$580, DW_AT_name("GPIO109")
	.dwattr $C$DW$580, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$580, DW_AT_bit_size(0x01)
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$580, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$580, DW_AT_decl_line(0xda3)
	.dwattr $C$DW$580, DW_AT_decl_column(0x0c)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$581, DW_AT_name("GPIO110")
	.dwattr $C$DW$581, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$581, DW_AT_bit_size(0x01)
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$581, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$581, DW_AT_decl_line(0xda4)
	.dwattr $C$DW$581, DW_AT_decl_column(0x0c)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$582, DW_AT_name("GPIO111")
	.dwattr $C$DW$582, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$582, DW_AT_bit_size(0x01)
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$582, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$582, DW_AT_decl_line(0xda5)
	.dwattr $C$DW$582, DW_AT_decl_column(0x0c)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$583, DW_AT_name("GPIO112")
	.dwattr $C$DW$583, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$583, DW_AT_bit_size(0x01)
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$583, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$583, DW_AT_decl_line(0xda6)
	.dwattr $C$DW$583, DW_AT_decl_column(0x0c)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$584, DW_AT_name("GPIO113")
	.dwattr $C$DW$584, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$584, DW_AT_bit_size(0x01)
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$584, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$584, DW_AT_decl_line(0xda7)
	.dwattr $C$DW$584, DW_AT_decl_column(0x0c)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$585, DW_AT_name("GPIO114")
	.dwattr $C$DW$585, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$585, DW_AT_bit_size(0x01)
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$585, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$585, DW_AT_decl_line(0xda8)
	.dwattr $C$DW$585, DW_AT_decl_column(0x0c)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$586, DW_AT_name("GPIO115")
	.dwattr $C$DW$586, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$586, DW_AT_bit_size(0x01)
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$586, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$586, DW_AT_decl_line(0xda9)
	.dwattr $C$DW$586, DW_AT_decl_column(0x0c)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$587, DW_AT_name("GPIO116")
	.dwattr $C$DW$587, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$587, DW_AT_bit_size(0x01)
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$587, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$587, DW_AT_decl_line(0xdaa)
	.dwattr $C$DW$587, DW_AT_decl_column(0x0c)

$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$588, DW_AT_name("GPIO117")
	.dwattr $C$DW$588, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$588, DW_AT_bit_size(0x01)
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$588, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$588, DW_AT_decl_line(0xdab)
	.dwattr $C$DW$588, DW_AT_decl_column(0x0c)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$589, DW_AT_name("GPIO118")
	.dwattr $C$DW$589, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$589, DW_AT_bit_size(0x01)
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$589, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$589, DW_AT_decl_line(0xdac)
	.dwattr $C$DW$589, DW_AT_decl_column(0x0c)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$590, DW_AT_name("GPIO119")
	.dwattr $C$DW$590, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$590, DW_AT_bit_size(0x01)
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$590, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$590, DW_AT_decl_line(0xdad)
	.dwattr $C$DW$590, DW_AT_decl_column(0x0c)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$591, DW_AT_name("GPIO120")
	.dwattr $C$DW$591, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$591, DW_AT_bit_size(0x01)
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$591, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$591, DW_AT_decl_line(0xdae)
	.dwattr $C$DW$591, DW_AT_decl_column(0x0c)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$592, DW_AT_name("GPIO121")
	.dwattr $C$DW$592, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$592, DW_AT_bit_size(0x01)
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$592, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$592, DW_AT_decl_line(0xdaf)
	.dwattr $C$DW$592, DW_AT_decl_column(0x0c)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$593, DW_AT_name("GPIO122")
	.dwattr $C$DW$593, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$593, DW_AT_bit_size(0x01)
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$593, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$593, DW_AT_decl_line(0xdb0)
	.dwattr $C$DW$593, DW_AT_decl_column(0x0c)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$594, DW_AT_name("GPIO123")
	.dwattr $C$DW$594, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$594, DW_AT_bit_size(0x01)
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$594, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$594, DW_AT_decl_line(0xdb1)
	.dwattr $C$DW$594, DW_AT_decl_column(0x0c)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$595, DW_AT_name("GPIO124")
	.dwattr $C$DW$595, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$595, DW_AT_bit_size(0x01)
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$595, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$595, DW_AT_decl_line(0xdb2)
	.dwattr $C$DW$595, DW_AT_decl_column(0x0c)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$596, DW_AT_name("GPIO125")
	.dwattr $C$DW$596, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$596, DW_AT_bit_size(0x01)
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$596, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$596, DW_AT_decl_line(0xdb3)
	.dwattr $C$DW$596, DW_AT_decl_column(0x0c)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$597, DW_AT_name("GPIO126")
	.dwattr $C$DW$597, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$597, DW_AT_bit_size(0x01)
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$597, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$597, DW_AT_decl_line(0xdb4)
	.dwattr $C$DW$597, DW_AT_decl_column(0x0c)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$598, DW_AT_name("GPIO127")
	.dwattr $C$DW$598, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$598, DW_AT_bit_size(0x01)
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$598, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$598, DW_AT_decl_line(0xdb5)
	.dwattr $C$DW$598, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$51, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0xd95)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$51

	.dwendtag $C$DW$TU$51


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52

$C$DW$T$52	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$52, DW_AT_name("GPDTOGGLE_REG")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x02)
$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$599, DW_AT_name("all")
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$599, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$599, DW_AT_decl_line(0xdb9)
	.dwattr $C$DW$599, DW_AT_decl_column(0x0d)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$600, DW_AT_name("bit")
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$600, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$600, DW_AT_decl_line(0xdba)
	.dwattr $C$DW$600, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$52, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0xdb8)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$52

	.dwendtag $C$DW$TU$52


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("GPECLEAR_BITS")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x02)
$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$601, DW_AT_name("GPIO128")
	.dwattr $C$DW$601, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$601, DW_AT_bit_size(0x01)
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$601, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$601, DW_AT_decl_line(0xe0e)
	.dwattr $C$DW$601, DW_AT_decl_column(0x0c)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$602, DW_AT_name("GPIO129")
	.dwattr $C$DW$602, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$602, DW_AT_bit_size(0x01)
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$602, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$602, DW_AT_decl_line(0xe0f)
	.dwattr $C$DW$602, DW_AT_decl_column(0x0c)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$603, DW_AT_name("GPIO130")
	.dwattr $C$DW$603, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$603, DW_AT_bit_size(0x01)
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$603, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$603, DW_AT_decl_line(0xe10)
	.dwattr $C$DW$603, DW_AT_decl_column(0x0c)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$604, DW_AT_name("GPIO131")
	.dwattr $C$DW$604, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$604, DW_AT_bit_size(0x01)
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$604, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$604, DW_AT_decl_line(0xe11)
	.dwattr $C$DW$604, DW_AT_decl_column(0x0c)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$605, DW_AT_name("GPIO132")
	.dwattr $C$DW$605, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$605, DW_AT_bit_size(0x01)
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$605, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$605, DW_AT_decl_line(0xe12)
	.dwattr $C$DW$605, DW_AT_decl_column(0x0c)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$606, DW_AT_name("GPIO133")
	.dwattr $C$DW$606, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$606, DW_AT_bit_size(0x01)
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$606, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$606, DW_AT_decl_line(0xe13)
	.dwattr $C$DW$606, DW_AT_decl_column(0x0c)

$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$607, DW_AT_name("GPIO134")
	.dwattr $C$DW$607, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$607, DW_AT_bit_size(0x01)
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$607, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$607, DW_AT_decl_line(0xe14)
	.dwattr $C$DW$607, DW_AT_decl_column(0x0c)

$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$608, DW_AT_name("GPIO135")
	.dwattr $C$DW$608, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$608, DW_AT_bit_size(0x01)
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$608, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$608, DW_AT_decl_line(0xe15)
	.dwattr $C$DW$608, DW_AT_decl_column(0x0c)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$609, DW_AT_name("GPIO136")
	.dwattr $C$DW$609, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$609, DW_AT_bit_size(0x01)
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$609, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$609, DW_AT_decl_line(0xe16)
	.dwattr $C$DW$609, DW_AT_decl_column(0x0c)

$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$610, DW_AT_name("GPIO137")
	.dwattr $C$DW$610, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$610, DW_AT_bit_size(0x01)
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$610, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$610, DW_AT_decl_line(0xe17)
	.dwattr $C$DW$610, DW_AT_decl_column(0x0c)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$611, DW_AT_name("GPIO138")
	.dwattr $C$DW$611, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$611, DW_AT_bit_size(0x01)
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$611, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$611, DW_AT_decl_line(0xe18)
	.dwattr $C$DW$611, DW_AT_decl_column(0x0c)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$612, DW_AT_name("GPIO139")
	.dwattr $C$DW$612, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$612, DW_AT_bit_size(0x01)
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$612, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$612, DW_AT_decl_line(0xe19)
	.dwattr $C$DW$612, DW_AT_decl_column(0x0c)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$613, DW_AT_name("GPIO140")
	.dwattr $C$DW$613, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$613, DW_AT_bit_size(0x01)
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$613, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$613, DW_AT_decl_line(0xe1a)
	.dwattr $C$DW$613, DW_AT_decl_column(0x0c)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$614, DW_AT_name("GPIO141")
	.dwattr $C$DW$614, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$614, DW_AT_bit_size(0x01)
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$614, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$614, DW_AT_decl_line(0xe1b)
	.dwattr $C$DW$614, DW_AT_decl_column(0x0c)

$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$615, DW_AT_name("GPIO142")
	.dwattr $C$DW$615, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$615, DW_AT_bit_size(0x01)
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$615, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$615, DW_AT_decl_line(0xe1c)
	.dwattr $C$DW$615, DW_AT_decl_column(0x0c)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$616, DW_AT_name("GPIO143")
	.dwattr $C$DW$616, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$616, DW_AT_bit_size(0x01)
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$616, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$616, DW_AT_decl_line(0xe1d)
	.dwattr $C$DW$616, DW_AT_decl_column(0x0c)

$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$617, DW_AT_name("GPIO144")
	.dwattr $C$DW$617, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$617, DW_AT_bit_size(0x01)
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$617, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$617, DW_AT_decl_line(0xe1e)
	.dwattr $C$DW$617, DW_AT_decl_column(0x0c)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$618, DW_AT_name("GPIO145")
	.dwattr $C$DW$618, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$618, DW_AT_bit_size(0x01)
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$618, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$618, DW_AT_decl_line(0xe1f)
	.dwattr $C$DW$618, DW_AT_decl_column(0x0c)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$619, DW_AT_name("GPIO146")
	.dwattr $C$DW$619, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$619, DW_AT_bit_size(0x01)
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$619, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$619, DW_AT_decl_line(0xe20)
	.dwattr $C$DW$619, DW_AT_decl_column(0x0c)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$620, DW_AT_name("GPIO147")
	.dwattr $C$DW$620, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$620, DW_AT_bit_size(0x01)
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$620, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$620, DW_AT_decl_line(0xe21)
	.dwattr $C$DW$620, DW_AT_decl_column(0x0c)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$621, DW_AT_name("GPIO148")
	.dwattr $C$DW$621, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$621, DW_AT_bit_size(0x01)
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$621, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$621, DW_AT_decl_line(0xe22)
	.dwattr $C$DW$621, DW_AT_decl_column(0x0c)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$622, DW_AT_name("GPIO149")
	.dwattr $C$DW$622, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$622, DW_AT_bit_size(0x01)
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$622, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$622, DW_AT_decl_line(0xe23)
	.dwattr $C$DW$622, DW_AT_decl_column(0x0c)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$623, DW_AT_name("GPIO150")
	.dwattr $C$DW$623, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$623, DW_AT_bit_size(0x01)
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$623, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$623, DW_AT_decl_line(0xe24)
	.dwattr $C$DW$623, DW_AT_decl_column(0x0c)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$624, DW_AT_name("GPIO151")
	.dwattr $C$DW$624, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$624, DW_AT_bit_size(0x01)
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$624, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$624, DW_AT_decl_line(0xe25)
	.dwattr $C$DW$624, DW_AT_decl_column(0x0c)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$625, DW_AT_name("GPIO152")
	.dwattr $C$DW$625, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$625, DW_AT_bit_size(0x01)
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$625, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$625, DW_AT_decl_line(0xe26)
	.dwattr $C$DW$625, DW_AT_decl_column(0x0c)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$626, DW_AT_name("GPIO153")
	.dwattr $C$DW$626, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$626, DW_AT_bit_size(0x01)
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$626, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$626, DW_AT_decl_line(0xe27)
	.dwattr $C$DW$626, DW_AT_decl_column(0x0c)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$627, DW_AT_name("GPIO154")
	.dwattr $C$DW$627, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$627, DW_AT_bit_size(0x01)
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$627, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$627, DW_AT_decl_line(0xe28)
	.dwattr $C$DW$627, DW_AT_decl_column(0x0c)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$628, DW_AT_name("GPIO155")
	.dwattr $C$DW$628, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$628, DW_AT_bit_size(0x01)
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$628, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$628, DW_AT_decl_line(0xe29)
	.dwattr $C$DW$628, DW_AT_decl_column(0x0c)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$629, DW_AT_name("GPIO156")
	.dwattr $C$DW$629, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$629, DW_AT_bit_size(0x01)
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$629, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$629, DW_AT_decl_line(0xe2a)
	.dwattr $C$DW$629, DW_AT_decl_column(0x0c)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$630, DW_AT_name("GPIO157")
	.dwattr $C$DW$630, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$630, DW_AT_bit_size(0x01)
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$630, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$630, DW_AT_decl_line(0xe2b)
	.dwattr $C$DW$630, DW_AT_decl_column(0x0c)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$631, DW_AT_name("GPIO158")
	.dwattr $C$DW$631, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$631, DW_AT_bit_size(0x01)
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$631, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$631, DW_AT_decl_line(0xe2c)
	.dwattr $C$DW$631, DW_AT_decl_column(0x0c)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$632, DW_AT_name("GPIO159")
	.dwattr $C$DW$632, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$632, DW_AT_bit_size(0x01)
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$632, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$632, DW_AT_decl_line(0xe2d)
	.dwattr $C$DW$632, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$53, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0xe0d)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54

$C$DW$T$54	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$54, DW_AT_name("GPECLEAR_REG")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x02)
$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$633, DW_AT_name("all")
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$633, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$633, DW_AT_decl_line(0xe31)
	.dwattr $C$DW$633, DW_AT_decl_column(0x0d)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$634, DW_AT_name("bit")
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$634, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$634, DW_AT_decl_line(0xe32)
	.dwattr $C$DW$634, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$54, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0xe30)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$54

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("GPEDAT_BITS")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x02)
$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$635, DW_AT_name("GPIO128")
	.dwattr $C$DW$635, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$635, DW_AT_bit_size(0x01)
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$635, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$635, DW_AT_decl_line(0xdbe)
	.dwattr $C$DW$635, DW_AT_decl_column(0x0c)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$636, DW_AT_name("GPIO129")
	.dwattr $C$DW$636, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$636, DW_AT_bit_size(0x01)
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$636, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$636, DW_AT_decl_line(0xdbf)
	.dwattr $C$DW$636, DW_AT_decl_column(0x0c)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$637, DW_AT_name("GPIO130")
	.dwattr $C$DW$637, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$637, DW_AT_bit_size(0x01)
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$637, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$637, DW_AT_decl_line(0xdc0)
	.dwattr $C$DW$637, DW_AT_decl_column(0x0c)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$638, DW_AT_name("GPIO131")
	.dwattr $C$DW$638, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$638, DW_AT_bit_size(0x01)
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$638, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$638, DW_AT_decl_line(0xdc1)
	.dwattr $C$DW$638, DW_AT_decl_column(0x0c)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$639, DW_AT_name("GPIO132")
	.dwattr $C$DW$639, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$639, DW_AT_bit_size(0x01)
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$639, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$639, DW_AT_decl_line(0xdc2)
	.dwattr $C$DW$639, DW_AT_decl_column(0x0c)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$640, DW_AT_name("GPIO133")
	.dwattr $C$DW$640, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$640, DW_AT_bit_size(0x01)
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$640, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$640, DW_AT_decl_line(0xdc3)
	.dwattr $C$DW$640, DW_AT_decl_column(0x0c)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$641, DW_AT_name("GPIO134")
	.dwattr $C$DW$641, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$641, DW_AT_bit_size(0x01)
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$641, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$641, DW_AT_decl_line(0xdc4)
	.dwattr $C$DW$641, DW_AT_decl_column(0x0c)

$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$642, DW_AT_name("GPIO135")
	.dwattr $C$DW$642, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$642, DW_AT_bit_size(0x01)
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$642, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$642, DW_AT_decl_line(0xdc5)
	.dwattr $C$DW$642, DW_AT_decl_column(0x0c)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$643, DW_AT_name("GPIO136")
	.dwattr $C$DW$643, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$643, DW_AT_bit_size(0x01)
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$643, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$643, DW_AT_decl_line(0xdc6)
	.dwattr $C$DW$643, DW_AT_decl_column(0x0c)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$644, DW_AT_name("GPIO137")
	.dwattr $C$DW$644, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$644, DW_AT_bit_size(0x01)
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$644, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$644, DW_AT_decl_line(0xdc7)
	.dwattr $C$DW$644, DW_AT_decl_column(0x0c)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$645, DW_AT_name("GPIO138")
	.dwattr $C$DW$645, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$645, DW_AT_bit_size(0x01)
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$645, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$645, DW_AT_decl_line(0xdc8)
	.dwattr $C$DW$645, DW_AT_decl_column(0x0c)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$646, DW_AT_name("GPIO139")
	.dwattr $C$DW$646, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$646, DW_AT_bit_size(0x01)
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$646, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$646, DW_AT_decl_line(0xdc9)
	.dwattr $C$DW$646, DW_AT_decl_column(0x0c)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$647, DW_AT_name("GPIO140")
	.dwattr $C$DW$647, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$647, DW_AT_bit_size(0x01)
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$647, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$647, DW_AT_decl_line(0xdca)
	.dwattr $C$DW$647, DW_AT_decl_column(0x0c)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$648, DW_AT_name("GPIO141")
	.dwattr $C$DW$648, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$648, DW_AT_bit_size(0x01)
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$648, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$648, DW_AT_decl_line(0xdcb)
	.dwattr $C$DW$648, DW_AT_decl_column(0x0c)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$649, DW_AT_name("GPIO142")
	.dwattr $C$DW$649, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$649, DW_AT_bit_size(0x01)
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$649, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$649, DW_AT_decl_line(0xdcc)
	.dwattr $C$DW$649, DW_AT_decl_column(0x0c)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$650, DW_AT_name("GPIO143")
	.dwattr $C$DW$650, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$650, DW_AT_bit_size(0x01)
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$650, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$650, DW_AT_decl_line(0xdcd)
	.dwattr $C$DW$650, DW_AT_decl_column(0x0c)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$651, DW_AT_name("GPIO144")
	.dwattr $C$DW$651, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$651, DW_AT_bit_size(0x01)
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$651, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$651, DW_AT_decl_line(0xdce)
	.dwattr $C$DW$651, DW_AT_decl_column(0x0c)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$652, DW_AT_name("GPIO145")
	.dwattr $C$DW$652, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$652, DW_AT_bit_size(0x01)
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$652, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$652, DW_AT_decl_line(0xdcf)
	.dwattr $C$DW$652, DW_AT_decl_column(0x0c)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$653, DW_AT_name("GPIO146")
	.dwattr $C$DW$653, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$653, DW_AT_bit_size(0x01)
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$653, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$653, DW_AT_decl_line(0xdd0)
	.dwattr $C$DW$653, DW_AT_decl_column(0x0c)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$654, DW_AT_name("GPIO147")
	.dwattr $C$DW$654, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$654, DW_AT_bit_size(0x01)
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$654, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$654, DW_AT_decl_line(0xdd1)
	.dwattr $C$DW$654, DW_AT_decl_column(0x0c)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$655, DW_AT_name("GPIO148")
	.dwattr $C$DW$655, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$655, DW_AT_bit_size(0x01)
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$655, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$655, DW_AT_decl_line(0xdd2)
	.dwattr $C$DW$655, DW_AT_decl_column(0x0c)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$656, DW_AT_name("GPIO149")
	.dwattr $C$DW$656, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$656, DW_AT_bit_size(0x01)
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$656, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$656, DW_AT_decl_line(0xdd3)
	.dwattr $C$DW$656, DW_AT_decl_column(0x0c)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$657, DW_AT_name("GPIO150")
	.dwattr $C$DW$657, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$657, DW_AT_bit_size(0x01)
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$657, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$657, DW_AT_decl_line(0xdd4)
	.dwattr $C$DW$657, DW_AT_decl_column(0x0c)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$658, DW_AT_name("GPIO151")
	.dwattr $C$DW$658, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$658, DW_AT_bit_size(0x01)
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$658, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$658, DW_AT_decl_line(0xdd5)
	.dwattr $C$DW$658, DW_AT_decl_column(0x0c)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$659, DW_AT_name("GPIO152")
	.dwattr $C$DW$659, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$659, DW_AT_bit_size(0x01)
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$659, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$659, DW_AT_decl_line(0xdd6)
	.dwattr $C$DW$659, DW_AT_decl_column(0x0c)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$660, DW_AT_name("GPIO153")
	.dwattr $C$DW$660, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$660, DW_AT_bit_size(0x01)
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$660, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$660, DW_AT_decl_line(0xdd7)
	.dwattr $C$DW$660, DW_AT_decl_column(0x0c)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$661, DW_AT_name("GPIO154")
	.dwattr $C$DW$661, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$661, DW_AT_bit_size(0x01)
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$661, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$661, DW_AT_decl_line(0xdd8)
	.dwattr $C$DW$661, DW_AT_decl_column(0x0c)

$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$662, DW_AT_name("GPIO155")
	.dwattr $C$DW$662, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$662, DW_AT_bit_size(0x01)
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$662, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$662, DW_AT_decl_line(0xdd9)
	.dwattr $C$DW$662, DW_AT_decl_column(0x0c)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$663, DW_AT_name("GPIO156")
	.dwattr $C$DW$663, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$663, DW_AT_bit_size(0x01)
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$663, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$663, DW_AT_decl_line(0xdda)
	.dwattr $C$DW$663, DW_AT_decl_column(0x0c)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$664, DW_AT_name("GPIO157")
	.dwattr $C$DW$664, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$664, DW_AT_bit_size(0x01)
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$664, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$664, DW_AT_decl_line(0xddb)
	.dwattr $C$DW$664, DW_AT_decl_column(0x0c)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$665, DW_AT_name("GPIO158")
	.dwattr $C$DW$665, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$665, DW_AT_bit_size(0x01)
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$665, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$665, DW_AT_decl_line(0xddc)
	.dwattr $C$DW$665, DW_AT_decl_column(0x0c)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$666, DW_AT_name("GPIO159")
	.dwattr $C$DW$666, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$666, DW_AT_bit_size(0x01)
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$666, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$666, DW_AT_decl_line(0xddd)
	.dwattr $C$DW$666, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$55, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0xdbd)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56

$C$DW$T$56	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$56, DW_AT_name("GPEDAT_REG")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x02)
$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$667, DW_AT_name("all")
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$667, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$667, DW_AT_decl_line(0xde1)
	.dwattr $C$DW$667, DW_AT_decl_column(0x0d)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$668, DW_AT_name("bit")
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$668, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$668, DW_AT_decl_line(0xde2)
	.dwattr $C$DW$668, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$56, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0xde0)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$56

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("GPESET_BITS")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x02)
$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$669, DW_AT_name("GPIO128")
	.dwattr $C$DW$669, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$669, DW_AT_bit_size(0x01)
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$669, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$669, DW_AT_decl_line(0xde6)
	.dwattr $C$DW$669, DW_AT_decl_column(0x0c)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$670, DW_AT_name("GPIO129")
	.dwattr $C$DW$670, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$670, DW_AT_bit_size(0x01)
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$670, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$670, DW_AT_decl_line(0xde7)
	.dwattr $C$DW$670, DW_AT_decl_column(0x0c)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$671, DW_AT_name("GPIO130")
	.dwattr $C$DW$671, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$671, DW_AT_bit_size(0x01)
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$671, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$671, DW_AT_decl_line(0xde8)
	.dwattr $C$DW$671, DW_AT_decl_column(0x0c)

$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$672, DW_AT_name("GPIO131")
	.dwattr $C$DW$672, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$672, DW_AT_bit_size(0x01)
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$672, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$672, DW_AT_decl_line(0xde9)
	.dwattr $C$DW$672, DW_AT_decl_column(0x0c)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$673, DW_AT_name("GPIO132")
	.dwattr $C$DW$673, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$673, DW_AT_bit_size(0x01)
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$673, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$673, DW_AT_decl_line(0xdea)
	.dwattr $C$DW$673, DW_AT_decl_column(0x0c)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$674, DW_AT_name("GPIO133")
	.dwattr $C$DW$674, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$674, DW_AT_bit_size(0x01)
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$674, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$674, DW_AT_decl_line(0xdeb)
	.dwattr $C$DW$674, DW_AT_decl_column(0x0c)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$675, DW_AT_name("GPIO134")
	.dwattr $C$DW$675, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$675, DW_AT_bit_size(0x01)
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$675, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$675, DW_AT_decl_line(0xdec)
	.dwattr $C$DW$675, DW_AT_decl_column(0x0c)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$676, DW_AT_name("GPIO135")
	.dwattr $C$DW$676, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$676, DW_AT_bit_size(0x01)
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$676, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$676, DW_AT_decl_line(0xded)
	.dwattr $C$DW$676, DW_AT_decl_column(0x0c)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$677, DW_AT_name("GPIO136")
	.dwattr $C$DW$677, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$677, DW_AT_bit_size(0x01)
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$677, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$677, DW_AT_decl_line(0xdee)
	.dwattr $C$DW$677, DW_AT_decl_column(0x0c)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$678, DW_AT_name("GPIO137")
	.dwattr $C$DW$678, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$678, DW_AT_bit_size(0x01)
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$678, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$678, DW_AT_decl_line(0xdef)
	.dwattr $C$DW$678, DW_AT_decl_column(0x0c)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$679, DW_AT_name("GPIO138")
	.dwattr $C$DW$679, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$679, DW_AT_bit_size(0x01)
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$679, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$679, DW_AT_decl_line(0xdf0)
	.dwattr $C$DW$679, DW_AT_decl_column(0x0c)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$680, DW_AT_name("GPIO139")
	.dwattr $C$DW$680, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$680, DW_AT_bit_size(0x01)
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$680, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$680, DW_AT_decl_line(0xdf1)
	.dwattr $C$DW$680, DW_AT_decl_column(0x0c)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$681, DW_AT_name("GPIO140")
	.dwattr $C$DW$681, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$681, DW_AT_bit_size(0x01)
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$681, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$681, DW_AT_decl_line(0xdf2)
	.dwattr $C$DW$681, DW_AT_decl_column(0x0c)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$682, DW_AT_name("GPIO141")
	.dwattr $C$DW$682, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$682, DW_AT_bit_size(0x01)
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$682, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$682, DW_AT_decl_line(0xdf3)
	.dwattr $C$DW$682, DW_AT_decl_column(0x0c)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$683, DW_AT_name("GPIO142")
	.dwattr $C$DW$683, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$683, DW_AT_bit_size(0x01)
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$683, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$683, DW_AT_decl_line(0xdf4)
	.dwattr $C$DW$683, DW_AT_decl_column(0x0c)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$684, DW_AT_name("GPIO143")
	.dwattr $C$DW$684, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$684, DW_AT_bit_size(0x01)
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$684, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$684, DW_AT_decl_line(0xdf5)
	.dwattr $C$DW$684, DW_AT_decl_column(0x0c)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$685, DW_AT_name("GPIO144")
	.dwattr $C$DW$685, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$685, DW_AT_bit_size(0x01)
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$685, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$685, DW_AT_decl_line(0xdf6)
	.dwattr $C$DW$685, DW_AT_decl_column(0x0c)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$686, DW_AT_name("GPIO145")
	.dwattr $C$DW$686, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$686, DW_AT_bit_size(0x01)
	.dwattr $C$DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$686, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$686, DW_AT_decl_line(0xdf7)
	.dwattr $C$DW$686, DW_AT_decl_column(0x0c)

$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$687, DW_AT_name("GPIO146")
	.dwattr $C$DW$687, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$687, DW_AT_bit_size(0x01)
	.dwattr $C$DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$687, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$687, DW_AT_decl_line(0xdf8)
	.dwattr $C$DW$687, DW_AT_decl_column(0x0c)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$688, DW_AT_name("GPIO147")
	.dwattr $C$DW$688, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$688, DW_AT_bit_size(0x01)
	.dwattr $C$DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$688, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$688, DW_AT_decl_line(0xdf9)
	.dwattr $C$DW$688, DW_AT_decl_column(0x0c)

$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$689, DW_AT_name("GPIO148")
	.dwattr $C$DW$689, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$689, DW_AT_bit_size(0x01)
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$689, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$689, DW_AT_decl_line(0xdfa)
	.dwattr $C$DW$689, DW_AT_decl_column(0x0c)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$690, DW_AT_name("GPIO149")
	.dwattr $C$DW$690, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$690, DW_AT_bit_size(0x01)
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$690, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$690, DW_AT_decl_line(0xdfb)
	.dwattr $C$DW$690, DW_AT_decl_column(0x0c)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$691, DW_AT_name("GPIO150")
	.dwattr $C$DW$691, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$691, DW_AT_bit_size(0x01)
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$691, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$691, DW_AT_decl_line(0xdfc)
	.dwattr $C$DW$691, DW_AT_decl_column(0x0c)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$692, DW_AT_name("GPIO151")
	.dwattr $C$DW$692, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$692, DW_AT_bit_size(0x01)
	.dwattr $C$DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$692, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$692, DW_AT_decl_line(0xdfd)
	.dwattr $C$DW$692, DW_AT_decl_column(0x0c)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$693, DW_AT_name("GPIO152")
	.dwattr $C$DW$693, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$693, DW_AT_bit_size(0x01)
	.dwattr $C$DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$693, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$693, DW_AT_decl_line(0xdfe)
	.dwattr $C$DW$693, DW_AT_decl_column(0x0c)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$694, DW_AT_name("GPIO153")
	.dwattr $C$DW$694, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$694, DW_AT_bit_size(0x01)
	.dwattr $C$DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$694, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$694, DW_AT_decl_line(0xdff)
	.dwattr $C$DW$694, DW_AT_decl_column(0x0c)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$695, DW_AT_name("GPIO154")
	.dwattr $C$DW$695, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$695, DW_AT_bit_size(0x01)
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$695, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$695, DW_AT_decl_line(0xe00)
	.dwattr $C$DW$695, DW_AT_decl_column(0x0c)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$696, DW_AT_name("GPIO155")
	.dwattr $C$DW$696, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$696, DW_AT_bit_size(0x01)
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$696, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$696, DW_AT_decl_line(0xe01)
	.dwattr $C$DW$696, DW_AT_decl_column(0x0c)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$697, DW_AT_name("GPIO156")
	.dwattr $C$DW$697, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$697, DW_AT_bit_size(0x01)
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$697, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$697, DW_AT_decl_line(0xe02)
	.dwattr $C$DW$697, DW_AT_decl_column(0x0c)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$698, DW_AT_name("GPIO157")
	.dwattr $C$DW$698, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$698, DW_AT_bit_size(0x01)
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$698, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$698, DW_AT_decl_line(0xe03)
	.dwattr $C$DW$698, DW_AT_decl_column(0x0c)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$699, DW_AT_name("GPIO158")
	.dwattr $C$DW$699, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$699, DW_AT_bit_size(0x01)
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$699, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$699, DW_AT_decl_line(0xe04)
	.dwattr $C$DW$699, DW_AT_decl_column(0x0c)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$700, DW_AT_name("GPIO159")
	.dwattr $C$DW$700, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$700, DW_AT_bit_size(0x01)
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$700, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$700, DW_AT_decl_line(0xe05)
	.dwattr $C$DW$700, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$57, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0xde5)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58

$C$DW$T$58	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$58, DW_AT_name("GPESET_REG")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x02)
$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$701, DW_AT_name("all")
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$701, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$701, DW_AT_decl_line(0xe09)
	.dwattr $C$DW$701, DW_AT_decl_column(0x0d)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$702, DW_AT_name("bit")
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$702, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$702, DW_AT_decl_line(0xe0a)
	.dwattr $C$DW$702, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$58, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0xe08)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$58

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59

$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("GPETOGGLE_BITS")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x02)
$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$703, DW_AT_name("GPIO128")
	.dwattr $C$DW$703, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$703, DW_AT_bit_size(0x01)
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$703, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$703, DW_AT_decl_line(0xe36)
	.dwattr $C$DW$703, DW_AT_decl_column(0x0c)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$704, DW_AT_name("GPIO129")
	.dwattr $C$DW$704, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$704, DW_AT_bit_size(0x01)
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$704, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$704, DW_AT_decl_line(0xe37)
	.dwattr $C$DW$704, DW_AT_decl_column(0x0c)

$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$705, DW_AT_name("GPIO130")
	.dwattr $C$DW$705, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$705, DW_AT_bit_size(0x01)
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$705, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$705, DW_AT_decl_line(0xe38)
	.dwattr $C$DW$705, DW_AT_decl_column(0x0c)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$706, DW_AT_name("GPIO131")
	.dwattr $C$DW$706, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$706, DW_AT_bit_size(0x01)
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$706, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$706, DW_AT_decl_line(0xe39)
	.dwattr $C$DW$706, DW_AT_decl_column(0x0c)

$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$707, DW_AT_name("GPIO132")
	.dwattr $C$DW$707, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$707, DW_AT_bit_size(0x01)
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$707, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$707, DW_AT_decl_line(0xe3a)
	.dwattr $C$DW$707, DW_AT_decl_column(0x0c)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$708, DW_AT_name("GPIO133")
	.dwattr $C$DW$708, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$708, DW_AT_bit_size(0x01)
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$708, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$708, DW_AT_decl_line(0xe3b)
	.dwattr $C$DW$708, DW_AT_decl_column(0x0c)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$709, DW_AT_name("GPIO134")
	.dwattr $C$DW$709, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$709, DW_AT_bit_size(0x01)
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$709, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$709, DW_AT_decl_line(0xe3c)
	.dwattr $C$DW$709, DW_AT_decl_column(0x0c)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$710, DW_AT_name("GPIO135")
	.dwattr $C$DW$710, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$710, DW_AT_bit_size(0x01)
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$710, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$710, DW_AT_decl_line(0xe3d)
	.dwattr $C$DW$710, DW_AT_decl_column(0x0c)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$711, DW_AT_name("GPIO136")
	.dwattr $C$DW$711, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$711, DW_AT_bit_size(0x01)
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$711, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$711, DW_AT_decl_line(0xe3e)
	.dwattr $C$DW$711, DW_AT_decl_column(0x0c)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$712, DW_AT_name("GPIO137")
	.dwattr $C$DW$712, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$712, DW_AT_bit_size(0x01)
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$712, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$712, DW_AT_decl_line(0xe3f)
	.dwattr $C$DW$712, DW_AT_decl_column(0x0c)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$713, DW_AT_name("GPIO138")
	.dwattr $C$DW$713, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$713, DW_AT_bit_size(0x01)
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$713, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$713, DW_AT_decl_line(0xe40)
	.dwattr $C$DW$713, DW_AT_decl_column(0x0c)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$714, DW_AT_name("GPIO139")
	.dwattr $C$DW$714, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$714, DW_AT_bit_size(0x01)
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$714, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$714, DW_AT_decl_line(0xe41)
	.dwattr $C$DW$714, DW_AT_decl_column(0x0c)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$715, DW_AT_name("GPIO140")
	.dwattr $C$DW$715, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$715, DW_AT_bit_size(0x01)
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$715, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$715, DW_AT_decl_line(0xe42)
	.dwattr $C$DW$715, DW_AT_decl_column(0x0c)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$716, DW_AT_name("GPIO141")
	.dwattr $C$DW$716, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$716, DW_AT_bit_size(0x01)
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$716, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$716, DW_AT_decl_line(0xe43)
	.dwattr $C$DW$716, DW_AT_decl_column(0x0c)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$717, DW_AT_name("GPIO142")
	.dwattr $C$DW$717, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$717, DW_AT_bit_size(0x01)
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$717, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$717, DW_AT_decl_line(0xe44)
	.dwattr $C$DW$717, DW_AT_decl_column(0x0c)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$718, DW_AT_name("GPIO143")
	.dwattr $C$DW$718, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$718, DW_AT_bit_size(0x01)
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$718, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$718, DW_AT_decl_line(0xe45)
	.dwattr $C$DW$718, DW_AT_decl_column(0x0c)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$719, DW_AT_name("GPIO144")
	.dwattr $C$DW$719, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$719, DW_AT_bit_size(0x01)
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$719, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$719, DW_AT_decl_line(0xe46)
	.dwattr $C$DW$719, DW_AT_decl_column(0x0c)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$720, DW_AT_name("GPIO145")
	.dwattr $C$DW$720, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$720, DW_AT_bit_size(0x01)
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$720, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$720, DW_AT_decl_line(0xe47)
	.dwattr $C$DW$720, DW_AT_decl_column(0x0c)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$721, DW_AT_name("GPIO146")
	.dwattr $C$DW$721, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$721, DW_AT_bit_size(0x01)
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$721, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$721, DW_AT_decl_line(0xe48)
	.dwattr $C$DW$721, DW_AT_decl_column(0x0c)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$722, DW_AT_name("GPIO147")
	.dwattr $C$DW$722, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$722, DW_AT_bit_size(0x01)
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$722, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$722, DW_AT_decl_line(0xe49)
	.dwattr $C$DW$722, DW_AT_decl_column(0x0c)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$723, DW_AT_name("GPIO148")
	.dwattr $C$DW$723, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$723, DW_AT_bit_size(0x01)
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$723, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$723, DW_AT_decl_line(0xe4a)
	.dwattr $C$DW$723, DW_AT_decl_column(0x0c)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$724, DW_AT_name("GPIO149")
	.dwattr $C$DW$724, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$724, DW_AT_bit_size(0x01)
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$724, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$724, DW_AT_decl_line(0xe4b)
	.dwattr $C$DW$724, DW_AT_decl_column(0x0c)

$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$725, DW_AT_name("GPIO150")
	.dwattr $C$DW$725, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$725, DW_AT_bit_size(0x01)
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$725, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$725, DW_AT_decl_line(0xe4c)
	.dwattr $C$DW$725, DW_AT_decl_column(0x0c)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$726, DW_AT_name("GPIO151")
	.dwattr $C$DW$726, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$726, DW_AT_bit_size(0x01)
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$726, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$726, DW_AT_decl_line(0xe4d)
	.dwattr $C$DW$726, DW_AT_decl_column(0x0c)

$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$727, DW_AT_name("GPIO152")
	.dwattr $C$DW$727, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$727, DW_AT_bit_size(0x01)
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$727, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$727, DW_AT_decl_line(0xe4e)
	.dwattr $C$DW$727, DW_AT_decl_column(0x0c)

$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$728, DW_AT_name("GPIO153")
	.dwattr $C$DW$728, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$728, DW_AT_bit_size(0x01)
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$728, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$728, DW_AT_decl_line(0xe4f)
	.dwattr $C$DW$728, DW_AT_decl_column(0x0c)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$729, DW_AT_name("GPIO154")
	.dwattr $C$DW$729, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$729, DW_AT_bit_size(0x01)
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$729, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$729, DW_AT_decl_line(0xe50)
	.dwattr $C$DW$729, DW_AT_decl_column(0x0c)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$730, DW_AT_name("GPIO155")
	.dwattr $C$DW$730, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$730, DW_AT_bit_size(0x01)
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$730, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$730, DW_AT_decl_line(0xe51)
	.dwattr $C$DW$730, DW_AT_decl_column(0x0c)

$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$731, DW_AT_name("GPIO156")
	.dwattr $C$DW$731, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$731, DW_AT_bit_size(0x01)
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$731, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$731, DW_AT_decl_line(0xe52)
	.dwattr $C$DW$731, DW_AT_decl_column(0x0c)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$732, DW_AT_name("GPIO157")
	.dwattr $C$DW$732, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$732, DW_AT_bit_size(0x01)
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$732, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$732, DW_AT_decl_line(0xe53)
	.dwattr $C$DW$732, DW_AT_decl_column(0x0c)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$733, DW_AT_name("GPIO158")
	.dwattr $C$DW$733, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$733, DW_AT_bit_size(0x01)
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$733, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$733, DW_AT_decl_line(0xe54)
	.dwattr $C$DW$733, DW_AT_decl_column(0x0c)

$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$734, DW_AT_name("GPIO159")
	.dwattr $C$DW$734, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$734, DW_AT_bit_size(0x01)
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$734, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$734, DW_AT_decl_line(0xe55)
	.dwattr $C$DW$734, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$59, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0xe35)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$59

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60

$C$DW$T$60	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$60, DW_AT_name("GPETOGGLE_REG")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x02)
$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$735, DW_AT_name("all")
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$735, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$735, DW_AT_decl_line(0xe59)
	.dwattr $C$DW$735, DW_AT_decl_column(0x0d)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$736, DW_AT_name("bit")
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$736, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$736, DW_AT_decl_line(0xe5a)
	.dwattr $C$DW$736, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$60, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0xe58)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$60

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_name("GPFCLEAR_BITS")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x02)
$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$737, DW_AT_name("GPIO160")
	.dwattr $C$DW$737, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$737, DW_AT_bit_size(0x01)
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$737, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$737, DW_AT_decl_line(0xeae)
	.dwattr $C$DW$737, DW_AT_decl_column(0x0c)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$738, DW_AT_name("GPIO161")
	.dwattr $C$DW$738, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$738, DW_AT_bit_size(0x01)
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$738, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$738, DW_AT_decl_line(0xeaf)
	.dwattr $C$DW$738, DW_AT_decl_column(0x0c)

$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$739, DW_AT_name("GPIO162")
	.dwattr $C$DW$739, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$739, DW_AT_bit_size(0x01)
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$739, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$739, DW_AT_decl_line(0xeb0)
	.dwattr $C$DW$739, DW_AT_decl_column(0x0c)

$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$740, DW_AT_name("GPIO163")
	.dwattr $C$DW$740, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$740, DW_AT_bit_size(0x01)
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$740, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$740, DW_AT_decl_line(0xeb1)
	.dwattr $C$DW$740, DW_AT_decl_column(0x0c)

$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$741, DW_AT_name("GPIO164")
	.dwattr $C$DW$741, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$741, DW_AT_bit_size(0x01)
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$741, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$741, DW_AT_decl_line(0xeb2)
	.dwattr $C$DW$741, DW_AT_decl_column(0x0c)

$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$742, DW_AT_name("GPIO165")
	.dwattr $C$DW$742, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$742, DW_AT_bit_size(0x01)
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$742, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$742, DW_AT_decl_line(0xeb3)
	.dwattr $C$DW$742, DW_AT_decl_column(0x0c)

$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$743, DW_AT_name("GPIO166")
	.dwattr $C$DW$743, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$743, DW_AT_bit_size(0x01)
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$743, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$743, DW_AT_decl_line(0xeb4)
	.dwattr $C$DW$743, DW_AT_decl_column(0x0c)

$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$744, DW_AT_name("GPIO167")
	.dwattr $C$DW$744, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$744, DW_AT_bit_size(0x01)
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$744, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$744, DW_AT_decl_line(0xeb5)
	.dwattr $C$DW$744, DW_AT_decl_column(0x0c)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$745, DW_AT_name("GPIO168")
	.dwattr $C$DW$745, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$745, DW_AT_bit_size(0x01)
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$745, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$745, DW_AT_decl_line(0xeb6)
	.dwattr $C$DW$745, DW_AT_decl_column(0x0c)

$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$746, DW_AT_name("rsvd1")
	.dwattr $C$DW$746, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$746, DW_AT_bit_size(0x01)
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$746, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$746, DW_AT_decl_line(0xeb7)
	.dwattr $C$DW$746, DW_AT_decl_column(0x0c)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$747, DW_AT_name("rsvd2")
	.dwattr $C$DW$747, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$747, DW_AT_bit_size(0x01)
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$747, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$747, DW_AT_decl_line(0xeb8)
	.dwattr $C$DW$747, DW_AT_decl_column(0x0c)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$748, DW_AT_name("rsvd3")
	.dwattr $C$DW$748, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$748, DW_AT_bit_size(0x01)
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$748, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$748, DW_AT_decl_line(0xeb9)
	.dwattr $C$DW$748, DW_AT_decl_column(0x0c)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$749, DW_AT_name("rsvd4")
	.dwattr $C$DW$749, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$749, DW_AT_bit_size(0x01)
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$749, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$749, DW_AT_decl_line(0xeba)
	.dwattr $C$DW$749, DW_AT_decl_column(0x0c)

$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$750, DW_AT_name("rsvd5")
	.dwattr $C$DW$750, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$750, DW_AT_bit_size(0x01)
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$750, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$750, DW_AT_decl_line(0xebb)
	.dwattr $C$DW$750, DW_AT_decl_column(0x0c)

$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$751, DW_AT_name("rsvd6")
	.dwattr $C$DW$751, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$751, DW_AT_bit_size(0x01)
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$751, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$751, DW_AT_decl_line(0xebc)
	.dwattr $C$DW$751, DW_AT_decl_column(0x0c)

$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$752, DW_AT_name("rsvd7")
	.dwattr $C$DW$752, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$752, DW_AT_bit_size(0x01)
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$752, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$752, DW_AT_decl_line(0xebd)
	.dwattr $C$DW$752, DW_AT_decl_column(0x0c)

$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$753, DW_AT_name("rsvd8")
	.dwattr $C$DW$753, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$753, DW_AT_bit_size(0x01)
	.dwattr $C$DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$753, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$753, DW_AT_decl_line(0xebe)
	.dwattr $C$DW$753, DW_AT_decl_column(0x0c)

$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$754, DW_AT_name("rsvd9")
	.dwattr $C$DW$754, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$754, DW_AT_bit_size(0x01)
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$754, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$754, DW_AT_decl_line(0xebf)
	.dwattr $C$DW$754, DW_AT_decl_column(0x0c)

$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$755, DW_AT_name("rsvd10")
	.dwattr $C$DW$755, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$755, DW_AT_bit_size(0x01)
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$755, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$755, DW_AT_decl_line(0xec0)
	.dwattr $C$DW$755, DW_AT_decl_column(0x0c)

$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$756, DW_AT_name("rsvd11")
	.dwattr $C$DW$756, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$756, DW_AT_bit_size(0x01)
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$756, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$756, DW_AT_decl_line(0xec1)
	.dwattr $C$DW$756, DW_AT_decl_column(0x0c)

$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$757, DW_AT_name("rsvd12")
	.dwattr $C$DW$757, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$757, DW_AT_bit_size(0x01)
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$757, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$757, DW_AT_decl_line(0xec2)
	.dwattr $C$DW$757, DW_AT_decl_column(0x0c)

$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$758, DW_AT_name("rsvd13")
	.dwattr $C$DW$758, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$758, DW_AT_bit_size(0x01)
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$758, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$758, DW_AT_decl_line(0xec3)
	.dwattr $C$DW$758, DW_AT_decl_column(0x0c)

$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$759, DW_AT_name("rsvd14")
	.dwattr $C$DW$759, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$759, DW_AT_bit_size(0x01)
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$759, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$759, DW_AT_decl_line(0xec4)
	.dwattr $C$DW$759, DW_AT_decl_column(0x0c)

$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$760, DW_AT_name("rsvd15")
	.dwattr $C$DW$760, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$760, DW_AT_bit_size(0x01)
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$760, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$760, DW_AT_decl_line(0xec5)
	.dwattr $C$DW$760, DW_AT_decl_column(0x0c)

$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$761, DW_AT_name("rsvd16")
	.dwattr $C$DW$761, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$761, DW_AT_bit_size(0x01)
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$761, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$761, DW_AT_decl_line(0xec6)
	.dwattr $C$DW$761, DW_AT_decl_column(0x0c)

$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$762, DW_AT_name("rsvd17")
	.dwattr $C$DW$762, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$762, DW_AT_bit_size(0x01)
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$762, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$762, DW_AT_decl_line(0xec7)
	.dwattr $C$DW$762, DW_AT_decl_column(0x0c)

$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$763, DW_AT_name("rsvd18")
	.dwattr $C$DW$763, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$763, DW_AT_bit_size(0x01)
	.dwattr $C$DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$763, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$763, DW_AT_decl_line(0xec8)
	.dwattr $C$DW$763, DW_AT_decl_column(0x0c)

$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$764, DW_AT_name("rsvd19")
	.dwattr $C$DW$764, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$764, DW_AT_bit_size(0x01)
	.dwattr $C$DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$764, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$764, DW_AT_decl_line(0xec9)
	.dwattr $C$DW$764, DW_AT_decl_column(0x0c)

$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$765, DW_AT_name("rsvd20")
	.dwattr $C$DW$765, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$765, DW_AT_bit_size(0x01)
	.dwattr $C$DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$765, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$765, DW_AT_decl_line(0xeca)
	.dwattr $C$DW$765, DW_AT_decl_column(0x0c)

$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$766, DW_AT_name("rsvd21")
	.dwattr $C$DW$766, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$766, DW_AT_bit_size(0x01)
	.dwattr $C$DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$766, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$766, DW_AT_decl_line(0xecb)
	.dwattr $C$DW$766, DW_AT_decl_column(0x0c)

$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$767, DW_AT_name("rsvd22")
	.dwattr $C$DW$767, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$767, DW_AT_bit_size(0x01)
	.dwattr $C$DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$767, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$767, DW_AT_decl_line(0xecc)
	.dwattr $C$DW$767, DW_AT_decl_column(0x0c)

$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$768, DW_AT_name("rsvd23")
	.dwattr $C$DW$768, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$768, DW_AT_bit_size(0x01)
	.dwattr $C$DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$768, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$768, DW_AT_decl_line(0xecd)
	.dwattr $C$DW$768, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$61, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0xead)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62

$C$DW$T$62	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$62, DW_AT_name("GPFCLEAR_REG")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x02)
$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$769, DW_AT_name("all")
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$769, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$769, DW_AT_decl_line(0xed1)
	.dwattr $C$DW$769, DW_AT_decl_column(0x0d)

$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$770, DW_AT_name("bit")
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$770, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$770, DW_AT_decl_line(0xed2)
	.dwattr $C$DW$770, DW_AT_decl_column(0x1c)

	.dwattr $C$DW$T$62, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0xed0)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$62

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63

$C$DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$63, DW_AT_name("GPFDAT_BITS")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x02)
$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$771, DW_AT_name("GPIO160")
	.dwattr $C$DW$771, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$771, DW_AT_bit_size(0x01)
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$771, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$771, DW_AT_decl_line(0xe5e)
	.dwattr $C$DW$771, DW_AT_decl_column(0x0c)

$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$772, DW_AT_name("GPIO161")
	.dwattr $C$DW$772, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$772, DW_AT_bit_size(0x01)
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$772, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$772, DW_AT_decl_line(0xe5f)
	.dwattr $C$DW$772, DW_AT_decl_column(0x0c)

$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$773, DW_AT_name("GPIO162")
	.dwattr $C$DW$773, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$773, DW_AT_bit_size(0x01)
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$773, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$773, DW_AT_decl_line(0xe60)
	.dwattr $C$DW$773, DW_AT_decl_column(0x0c)

$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$774, DW_AT_name("GPIO163")
	.dwattr $C$DW$774, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$774, DW_AT_bit_size(0x01)
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$774, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$774, DW_AT_decl_line(0xe61)
	.dwattr $C$DW$774, DW_AT_decl_column(0x0c)

$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$775, DW_AT_name("GPIO164")
	.dwattr $C$DW$775, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$775, DW_AT_bit_size(0x01)
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$775, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$775, DW_AT_decl_line(0xe62)
	.dwattr $C$DW$775, DW_AT_decl_column(0x0c)

$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$776, DW_AT_name("GPIO165")
	.dwattr $C$DW$776, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$776, DW_AT_bit_size(0x01)
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$776, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$776, DW_AT_decl_line(0xe63)
	.dwattr $C$DW$776, DW_AT_decl_column(0x0c)

$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$777, DW_AT_name("GPIO166")
	.dwattr $C$DW$777, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$777, DW_AT_bit_size(0x01)
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$777, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$777, DW_AT_decl_line(0xe64)
	.dwattr $C$DW$777, DW_AT_decl_column(0x0c)

$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$778, DW_AT_name("GPIO167")
	.dwattr $C$DW$778, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$778, DW_AT_bit_size(0x01)
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$778, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$778, DW_AT_decl_line(0xe65)
	.dwattr $C$DW$778, DW_AT_decl_column(0x0c)

$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$779, DW_AT_name("GPIO168")
	.dwattr $C$DW$779, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$779, DW_AT_bit_size(0x01)
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$779, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$779, DW_AT_decl_line(0xe66)
	.dwattr $C$DW$779, DW_AT_decl_column(0x0c)

$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$780, DW_AT_name("rsvd1")
	.dwattr $C$DW$780, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$780, DW_AT_bit_size(0x01)
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$780, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$780, DW_AT_decl_line(0xe67)
	.dwattr $C$DW$780, DW_AT_decl_column(0x0c)

$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$781, DW_AT_name("rsvd2")
	.dwattr $C$DW$781, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$781, DW_AT_bit_size(0x01)
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$781, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$781, DW_AT_decl_line(0xe68)
	.dwattr $C$DW$781, DW_AT_decl_column(0x0c)

$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$782, DW_AT_name("rsvd3")
	.dwattr $C$DW$782, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$782, DW_AT_bit_size(0x01)
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$782, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$782, DW_AT_decl_line(0xe69)
	.dwattr $C$DW$782, DW_AT_decl_column(0x0c)

$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$783, DW_AT_name("rsvd4")
	.dwattr $C$DW$783, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$783, DW_AT_bit_size(0x01)
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$783, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$783, DW_AT_decl_line(0xe6a)
	.dwattr $C$DW$783, DW_AT_decl_column(0x0c)

$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$784, DW_AT_name("rsvd5")
	.dwattr $C$DW$784, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$784, DW_AT_bit_size(0x01)
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$784, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$784, DW_AT_decl_line(0xe6b)
	.dwattr $C$DW$784, DW_AT_decl_column(0x0c)

$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$785, DW_AT_name("rsvd6")
	.dwattr $C$DW$785, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$785, DW_AT_bit_size(0x01)
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$785, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$785, DW_AT_decl_line(0xe6c)
	.dwattr $C$DW$785, DW_AT_decl_column(0x0c)

$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$786, DW_AT_name("rsvd7")
	.dwattr $C$DW$786, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$786, DW_AT_bit_size(0x01)
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$786, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$786, DW_AT_decl_line(0xe6d)
	.dwattr $C$DW$786, DW_AT_decl_column(0x0c)

$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$787, DW_AT_name("rsvd8")
	.dwattr $C$DW$787, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$787, DW_AT_bit_size(0x01)
	.dwattr $C$DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$787, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$787, DW_AT_decl_line(0xe6e)
	.dwattr $C$DW$787, DW_AT_decl_column(0x0c)

$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$788, DW_AT_name("rsvd9")
	.dwattr $C$DW$788, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$788, DW_AT_bit_size(0x01)
	.dwattr $C$DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$788, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$788, DW_AT_decl_line(0xe6f)
	.dwattr $C$DW$788, DW_AT_decl_column(0x0c)

$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$789, DW_AT_name("rsvd10")
	.dwattr $C$DW$789, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$789, DW_AT_bit_size(0x01)
	.dwattr $C$DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$789, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$789, DW_AT_decl_line(0xe70)
	.dwattr $C$DW$789, DW_AT_decl_column(0x0c)

$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$790, DW_AT_name("rsvd11")
	.dwattr $C$DW$790, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$790, DW_AT_bit_size(0x01)
	.dwattr $C$DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$790, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$790, DW_AT_decl_line(0xe71)
	.dwattr $C$DW$790, DW_AT_decl_column(0x0c)

$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$791, DW_AT_name("rsvd12")
	.dwattr $C$DW$791, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$791, DW_AT_bit_size(0x01)
	.dwattr $C$DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$791, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$791, DW_AT_decl_line(0xe72)
	.dwattr $C$DW$791, DW_AT_decl_column(0x0c)

$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$792, DW_AT_name("rsvd13")
	.dwattr $C$DW$792, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$792, DW_AT_bit_size(0x01)
	.dwattr $C$DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$792, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$792, DW_AT_decl_line(0xe73)
	.dwattr $C$DW$792, DW_AT_decl_column(0x0c)

$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$793, DW_AT_name("rsvd14")
	.dwattr $C$DW$793, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$793, DW_AT_bit_size(0x01)
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$793, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$793, DW_AT_decl_line(0xe74)
	.dwattr $C$DW$793, DW_AT_decl_column(0x0c)

$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$794, DW_AT_name("rsvd15")
	.dwattr $C$DW$794, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$794, DW_AT_bit_size(0x01)
	.dwattr $C$DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$794, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$794, DW_AT_decl_line(0xe75)
	.dwattr $C$DW$794, DW_AT_decl_column(0x0c)

$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$795, DW_AT_name("rsvd16")
	.dwattr $C$DW$795, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$795, DW_AT_bit_size(0x01)
	.dwattr $C$DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$795, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$795, DW_AT_decl_line(0xe76)
	.dwattr $C$DW$795, DW_AT_decl_column(0x0c)

$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$796, DW_AT_name("rsvd17")
	.dwattr $C$DW$796, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$796, DW_AT_bit_size(0x01)
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$796, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$796, DW_AT_decl_line(0xe77)
	.dwattr $C$DW$796, DW_AT_decl_column(0x0c)

$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$797, DW_AT_name("rsvd18")
	.dwattr $C$DW$797, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$797, DW_AT_bit_size(0x01)
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$797, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$797, DW_AT_decl_line(0xe78)
	.dwattr $C$DW$797, DW_AT_decl_column(0x0c)

$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$798, DW_AT_name("rsvd19")
	.dwattr $C$DW$798, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$798, DW_AT_bit_size(0x01)
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$798, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$798, DW_AT_decl_line(0xe79)
	.dwattr $C$DW$798, DW_AT_decl_column(0x0c)

$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$799, DW_AT_name("rsvd20")
	.dwattr $C$DW$799, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$799, DW_AT_bit_size(0x01)
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$799, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$799, DW_AT_decl_line(0xe7a)
	.dwattr $C$DW$799, DW_AT_decl_column(0x0c)

$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$800, DW_AT_name("rsvd21")
	.dwattr $C$DW$800, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$800, DW_AT_bit_size(0x01)
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$800, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$800, DW_AT_decl_line(0xe7b)
	.dwattr $C$DW$800, DW_AT_decl_column(0x0c)

$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$801, DW_AT_name("rsvd22")
	.dwattr $C$DW$801, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$801, DW_AT_bit_size(0x01)
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$801, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$801, DW_AT_decl_line(0xe7c)
	.dwattr $C$DW$801, DW_AT_decl_column(0x0c)

$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$802, DW_AT_name("rsvd23")
	.dwattr $C$DW$802, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$802, DW_AT_bit_size(0x01)
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$802, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$802, DW_AT_decl_line(0xe7d)
	.dwattr $C$DW$802, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$63, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0xe5d)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$63

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64

$C$DW$T$64	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$64, DW_AT_name("GPFDAT_REG")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x02)
$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$803, DW_AT_name("all")
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$803, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$803, DW_AT_decl_line(0xe81)
	.dwattr $C$DW$803, DW_AT_decl_column(0x0d)

$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$804, DW_AT_name("bit")
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$804, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$804, DW_AT_decl_line(0xe82)
	.dwattr $C$DW$804, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$64, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0xe80)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$64

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65

$C$DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$65, DW_AT_name("GPFSET_BITS")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x02)
$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$805, DW_AT_name("GPIO160")
	.dwattr $C$DW$805, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$805, DW_AT_bit_size(0x01)
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$805, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$805, DW_AT_decl_line(0xe86)
	.dwattr $C$DW$805, DW_AT_decl_column(0x0c)

$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$806, DW_AT_name("GPIO161")
	.dwattr $C$DW$806, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$806, DW_AT_bit_size(0x01)
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$806, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$806, DW_AT_decl_line(0xe87)
	.dwattr $C$DW$806, DW_AT_decl_column(0x0c)

$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$807, DW_AT_name("GPIO162")
	.dwattr $C$DW$807, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$807, DW_AT_bit_size(0x01)
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$807, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$807, DW_AT_decl_line(0xe88)
	.dwattr $C$DW$807, DW_AT_decl_column(0x0c)

$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$808, DW_AT_name("GPIO163")
	.dwattr $C$DW$808, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$808, DW_AT_bit_size(0x01)
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$808, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$808, DW_AT_decl_line(0xe89)
	.dwattr $C$DW$808, DW_AT_decl_column(0x0c)

$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$809, DW_AT_name("GPIO164")
	.dwattr $C$DW$809, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$809, DW_AT_bit_size(0x01)
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$809, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$809, DW_AT_decl_line(0xe8a)
	.dwattr $C$DW$809, DW_AT_decl_column(0x0c)

$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$810, DW_AT_name("GPIO165")
	.dwattr $C$DW$810, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$810, DW_AT_bit_size(0x01)
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$810, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$810, DW_AT_decl_line(0xe8b)
	.dwattr $C$DW$810, DW_AT_decl_column(0x0c)

$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$811, DW_AT_name("GPIO166")
	.dwattr $C$DW$811, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$811, DW_AT_bit_size(0x01)
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$811, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$811, DW_AT_decl_line(0xe8c)
	.dwattr $C$DW$811, DW_AT_decl_column(0x0c)

$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$812, DW_AT_name("GPIO167")
	.dwattr $C$DW$812, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$812, DW_AT_bit_size(0x01)
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$812, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$812, DW_AT_decl_line(0xe8d)
	.dwattr $C$DW$812, DW_AT_decl_column(0x0c)

$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$813, DW_AT_name("GPIO168")
	.dwattr $C$DW$813, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$813, DW_AT_bit_size(0x01)
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$813, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$813, DW_AT_decl_line(0xe8e)
	.dwattr $C$DW$813, DW_AT_decl_column(0x0c)

$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$814, DW_AT_name("rsvd1")
	.dwattr $C$DW$814, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$814, DW_AT_bit_size(0x01)
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$814, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$814, DW_AT_decl_line(0xe8f)
	.dwattr $C$DW$814, DW_AT_decl_column(0x0c)

$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$815, DW_AT_name("rsvd2")
	.dwattr $C$DW$815, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$815, DW_AT_bit_size(0x01)
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$815, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$815, DW_AT_decl_line(0xe90)
	.dwattr $C$DW$815, DW_AT_decl_column(0x0c)

$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$816, DW_AT_name("rsvd3")
	.dwattr $C$DW$816, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$816, DW_AT_bit_size(0x01)
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$816, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$816, DW_AT_decl_line(0xe91)
	.dwattr $C$DW$816, DW_AT_decl_column(0x0c)

$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$817, DW_AT_name("rsvd4")
	.dwattr $C$DW$817, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$817, DW_AT_bit_size(0x01)
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$817, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$817, DW_AT_decl_line(0xe92)
	.dwattr $C$DW$817, DW_AT_decl_column(0x0c)

$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$818, DW_AT_name("rsvd5")
	.dwattr $C$DW$818, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$818, DW_AT_bit_size(0x01)
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$818, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$818, DW_AT_decl_line(0xe93)
	.dwattr $C$DW$818, DW_AT_decl_column(0x0c)

$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$819, DW_AT_name("rsvd6")
	.dwattr $C$DW$819, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$819, DW_AT_bit_size(0x01)
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$819, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$819, DW_AT_decl_line(0xe94)
	.dwattr $C$DW$819, DW_AT_decl_column(0x0c)

$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$820, DW_AT_name("rsvd7")
	.dwattr $C$DW$820, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$820, DW_AT_bit_size(0x01)
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$820, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$820, DW_AT_decl_line(0xe95)
	.dwattr $C$DW$820, DW_AT_decl_column(0x0c)

$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$821, DW_AT_name("rsvd8")
	.dwattr $C$DW$821, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$821, DW_AT_bit_size(0x01)
	.dwattr $C$DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$821, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$821, DW_AT_decl_line(0xe96)
	.dwattr $C$DW$821, DW_AT_decl_column(0x0c)

$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$822, DW_AT_name("rsvd9")
	.dwattr $C$DW$822, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$822, DW_AT_bit_size(0x01)
	.dwattr $C$DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$822, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$822, DW_AT_decl_line(0xe97)
	.dwattr $C$DW$822, DW_AT_decl_column(0x0c)

$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$823, DW_AT_name("rsvd10")
	.dwattr $C$DW$823, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$823, DW_AT_bit_size(0x01)
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$823, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$823, DW_AT_decl_line(0xe98)
	.dwattr $C$DW$823, DW_AT_decl_column(0x0c)

$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$824, DW_AT_name("rsvd11")
	.dwattr $C$DW$824, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$824, DW_AT_bit_size(0x01)
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$824, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$824, DW_AT_decl_line(0xe99)
	.dwattr $C$DW$824, DW_AT_decl_column(0x0c)

$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$825, DW_AT_name("rsvd12")
	.dwattr $C$DW$825, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$825, DW_AT_bit_size(0x01)
	.dwattr $C$DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$825, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$825, DW_AT_decl_line(0xe9a)
	.dwattr $C$DW$825, DW_AT_decl_column(0x0c)

$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$826, DW_AT_name("rsvd13")
	.dwattr $C$DW$826, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$826, DW_AT_bit_size(0x01)
	.dwattr $C$DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$826, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$826, DW_AT_decl_line(0xe9b)
	.dwattr $C$DW$826, DW_AT_decl_column(0x0c)

$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$827, DW_AT_name("rsvd14")
	.dwattr $C$DW$827, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$827, DW_AT_bit_size(0x01)
	.dwattr $C$DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$827, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$827, DW_AT_decl_line(0xe9c)
	.dwattr $C$DW$827, DW_AT_decl_column(0x0c)

$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$828, DW_AT_name("rsvd15")
	.dwattr $C$DW$828, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$828, DW_AT_bit_size(0x01)
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$828, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$828, DW_AT_decl_line(0xe9d)
	.dwattr $C$DW$828, DW_AT_decl_column(0x0c)

$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$829, DW_AT_name("rsvd16")
	.dwattr $C$DW$829, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$829, DW_AT_bit_size(0x01)
	.dwattr $C$DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$829, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$829, DW_AT_decl_line(0xe9e)
	.dwattr $C$DW$829, DW_AT_decl_column(0x0c)

$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$830, DW_AT_name("rsvd17")
	.dwattr $C$DW$830, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$830, DW_AT_bit_size(0x01)
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$830, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$830, DW_AT_decl_line(0xe9f)
	.dwattr $C$DW$830, DW_AT_decl_column(0x0c)

$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$831, DW_AT_name("rsvd18")
	.dwattr $C$DW$831, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$831, DW_AT_bit_size(0x01)
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$831, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$831, DW_AT_decl_line(0xea0)
	.dwattr $C$DW$831, DW_AT_decl_column(0x0c)

$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$832, DW_AT_name("rsvd19")
	.dwattr $C$DW$832, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$832, DW_AT_bit_size(0x01)
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$832, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$832, DW_AT_decl_line(0xea1)
	.dwattr $C$DW$832, DW_AT_decl_column(0x0c)

$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$833, DW_AT_name("rsvd20")
	.dwattr $C$DW$833, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$833, DW_AT_bit_size(0x01)
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$833, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$833, DW_AT_decl_line(0xea2)
	.dwattr $C$DW$833, DW_AT_decl_column(0x0c)

$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$834, DW_AT_name("rsvd21")
	.dwattr $C$DW$834, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$834, DW_AT_bit_size(0x01)
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$834, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$834, DW_AT_decl_line(0xea3)
	.dwattr $C$DW$834, DW_AT_decl_column(0x0c)

$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$835, DW_AT_name("rsvd22")
	.dwattr $C$DW$835, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$835, DW_AT_bit_size(0x01)
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$835, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$835, DW_AT_decl_line(0xea4)
	.dwattr $C$DW$835, DW_AT_decl_column(0x0c)

$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$836, DW_AT_name("rsvd23")
	.dwattr $C$DW$836, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$836, DW_AT_bit_size(0x01)
	.dwattr $C$DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$836, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$836, DW_AT_decl_line(0xea5)
	.dwattr $C$DW$836, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$65, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0xe85)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$65

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66

$C$DW$T$66	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$66, DW_AT_name("GPFSET_REG")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x02)
$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$837, DW_AT_name("all")
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$837, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$837, DW_AT_decl_line(0xea9)
	.dwattr $C$DW$837, DW_AT_decl_column(0x0d)

$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$838, DW_AT_name("bit")
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$838, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$838, DW_AT_decl_line(0xeaa)
	.dwattr $C$DW$838, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$66, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0xea8)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$66

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67

$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_name("GPFTOGGLE_BITS")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x02)
$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$839, DW_AT_name("GPIO160")
	.dwattr $C$DW$839, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$839, DW_AT_bit_size(0x01)
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$839, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$839, DW_AT_decl_line(0xed6)
	.dwattr $C$DW$839, DW_AT_decl_column(0x0c)

$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$840, DW_AT_name("GPIO161")
	.dwattr $C$DW$840, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$840, DW_AT_bit_size(0x01)
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$840, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$840, DW_AT_decl_line(0xed7)
	.dwattr $C$DW$840, DW_AT_decl_column(0x0c)

$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$841, DW_AT_name("GPIO162")
	.dwattr $C$DW$841, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$841, DW_AT_bit_size(0x01)
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$841, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$841, DW_AT_decl_line(0xed8)
	.dwattr $C$DW$841, DW_AT_decl_column(0x0c)

$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$842, DW_AT_name("GPIO163")
	.dwattr $C$DW$842, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$842, DW_AT_bit_size(0x01)
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$842, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$842, DW_AT_decl_line(0xed9)
	.dwattr $C$DW$842, DW_AT_decl_column(0x0c)

$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$843, DW_AT_name("GPIO164")
	.dwattr $C$DW$843, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$843, DW_AT_bit_size(0x01)
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$843, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$843, DW_AT_decl_line(0xeda)
	.dwattr $C$DW$843, DW_AT_decl_column(0x0c)

$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$844, DW_AT_name("GPIO165")
	.dwattr $C$DW$844, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$844, DW_AT_bit_size(0x01)
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$844, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$844, DW_AT_decl_line(0xedb)
	.dwattr $C$DW$844, DW_AT_decl_column(0x0c)

$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$845, DW_AT_name("GPIO166")
	.dwattr $C$DW$845, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$845, DW_AT_bit_size(0x01)
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$845, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$845, DW_AT_decl_line(0xedc)
	.dwattr $C$DW$845, DW_AT_decl_column(0x0c)

$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$846, DW_AT_name("GPIO167")
	.dwattr $C$DW$846, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$846, DW_AT_bit_size(0x01)
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$846, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$846, DW_AT_decl_line(0xedd)
	.dwattr $C$DW$846, DW_AT_decl_column(0x0c)

$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$847, DW_AT_name("GPIO168")
	.dwattr $C$DW$847, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$847, DW_AT_bit_size(0x01)
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$847, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$847, DW_AT_decl_line(0xede)
	.dwattr $C$DW$847, DW_AT_decl_column(0x0c)

$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$848, DW_AT_name("rsvd1")
	.dwattr $C$DW$848, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$848, DW_AT_bit_size(0x01)
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$848, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$848, DW_AT_decl_line(0xedf)
	.dwattr $C$DW$848, DW_AT_decl_column(0x0c)

$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$849, DW_AT_name("rsvd2")
	.dwattr $C$DW$849, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$849, DW_AT_bit_size(0x01)
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$849, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$849, DW_AT_decl_line(0xee0)
	.dwattr $C$DW$849, DW_AT_decl_column(0x0c)

$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$850, DW_AT_name("rsvd3")
	.dwattr $C$DW$850, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$850, DW_AT_bit_size(0x01)
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$850, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$850, DW_AT_decl_line(0xee1)
	.dwattr $C$DW$850, DW_AT_decl_column(0x0c)

$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$851, DW_AT_name("rsvd4")
	.dwattr $C$DW$851, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$851, DW_AT_bit_size(0x01)
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$851, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$851, DW_AT_decl_line(0xee2)
	.dwattr $C$DW$851, DW_AT_decl_column(0x0c)

$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$852, DW_AT_name("rsvd5")
	.dwattr $C$DW$852, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$852, DW_AT_bit_size(0x01)
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$852, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$852, DW_AT_decl_line(0xee3)
	.dwattr $C$DW$852, DW_AT_decl_column(0x0c)

$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$853, DW_AT_name("rsvd6")
	.dwattr $C$DW$853, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$853, DW_AT_bit_size(0x01)
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$853, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$853, DW_AT_decl_line(0xee4)
	.dwattr $C$DW$853, DW_AT_decl_column(0x0c)

$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$854, DW_AT_name("rsvd7")
	.dwattr $C$DW$854, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$854, DW_AT_bit_size(0x01)
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$854, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$854, DW_AT_decl_line(0xee5)
	.dwattr $C$DW$854, DW_AT_decl_column(0x0c)

$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$855, DW_AT_name("rsvd8")
	.dwattr $C$DW$855, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$855, DW_AT_bit_size(0x01)
	.dwattr $C$DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$855, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$855, DW_AT_decl_line(0xee6)
	.dwattr $C$DW$855, DW_AT_decl_column(0x0c)

$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$856, DW_AT_name("rsvd9")
	.dwattr $C$DW$856, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$856, DW_AT_bit_size(0x01)
	.dwattr $C$DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$856, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$856, DW_AT_decl_line(0xee7)
	.dwattr $C$DW$856, DW_AT_decl_column(0x0c)

$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$857, DW_AT_name("rsvd10")
	.dwattr $C$DW$857, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$857, DW_AT_bit_size(0x01)
	.dwattr $C$DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$857, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$857, DW_AT_decl_line(0xee8)
	.dwattr $C$DW$857, DW_AT_decl_column(0x0c)

$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$858, DW_AT_name("rsvd11")
	.dwattr $C$DW$858, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$858, DW_AT_bit_size(0x01)
	.dwattr $C$DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$858, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$858, DW_AT_decl_line(0xee9)
	.dwattr $C$DW$858, DW_AT_decl_column(0x0c)

$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$859, DW_AT_name("rsvd12")
	.dwattr $C$DW$859, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$859, DW_AT_bit_size(0x01)
	.dwattr $C$DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$859, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$859, DW_AT_decl_line(0xeea)
	.dwattr $C$DW$859, DW_AT_decl_column(0x0c)

$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$860, DW_AT_name("rsvd13")
	.dwattr $C$DW$860, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$860, DW_AT_bit_size(0x01)
	.dwattr $C$DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$860, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$860, DW_AT_decl_line(0xeeb)
	.dwattr $C$DW$860, DW_AT_decl_column(0x0c)

$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$861, DW_AT_name("rsvd14")
	.dwattr $C$DW$861, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$861, DW_AT_bit_size(0x01)
	.dwattr $C$DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$861, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$861, DW_AT_decl_line(0xeec)
	.dwattr $C$DW$861, DW_AT_decl_column(0x0c)

$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$862, DW_AT_name("rsvd15")
	.dwattr $C$DW$862, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$862, DW_AT_bit_size(0x01)
	.dwattr $C$DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$862, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$862, DW_AT_decl_line(0xeed)
	.dwattr $C$DW$862, DW_AT_decl_column(0x0c)

$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$863, DW_AT_name("rsvd16")
	.dwattr $C$DW$863, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$863, DW_AT_bit_size(0x01)
	.dwattr $C$DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$863, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$863, DW_AT_decl_line(0xeee)
	.dwattr $C$DW$863, DW_AT_decl_column(0x0c)

$C$DW$864	.dwtag  DW_TAG_member
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$864, DW_AT_name("rsvd17")
	.dwattr $C$DW$864, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$864, DW_AT_bit_size(0x01)
	.dwattr $C$DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$864, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$864, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$864, DW_AT_decl_line(0xeef)
	.dwattr $C$DW$864, DW_AT_decl_column(0x0c)

$C$DW$865	.dwtag  DW_TAG_member
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$865, DW_AT_name("rsvd18")
	.dwattr $C$DW$865, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$865, DW_AT_bit_size(0x01)
	.dwattr $C$DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$865, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$865, DW_AT_decl_line(0xef0)
	.dwattr $C$DW$865, DW_AT_decl_column(0x0c)

$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$866, DW_AT_name("rsvd19")
	.dwattr $C$DW$866, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$866, DW_AT_bit_size(0x01)
	.dwattr $C$DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$866, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$866, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$866, DW_AT_decl_line(0xef1)
	.dwattr $C$DW$866, DW_AT_decl_column(0x0c)

$C$DW$867	.dwtag  DW_TAG_member
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$867, DW_AT_name("rsvd20")
	.dwattr $C$DW$867, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$867, DW_AT_bit_size(0x01)
	.dwattr $C$DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$867, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$867, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$867, DW_AT_decl_line(0xef2)
	.dwattr $C$DW$867, DW_AT_decl_column(0x0c)

$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$868, DW_AT_name("rsvd21")
	.dwattr $C$DW$868, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$868, DW_AT_bit_size(0x01)
	.dwattr $C$DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$868, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$868, DW_AT_decl_line(0xef3)
	.dwattr $C$DW$868, DW_AT_decl_column(0x0c)

$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$869, DW_AT_name("rsvd22")
	.dwattr $C$DW$869, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$869, DW_AT_bit_size(0x01)
	.dwattr $C$DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$869, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$869, DW_AT_decl_line(0xef4)
	.dwattr $C$DW$869, DW_AT_decl_column(0x0c)

$C$DW$870	.dwtag  DW_TAG_member
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$870, DW_AT_name("rsvd23")
	.dwattr $C$DW$870, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$870, DW_AT_bit_size(0x01)
	.dwattr $C$DW$870, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$870, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$870, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$870, DW_AT_decl_line(0xef5)
	.dwattr $C$DW$870, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$67, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0xed5)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$67

	.dwendtag $C$DW$TU$67


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68

$C$DW$T$68	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$68, DW_AT_name("GPFTOGGLE_REG")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x02)
$C$DW$871	.dwtag  DW_TAG_member
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$871, DW_AT_name("all")
	.dwattr $C$DW$871, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$871, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$871, DW_AT_decl_line(0xef9)
	.dwattr $C$DW$871, DW_AT_decl_column(0x0d)

$C$DW$872	.dwtag  DW_TAG_member
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$872, DW_AT_name("bit")
	.dwattr $C$DW$872, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$872, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$872, DW_AT_decl_line(0xefa)
	.dwattr $C$DW$872, DW_AT_decl_column(0x1d)

	.dwattr $C$DW$T$68, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0xef8)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$68

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69

$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("GPIO_DATA_REGS")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x30)
$C$DW$873	.dwtag  DW_TAG_member
	.dwattr $C$DW$873, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$873, DW_AT_name("GPADAT")
	.dwattr $C$DW$873, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$873, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$873, DW_AT_decl_line(0xefe)
	.dwattr $C$DW$873, DW_AT_decl_column(0x2e)

$C$DW$874	.dwtag  DW_TAG_member
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$874, DW_AT_name("GPASET")
	.dwattr $C$DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$874, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$874, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$874, DW_AT_decl_line(0xeff)
	.dwattr $C$DW$874, DW_AT_decl_column(0x2e)

$C$DW$875	.dwtag  DW_TAG_member
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$875, DW_AT_name("GPACLEAR")
	.dwattr $C$DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$875, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$875, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$875, DW_AT_decl_line(0xf00)
	.dwattr $C$DW$875, DW_AT_decl_column(0x2e)

$C$DW$876	.dwtag  DW_TAG_member
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$876, DW_AT_name("GPATOGGLE")
	.dwattr $C$DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$876, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$876, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$876, DW_AT_decl_line(0xf01)
	.dwattr $C$DW$876, DW_AT_decl_column(0x2e)

$C$DW$877	.dwtag  DW_TAG_member
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$877, DW_AT_name("GPBDAT")
	.dwattr $C$DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$877, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$877, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$877, DW_AT_decl_line(0xf02)
	.dwattr $C$DW$877, DW_AT_decl_column(0x2e)

$C$DW$878	.dwtag  DW_TAG_member
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$878, DW_AT_name("GPBSET")
	.dwattr $C$DW$878, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$878, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$878, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$878, DW_AT_decl_line(0xf03)
	.dwattr $C$DW$878, DW_AT_decl_column(0x2e)

$C$DW$879	.dwtag  DW_TAG_member
	.dwattr $C$DW$879, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$879, DW_AT_name("GPBCLEAR")
	.dwattr $C$DW$879, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$879, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$879, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$879, DW_AT_decl_line(0xf04)
	.dwattr $C$DW$879, DW_AT_decl_column(0x2e)

$C$DW$880	.dwtag  DW_TAG_member
	.dwattr $C$DW$880, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$880, DW_AT_name("GPBTOGGLE")
	.dwattr $C$DW$880, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$880, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$880, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$880, DW_AT_decl_line(0xf05)
	.dwattr $C$DW$880, DW_AT_decl_column(0x2e)

$C$DW$881	.dwtag  DW_TAG_member
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$881, DW_AT_name("GPCDAT")
	.dwattr $C$DW$881, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$881, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$881, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$881, DW_AT_decl_line(0xf06)
	.dwattr $C$DW$881, DW_AT_decl_column(0x2e)

$C$DW$882	.dwtag  DW_TAG_member
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$882, DW_AT_name("GPCSET")
	.dwattr $C$DW$882, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$882, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$882, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$882, DW_AT_decl_line(0xf07)
	.dwattr $C$DW$882, DW_AT_decl_column(0x2e)

$C$DW$883	.dwtag  DW_TAG_member
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$883, DW_AT_name("GPCCLEAR")
	.dwattr $C$DW$883, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$883, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$883, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$883, DW_AT_decl_line(0xf08)
	.dwattr $C$DW$883, DW_AT_decl_column(0x2e)

$C$DW$884	.dwtag  DW_TAG_member
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$884, DW_AT_name("GPCTOGGLE")
	.dwattr $C$DW$884, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$884, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$884, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$884, DW_AT_decl_line(0xf09)
	.dwattr $C$DW$884, DW_AT_decl_column(0x2e)

$C$DW$885	.dwtag  DW_TAG_member
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$885, DW_AT_name("GPDDAT")
	.dwattr $C$DW$885, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$885, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$885, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$885, DW_AT_decl_line(0xf0a)
	.dwattr $C$DW$885, DW_AT_decl_column(0x2e)

$C$DW$886	.dwtag  DW_TAG_member
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$886, DW_AT_name("GPDSET")
	.dwattr $C$DW$886, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$886, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$886, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$886, DW_AT_decl_line(0xf0b)
	.dwattr $C$DW$886, DW_AT_decl_column(0x2e)

$C$DW$887	.dwtag  DW_TAG_member
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$887, DW_AT_name("GPDCLEAR")
	.dwattr $C$DW$887, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$887, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$887, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$887, DW_AT_decl_line(0xf0c)
	.dwattr $C$DW$887, DW_AT_decl_column(0x2e)

$C$DW$888	.dwtag  DW_TAG_member
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$888, DW_AT_name("GPDTOGGLE")
	.dwattr $C$DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$888, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$888, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$888, DW_AT_decl_line(0xf0d)
	.dwattr $C$DW$888, DW_AT_decl_column(0x2e)

$C$DW$889	.dwtag  DW_TAG_member
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$889, DW_AT_name("GPEDAT")
	.dwattr $C$DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$889, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$889, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$889, DW_AT_decl_line(0xf0e)
	.dwattr $C$DW$889, DW_AT_decl_column(0x2e)

$C$DW$890	.dwtag  DW_TAG_member
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$890, DW_AT_name("GPESET")
	.dwattr $C$DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$890, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$890, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$890, DW_AT_decl_line(0xf0f)
	.dwattr $C$DW$890, DW_AT_decl_column(0x2e)

$C$DW$891	.dwtag  DW_TAG_member
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$891, DW_AT_name("GPECLEAR")
	.dwattr $C$DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$891, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$891, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$891, DW_AT_decl_line(0xf10)
	.dwattr $C$DW$891, DW_AT_decl_column(0x2e)

$C$DW$892	.dwtag  DW_TAG_member
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$892, DW_AT_name("GPETOGGLE")
	.dwattr $C$DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$892, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$892, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$892, DW_AT_decl_line(0xf11)
	.dwattr $C$DW$892, DW_AT_decl_column(0x2e)

$C$DW$893	.dwtag  DW_TAG_member
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$893, DW_AT_name("GPFDAT")
	.dwattr $C$DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$893, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$893, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$893, DW_AT_decl_line(0xf12)
	.dwattr $C$DW$893, DW_AT_decl_column(0x2e)

$C$DW$894	.dwtag  DW_TAG_member
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$894, DW_AT_name("GPFSET")
	.dwattr $C$DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$894, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$894, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$894, DW_AT_decl_line(0xf13)
	.dwattr $C$DW$894, DW_AT_decl_column(0x2e)

$C$DW$895	.dwtag  DW_TAG_member
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$895, DW_AT_name("GPFCLEAR")
	.dwattr $C$DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$895, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$895, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$895, DW_AT_decl_line(0xf14)
	.dwattr $C$DW$895, DW_AT_decl_column(0x2e)

$C$DW$896	.dwtag  DW_TAG_member
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$896, DW_AT_name("GPFTOGGLE")
	.dwattr $C$DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$896, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$896, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$896, DW_AT_decl_line(0xf15)
	.dwattr $C$DW$896, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$69, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_gpio.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0xefd)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$69

	.dwendtag $C$DW$TU$69


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99
$C$DW$897	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$69)

$C$DW$T$99	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$897)

	.dwendtag $C$DW$TU$99


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70

$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("SPIBRR_BITS")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$898	.dwtag  DW_TAG_member
	.dwattr $C$DW$898, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$898, DW_AT_name("SPI_BIT_RATE")
	.dwattr $C$DW$898, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$898, DW_AT_bit_size(0x07)
	.dwattr $C$DW$898, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$898, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$898, DW_AT_decl_line(0x60)
	.dwattr $C$DW$898, DW_AT_decl_column(0x0c)

$C$DW$899	.dwtag  DW_TAG_member
	.dwattr $C$DW$899, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$899, DW_AT_name("rsvd1")
	.dwattr $C$DW$899, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$899, DW_AT_bit_size(0x09)
	.dwattr $C$DW$899, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$899, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$899, DW_AT_decl_line(0x61)
	.dwattr $C$DW$899, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$70, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$70

	.dwendtag $C$DW$TU$70


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71

$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_name("SPIBRR_REG")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$900	.dwtag  DW_TAG_member
	.dwattr $C$DW$900, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$900, DW_AT_name("all")
	.dwattr $C$DW$900, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$900, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$900, DW_AT_decl_line(0x65)
	.dwattr $C$DW$900, DW_AT_decl_column(0x0d)

$C$DW$901	.dwtag  DW_TAG_member
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$901, DW_AT_name("bit")
	.dwattr $C$DW$901, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$901, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$901, DW_AT_decl_line(0x66)
	.dwattr $C$DW$901, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$71, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$71

	.dwendtag $C$DW$TU$71


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("SPICCR_BITS")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$902	.dwtag  DW_TAG_member
	.dwattr $C$DW$902, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$902, DW_AT_name("SPICHAR")
	.dwattr $C$DW$902, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$902, DW_AT_bit_size(0x04)
	.dwattr $C$DW$902, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$902, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$902, DW_AT_decl_line(0x37)
	.dwattr $C$DW$902, DW_AT_decl_column(0x0c)

$C$DW$903	.dwtag  DW_TAG_member
	.dwattr $C$DW$903, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$903, DW_AT_name("SPILBK")
	.dwattr $C$DW$903, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$903, DW_AT_bit_size(0x01)
	.dwattr $C$DW$903, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$903, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$903, DW_AT_decl_line(0x38)
	.dwattr $C$DW$903, DW_AT_decl_column(0x0c)

$C$DW$904	.dwtag  DW_TAG_member
	.dwattr $C$DW$904, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$904, DW_AT_name("HS_MODE")
	.dwattr $C$DW$904, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$904, DW_AT_bit_size(0x01)
	.dwattr $C$DW$904, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$904, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$904, DW_AT_decl_line(0x39)
	.dwattr $C$DW$904, DW_AT_decl_column(0x0c)

$C$DW$905	.dwtag  DW_TAG_member
	.dwattr $C$DW$905, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$905, DW_AT_name("CLKPOLARITY")
	.dwattr $C$DW$905, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$905, DW_AT_bit_size(0x01)
	.dwattr $C$DW$905, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$905, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$905, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$905, DW_AT_decl_column(0x0c)

$C$DW$906	.dwtag  DW_TAG_member
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$906, DW_AT_name("SPISWRESET")
	.dwattr $C$DW$906, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$906, DW_AT_bit_size(0x01)
	.dwattr $C$DW$906, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$906, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$906, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$906, DW_AT_decl_column(0x0c)

$C$DW$907	.dwtag  DW_TAG_member
	.dwattr $C$DW$907, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$907, DW_AT_name("rsvd1")
	.dwattr $C$DW$907, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$907, DW_AT_bit_size(0x08)
	.dwattr $C$DW$907, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$907, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$907, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$907, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$72, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$72

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73

$C$DW$T$73	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$73, DW_AT_name("SPICCR_REG")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$908	.dwtag  DW_TAG_member
	.dwattr $C$DW$908, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$908, DW_AT_name("all")
	.dwattr $C$DW$908, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$908, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$908, DW_AT_decl_line(0x40)
	.dwattr $C$DW$908, DW_AT_decl_column(0x0d)

$C$DW$909	.dwtag  DW_TAG_member
	.dwattr $C$DW$909, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$909, DW_AT_name("bit")
	.dwattr $C$DW$909, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$909, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$909, DW_AT_decl_line(0x41)
	.dwattr $C$DW$909, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$73, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$73

	.dwendtag $C$DW$TU$73


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74

$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_name("SPICTL_BITS")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x01)
$C$DW$910	.dwtag  DW_TAG_member
	.dwattr $C$DW$910, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$910, DW_AT_name("SPIINTENA")
	.dwattr $C$DW$910, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$910, DW_AT_bit_size(0x01)
	.dwattr $C$DW$910, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$910, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$910, DW_AT_decl_line(0x45)
	.dwattr $C$DW$910, DW_AT_decl_column(0x0c)

$C$DW$911	.dwtag  DW_TAG_member
	.dwattr $C$DW$911, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$911, DW_AT_name("TALK")
	.dwattr $C$DW$911, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$911, DW_AT_bit_size(0x01)
	.dwattr $C$DW$911, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$911, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$911, DW_AT_decl_line(0x46)
	.dwattr $C$DW$911, DW_AT_decl_column(0x0c)

$C$DW$912	.dwtag  DW_TAG_member
	.dwattr $C$DW$912, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$912, DW_AT_name("MASTER_SLAVE")
	.dwattr $C$DW$912, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$912, DW_AT_bit_size(0x01)
	.dwattr $C$DW$912, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$912, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$912, DW_AT_decl_line(0x47)
	.dwattr $C$DW$912, DW_AT_decl_column(0x0c)

$C$DW$913	.dwtag  DW_TAG_member
	.dwattr $C$DW$913, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$913, DW_AT_name("CLK_PHASE")
	.dwattr $C$DW$913, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$913, DW_AT_bit_size(0x01)
	.dwattr $C$DW$913, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$913, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$913, DW_AT_decl_line(0x48)
	.dwattr $C$DW$913, DW_AT_decl_column(0x0c)

$C$DW$914	.dwtag  DW_TAG_member
	.dwattr $C$DW$914, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$914, DW_AT_name("OVERRUNINTENA")
	.dwattr $C$DW$914, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$914, DW_AT_bit_size(0x01)
	.dwattr $C$DW$914, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$914, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$914, DW_AT_decl_line(0x49)
	.dwattr $C$DW$914, DW_AT_decl_column(0x0c)

$C$DW$915	.dwtag  DW_TAG_member
	.dwattr $C$DW$915, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$915, DW_AT_name("rsvd1")
	.dwattr $C$DW$915, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$915, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$915, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$915, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$915, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$915, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$74, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$74

	.dwendtag $C$DW$TU$74


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75

$C$DW$T$75	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$75, DW_AT_name("SPICTL_REG")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x01)
$C$DW$916	.dwtag  DW_TAG_member
	.dwattr $C$DW$916, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$916, DW_AT_name("all")
	.dwattr $C$DW$916, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$916, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$916, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$916, DW_AT_decl_column(0x0d)

$C$DW$917	.dwtag  DW_TAG_member
	.dwattr $C$DW$917, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$917, DW_AT_name("bit")
	.dwattr $C$DW$917, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$917, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$917, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$917, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$75, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$75

	.dwendtag $C$DW$TU$75


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76

$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("SPIFFCT_BITS")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x01)
$C$DW$918	.dwtag  DW_TAG_member
	.dwattr $C$DW$918, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$918, DW_AT_name("TXDLY")
	.dwattr $C$DW$918, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$918, DW_AT_bit_size(0x08)
	.dwattr $C$DW$918, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$918, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$918, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$918, DW_AT_decl_column(0x0c)

$C$DW$919	.dwtag  DW_TAG_member
	.dwattr $C$DW$919, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$919, DW_AT_name("rsvd1")
	.dwattr $C$DW$919, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$919, DW_AT_bit_size(0x08)
	.dwattr $C$DW$919, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$919, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$919, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$919, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$76, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$76

	.dwendtag $C$DW$TU$76


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77

$C$DW$T$77	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$77, DW_AT_name("SPIFFCT_REG")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x01)
$C$DW$920	.dwtag  DW_TAG_member
	.dwattr $C$DW$920, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$920, DW_AT_name("all")
	.dwattr $C$DW$920, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$920, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$920, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$920, DW_AT_decl_column(0x0d)

$C$DW$921	.dwtag  DW_TAG_member
	.dwattr $C$DW$921, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$921, DW_AT_name("bit")
	.dwattr $C$DW$921, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$921, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$921, DW_AT_decl_line(0x90)
	.dwattr $C$DW$921, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$77, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$77

	.dwendtag $C$DW$TU$77


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78

$C$DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$78, DW_AT_name("SPIFFRX_BITS")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x01)
$C$DW$922	.dwtag  DW_TAG_member
	.dwattr $C$DW$922, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$922, DW_AT_name("RXFFIL")
	.dwattr $C$DW$922, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$922, DW_AT_bit_size(0x05)
	.dwattr $C$DW$922, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$922, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$922, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$922, DW_AT_decl_column(0x0c)

$C$DW$923	.dwtag  DW_TAG_member
	.dwattr $C$DW$923, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$923, DW_AT_name("RXFFIENA")
	.dwattr $C$DW$923, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$923, DW_AT_bit_size(0x01)
	.dwattr $C$DW$923, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$923, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$923, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$923, DW_AT_decl_column(0x0c)

$C$DW$924	.dwtag  DW_TAG_member
	.dwattr $C$DW$924, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$924, DW_AT_name("RXFFINTCLR")
	.dwattr $C$DW$924, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$924, DW_AT_bit_size(0x01)
	.dwattr $C$DW$924, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$924, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$924, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$924, DW_AT_decl_column(0x0c)

$C$DW$925	.dwtag  DW_TAG_member
	.dwattr $C$DW$925, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$925, DW_AT_name("RXFFINT")
	.dwattr $C$DW$925, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$925, DW_AT_bit_size(0x01)
	.dwattr $C$DW$925, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$925, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$925, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$925, DW_AT_decl_column(0x0c)

$C$DW$926	.dwtag  DW_TAG_member
	.dwattr $C$DW$926, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$926, DW_AT_name("RXFFST")
	.dwattr $C$DW$926, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$926, DW_AT_bit_size(0x05)
	.dwattr $C$DW$926, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$926, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$926, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$926, DW_AT_decl_column(0x0c)

$C$DW$927	.dwtag  DW_TAG_member
	.dwattr $C$DW$927, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$927, DW_AT_name("RXFIFORESET")
	.dwattr $C$DW$927, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$927, DW_AT_bit_size(0x01)
	.dwattr $C$DW$927, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$927, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$927, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$927, DW_AT_decl_column(0x0c)

$C$DW$928	.dwtag  DW_TAG_member
	.dwattr $C$DW$928, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$928, DW_AT_name("RXFFOVFCLR")
	.dwattr $C$DW$928, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$928, DW_AT_bit_size(0x01)
	.dwattr $C$DW$928, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$928, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$928, DW_AT_decl_line(0x80)
	.dwattr $C$DW$928, DW_AT_decl_column(0x0c)

$C$DW$929	.dwtag  DW_TAG_member
	.dwattr $C$DW$929, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$929, DW_AT_name("RXFFOVF")
	.dwattr $C$DW$929, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$929, DW_AT_bit_size(0x01)
	.dwattr $C$DW$929, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$929, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$929, DW_AT_decl_line(0x81)
	.dwattr $C$DW$929, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$78, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$78

	.dwendtag $C$DW$TU$78


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79

$C$DW$T$79	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$79, DW_AT_name("SPIFFRX_REG")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x01)
$C$DW$930	.dwtag  DW_TAG_member
	.dwattr $C$DW$930, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$930, DW_AT_name("all")
	.dwattr $C$DW$930, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$930, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$930, DW_AT_decl_line(0x85)
	.dwattr $C$DW$930, DW_AT_decl_column(0x0d)

$C$DW$931	.dwtag  DW_TAG_member
	.dwattr $C$DW$931, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$931, DW_AT_name("bit")
	.dwattr $C$DW$931, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$931, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$931, DW_AT_decl_line(0x86)
	.dwattr $C$DW$931, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$79, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$79

	.dwendtag $C$DW$TU$79


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80

$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("SPIFFTX_BITS")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x01)
$C$DW$932	.dwtag  DW_TAG_member
	.dwattr $C$DW$932, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$932, DW_AT_name("TXFFIL")
	.dwattr $C$DW$932, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$932, DW_AT_bit_size(0x05)
	.dwattr $C$DW$932, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$932, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$932, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$932, DW_AT_decl_column(0x0c)

$C$DW$933	.dwtag  DW_TAG_member
	.dwattr $C$DW$933, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$933, DW_AT_name("TXFFIENA")
	.dwattr $C$DW$933, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$933, DW_AT_bit_size(0x01)
	.dwattr $C$DW$933, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$933, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$933, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$933, DW_AT_decl_column(0x0c)

$C$DW$934	.dwtag  DW_TAG_member
	.dwattr $C$DW$934, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$934, DW_AT_name("TXFFINTCLR")
	.dwattr $C$DW$934, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$934, DW_AT_bit_size(0x01)
	.dwattr $C$DW$934, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$934, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$934, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$934, DW_AT_decl_column(0x0c)

$C$DW$935	.dwtag  DW_TAG_member
	.dwattr $C$DW$935, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$935, DW_AT_name("TXFFINT")
	.dwattr $C$DW$935, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$935, DW_AT_bit_size(0x01)
	.dwattr $C$DW$935, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$935, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$935, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$935, DW_AT_decl_column(0x0c)

$C$DW$936	.dwtag  DW_TAG_member
	.dwattr $C$DW$936, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$936, DW_AT_name("TXFFST")
	.dwattr $C$DW$936, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$936, DW_AT_bit_size(0x05)
	.dwattr $C$DW$936, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$936, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$936, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$936, DW_AT_decl_column(0x0c)

$C$DW$937	.dwtag  DW_TAG_member
	.dwattr $C$DW$937, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$937, DW_AT_name("TXFIFO")
	.dwattr $C$DW$937, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$937, DW_AT_bit_size(0x01)
	.dwattr $C$DW$937, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$937, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$937, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$937, DW_AT_decl_column(0x0c)

$C$DW$938	.dwtag  DW_TAG_member
	.dwattr $C$DW$938, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$938, DW_AT_name("SPIFFENA")
	.dwattr $C$DW$938, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$938, DW_AT_bit_size(0x01)
	.dwattr $C$DW$938, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$938, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$938, DW_AT_decl_line(0x70)
	.dwattr $C$DW$938, DW_AT_decl_column(0x0c)

$C$DW$939	.dwtag  DW_TAG_member
	.dwattr $C$DW$939, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$939, DW_AT_name("SPIRST")
	.dwattr $C$DW$939, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$939, DW_AT_bit_size(0x01)
	.dwattr $C$DW$939, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$939, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$939, DW_AT_decl_line(0x71)
	.dwattr $C$DW$939, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$80, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$80

	.dwendtag $C$DW$TU$80


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81

$C$DW$T$81	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$81, DW_AT_name("SPIFFTX_REG")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x01)
$C$DW$940	.dwtag  DW_TAG_member
	.dwattr $C$DW$940, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$940, DW_AT_name("all")
	.dwattr $C$DW$940, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$940, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$940, DW_AT_decl_line(0x75)
	.dwattr $C$DW$940, DW_AT_decl_column(0x0d)

$C$DW$941	.dwtag  DW_TAG_member
	.dwattr $C$DW$941, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$941, DW_AT_name("bit")
	.dwattr $C$DW$941, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$941, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$941, DW_AT_decl_line(0x76)
	.dwattr $C$DW$941, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$81, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$81

	.dwendtag $C$DW$TU$81


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82

$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_name("SPIPRI_BITS")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x01)
$C$DW$942	.dwtag  DW_TAG_member
	.dwattr $C$DW$942, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$942, DW_AT_name("TRIWIRE")
	.dwattr $C$DW$942, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$942, DW_AT_bit_size(0x01)
	.dwattr $C$DW$942, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$942, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$942, DW_AT_decl_line(0x94)
	.dwattr $C$DW$942, DW_AT_decl_column(0x0c)

$C$DW$943	.dwtag  DW_TAG_member
	.dwattr $C$DW$943, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$943, DW_AT_name("STEINV")
	.dwattr $C$DW$943, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$943, DW_AT_bit_size(0x01)
	.dwattr $C$DW$943, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$943, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$943, DW_AT_decl_line(0x95)
	.dwattr $C$DW$943, DW_AT_decl_column(0x0c)

$C$DW$944	.dwtag  DW_TAG_member
	.dwattr $C$DW$944, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$944, DW_AT_name("rsvd1")
	.dwattr $C$DW$944, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$944, DW_AT_bit_size(0x02)
	.dwattr $C$DW$944, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$944, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$944, DW_AT_decl_line(0x96)
	.dwattr $C$DW$944, DW_AT_decl_column(0x0c)

$C$DW$945	.dwtag  DW_TAG_member
	.dwattr $C$DW$945, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$945, DW_AT_name("FREE")
	.dwattr $C$DW$945, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$945, DW_AT_bit_size(0x01)
	.dwattr $C$DW$945, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$945, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$945, DW_AT_decl_line(0x97)
	.dwattr $C$DW$945, DW_AT_decl_column(0x0c)

$C$DW$946	.dwtag  DW_TAG_member
	.dwattr $C$DW$946, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$946, DW_AT_name("SOFT")
	.dwattr $C$DW$946, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$946, DW_AT_bit_size(0x01)
	.dwattr $C$DW$946, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$946, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$946, DW_AT_decl_line(0x98)
	.dwattr $C$DW$946, DW_AT_decl_column(0x0c)

$C$DW$947	.dwtag  DW_TAG_member
	.dwattr $C$DW$947, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$947, DW_AT_name("rsvd2")
	.dwattr $C$DW$947, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$947, DW_AT_bit_size(0x01)
	.dwattr $C$DW$947, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$947, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$947, DW_AT_decl_line(0x99)
	.dwattr $C$DW$947, DW_AT_decl_column(0x0c)

$C$DW$948	.dwtag  DW_TAG_member
	.dwattr $C$DW$948, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$948, DW_AT_name("rsvd3")
	.dwattr $C$DW$948, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$948, DW_AT_bit_size(0x09)
	.dwattr $C$DW$948, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$948, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$948, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$948, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$82, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x93)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$82

	.dwendtag $C$DW$TU$82


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83

$C$DW$T$83	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$83, DW_AT_name("SPIPRI_REG")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$949	.dwtag  DW_TAG_member
	.dwattr $C$DW$949, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$949, DW_AT_name("all")
	.dwattr $C$DW$949, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$949, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$949, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$949, DW_AT_decl_column(0x0d)

$C$DW$950	.dwtag  DW_TAG_member
	.dwattr $C$DW$950, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$950, DW_AT_name("bit")
	.dwattr $C$DW$950, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$950, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$950, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$950, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$83, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$83

	.dwendtag $C$DW$TU$83


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84

$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("SPISTS_BITS")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x01)
$C$DW$951	.dwtag  DW_TAG_member
	.dwattr $C$DW$951, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$951, DW_AT_name("rsvd1")
	.dwattr $C$DW$951, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$951, DW_AT_bit_size(0x05)
	.dwattr $C$DW$951, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$951, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$951, DW_AT_decl_line(0x53)
	.dwattr $C$DW$951, DW_AT_decl_column(0x0c)

$C$DW$952	.dwtag  DW_TAG_member
	.dwattr $C$DW$952, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$952, DW_AT_name("BUFFULL_FLAG")
	.dwattr $C$DW$952, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$952, DW_AT_bit_size(0x01)
	.dwattr $C$DW$952, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$952, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$952, DW_AT_decl_line(0x54)
	.dwattr $C$DW$952, DW_AT_decl_column(0x0c)

$C$DW$953	.dwtag  DW_TAG_member
	.dwattr $C$DW$953, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$953, DW_AT_name("INT_FLAG")
	.dwattr $C$DW$953, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$953, DW_AT_bit_size(0x01)
	.dwattr $C$DW$953, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$953, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$953, DW_AT_decl_line(0x55)
	.dwattr $C$DW$953, DW_AT_decl_column(0x0c)

$C$DW$954	.dwtag  DW_TAG_member
	.dwattr $C$DW$954, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$954, DW_AT_name("OVERRUN_FLAG")
	.dwattr $C$DW$954, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$954, DW_AT_bit_size(0x01)
	.dwattr $C$DW$954, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$954, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$954, DW_AT_decl_line(0x56)
	.dwattr $C$DW$954, DW_AT_decl_column(0x0c)

$C$DW$955	.dwtag  DW_TAG_member
	.dwattr $C$DW$955, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$955, DW_AT_name("rsvd2")
	.dwattr $C$DW$955, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$955, DW_AT_bit_size(0x08)
	.dwattr $C$DW$955, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$955, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$955, DW_AT_decl_line(0x57)
	.dwattr $C$DW$955, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$84, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$84

	.dwendtag $C$DW$TU$84


$C$DW$TU$85	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$85

$C$DW$T$85	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$85, DW_AT_name("SPISTS_REG")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$956	.dwtag  DW_TAG_member
	.dwattr $C$DW$956, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$956, DW_AT_name("all")
	.dwattr $C$DW$956, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$956, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$956, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$956, DW_AT_decl_column(0x0d)

$C$DW$957	.dwtag  DW_TAG_member
	.dwattr $C$DW$957, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$957, DW_AT_name("bit")
	.dwattr $C$DW$957, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$957, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$957, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$957, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$85, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$85

	.dwendtag $C$DW$TU$85


$C$DW$TU$87	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$87

$C$DW$T$87	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$87, DW_AT_name("SPI_REGS")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x10)
$C$DW$958	.dwtag  DW_TAG_member
	.dwattr $C$DW$958, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$958, DW_AT_name("SPICCR")
	.dwattr $C$DW$958, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$958, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$958, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$958, DW_AT_decl_column(0x2e)

$C$DW$959	.dwtag  DW_TAG_member
	.dwattr $C$DW$959, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$959, DW_AT_name("SPICTL")
	.dwattr $C$DW$959, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$959, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$959, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$959, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$959, DW_AT_decl_column(0x2e)

$C$DW$960	.dwtag  DW_TAG_member
	.dwattr $C$DW$960, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$960, DW_AT_name("SPISTS")
	.dwattr $C$DW$960, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$960, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$960, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$960, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$960, DW_AT_decl_column(0x2e)

$C$DW$961	.dwtag  DW_TAG_member
	.dwattr $C$DW$961, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$961, DW_AT_name("rsvd1")
	.dwattr $C$DW$961, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$961, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$961, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$961, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$961, DW_AT_decl_column(0x2e)

$C$DW$962	.dwtag  DW_TAG_member
	.dwattr $C$DW$962, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$962, DW_AT_name("SPIBRR")
	.dwattr $C$DW$962, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$962, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$962, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$962, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$962, DW_AT_decl_column(0x2e)

$C$DW$963	.dwtag  DW_TAG_member
	.dwattr $C$DW$963, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$963, DW_AT_name("rsvd2")
	.dwattr $C$DW$963, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$963, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$963, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$963, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$963, DW_AT_decl_column(0x2e)

$C$DW$964	.dwtag  DW_TAG_member
	.dwattr $C$DW$964, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$964, DW_AT_name("SPIRXEMU")
	.dwattr $C$DW$964, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$964, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$964, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$964, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$964, DW_AT_decl_column(0x2e)

$C$DW$965	.dwtag  DW_TAG_member
	.dwattr $C$DW$965, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$965, DW_AT_name("SPIRXBUF")
	.dwattr $C$DW$965, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$965, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$965, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$965, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$965, DW_AT_decl_column(0x2e)

$C$DW$966	.dwtag  DW_TAG_member
	.dwattr $C$DW$966, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$966, DW_AT_name("SPITXBUF")
	.dwattr $C$DW$966, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$966, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$966, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$966, DW_AT_decl_line(0xab)
	.dwattr $C$DW$966, DW_AT_decl_column(0x2e)

$C$DW$967	.dwtag  DW_TAG_member
	.dwattr $C$DW$967, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$967, DW_AT_name("SPIDAT")
	.dwattr $C$DW$967, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$967, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$967, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$967, DW_AT_decl_line(0xac)
	.dwattr $C$DW$967, DW_AT_decl_column(0x2e)

$C$DW$968	.dwtag  DW_TAG_member
	.dwattr $C$DW$968, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$968, DW_AT_name("SPIFFTX")
	.dwattr $C$DW$968, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$968, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$968, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$968, DW_AT_decl_line(0xad)
	.dwattr $C$DW$968, DW_AT_decl_column(0x2e)

$C$DW$969	.dwtag  DW_TAG_member
	.dwattr $C$DW$969, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$969, DW_AT_name("SPIFFRX")
	.dwattr $C$DW$969, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$969, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$969, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$969, DW_AT_decl_line(0xae)
	.dwattr $C$DW$969, DW_AT_decl_column(0x2e)

$C$DW$970	.dwtag  DW_TAG_member
	.dwattr $C$DW$970, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$970, DW_AT_name("SPIFFCT")
	.dwattr $C$DW$970, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$970, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$970, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$970, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$970, DW_AT_decl_column(0x2e)

$C$DW$971	.dwtag  DW_TAG_member
	.dwattr $C$DW$971, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$971, DW_AT_name("rsvd3")
	.dwattr $C$DW$971, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$971, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$971, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$971, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$971, DW_AT_decl_column(0x2e)

$C$DW$972	.dwtag  DW_TAG_member
	.dwattr $C$DW$972, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$972, DW_AT_name("SPIPRI")
	.dwattr $C$DW$972, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$972, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$972, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$972, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$972, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$87, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_spi.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$87

	.dwendtag $C$DW$TU$87


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105
$C$DW$973	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$973, DW_AT_type(*$C$DW$T$87)

$C$DW$T$105	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$973)

	.dwendtag $C$DW$TU$105


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


$C$DW$TU$113	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$113
$C$DW$T$113	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$113, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$113, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$113


$C$DW$TU$114	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$114
$C$DW$T$114	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$114, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$114, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$114


$C$DW$TU$120	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$120
$C$DW$974	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$974, DW_AT_type(*$C$DW$T$114)

$C$DW$T$120	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$974)

	.dwendtag $C$DW$TU$120


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


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_device.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x124)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$19


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86

$C$DW$T$86	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x02)
$C$DW$975	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$975, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$86

	.dwendtag $C$DW$TU$86


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


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("Uint32")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$21, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_device.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x125)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$21


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


$C$DW$TU$126	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$126
$C$DW$T$126	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$126, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$126, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$126, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$126

