;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Sat May 30 20:15:25 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("syscfg/board.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen Unix v25.11.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP")

;**************************************************************
;* FUNCTION SYNONYMS                                          *
;**************************************************************
	.global	||EQEP_init||
||EQEP_init||	.set ||QEP_SENSOR_init||
	.global	||SCI_init||
||SCI_init||	.set ||UART_DEBUG_init||
	.global	||SPI_init||
||SPI_init||	.set ||DRV8305_SPI_init||

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$1, DW_AT_linkage_name("GPIO_setPinConfig")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x405)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$110)

	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$3, DW_AT_linkage_name("GPIO_setPadConfig")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x36f)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$110)

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$110)

	.dwendtag $C$DW$3


$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$6, DW_AT_linkage_name("GPIO_setQualificationMode")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x396)
	.dwattr $C$DW$6, DW_AT_decl_column(0x01)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$110)

$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$88)

	.dwendtag $C$DW$6


$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("ADC_setMode")
	.dwattr $C$DW$9, DW_AT_linkage_name("ADC_setMode")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x7e2)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$110)

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$36)

$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$38)

	.dwendtag $C$DW$9


$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$13, DW_AT_linkage_name("SysCtl_delay")
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0xcd7)
	.dwattr $C$DW$13, DW_AT_decl_column(0x01)
$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$110)

	.dwendtag $C$DW$13


$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("EQEP_setInputPolarity")
	.dwattr $C$DW$15, DW_AT_linkage_name("EQEP_setInputPolarity")
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0x688)
	.dwattr $C$DW$15, DW_AT_decl_column(0x01)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$110)

$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$136)

$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$136)

$C$DW$19	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$136)

$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$136)

	.dwendtag $C$DW$15


$C$DW$21	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$21, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$21, DW_AT_linkage_name("GPIO_setDirectionMode")
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0x326)
	.dwattr $C$DW$21, DW_AT_decl_column(0x01)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$110)

$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$86)

	.dwendtag $C$DW$21


$C$DW$24	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$24, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$24, DW_AT_linkage_name("GPIO_setControllerCore")
	.dwattr $C$DW$24, DW_AT_declaration
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x3d2)
	.dwattr $C$DW$24, DW_AT_decl_column(0x01)
$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$110)

$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$90)

	.dwendtag $C$DW$24


$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("adcA1_isr")
	.dwattr $C$DW$27, DW_AT_linkage_name("adcA1_isr")
	.dwattr $C$DW$27, DW_AT_declaration
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("syscfg/board.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0x132)
	.dwattr $C$DW$27, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$27


$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("Interrupt_enable")
	.dwattr $C$DW$28, DW_AT_linkage_name("Interrupt_enable")
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/interrupt.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x1c9)
	.dwattr $C$DW$28, DW_AT_decl_column(0x01)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$110)

	.dwendtag $C$DW$28


$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("sciA_rx_isr")
	.dwattr $C$DW$30, DW_AT_linkage_name("sciA_rx_isr")
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("syscfg/board.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x138)
	.dwattr $C$DW$30, DW_AT_decl_column(0x19)
	.dwendtag $C$DW$30


$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("SCI_clearInterruptStatus")
	.dwattr $C$DW$31, DW_AT_linkage_name("SCI_clearInterruptStatus")
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x636)
	.dwattr $C$DW$31, DW_AT_decl_column(0x01)
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$110)

$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$110)

	.dwendtag $C$DW$31


$C$DW$34	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$34, DW_AT_name("SCI_setConfig")
	.dwattr $C$DW$34, DW_AT_linkage_name("SCI_setConfig")
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0x5b6)
	.dwattr $C$DW$34, DW_AT_decl_column(0x01)
$C$DW$35	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$110)

$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$110)

$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$110)

$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$110)

	.dwendtag $C$DW$34


$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("SCI_enableInterrupt")
	.dwattr $C$DW$39, DW_AT_linkage_name("SCI_enableInterrupt")
	.dwattr $C$DW$39, DW_AT_declaration
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0x601)
	.dwattr $C$DW$39, DW_AT_decl_column(0x01)
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$110)

$C$DW$41	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$110)

	.dwendtag $C$DW$39


$C$DW$42	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$42, DW_AT_name("SPI_setConfig")
	.dwattr $C$DW$42, DW_AT_linkage_name("SPI_setConfig")
	.dwattr $C$DW$42, DW_AT_declaration
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0x599)
	.dwattr $C$DW$42, DW_AT_decl_column(0x01)
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$110)

$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$110)

$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$104)

$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$106)

$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$110)

$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$120)

	.dwendtag $C$DW$42


$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("__eallow")
	.dwattr $C$DW$49, DW_AT_linkage_name("__eallow")
	.dwattr $C$DW$49, DW_AT_declaration
	.dwattr $C$DW$49, DW_AT_external
	.dwendtag $C$DW$49


$C$DW$50	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$50, DW_AT_name("__edis")
	.dwattr $C$DW$50, DW_AT_linkage_name("__edis")
	.dwattr $C$DW$50, DW_AT_declaration
	.dwattr $C$DW$50, DW_AT_external
	.dwendtag $C$DW$50

;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TI5gcbfA62r /tmp/TI5gcxgOlJ0 --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TI5gcbhwYho 
	.sect	".text:myADCC_init"
	.clink
	.global	||myADCC_init||

$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("myADCC_init")
	.dwattr $C$DW$51, DW_AT_low_pc(||myADCC_init||)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_linkage_name("myADCC_init")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$51, DW_AT_decl_line(0x120)
	.dwattr $C$DW$51, DW_AT_decl_column(0x06)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "syscfg/board.c",line 288,column 19,is_stmt,address ||myADCC_init||,isa 0

	.dwfde $C$DW$CIE, ||myADCC_init||

;***************************************************************
;* FNAME: myADCC_init                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||myADCC_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 470,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |470| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 471,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7501)        ; [CPU_ALU] |471| 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |471| 
        ORB       AL,#0x06              ; [CPU_ALU] |471| 
        MOV       *(0:0x7501),AL        ; [CPU_ALU] |471| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 473,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |473| 
	.dwpsn	file "syscfg/board.c",line 296,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |296| 
        MOVB      XAR5,#0               ; [CPU_ALU] |296| 
        MOV       ACC,#29952            ; [CPU_ALU] |296| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("ADC_setMode")
	.dwattr $C$DW$52, DW_AT_TI_call

        LCR       #||ADC_setMode||      ; [CPU_ALU] |296| 
        ; call occurs [#||ADC_setMode||] ; [] |296| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 628,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |628| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 629,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7500)        ; [CPU_ALU] |629| 
        AND       AL,#0xfffb            ; [CPU_ALU] |629| 
        MOV       *(0:0x7500),AL        ; [CPU_ALU] |629| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 664,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7500)        ; [CPU_ALU] |664| 
        ORB       AL,#0x80              ; [CPU_ALU] |664| 
        MOV       *(0:0x7500),AL        ; [CPU_ALU] |664| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 665,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |665| 
	.dwpsn	file "syscfg/board.c",line 308,column 2,is_stmt,isa 0
        MOV       ACC,#19998            ; [CPU_ALU] |308| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$53, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |308| 
        ; call occurs [#||SysCtl_delay||] ; [] |308| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 1057,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1057| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 1058,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7502)        ; [CPU_ALU] |1058| 
        AND       AL,#0x7fff            ; [CPU_ALU] |1058| 
        MOV       *(0:0x7502),AL        ; [CPU_ALU] |1058| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 1099,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7509)        ; [CPU_ALU] |1099| 
        AND       AL,#0xffe0            ; [CPU_ALU] |1099| 
        MOV       *(0:0x7509),AL        ; [CPU_ALU] |1099| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 538,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7510)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#14                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7510),ACC       ; [CPU_FPU] |538| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 594,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x750a)       ; [CPU_FPU] |594| 
        AND       AL,#65532             ; [CPU_ALU] |594| 
        MOV32     *(0:0x750a),ACC       ; [CPU_FPU] |594| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 598,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |598| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$51, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x14c)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text:myADCB_init"
	.clink
	.global	||myADCB_init||

$C$DW$55	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$55, DW_AT_name("myADCB_init")
	.dwattr $C$DW$55, DW_AT_low_pc(||myADCB_init||)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_linkage_name("myADCB_init")
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$55, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$55, DW_AT_decl_column(0x06)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "syscfg/board.c",line 242,column 19,is_stmt,address ||myADCB_init||,isa 0

	.dwfde $C$DW$CIE, ||myADCB_init||

;***************************************************************
;* FNAME: myADCB_init                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||myADCB_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 470,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |470| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 471,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7481)        ; [CPU_ALU] |471| 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |471| 
        ORB       AL,#0x06              ; [CPU_ALU] |471| 
        MOV       *(0:0x7481),AL        ; [CPU_ALU] |471| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 473,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |473| 
	.dwpsn	file "syscfg/board.c",line 250,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |250| 
        MOVB      XAR5,#0               ; [CPU_ALU] |250| 
        MOV       ACC,#29824            ; [CPU_ALU] |250| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("ADC_setMode")
	.dwattr $C$DW$56, DW_AT_TI_call

        LCR       #||ADC_setMode||      ; [CPU_ALU] |250| 
        ; call occurs [#||ADC_setMode||] ; [] |250| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 628,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |628| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 629,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7480)        ; [CPU_ALU] |629| 
        AND       AL,#0xfffb            ; [CPU_ALU] |629| 
        MOV       *(0:0x7480),AL        ; [CPU_ALU] |629| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 664,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7480)        ; [CPU_ALU] |664| 
        ORB       AL,#0x80              ; [CPU_ALU] |664| 
        MOV       *(0:0x7480),AL        ; [CPU_ALU] |664| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 665,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |665| 
	.dwpsn	file "syscfg/board.c",line 262,column 2,is_stmt,isa 0
        MOV       ACC,#19998            ; [CPU_ALU] |262| 
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$57, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |262| 
        ; call occurs [#||SysCtl_delay||] ; [] |262| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 1057,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1057| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 1058,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7482)        ; [CPU_ALU] |1058| 
        AND       AL,#0x7fff            ; [CPU_ALU] |1058| 
        MOV       *(0:0x7482),AL        ; [CPU_ALU] |1058| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 1099,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7489)        ; [CPU_ALU] |1099| 
        AND       AL,#0xffe0            ; [CPU_ALU] |1099| 
        MOV       *(0:0x7489),AL        ; [CPU_ALU] |1099| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 538,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7492)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#14                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7492),ACC       ; [CPU_FPU] |538| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 594,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x748a)       ; [CPU_FPU] |594| 
        AND       AL,#65523             ; [CPU_ALU] |594| 
        MOV32     *(0:0x748a),ACC       ; [CPU_FPU] |594| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 598,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |598| 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$55, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x11e)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$55

	.sect	".text:myADCA_init"
	.clink
	.global	||myADCA_init||

$C$DW$59	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$59, DW_AT_name("myADCA_init")
	.dwattr $C$DW$59, DW_AT_low_pc(||myADCA_init||)
	.dwattr $C$DW$59, DW_AT_high_pc(0x00)
	.dwattr $C$DW$59, DW_AT_linkage_name("myADCA_init")
	.dwattr $C$DW$59, DW_AT_external
	.dwattr $C$DW$59, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$59, DW_AT_decl_line(0xac)
	.dwattr $C$DW$59, DW_AT_decl_column(0x06)
	.dwattr $C$DW$59, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "syscfg/board.c",line 172,column 19,is_stmt,address ||myADCA_init||,isa 0

	.dwfde $C$DW$CIE, ||myADCA_init||

;***************************************************************
;* FNAME: myADCA_init                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||myADCA_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 470,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |470| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 471,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7401)        ; [CPU_ALU] |471| 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |471| 
        ORB       AL,#0x06              ; [CPU_ALU] |471| 
        MOV       *(0:0x7401),AL        ; [CPU_ALU] |471| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 473,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |473| 
	.dwpsn	file "syscfg/board.c",line 180,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |180| 
        MOVB      XAR5,#0               ; [CPU_ALU] |180| 
        MOV       ACC,#29696            ; [CPU_ALU] |180| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("ADC_setMode")
	.dwattr $C$DW$60, DW_AT_TI_call

        LCR       #||ADC_setMode||      ; [CPU_ALU] |180| 
        ; call occurs [#||ADC_setMode||] ; [] |180| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 628,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |628| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 629,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7400)        ; [CPU_ALU] |629| 
        ORB       AL,#0x04              ; [CPU_ALU] |629| 
        MOV       *(0:0x7400),AL        ; [CPU_ALU] |629| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 664,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7400)        ; [CPU_ALU] |664| 
        ORB       AL,#0x80              ; [CPU_ALU] |664| 
        MOV       *(0:0x7400),AL        ; [CPU_ALU] |664| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 665,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |665| 
	.dwpsn	file "syscfg/board.c",line 192,column 2,is_stmt,isa 0
        MOV       ACC,#19998            ; [CPU_ALU] |192| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$61, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |192| 
        ; call occurs [#||SysCtl_delay||] ; [] |192| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 1057,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1057| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 1058,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7402)        ; [CPU_ALU] |1058| 
        AND       AL,#0x7fff            ; [CPU_ALU] |1058| 
        MOV       *(0:0x7402),AL        ; [CPU_ALU] |1058| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 1099,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7409)        ; [CPU_ALU] |1099| 
        AND       AL,#0xffe0            ; [CPU_ALU] |1099| 
        MOV       *(0:0x7409),AL        ; [CPU_ALU] |1099| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 538,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7414)       ; [CPU_FPU] |538| 
        AND       AL,#32256             ; [CPU_ALU] |538| 
        AND       AH,#65048             ; [CPU_ALU] |538| 
        OR        AL,#14                ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7414),ACC       ; [CPU_FPU] |538| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 594,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x740a)       ; [CPU_FPU] |594| 
        AND       AL,#65487             ; [CPU_ALU] |594| 
        MOV32     *(0:0x740a),ACC       ; [CPU_FPU] |594| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 538,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7416)       ; [CPU_FPU] |538| 
        AND       AL,#65024             ; [CPU_ALU] |538| 
        AND       AH,#65049             ; [CPU_ALU] |538| 
        OR        AL,#32782             ; [CPU_ALU] |538| 
        OR        AH,#81                ; [CPU_ALU] |538| 
        MOV32     *(0:0x7416),ACC       ; [CPU_FPU] |538| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 594,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x740a)       ; [CPU_FPU] |594| 
        AND       AL,#65343             ; [CPU_ALU] |594| 
        MOV32     *(0:0x740a),ACC       ; [CPU_FPU] |594| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 1767,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7407)        ; [CPU_ALU] |1767| 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |1767| 
        ORB       AL,#0x03              ; [CPU_ALU] |1767| 
        MOV       *(0:0x7407),AL        ; [CPU_ALU] |1767| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 1771,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1771| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 819,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |819| 
        MOV       *(0:0x7404),AL        ; [CPU_ALU] |819| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 1862,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |1862| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 1864,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7407)        ; [CPU_ALU] |1864| 
        AND       AL,#0xffbf            ; [CPU_ALU] |1864| 
        MOV       *(0:0x7407),AL        ; [CPU_ALU] |1864| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 1669,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7407)        ; [CPU_ALU] |1669| 
        ORB       AL,#0x20              ; [CPU_ALU] |1669| 
        MOV       *(0:0x7407),AL        ; [CPU_ALU] |1669| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h",line 1671,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |1671| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$59, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$59, DW_AT_TI_end_line(0xf0)
	.dwattr $C$DW$59, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$59

	.sect	".text:UART_DEBUG_init"
	.clink
	.global	||UART_DEBUG_init||

$C$DW$63	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$63, DW_AT_name("UART_DEBUG_init")
	.dwattr $C$DW$63, DW_AT_low_pc(||UART_DEBUG_init||)
	.dwattr $C$DW$63, DW_AT_high_pc(0x00)
	.dwattr $C$DW$63, DW_AT_linkage_name("UART_DEBUG_init")
	.dwattr $C$DW$63, DW_AT_external
	.dwattr $C$DW$63, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$63, DW_AT_decl_line(0x24e)
	.dwattr $C$DW$63, DW_AT_decl_column(0x06)
	.dwattr $C$DW$63, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "syscfg/board.c",line 590,column 23,is_stmt,address ||UART_DEBUG_init||,isa 0

	.dwfde $C$DW$CIE, ||UART_DEBUG_init||

;***************************************************************
;* FNAME: UART_DEBUG_init               FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||UART_DEBUG_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
	.dwpsn	file "syscfg/board.c",line 591,column 2,is_stmt,isa 0
        MOVB      ACC,#255              ; [CPU_ALU] |591| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |591| 
        MOV       ACC,#29184            ; [CPU_ALU] |591| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("SCI_clearInterruptStatus")
	.dwattr $C$DW$64, DW_AT_TI_call

        LCR       #||SCI_clearInterruptStatus|| ; [CPU_ALU] |591| 
        ; call occurs [#||SCI_clearInterruptStatus||] ; [] |591| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 1417,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x720b)        ; [CPU_ALU] |1417| 
        OR        AL,#0x4000            ; [CPU_ALU] |1417| 
        MOV       *(0:0x720b),AL        ; [CPU_ALU] |1417| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 844,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x720a)        ; [CPU_ALU] |844| 
        AND       AL,#0xdfff            ; [CPU_ALU] |844| 
        MOV       *(0:0x720a),AL        ; [CPU_ALU] |844| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 845,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x720a)        ; [CPU_ALU] |845| 
        OR        AL,#0x2000            ; [CPU_ALU] |845| 
        MOV       *(0:0x720a),AL        ; [CPU_ALU] |845| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 818,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x720b)        ; [CPU_ALU] |818| 
        AND       AL,#0xdfff            ; [CPU_ALU] |818| 
        MOV       *(0:0x720b),AL        ; [CPU_ALU] |818| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 819,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x720b)        ; [CPU_ALU] |819| 
        OR        AL,#0x2000            ; [CPU_ALU] |819| 
        MOV       *(0:0x720b),AL        ; [CPU_ALU] |819| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 870,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x720a)       ; [CPU_ALU] |870| 
        AND       AR6,#0x7fff           ; [CPU_ALU] |870| 
	.dwpsn	file "syscfg/board.c",line 596,column 2,is_stmt,isa 0
        MOV       AH,#762               ; [CPU_ALU] |596| 
        MOV       AL,#61568             ; [CPU_ALU] |596| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 870,column 5,is_stmt,isa 0
        MOV       *(0:0x720a),AR6       ; [CPU_ALU] |870| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 871,column 5,is_stmt,isa 0
        MOV       AR7,*(0:0x720a)       ; [CPU_ALU] |871| 
	.dwpsn	file "syscfg/board.c",line 596,column 2,is_stmt,isa 0
        MOVB      XAR6,#7               ; [CPU_ALU] |596| 
        MOVL      XAR4,#115200          ; [CPU_ARAU] |596| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |596| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 871,column 5,is_stmt,isa 0
        OR        AR7,#0x8000           ; [CPU_ALU] |871| 
	.dwpsn	file "syscfg/board.c",line 596,column 2,is_stmt,isa 0
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |596| 
        MOV       ACC,#29184            ; [CPU_ALU] |596| 
        MOVL      *-SP[6],XAR6          ; [CPU_ALU] |596| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 871,column 5,is_stmt,isa 0
        MOV       *(0:0x720a),AR7       ; [CPU_ALU] |871| 
	.dwpsn	file "syscfg/board.c",line 596,column 2,is_stmt,isa 0
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("SCI_setConfig")
	.dwattr $C$DW$65, DW_AT_TI_call

        LCR       #||SCI_setConfig||    ; [CPU_ALU] |596| 
        ; call occurs [#||SCI_setConfig||] ; [] |596| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 1366,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7200)        ; [CPU_ALU] |1366| 
	.dwpsn	file "syscfg/board.c",line 599,column 2,is_stmt,isa 0
        MOVB      XAR6,#16              ; [CPU_ALU] |599| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 1366,column 5,is_stmt,isa 0
        AND       AL,#0xffef            ; [CPU_ALU] |1366| 
        MOV       *(0:0x7200),AL        ; [CPU_ALU] |1366| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 1313,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7201)        ; [CPU_ALU] |1313| 
	.dwpsn	file "syscfg/board.c",line 599,column 2,is_stmt,isa 0
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |599| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 1313,column 5,is_stmt,isa 0
        AND       AL,#0xffdf            ; [CPU_ALU] |1313| 
        MOV       *(0:0x7201),AL        ; [CPU_ALU] |1313| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 1314,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7201)        ; [CPU_ALU] |1314| 
        ORB       AL,#0x20              ; [CPU_ALU] |1314| 
        MOV       *(0:0x7201),AL        ; [CPU_ALU] |1314| 
	.dwpsn	file "syscfg/board.c",line 599,column 2,is_stmt,isa 0
        MOV       ACC,#29184            ; [CPU_ALU] |599| 
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("SCI_enableInterrupt")
	.dwattr $C$DW$66, DW_AT_TI_call

        LCR       #||SCI_enableInterrupt|| ; [CPU_ALU] |599| 
        ; call occurs [#||SCI_enableInterrupt||] ; [] |599| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 412,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x720a)        ; [CPU_ALU] |412| 
        AND       AL,#0xffe0            ; [CPU_ALU] |412| 
        MOV       *(0:0x720a),AL        ; [CPU_ALU] |412| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 414,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x720b)        ; [CPU_ALU] |414| 
        AND       AL,AL,#0xffe0         ; [CPU_ALU] |414| 
        ORB       AL,#0x04              ; [CPU_ALU] |414| 
        MOV       *(0:0x720b),AL        ; [CPU_ALU] |414| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 738,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x720a)        ; [CPU_ALU] |738| 
        OR        AL,#0x8000            ; [CPU_ALU] |738| 
        MOV       *(0:0x720a),AL        ; [CPU_ALU] |738| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 739,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x720a)        ; [CPU_ALU] |739| 
        OR        AL,#0x6000            ; [CPU_ALU] |739| 
        MOV       *(0:0x720a),AL        ; [CPU_ALU] |739| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 740,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x720b)        ; [CPU_ALU] |740| 
        OR        AL,#0x2000            ; [CPU_ALU] |740| 
        MOV       *(0:0x720b),AL        ; [CPU_ALU] |740| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 527,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7201)        ; [CPU_ALU] |527| 
        ORB       AL,#0x23              ; [CPU_ALU] |527| 
        MOV       *(0:0x7201),AL        ; [CPU_ALU] |527| 
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$63, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$63, DW_AT_TI_end_line(0x25b)
	.dwattr $C$DW$63, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$63

	.sect	".text:SYNC_init"
	.clink
	.global	||SYNC_init||

$C$DW$68	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$68, DW_AT_name("SYNC_init")
	.dwattr $C$DW$68, DW_AT_low_pc(||SYNC_init||)
	.dwattr $C$DW$68, DW_AT_high_pc(0x00)
	.dwattr $C$DW$68, DW_AT_linkage_name("SYNC_init")
	.dwattr $C$DW$68, DW_AT_external
	.dwattr $C$DW$68, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$68, DW_AT_decl_line(0x277)
	.dwattr $C$DW$68, DW_AT_decl_column(0x06)
	.dwattr $C$DW$68, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "syscfg/board.c",line 631,column 17,is_stmt,address ||SYNC_init||,isa 0

	.dwfde $C$DW$CIE, ||SYNC_init||

;***************************************************************
;* FNAME: SYNC_init                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||SYNC_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h",line 2781,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |2781| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h",line 2782,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7940)       ; [CPU_FPU] |2782| 
        AND       AH,#59391             ; [CPU_ALU] |2782| 
        MOV32     *(0:0x7940),ACC       ; [CPU_FPU] |2782| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h",line 2756,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7940)       ; [CPU_FPU] |2756| 
        AND       AL,#65528             ; [CPU_ALU] |2756| 
        MOV32     *(0:0x7940),ACC       ; [CPU_FPU] |2756| 
        MOV32     ACC,*(0:0x7940)       ; [CPU_FPU] |2756| 
        AND       AL,#65479             ; [CPU_ALU] |2756| 
        MOV32     *(0:0x7940),ACC       ; [CPU_FPU] |2756| 
        MOV32     ACC,*(0:0x7940)       ; [CPU_FPU] |2756| 
        AND       AL,#65087             ; [CPU_ALU] |2756| 
        MOV32     *(0:0x7940),ACC       ; [CPU_FPU] |2756| 
        MOV32     ACC,*(0:0x7940)       ; [CPU_FPU] |2756| 
        AND       AL,#61951             ; [CPU_ALU] |2756| 
        MOV32     *(0:0x7940),ACC       ; [CPU_FPU] |2756| 
        MOV32     ACC,*(0:0x7940)       ; [CPU_FPU] |2756| 
        AND       AL,#36863             ; [CPU_ALU] |2756| 
        MOV32     *(0:0x7940),ACC       ; [CPU_FPU] |2756| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h",line 2810,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7942)       ; [CPU_FPU] |2810| 
        MOV32     *(0:0x7942),ACC       ; [CPU_FPU] |2810| 
        MOV32     ACC,*(0:0x7942)       ; [CPU_FPU] |2810| 
        MOV32     *(0:0x7942),ACC       ; [CPU_FPU] |2810| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h",line 2811,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |2811| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$68, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$68, DW_AT_TI_end_line(0x289)
	.dwattr $C$DW$68, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$68

	.sect	".text:DRV8305_SPI_init"
	.clink
	.global	||DRV8305_SPI_init||

$C$DW$70	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$70, DW_AT_name("DRV8305_SPI_init")
	.dwattr $C$DW$70, DW_AT_low_pc(||DRV8305_SPI_init||)
	.dwattr $C$DW$70, DW_AT_high_pc(0x00)
	.dwattr $C$DW$70, DW_AT_linkage_name("DRV8305_SPI_init")
	.dwattr $C$DW$70, DW_AT_external
	.dwattr $C$DW$70, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$70, DW_AT_decl_line(0x266)
	.dwattr $C$DW$70, DW_AT_decl_column(0x06)
	.dwattr $C$DW$70, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "syscfg/board.c",line 614,column 24,is_stmt,address ||DRV8305_SPI_init||,isa 0

	.dwfde $C$DW$CIE, ||DRV8305_SPI_init||

;***************************************************************
;* FNAME: DRV8305_SPI_init              FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            5 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||DRV8305_SPI_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -8
	.dwpsn	file "syscfg/board.c",line 616,column 2,is_stmt,isa 0
        MOV       AL,#61568             ; [CPU_ALU] |616| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 486,column 5,is_stmt,isa 0
        MOV       AR7,*(0:0x6100)       ; [CPU_ALU] |486| 
	.dwpsn	file "syscfg/board.c",line 616,column 2,is_stmt,isa 0
        MOV       AH,#762               ; [CPU_ALU] |616| 
        MOVL      XAR4,#1000000         ; [CPU_ARAU] |616| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |616| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 486,column 5,is_stmt,isa 0
        AND       AR7,#0xff7f           ; [CPU_ALU] |486| 
	.dwpsn	file "syscfg/board.c",line 616,column 2,is_stmt,isa 0
        MOVB      XAR5,#6               ; [CPU_ALU] |616| 
        MOVL      *-SP[4],XAR4          ; [CPU_ALU] |616| 
        MOV       ACC,#24832            ; [CPU_ALU] |616| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 486,column 5,is_stmt,isa 0
        MOV       *(0:0x6100),AR7       ; [CPU_ALU] |486| 
	.dwpsn	file "syscfg/board.c",line 616,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |616| 
        MOVB      *-SP[5],#16,UNC       ; [CPU_ALU] |616| 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("SPI_setConfig")
	.dwattr $C$DW$71, DW_AT_TI_call

        LCR       #||SPI_setConfig||    ; [CPU_ALU] |616| 
        ; call occurs [#||SPI_setConfig||] ; [] |616| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 1148,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x610f)        ; [CPU_ALU] |1148| 
        AND       AL,#0xfffd            ; [CPU_ALU] |1148| 
        MOV       *(0:0x610f),AL        ; [CPU_ALU] |1148| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 548,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x610a)        ; [CPU_ALU] |548| 
        OR        AL,#0x6000            ; [CPU_ALU] |548| 
        MOV       *(0:0x610a),AL        ; [CPU_ALU] |548| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 549,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x610b)        ; [CPU_ALU] |549| 
        OR        AL,#0x2000            ; [CPU_ALU] |549| 
        MOV       *(0:0x610b),AL        ; [CPU_ALU] |549| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 662,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x610a)        ; [CPU_ALU] |662| 
        AND       AL,#0xffe0            ; [CPU_ALU] |662| 
        MOV       *(0:0x610a),AL        ; [CPU_ALU] |662| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 664,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x610b)        ; [CPU_ALU] |664| 
        AND       AL,#0xffe0            ; [CPU_ALU] |664| 
        MOV       *(0:0x610b),AL        ; [CPU_ALU] |664| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 1116,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x6100)        ; [CPU_ALU] |1116| 
        AND       AL,#0xffef            ; [CPU_ALU] |1116| 
        MOV       *(0:0x6100),AL        ; [CPU_ALU] |1116| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 1236,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x610f)        ; [CPU_ALU] |1236| 
        AND       AL,#0xffcf            ; [CPU_ALU] |1236| 
        MOV       *(0:0x610f),AL        ; [CPU_ALU] |1236| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 463,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x6100)        ; [CPU_ALU] |463| 
        ORB       AL,#0x80              ; [CPU_ALU] |463| 
        MOV       *(0:0x6100),AL        ; [CPU_ALU] |463| 
        SUBB      SP,#6                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$70, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$70, DW_AT_TI_end_line(0x270)
	.dwattr $C$DW$70, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$70

	.sect	".text:QEP_SENSOR_init"
	.clink
	.global	||QEP_SENSOR_init||

$C$DW$73	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$73, DW_AT_name("QEP_SENSOR_init")
	.dwattr $C$DW$73, DW_AT_low_pc(||QEP_SENSOR_init||)
	.dwattr $C$DW$73, DW_AT_high_pc(0x00)
	.dwattr $C$DW$73, DW_AT_linkage_name("QEP_SENSOR_init")
	.dwattr $C$DW$73, DW_AT_external
	.dwattr $C$DW$73, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$73, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$73, DW_AT_decl_column(0x06)
	.dwattr $C$DW$73, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "syscfg/board.c",line 466,column 23,is_stmt,address ||QEP_SENSOR_init||,isa 0

	.dwfde $C$DW$CIE, ||QEP_SENSOR_init||

;***************************************************************
;* FNAME: QEP_SENSOR_init               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||QEP_SENSOR_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "syscfg/board.c",line 470,column 2,is_stmt,isa 0
        MOV       *-SP[1],#0            ; [CPU_ALU] |470| 
        MOV       ACC,#20736            ; [CPU_ALU] |470| 
        MOVB      XAR4,#0               ; [CPU_ALU] |470| 
        MOVB      XAR5,#0               ; [CPU_ALU] |470| 
        MOV       *-SP[2],#0            ; [CPU_ALU] |470| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("EQEP_setInputPolarity")
	.dwattr $C$DW$74, DW_AT_TI_call

        LCR       #||EQEP_setInputPolarity|| ; [CPU_ALU] |470| 
        ; call occurs [#||EQEP_setInputPolarity||] ; [] |470| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 414,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5114)        ; [CPU_ALU] |414| 
        AND       AL,#0x31ff            ; [CPU_ALU] |414| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 460,column 5,is_stmt,isa 0
        MOVL      XAR4,#15999           ; [CPU_ARAU] |460| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 516,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |516| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 414,column 5,is_stmt,isa 0
        MOV       *(0:0x5114),AL        ; [CPU_ALU] |414| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 1612,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5115)        ; [CPU_ALU] |1612| 
        AND       AL,#0x3fff            ; [CPU_ALU] |1612| 
        OR        AL,#0x8000            ; [CPU_ALU] |1612| 
        MOV       *(0:0x5115),AL        ; [CPU_ALU] |1612| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 454,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5115)        ; [CPU_ALU] |454| 
        AND       AL,#0xdfff            ; [CPU_ALU] |454| 
        OR        AL,#0x1000            ; [CPU_ALU] |454| 
        MOV       *(0:0x5115),AL        ; [CPU_ALU] |454| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 460,column 5,is_stmt,isa 0
        MOV32     *(0:0x5104),XAR4      ; [CPU_FPU] |460| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 516,column 5,is_stmt,isa 0
        MOV32     *(0:0x5100),XAR6      ; [CPU_FPU] |516| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 1168,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5115)        ; [CPU_ALU] |1168| 
        AND       AL,#0xfffd            ; [CPU_ALU] |1168| 
        MOV       *(0:0x5115),AL        ; [CPU_ALU] |1168| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 1230,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5115)        ; [CPU_ALU] |1230| 
        AND       AL,#0xfffe            ; [CPU_ALU] |1230| 
        MOV       *(0:0x5115),AL        ; [CPU_ALU] |1230| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 1434,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5115)        ; [CPU_ALU] |1434| 
        AND       AL,AL,#0xff9b         ; [CPU_ALU] |1434| 
        ORB       AL,#0x10              ; [CPU_ALU] |1434| 
        MOV       *(0:0x5115),AL        ; [CPU_ALU] |1434| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 1319,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5115)        ; [CPU_ALU] |1319| 
        AND       AL,#0xf0ff            ; [CPU_ALU] |1319| 
        MOV       *(0:0x5115),AL        ; [CPU_ALU] |1319| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 1360,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x5115)        ; [CPU_ALU] |1360| 
        AND       AL,#0xff7f            ; [CPU_ALU] |1360| 
        MOV       *(0:0x5115),AL        ; [CPU_ALU] |1360| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 1390,column 5,is_stmt,isa 0
        MOV32     *(0:0x5102),XAR6      ; [CPU_FPU] |1390| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h",line 347,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5115)        ; [CPU_ALU] |347| 
        ORB       AL,#0x08              ; [CPU_ALU] |347| 
        MOV       *(0:0x5115),AL        ; [CPU_ALU] |347| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$73, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$73, DW_AT_TI_end_line(0x203)
	.dwattr $C$DW$73, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$73

	.sect	".text:PinMux_init"
	.clink
	.global	||PinMux_init||

$C$DW$76	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$76, DW_AT_name("PinMux_init")
	.dwattr $C$DW$76, DW_AT_low_pc(||PinMux_init||)
	.dwattr $C$DW$76, DW_AT_high_pc(0x00)
	.dwattr $C$DW$76, DW_AT_linkage_name("PinMux_init")
	.dwattr $C$DW$76, DW_AT_external
	.dwattr $C$DW$76, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$76, DW_AT_decl_line(0x44)
	.dwattr $C$DW$76, DW_AT_decl_column(0x06)
	.dwattr $C$DW$76, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "syscfg/board.c",line 69,column 1,is_stmt,address ||PinMux_init||,isa 0

	.dwfde $C$DW$CIE, ||PinMux_init||

;***************************************************************
;* FNAME: PinMux_init                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||PinMux_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "syscfg/board.c",line 77,column 2,is_stmt,isa 0
        MOVL      XAR4,#393217          ; [CPU_ARAU] |77| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |77| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$77, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |77| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |77| 
	.dwpsn	file "syscfg/board.c",line 78,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |78| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |78| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$78, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |78| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |78| 
	.dwpsn	file "syscfg/board.c",line 79,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |79| 
        MOVB      ACC,#0                ; [CPU_ALU] |79| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$79, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |79| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |79| 
	.dwpsn	file "syscfg/board.c",line 81,column 2,is_stmt,isa 0
        MOVL      XAR4,#393729          ; [CPU_ARAU] |81| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |81| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$80, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |81| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |81| 
	.dwpsn	file "syscfg/board.c",line 82,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |82| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |82| 
        MOVB      ACC,#1                ; [CPU_ALU] |82| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$81, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |82| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |82| 
	.dwpsn	file "syscfg/board.c",line 83,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |83| 
        MOVB      ACC,#1                ; [CPU_ALU] |83| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$82, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |83| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |83| 
	.dwpsn	file "syscfg/board.c",line 88,column 2,is_stmt,isa 0
        MOVL      XAR4,#394241          ; [CPU_ARAU] |88| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |88| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$83, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |88| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |88| 
	.dwpsn	file "syscfg/board.c",line 89,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |89| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |89| 
        MOVB      ACC,#2                ; [CPU_ALU] |89| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$84, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |89| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |89| 
	.dwpsn	file "syscfg/board.c",line 90,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |90| 
        MOVB      ACC,#2                ; [CPU_ALU] |90| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$85, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |90| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |90| 
	.dwpsn	file "syscfg/board.c",line 92,column 2,is_stmt,isa 0
        MOVL      XAR4,#394753          ; [CPU_ARAU] |92| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |92| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$86, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |92| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |92| 
	.dwpsn	file "syscfg/board.c",line 93,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |93| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |93| 
        MOVB      ACC,#3                ; [CPU_ALU] |93| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$87, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |93| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |93| 
	.dwpsn	file "syscfg/board.c",line 94,column 2,is_stmt,isa 0
        MOVB      ACC,#3                ; [CPU_ALU] |94| 
        MOVB      XAR4,#0               ; [CPU_ALU] |94| 
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$88, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |94| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |94| 
	.dwpsn	file "syscfg/board.c",line 99,column 2,is_stmt,isa 0
        MOVL      XAR4,#395265          ; [CPU_ARAU] |99| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |99| 
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$89, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |99| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |99| 
	.dwpsn	file "syscfg/board.c",line 100,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |100| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |100| 
        MOVB      ACC,#4                ; [CPU_ALU] |100| 
$C$DW$90	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$90, DW_AT_low_pc(0x00)
	.dwattr $C$DW$90, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$90, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |100| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |100| 
	.dwpsn	file "syscfg/board.c",line 101,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |101| 
        MOVB      ACC,#4                ; [CPU_ALU] |101| 
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$91, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |101| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |101| 
	.dwpsn	file "syscfg/board.c",line 103,column 2,is_stmt,isa 0
        MOVL      XAR4,#395777          ; [CPU_ARAU] |103| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |103| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$92, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |103| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |103| 
	.dwpsn	file "syscfg/board.c",line 104,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |104| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |104| 
        MOVB      ACC,#5                ; [CPU_ALU] |104| 
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$93, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |104| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |104| 
	.dwpsn	file "syscfg/board.c",line 105,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |105| 
        MOVB      ACC,#5                ; [CPU_ALU] |105| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$94, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |105| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |105| 
	.dwpsn	file "syscfg/board.c",line 110,column 2,is_stmt,isa 0
        MOVL      XAR4,#398341          ; [CPU_ARAU] |110| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |110| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$95, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |110| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |110| 
	.dwpsn	file "syscfg/board.c",line 111,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |111| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |111| 
        MOVB      ACC,#10               ; [CPU_ALU] |111| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |111| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |111| 
	.dwpsn	file "syscfg/board.c",line 112,column 2,is_stmt,isa 0
        MOVB      ACC,#10               ; [CPU_ALU] |112| 
        MOVB      XAR4,#0               ; [CPU_ALU] |112| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |112| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |112| 
	.dwpsn	file "syscfg/board.c",line 114,column 2,is_stmt,isa 0
        MOVL      XAR4,#398853          ; [CPU_ARAU] |114| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |114| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$98, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |114| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |114| 
	.dwpsn	file "syscfg/board.c",line 115,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |115| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |115| 
        MOVB      ACC,#11               ; [CPU_ALU] |115| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$99, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |115| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |115| 
	.dwpsn	file "syscfg/board.c",line 116,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |116| 
        MOVB      ACC,#11               ; [CPU_ALU] |116| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$100, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |116| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |116| 
	.dwpsn	file "syscfg/board.c",line 118,column 2,is_stmt,isa 0
        MOVL      XAR4,#527873          ; [CPU_ARAU] |118| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |118| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$101, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |118| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |118| 
	.dwpsn	file "syscfg/board.c",line 119,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |119| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |119| 
        MOVB      ACC,#23               ; [CPU_ALU] |119| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$102, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |119| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |119| 
	.dwpsn	file "syscfg/board.c",line 120,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |120| 
        MOVB      ACC,#23               ; [CPU_ALU] |120| 
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$103, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |120| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |120| 
	.dwpsn	file "syscfg/board.c",line 123,column 2,is_stmt,isa 0
        MOVL      XAR4,#531968          ; [CPU_ARAU] |123| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |123| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$104, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |123| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |123| 
	.dwpsn	file "syscfg/board.c",line 125,column 2,is_stmt,isa 0
        MOV       ACC,#6403 << 11       ; [CPU_ALU] |125| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$105, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |125| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |125| 
	.dwpsn	file "syscfg/board.c",line 127,column 2,is_stmt,isa 0
        MOVL      XAR4,#525824          ; [CPU_ARAU] |127| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |127| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$106, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |127| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |127| 
	.dwpsn	file "syscfg/board.c",line 129,column 2,is_stmt,isa 0
        MOV       ACC,#9229 << 9        ; [CPU_ALU] |129| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$107, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |129| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |129| 
	.dwpsn	file "syscfg/board.c",line 131,column 2,is_stmt,isa 0
        MOV       ACC,#25613 << 9       ; [CPU_ALU] |131| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$108, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |131| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |131| 
	.dwpsn	file "syscfg/board.c",line 135,column 2,is_stmt,isa 0
        MOV       AL,#5647              ; [CPU_ALU] |135| 
        MOV       AH,#70                ; [CPU_ALU] |135| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$109, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |135| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |135| 
	.dwpsn	file "syscfg/board.c",line 136,column 2,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |136| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |136| 
        MOVB      ACC,#43               ; [CPU_ALU] |136| 
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$110, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |136| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |136| 
	.dwpsn	file "syscfg/board.c",line 137,column 2,is_stmt,isa 0
        MOVB      XAR4,#3               ; [CPU_ALU] |137| 
        MOVB      ACC,#43               ; [CPU_ALU] |137| 
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$111, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |137| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |137| 
	.dwpsn	file "syscfg/board.c",line 139,column 2,is_stmt,isa 0
        MOV       AL,#5135              ; [CPU_ALU] |139| 
        MOV       AH,#70                ; [CPU_ALU] |139| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$112, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |139| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |139| 
	.dwpsn	file "syscfg/board.c",line 140,column 2,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |140| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |140| 
        MOVB      ACC,#42               ; [CPU_ALU] |140| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$113, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |140| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |140| 
	.dwpsn	file "syscfg/board.c",line 141,column 2,is_stmt,isa 0
        MOVB      XAR4,#3               ; [CPU_ALU] |141| 
        MOVB      ACC,#42               ; [CPU_ALU] |141| 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$114, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |141| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |141| 
	.dwpsn	file "syscfg/board.c",line 146,column 2,is_stmt,isa 0
        MOV       AL,#5135              ; [CPU_ALU] |146| 
        MOV       AH,#72                ; [CPU_ALU] |146| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$115, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |146| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |146| 
	.dwpsn	file "syscfg/board.c",line 147,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |147| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |147| 
        MOVB      ACC,#58               ; [CPU_ALU] |147| 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$116, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |147| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |147| 
	.dwpsn	file "syscfg/board.c",line 148,column 2,is_stmt,isa 0
        MOVB      XAR4,#3               ; [CPU_ALU] |148| 
        MOVB      ACC,#58               ; [CPU_ALU] |148| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$117, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |148| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |148| 
	.dwpsn	file "syscfg/board.c",line 150,column 2,is_stmt,isa 0
        MOV       AL,#5647              ; [CPU_ALU] |150| 
        MOV       AH,#72                ; [CPU_ALU] |150| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$118, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |150| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |150| 
	.dwpsn	file "syscfg/board.c",line 151,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |151| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |151| 
        MOVB      ACC,#59               ; [CPU_ALU] |151| 
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$119, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |151| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |151| 
	.dwpsn	file "syscfg/board.c",line 152,column 2,is_stmt,isa 0
        MOVB      XAR4,#3               ; [CPU_ALU] |152| 
        MOVB      ACC,#59               ; [CPU_ALU] |152| 
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$120, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |152| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |152| 
	.dwpsn	file "syscfg/board.c",line 154,column 2,is_stmt,isa 0
        MOV       AL,#6159              ; [CPU_ALU] |154| 
        MOV       AH,#72                ; [CPU_ALU] |154| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("GPIO_setPinConfig")
	.dwattr $C$DW$121, DW_AT_TI_call

        LCR       #||GPIO_setPinConfig|| ; [CPU_ALU] |154| 
        ; call occurs [#||GPIO_setPinConfig||] ; [] |154| 
	.dwpsn	file "syscfg/board.c",line 155,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |155| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |155| 
        MOVB      ACC,#60               ; [CPU_ALU] |155| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$122, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |155| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |155| 
	.dwpsn	file "syscfg/board.c",line 156,column 2,is_stmt,isa 0
        MOVB      XAR4,#3               ; [CPU_ALU] |156| 
        MOVB      ACC,#60               ; [CPU_ALU] |156| 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$123, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |156| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |156| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$76, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$76, DW_AT_TI_end_line(0x9f)
	.dwattr $C$DW$76, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$76

	.sect	".text:LED_STATUS_GPIO_init"
	.clink
	.global	||LED_STATUS_GPIO_init||

$C$DW$125	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$125, DW_AT_name("LED_STATUS_GPIO_init")
	.dwattr $C$DW$125, DW_AT_low_pc(||LED_STATUS_GPIO_init||)
	.dwattr $C$DW$125, DW_AT_high_pc(0x00)
	.dwattr $C$DW$125, DW_AT_linkage_name("LED_STATUS_GPIO_init")
	.dwattr $C$DW$125, DW_AT_external
	.dwattr $C$DW$125, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$125, DW_AT_decl_line(0x212)
	.dwattr $C$DW$125, DW_AT_decl_column(0x06)
	.dwattr $C$DW$125, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "syscfg/board.c",line 530,column 28,is_stmt,address ||LED_STATUS_GPIO_init||,isa 0

	.dwfde $C$DW$CIE, ||LED_STATUS_GPIO_init||

;***************************************************************
;* FNAME: LED_STATUS_GPIO_init          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||LED_STATUS_GPIO_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "syscfg/board.c",line 531,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |531| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |531| 
        MOVB      ACC,#31               ; [CPU_ALU] |531| 
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$126, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |531| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |531| 
	.dwpsn	file "syscfg/board.c",line 532,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |532| 
        MOVB      ACC,#31               ; [CPU_ALU] |532| 
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$127, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |532| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |532| 
	.dwpsn	file "syscfg/board.c",line 533,column 2,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |533| 
        MOVB      ACC,#31               ; [CPU_ALU] |533| 
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$128, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |533| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |533| 
	.dwpsn	file "syscfg/board.c",line 534,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |534| 
        MOVB      ACC,#31               ; [CPU_ALU] |534| 
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$129, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |534| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |534| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$125, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$125, DW_AT_TI_end_line(0x217)
	.dwattr $C$DW$125, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$125

	.sect	".text:INTERRUPT_init"
	.clink
	.global	||INTERRUPT_init||

$C$DW$131	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$131, DW_AT_name("INTERRUPT_init")
	.dwattr $C$DW$131, DW_AT_low_pc(||INTERRUPT_init||)
	.dwattr $C$DW$131, DW_AT_high_pc(0x00)
	.dwattr $C$DW$131, DW_AT_linkage_name("INTERRUPT_init")
	.dwattr $C$DW$131, DW_AT_external
	.dwattr $C$DW$131, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$131, DW_AT_decl_line(0x239)
	.dwattr $C$DW$131, DW_AT_decl_column(0x06)
	.dwattr $C$DW$131, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "syscfg/board.c",line 569,column 22,is_stmt,address ||INTERRUPT_init||,isa 0

	.dwfde $C$DW$CIE, ||INTERRUPT_init||

;***************************************************************
;* FNAME: INTERRUPT_init                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||INTERRUPT_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/interrupt.h",line 258,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |258| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/interrupt.h",line 259,column 5,is_stmt,isa 0
        MOVL      XAR4,#||adcA1_isr||   ; [CPU_ARAU] |259| 
        MOV32     *(0:0x0d40),XAR4      ; [CPU_FPU] |259| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/interrupt.h",line 260,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |260| 
	.dwpsn	file "syscfg/board.c",line 574,column 2,is_stmt,isa 0
        MOVL      XAR4,#2097409         ; [CPU_ARAU] |574| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |574| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("Interrupt_enable")
	.dwattr $C$DW$132, DW_AT_TI_call

        LCR       #||Interrupt_enable|| ; [CPU_ALU] |574| 
        ; call occurs [#||Interrupt_enable||] ; [] |574| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/interrupt.h",line 258,column 5,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |258| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/interrupt.h",line 259,column 5,is_stmt,isa 0
        MOVL      XAR4,#||sciA_rx_isr|| ; [CPU_ARAU] |259| 
        MOV32     *(0:0x0dc0),XAR4      ; [CPU_FPU] |259| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/interrupt.h",line 260,column 5,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |260| 
	.dwpsn	file "syscfg/board.c",line 579,column 2,is_stmt,isa 0
        MOV       AL,#2305              ; [CPU_ALU] |579| 
        MOV       AH,#96                ; [CPU_ALU] |579| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("Interrupt_enable")
	.dwattr $C$DW$133, DW_AT_TI_call

        LCR       #||Interrupt_enable|| ; [CPU_ALU] |579| 
        ; call occurs [#||Interrupt_enable||] ; [] |579| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$131, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$131, DW_AT_TI_end_line(0x244)
	.dwattr $C$DW$131, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$131

	.sect	".text:DRV8305_EN_GATE_init"
	.clink
	.global	||DRV8305_EN_GATE_init||

$C$DW$135	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$135, DW_AT_name("DRV8305_EN_GATE_init")
	.dwattr $C$DW$135, DW_AT_low_pc(||DRV8305_EN_GATE_init||)
	.dwattr $C$DW$135, DW_AT_high_pc(0x00)
	.dwattr $C$DW$135, DW_AT_linkage_name("DRV8305_EN_GATE_init")
	.dwattr $C$DW$135, DW_AT_external
	.dwattr $C$DW$135, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$135, DW_AT_decl_line(0x218)
	.dwattr $C$DW$135, DW_AT_decl_column(0x06)
	.dwattr $C$DW$135, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "syscfg/board.c",line 536,column 28,is_stmt,address ||DRV8305_EN_GATE_init||,isa 0

	.dwfde $C$DW$CIE, ||DRV8305_EN_GATE_init||

;***************************************************************
;* FNAME: DRV8305_EN_GATE_init          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||DRV8305_EN_GATE_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "syscfg/board.c",line 538,column 2,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |538| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOV       ACC,#8192 << 15       ; [CPU_ALU] |469| 
        MOV32     *(0:0x7f1c),ACC       ; [CPU_FPU] |469| 
	.dwpsn	file "syscfg/board.c",line 538,column 2,is_stmt,isa 0
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |538| 
        MOVB      ACC,#124              ; [CPU_ALU] |538| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$136, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |538| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |538| 
	.dwpsn	file "syscfg/board.c",line 539,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |539| 
        MOVB      ACC,#124              ; [CPU_ALU] |539| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$137, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |539| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |539| 
	.dwpsn	file "syscfg/board.c",line 540,column 2,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |540| 
        MOVB      ACC,#124              ; [CPU_ALU] |540| 
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$138, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |540| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |540| 
	.dwpsn	file "syscfg/board.c",line 541,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |541| 
        MOVB      ACC,#124              ; [CPU_ALU] |541| 
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$139, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |541| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |541| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$135, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$135, DW_AT_TI_end_line(0x21e)
	.dwattr $C$DW$135, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$135

	.sect	".text:DRV8305_NFAULT_init"
	.clink
	.global	||DRV8305_NFAULT_init||

$C$DW$141	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$141, DW_AT_name("DRV8305_NFAULT_init")
	.dwattr $C$DW$141, DW_AT_low_pc(||DRV8305_NFAULT_init||)
	.dwattr $C$DW$141, DW_AT_high_pc(0x00)
	.dwattr $C$DW$141, DW_AT_linkage_name("DRV8305_NFAULT_init")
	.dwattr $C$DW$141, DW_AT_external
	.dwattr $C$DW$141, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$141, DW_AT_decl_line(0x21f)
	.dwattr $C$DW$141, DW_AT_decl_column(0x06)
	.dwattr $C$DW$141, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "syscfg/board.c",line 543,column 27,is_stmt,address ||DRV8305_NFAULT_init||,isa 0

	.dwfde $C$DW$CIE, ||DRV8305_NFAULT_init||

;***************************************************************
;* FNAME: DRV8305_NFAULT_init           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||DRV8305_NFAULT_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "syscfg/board.c",line 544,column 2,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |544| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |544| 
        MOVB      ACC,#19               ; [CPU_ALU] |544| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$142, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |544| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |544| 
	.dwpsn	file "syscfg/board.c",line 545,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |545| 
        MOVB      ACC,#19               ; [CPU_ALU] |545| 
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$143, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |545| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |545| 
	.dwpsn	file "syscfg/board.c",line 546,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |546| 
        MOVB      ACC,#19               ; [CPU_ALU] |546| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$144, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |546| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |546| 
	.dwpsn	file "syscfg/board.c",line 547,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |547| 
        MOVB      ACC,#19               ; [CPU_ALU] |547| 
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$145, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |547| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |547| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$141, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$141, DW_AT_TI_end_line(0x224)
	.dwattr $C$DW$141, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$141

	.sect	".text:DRV8305_SCS_init"
	.clink
	.global	||DRV8305_SCS_init||

$C$DW$147	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$147, DW_AT_name("DRV8305_SCS_init")
	.dwattr $C$DW$147, DW_AT_low_pc(||DRV8305_SCS_init||)
	.dwattr $C$DW$147, DW_AT_high_pc(0x00)
	.dwattr $C$DW$147, DW_AT_linkage_name("DRV8305_SCS_init")
	.dwattr $C$DW$147, DW_AT_external
	.dwattr $C$DW$147, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$147, DW_AT_decl_line(0x225)
	.dwattr $C$DW$147, DW_AT_decl_column(0x06)
	.dwattr $C$DW$147, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "syscfg/board.c",line 549,column 24,is_stmt,address ||DRV8305_SCS_init||,isa 0

	.dwfde $C$DW$CIE, ||DRV8305_SCS_init||

;***************************************************************
;* FNAME: DRV8305_SCS_init              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||DRV8305_SCS_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "syscfg/board.c",line 551,column 2,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |551| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV       ACC,#16384 << 15      ; [CPU_ALU] |473| 
        MOV32     *(0:0x7f0a),ACC       ; [CPU_FPU] |473| 
	.dwpsn	file "syscfg/board.c",line 551,column 2,is_stmt,isa 0
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |551| 
        MOVB      ACC,#61               ; [CPU_ALU] |551| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$148, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |551| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |551| 
	.dwpsn	file "syscfg/board.c",line 552,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |552| 
        MOVB      ACC,#61               ; [CPU_ALU] |552| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$149, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |552| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |552| 
	.dwpsn	file "syscfg/board.c",line 553,column 2,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |553| 
        MOVB      ACC,#61               ; [CPU_ALU] |553| 
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$150, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |553| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |553| 
	.dwpsn	file "syscfg/board.c",line 554,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |554| 
        MOVB      ACC,#61               ; [CPU_ALU] |554| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$151, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |554| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |554| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$147, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$147, DW_AT_TI_end_line(0x22b)
	.dwattr $C$DW$147, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$147

	.sect	".text:DRV8305_WAKE_init"
	.clink
	.global	||DRV8305_WAKE_init||

$C$DW$153	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$153, DW_AT_name("DRV8305_WAKE_init")
	.dwattr $C$DW$153, DW_AT_low_pc(||DRV8305_WAKE_init||)
	.dwattr $C$DW$153, DW_AT_high_pc(0x00)
	.dwattr $C$DW$153, DW_AT_linkage_name("DRV8305_WAKE_init")
	.dwattr $C$DW$153, DW_AT_external
	.dwattr $C$DW$153, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$153, DW_AT_decl_line(0x22c)
	.dwattr $C$DW$153, DW_AT_decl_column(0x06)
	.dwattr $C$DW$153, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "syscfg/board.c",line 556,column 25,is_stmt,address ||DRV8305_WAKE_init||,isa 0

	.dwfde $C$DW$CIE, ||DRV8305_WAKE_init||

;***************************************************************
;* FNAME: DRV8305_WAKE_init             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||DRV8305_WAKE_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "syscfg/board.c",line 558,column 2,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |558| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV       ACC,#16384 << 15      ; [CPU_ALU] |473| 
        MOV32     *(0:0x7f1a),ACC       ; [CPU_FPU] |473| 
	.dwpsn	file "syscfg/board.c",line 558,column 2,is_stmt,isa 0
        MOVL      *-SP[2],XAR6          ; [CPU_ALU] |558| 
        MOVB      ACC,#125              ; [CPU_ALU] |558| 
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$154, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |558| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |558| 
	.dwpsn	file "syscfg/board.c",line 559,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |559| 
        MOVB      ACC,#125              ; [CPU_ALU] |559| 
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("GPIO_setQualificationMode")
	.dwattr $C$DW$155, DW_AT_TI_call

        LCR       #||GPIO_setQualificationMode|| ; [CPU_ALU] |559| 
        ; call occurs [#||GPIO_setQualificationMode||] ; [] |559| 
	.dwpsn	file "syscfg/board.c",line 560,column 2,is_stmt,isa 0
        MOVB      XAR4,#1               ; [CPU_ALU] |560| 
        MOVB      ACC,#125              ; [CPU_ALU] |560| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$156, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |560| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |560| 
	.dwpsn	file "syscfg/board.c",line 561,column 2,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |561| 
        MOVB      ACC,#125              ; [CPU_ALU] |561| 
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("GPIO_setControllerCore")
	.dwattr $C$DW$157, DW_AT_TI_call

        LCR       #||GPIO_setControllerCore|| ; [CPU_ALU] |561| 
        ; call occurs [#||GPIO_setControllerCore||] ; [] |561| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$153, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$153, DW_AT_TI_end_line(0x232)
	.dwattr $C$DW$153, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$153

	.sect	".text:GPIO_init"
	.clink
	.global	||GPIO_init||

$C$DW$159	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$159, DW_AT_name("GPIO_init")
	.dwattr $C$DW$159, DW_AT_low_pc(||GPIO_init||)
	.dwattr $C$DW$159, DW_AT_high_pc(0x00)
	.dwattr $C$DW$159, DW_AT_linkage_name("GPIO_init")
	.dwattr $C$DW$159, DW_AT_external
	.dwattr $C$DW$159, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$159, DW_AT_decl_line(0x20a)
	.dwattr $C$DW$159, DW_AT_decl_column(0x06)
	.dwattr $C$DW$159, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "syscfg/board.c",line 522,column 17,is_stmt,address ||GPIO_init||,isa 0

	.dwfde $C$DW$CIE, ||GPIO_init||

;***************************************************************
;* FNAME: GPIO_init                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||GPIO_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "syscfg/board.c",line 523,column 2,is_stmt,isa 0
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("LED_STATUS_GPIO_init")
	.dwattr $C$DW$160, DW_AT_TI_call

        LCR       #||LED_STATUS_GPIO_init|| ; [CPU_ALU] |523| 
        ; call occurs [#||LED_STATUS_GPIO_init||] ; [] |523| 
	.dwpsn	file "syscfg/board.c",line 524,column 2,is_stmt,isa 0
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("DRV8305_EN_GATE_init")
	.dwattr $C$DW$161, DW_AT_TI_call

        LCR       #||DRV8305_EN_GATE_init|| ; [CPU_ALU] |524| 
        ; call occurs [#||DRV8305_EN_GATE_init||] ; [] |524| 
	.dwpsn	file "syscfg/board.c",line 525,column 2,is_stmt,isa 0
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("DRV8305_NFAULT_init")
	.dwattr $C$DW$162, DW_AT_TI_call

        LCR       #||DRV8305_NFAULT_init|| ; [CPU_ALU] |525| 
        ; call occurs [#||DRV8305_NFAULT_init||] ; [] |525| 
	.dwpsn	file "syscfg/board.c",line 526,column 2,is_stmt,isa 0
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("DRV8305_SCS_init")
	.dwattr $C$DW$163, DW_AT_TI_call

        LCR       #||DRV8305_SCS_init|| ; [CPU_ALU] |526| 
        ; call occurs [#||DRV8305_SCS_init||] ; [] |526| 
	.dwpsn	file "syscfg/board.c",line 527,column 2,is_stmt,isa 0
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("DRV8305_WAKE_init")
	.dwattr $C$DW$164, DW_AT_TI_call

        LCR       #||DRV8305_WAKE_init|| ; [CPU_ALU] |527| 
        ; call occurs [#||DRV8305_WAKE_init||] ; [] |527| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$159, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$159, DW_AT_TI_end_line(0x210)
	.dwattr $C$DW$159, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$159

	.sect	".text:EPWM_init"
	.clink
	.global	||EPWM_init||

$C$DW$166	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$166, DW_AT_name("EPWM_init")
	.dwattr $C$DW$166, DW_AT_low_pc(||EPWM_init||)
	.dwattr $C$DW$166, DW_AT_high_pc(0x00)
	.dwattr $C$DW$166, DW_AT_linkage_name("EPWM_init")
	.dwattr $C$DW$166, DW_AT_external
	.dwattr $C$DW$166, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$166, DW_AT_decl_line(0x155)
	.dwattr $C$DW$166, DW_AT_decl_column(0x06)
	.dwattr $C$DW$166, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "syscfg/board.c",line 341,column 17,is_stmt,address ||EPWM_init||,isa 0

	.dwfde $C$DW$CIE, ||EPWM_init||

;***************************************************************
;* FNAME: EPWM_init                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||EPWM_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1627,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4000)        ; [CPU_ALU] |1627| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOVL      XAR6,#5000            ; [CPU_ALU] |2182| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1549,column 5,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |1549| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1627,column 5,is_stmt,isa 0
        AND       AL,AL,#0xe0ff         ; [CPU_ALU] |1627| 
        ORB       AL,#0x80              ; [CPU_ALU] |1627| 
        MOV       *(0:0x4000),AL        ; [CPU_ALU] |1627| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOV       *(0:0x4063),AR6       ; [CPU_ALU] |2182| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1549,column 5,is_stmt,isa 0
        MOV       *(0:0x4004),AH        ; [CPU_ALU] |1549| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1849,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4000)        ; [CPU_ALU] |1849| 
        AND       AL,AL,#0xfffe         ; [CPU_ALU] |1849| 
        ORB       AL,#0x02              ; [CPU_ALU] |1849| 
        MOV       *(0:0x4000),AL        ; [CPU_ALU] |1849| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1818,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4000)        ; [CPU_ALU] |1818| 
        AND       AL,#0xfffb            ; [CPU_ALU] |1818| 
        MOV       *(0:0x4000),AL        ; [CPU_ALU] |1818| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x4060)       ; [CPU_FPU] |2148| 
        ANDB      AH,#0                 ; [CPU_ALU] |2148| 
        MOV32     *(0:0x4060),ACC       ; [CPU_FPU] |2148| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       AH,#2500              ; [CPU_ALU] |2446| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4000)        ; [CPU_ALU] |1706| 
        AND       AL,AL,#0xffdf         ; [CPU_ALU] |1706| 
        ORB       AL,#0x10              ; [CPU_ALU] |1706| 
        MOV       *(0:0x4000),AL        ; [CPU_ALU] |1706| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *(0:0x406b),AH        ; [CPU_ALU] |2446| 
        MOVB      AH,#0                 ; [CPU_ALU] |2446| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4008)        ; [CPU_ALU] |2341| 
        AND       AL,#0xf3ec            ; [CPU_ALU] |2341| 
        MOV       *(0:0x4008),AL        ; [CPU_ALU] |2341| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *(0:0x406d),AH        ; [CPU_ALU] |2446| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4008)        ; [CPU_ALU] |2341| 
        AND       AL,#0xcfb3            ; [CPU_ALU] |2341| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3668,column 5,is_stmt,isa 0
        MOVB      AH,#50                ; [CPU_FPU] |3668| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        MOV       *(0:0x4008),AL        ; [CPU_ALU] |2341| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2647,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4010)        ; [CPU_ALU] |2647| 
        AND       AL,#0xffef            ; [CPU_ALU] |2647| 
        MOV       *(0:0x4010),AL        ; [CPU_ALU] |2647| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2805,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4040)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfffc            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4040),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4040)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfff3            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4040),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4040)        ; [CPU_ALU] |2805| 
        AND       AL,AL,#0xffef         ; [CPU_ALU] |2805| 
        ORB       AL,#0x20              ; [CPU_ALU] |2805| 
        MOV       *(0:0x4040),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4040)        ; [CPU_ALU] |2805| 
        AND       AL,AL,#0xff7f         ; [CPU_ALU] |2805| 
        ORB       AL,#0x40              ; [CPU_ALU] |2805| 
        MOV       *(0:0x4040),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4040)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfcff            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4040),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4040)        ; [CPU_ALU] |2805| 
        AND       AL,#0xf3ff            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4040),AL        ; [CPU_ALU] |2805| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2647,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4010)        ; [CPU_ALU] |2647| 
        AND       AL,#0xffbf            ; [CPU_ALU] |2647| 
        MOV       *(0:0x4010),AL        ; [CPU_ALU] |2647| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2805,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4042)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfffc            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4042),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4042)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfff3            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4042),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4042)        ; [CPU_ALU] |2805| 
        AND       AL,#0xffcf            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4042),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4042)        ; [CPU_ALU] |2805| 
        AND       AL,#0xff3f            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4042),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4042)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfcff            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4042),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4042)        ; [CPU_ALU] |2805| 
        AND       AL,#0xf3ff            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4042),AL        ; [CPU_ALU] |2805| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3323,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x400c)        ; [CPU_ALU] |3323| 
        ORB       AL,#0x08              ; [CPU_ALU] |3323| 
        MOV       *(0:0x400c),AL        ; [CPU_ALU] |3323| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOV       AL,*(0:0x400c)        ; [CPU_ALU] |3274| 
        ORB       AL,#0x02              ; [CPU_ALU] |3274| 
        MOV       *(0:0x400c),AL        ; [CPU_ALU] |3274| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3510,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x400c)        ; [CPU_ALU] |3510| 
        AND       AL,#0xff3f            ; [CPU_ALU] |3510| 
        OR        AL,#0x0400            ; [CPU_ALU] |3510| 
        MOV       *(0:0x400c),AL        ; [CPU_ALU] |3510| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3539,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x400c)        ; [CPU_ALU] |3539| 
        AND       AL,#0xfbff            ; [CPU_ALU] |3539| 
        MOV       *(0:0x400c),AL        ; [CPU_ALU] |3539| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3668,column 5,is_stmt,isa 0
        MOV       *(0:0x4051),AH        ; [CPU_ALU] |3668| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3696,column 5,is_stmt,isa 0
        MOVB      AH,#50                ; [CPU_ALU] |3696| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOV       AL,*(0:0x400c)        ; [CPU_ALU] |3274| 
        ORB       AL,#0x01              ; [CPU_ALU] |3274| 
        MOV       *(0:0x400c),AL        ; [CPU_ALU] |3274| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3574,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x400c)        ; [CPU_ALU] |3574| 
        AND       AL,#0xfcff            ; [CPU_ALU] |3574| 
        OR        AL,#0x0800            ; [CPU_ALU] |3574| 
        MOV       *(0:0x400c),AL        ; [CPU_ALU] |3574| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3604,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x400c)        ; [CPU_ALU] |3604| 
        AND       AL,#0xf7ff            ; [CPU_ALU] |3604| 
        MOV       *(0:0x400c),AL        ; [CPU_ALU] |3604| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3696,column 5,is_stmt,isa 0
        MOV       *(0:0x4053),AH        ; [CPU_ALU] |3696| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1549,column 5,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |1549| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3448,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x400d)        ; [CPU_ALU] |3448| 
        AND       AL,AL,#0xfffc         ; [CPU_ALU] |3448| 
        ORB       AL,#0x04              ; [CPU_ALU] |3448| 
        MOV       *(0:0x400d),AL        ; [CPU_ALU] |3448| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3476,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x400d)        ; [CPU_ALU] |3476| 
        AND       AL,#0xfffb            ; [CPU_ALU] |3476| 
        MOV       *(0:0x400d),AL        ; [CPU_ALU] |3476| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 5071,column 10,is_stmt,isa 0
        MOV       AL,*(0:0x40a4)        ; [CPU_ALU] |5071| 
        OR        AL,#0x0800            ; [CPU_ALU] |5071| 
        MOV       *(0:0x40a4),AL        ; [CPU_ALU] |5071| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 5175,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x40a4)        ; [CPU_ALU] |5175| 
        AND       AL,#0xf9ff            ; [CPU_ALU] |5175| 
        OR        AL,#0x0100            ; [CPU_ALU] |5175| 
        MOV       *(0:0x40a4),AL        ; [CPU_ALU] |5175| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 5287,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x40a6)        ; [CPU_ALU] |5287| 
        ORB       AL,#0x20              ; [CPU_ALU] |5287| 
        MOV       *(0:0x40a6),AL        ; [CPU_ALU] |5287| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 5293,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x40b0)        ; [CPU_ALU] |5293| 
        AND       AL,AL,#0xfff0         ; [CPU_ALU] |5293| 
        ORB       AL,#0x01              ; [CPU_ALU] |5293| 
        MOV       *(0:0x40b0),AL        ; [CPU_ALU] |5293| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1627,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4100)        ; [CPU_ALU] |1627| 
        AND       AL,AL,#0xe0ff         ; [CPU_ALU] |1627| 
        ORB       AL,#0x80              ; [CPU_ALU] |1627| 
        MOV       *(0:0x4100),AL        ; [CPU_ALU] |1627| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOV       *(0:0x4163),AR6       ; [CPU_ALU] |2182| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1549,column 5,is_stmt,isa 0
        MOV       *(0:0x4104),AH        ; [CPU_ALU] |1549| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1849,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4100)        ; [CPU_ALU] |1849| 
        AND       AL,AL,#0xfffe         ; [CPU_ALU] |1849| 
        ORB       AL,#0x02              ; [CPU_ALU] |1849| 
        MOV       *(0:0x4100),AL        ; [CPU_ALU] |1849| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1581,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4100)        ; [CPU_ALU] |1581| 
        OR        AL,#0x2000            ; [CPU_ALU] |1581| 
        MOV       *(0:0x4100),AL        ; [CPU_ALU] |1581| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1793,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4100)        ; [CPU_ALU] |1793| 
        ORB       AL,#0x04              ; [CPU_ALU] |1793| 
        MOV       *(0:0x4100),AL        ; [CPU_ALU] |1793| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x4160)       ; [CPU_FPU] |2148| 
        ANDB      AH,#0                 ; [CPU_ALU] |2148| 
        MOV32     *(0:0x4160),ACC       ; [CPU_FPU] |2148| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       AH,#2500              ; [CPU_ALU] |2446| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4100)        ; [CPU_ALU] |1706| 
        AND       AL,#0xffcf            ; [CPU_ALU] |1706| 
        MOV       *(0:0x4100),AL        ; [CPU_ALU] |1706| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *(0:0x416b),AH        ; [CPU_ALU] |2446| 
        MOVB      AH,#0                 ; [CPU_ALU] |2446| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4108)        ; [CPU_ALU] |2341| 
        AND       AL,#0xf3ec            ; [CPU_ALU] |2341| 
        MOV       *(0:0x4108),AL        ; [CPU_ALU] |2341| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *(0:0x416d),AH        ; [CPU_ALU] |2446| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4108)        ; [CPU_ALU] |2341| 
        AND       AL,#0xcfb3            ; [CPU_ALU] |2341| 
        MOV       *(0:0x4108),AL        ; [CPU_ALU] |2341| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2647,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4110)        ; [CPU_ALU] |2647| 
        AND       AL,#0xffef            ; [CPU_ALU] |2647| 
        MOV       *(0:0x4110),AL        ; [CPU_ALU] |2647| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2805,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4140)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfffc            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4140),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4140)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfff3            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4140),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4140)        ; [CPU_ALU] |2805| 
        AND       AL,AL,#0xffef         ; [CPU_ALU] |2805| 
        ORB       AL,#0x20              ; [CPU_ALU] |2805| 
        MOV       *(0:0x4140),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4140)        ; [CPU_ALU] |2805| 
        AND       AL,AL,#0xff7f         ; [CPU_ALU] |2805| 
        ORB       AL,#0x40              ; [CPU_ALU] |2805| 
        MOV       *(0:0x4140),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4140)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfcff            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4140),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4140)        ; [CPU_ALU] |2805| 
        AND       AL,#0xf3ff            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4140),AL        ; [CPU_ALU] |2805| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2647,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4110)        ; [CPU_ALU] |2647| 
        AND       AL,#0xffbf            ; [CPU_ALU] |2647| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3668,column 5,is_stmt,isa 0
        MOVB      AH,#50                ; [CPU_FPU] |3668| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2647,column 5,is_stmt,isa 0
        MOV       *(0:0x4110),AL        ; [CPU_ALU] |2647| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2805,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4142)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfffc            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4142),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4142)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfff3            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4142),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4142)        ; [CPU_ALU] |2805| 
        AND       AL,#0xffcf            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4142),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4142)        ; [CPU_ALU] |2805| 
        AND       AL,#0xff3f            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4142),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4142)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfcff            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4142),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4142)        ; [CPU_ALU] |2805| 
        AND       AL,#0xf3ff            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4142),AL        ; [CPU_ALU] |2805| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3323,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x410c)        ; [CPU_ALU] |3323| 
        ORB       AL,#0x08              ; [CPU_ALU] |3323| 
        MOV       *(0:0x410c),AL        ; [CPU_ALU] |3323| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOV       AL,*(0:0x410c)        ; [CPU_ALU] |3274| 
        ORB       AL,#0x02              ; [CPU_ALU] |3274| 
        MOV       *(0:0x410c),AL        ; [CPU_ALU] |3274| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3510,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x410c)        ; [CPU_ALU] |3510| 
        AND       AL,#0xff3f            ; [CPU_ALU] |3510| 
        OR        AL,#0x0400            ; [CPU_ALU] |3510| 
        MOV       *(0:0x410c),AL        ; [CPU_ALU] |3510| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3539,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x410c)        ; [CPU_ALU] |3539| 
        AND       AL,#0xfbff            ; [CPU_ALU] |3539| 
        MOV       *(0:0x410c),AL        ; [CPU_ALU] |3539| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3668,column 5,is_stmt,isa 0
        MOV       *(0:0x4151),AH        ; [CPU_ALU] |3668| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3696,column 5,is_stmt,isa 0
        MOVB      AH,#50                ; [CPU_ALU] |3696| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOV       AL,*(0:0x410c)        ; [CPU_ALU] |3274| 
        ORB       AL,#0x01              ; [CPU_ALU] |3274| 
        MOV       *(0:0x410c),AL        ; [CPU_ALU] |3274| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3574,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x410c)        ; [CPU_ALU] |3574| 
        AND       AL,#0xfcff            ; [CPU_ALU] |3574| 
        OR        AL,#0x0800            ; [CPU_ALU] |3574| 
        MOV       *(0:0x410c),AL        ; [CPU_ALU] |3574| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3604,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x410c)        ; [CPU_ALU] |3604| 
        AND       AL,#0xf7ff            ; [CPU_ALU] |3604| 
        MOV       *(0:0x410c),AL        ; [CPU_ALU] |3604| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3696,column 5,is_stmt,isa 0
        MOV       *(0:0x4153),AH        ; [CPU_ALU] |3696| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1549,column 5,is_stmt,isa 0
        MOVB      AH,#0                 ; [CPU_ALU] |1549| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3448,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x410d)        ; [CPU_ALU] |3448| 
        AND       AL,AL,#0xfffc         ; [CPU_ALU] |3448| 
        ORB       AL,#0x04              ; [CPU_ALU] |3448| 
        MOV       *(0:0x410d),AL        ; [CPU_ALU] |3448| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3476,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x410d)        ; [CPU_ALU] |3476| 
        AND       AL,#0xfffb            ; [CPU_ALU] |3476| 
        MOV       *(0:0x410d),AL        ; [CPU_ALU] |3476| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1627,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4200)        ; [CPU_ALU] |1627| 
        AND       AL,AL,#0xe0ff         ; [CPU_ALU] |1627| 
        ORB       AL,#0x80              ; [CPU_ALU] |1627| 
        MOV       *(0:0x4200),AL        ; [CPU_ALU] |1627| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2182,column 5,is_stmt,isa 0
        MOV       *(0:0x4263),AR6       ; [CPU_ALU] |2182| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1549,column 5,is_stmt,isa 0
        MOV       *(0:0x4204),AH        ; [CPU_ALU] |1549| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1849,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4200)        ; [CPU_ALU] |1849| 
        AND       AL,AL,#0xfffe         ; [CPU_ALU] |1849| 
        ORB       AL,#0x02              ; [CPU_ALU] |1849| 
        MOV       *(0:0x4200),AL        ; [CPU_ALU] |1849| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1581,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4200)        ; [CPU_ALU] |1581| 
        OR        AL,#0x2000            ; [CPU_ALU] |1581| 
        MOV       *(0:0x4200),AL        ; [CPU_ALU] |1581| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1793,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4200)        ; [CPU_ALU] |1793| 
        ORB       AL,#0x04              ; [CPU_ALU] |1793| 
        MOV       *(0:0x4200),AL        ; [CPU_ALU] |1793| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2148,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x4260)       ; [CPU_FPU] |2148| 
        ANDB      AH,#0                 ; [CPU_ALU] |2148| 
        MOV32     *(0:0x4260),ACC       ; [CPU_FPU] |2148| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       AH,#2500              ; [CPU_ALU] |2446| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 1706,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4200)        ; [CPU_ALU] |1706| 
        AND       AL,#0xffcf            ; [CPU_ALU] |1706| 
        MOV       *(0:0x4200),AL        ; [CPU_ALU] |1706| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *(0:0x426b),AH        ; [CPU_ALU] |2446| 
        MOVB      AH,#0                 ; [CPU_ALU] |2446| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4208)        ; [CPU_ALU] |2341| 
        AND       AL,#0xf3ec            ; [CPU_ALU] |2341| 
        MOV       *(0:0x4208),AL        ; [CPU_ALU] |2341| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *(0:0x426d),AH        ; [CPU_ALU] |2446| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3668,column 5,is_stmt,isa 0
        MOVB      AH,#50                ; [CPU_ALU] |3668| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2341,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4208)        ; [CPU_ALU] |2341| 
        AND       AL,#0xcfb3            ; [CPU_ALU] |2341| 
        MOV       *(0:0x4208),AL        ; [CPU_ALU] |2341| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2647,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4210)        ; [CPU_ALU] |2647| 
        AND       AL,#0xffef            ; [CPU_ALU] |2647| 
        MOV       *(0:0x4210),AL        ; [CPU_ALU] |2647| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2805,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4240)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfffc            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4240),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4240)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfff3            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4240),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4240)        ; [CPU_ALU] |2805| 
        AND       AL,AL,#0xffef         ; [CPU_ALU] |2805| 
        ORB       AL,#0x20              ; [CPU_ALU] |2805| 
        MOV       *(0:0x4240),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4240)        ; [CPU_ALU] |2805| 
        AND       AL,AL,#0xff7f         ; [CPU_ALU] |2805| 
        ORB       AL,#0x40              ; [CPU_ALU] |2805| 
        MOV       *(0:0x4240),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4240)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfcff            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4240),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4240)        ; [CPU_ALU] |2805| 
        AND       AL,#0xf3ff            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4240),AL        ; [CPU_ALU] |2805| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2647,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4210)        ; [CPU_ALU] |2647| 
        AND       AL,#0xffbf            ; [CPU_ALU] |2647| 
        MOV       *(0:0x4210),AL        ; [CPU_ALU] |2647| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2805,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4242)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfffc            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4242),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4242)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfff3            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4242),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4242)        ; [CPU_ALU] |2805| 
        AND       AL,#0xffcf            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4242),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4242)        ; [CPU_ALU] |2805| 
        AND       AL,#0xff3f            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4242),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4242)        ; [CPU_ALU] |2805| 
        AND       AL,#0xfcff            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4242),AL        ; [CPU_ALU] |2805| 
        MOV       AL,*(0:0x4242)        ; [CPU_ALU] |2805| 
        AND       AL,#0xf3ff            ; [CPU_ALU] |2805| 
        MOV       *(0:0x4242),AL        ; [CPU_ALU] |2805| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3323,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x420c)        ; [CPU_ALU] |3323| 
        ORB       AL,#0x08              ; [CPU_ALU] |3323| 
        MOV       *(0:0x420c),AL        ; [CPU_ALU] |3323| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOV       AL,*(0:0x420c)        ; [CPU_ALU] |3274| 
        ORB       AL,#0x02              ; [CPU_ALU] |3274| 
        MOV       *(0:0x420c),AL        ; [CPU_ALU] |3274| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3510,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x420c)        ; [CPU_ALU] |3510| 
        AND       AL,#0xff3f            ; [CPU_ALU] |3510| 
        OR        AL,#0x0400            ; [CPU_ALU] |3510| 
        MOV       *(0:0x420c),AL        ; [CPU_ALU] |3510| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3539,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x420c)        ; [CPU_ALU] |3539| 
        AND       AL,#0xfbff            ; [CPU_ALU] |3539| 
        MOV       *(0:0x420c),AL        ; [CPU_ALU] |3539| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3668,column 5,is_stmt,isa 0
        MOV       *(0:0x4251),AH        ; [CPU_ALU] |3668| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3696,column 5,is_stmt,isa 0
        MOVB      AH,#50                ; [CPU_ALU] |3696| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3274,column 10,is_stmt,isa 0
        MOV       AL,*(0:0x420c)        ; [CPU_ALU] |3274| 
        ORB       AL,#0x01              ; [CPU_ALU] |3274| 
        MOV       *(0:0x420c),AL        ; [CPU_ALU] |3274| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3574,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x420c)        ; [CPU_ALU] |3574| 
        AND       AL,#0xfcff            ; [CPU_ALU] |3574| 
        OR        AL,#0x0800            ; [CPU_ALU] |3574| 
        MOV       *(0:0x420c),AL        ; [CPU_ALU] |3574| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3604,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x420c)        ; [CPU_ALU] |3604| 
        AND       AL,#0xf7ff            ; [CPU_ALU] |3604| 
        MOV       *(0:0x420c),AL        ; [CPU_ALU] |3604| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3696,column 5,is_stmt,isa 0
        MOV       *(0:0x4253),AH        ; [CPU_ALU] |3696| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3448,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x420d)        ; [CPU_ALU] |3448| 
        AND       AL,AL,#0xfffc         ; [CPU_ALU] |3448| 
        ORB       AL,#0x04              ; [CPU_ALU] |3448| 
        MOV       *(0:0x420d),AL        ; [CPU_ALU] |3448| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3476,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x420d)        ; [CPU_ALU] |3476| 
        AND       AL,#0xfffb            ; [CPU_ALU] |3476| 
        MOV       *(0:0x420d),AL        ; [CPU_ALU] |3476| 
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$166, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$166, DW_AT_TI_end_line(0x1c7)
	.dwattr $C$DW$166, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$166

	.sect	".text:ADC_init"
	.clink
	.global	||ADC_init||

$C$DW$168	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$168, DW_AT_name("ADC_init")
	.dwattr $C$DW$168, DW_AT_low_pc(||ADC_init||)
	.dwattr $C$DW$168, DW_AT_high_pc(0x00)
	.dwattr $C$DW$168, DW_AT_linkage_name("ADC_init")
	.dwattr $C$DW$168, DW_AT_external
	.dwattr $C$DW$168, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$168, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$168, DW_AT_decl_column(0x06)
	.dwattr $C$DW$168, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "syscfg/board.c",line 166,column 16,is_stmt,address ||ADC_init||,isa 0

	.dwfde $C$DW$CIE, ||ADC_init||

;***************************************************************
;* FNAME: ADC_init                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||ADC_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "syscfg/board.c",line 167,column 2,is_stmt,isa 0
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("myADCA_init")
	.dwattr $C$DW$169, DW_AT_TI_call

        LCR       #||myADCA_init||      ; [CPU_ALU] |167| 
        ; call occurs [#||myADCA_init||] ; [] |167| 
	.dwpsn	file "syscfg/board.c",line 168,column 2,is_stmt,isa 0
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("myADCB_init")
	.dwattr $C$DW$170, DW_AT_TI_call

        LCR       #||myADCB_init||      ; [CPU_ALU] |168| 
        ; call occurs [#||myADCB_init||] ; [] |168| 
	.dwpsn	file "syscfg/board.c",line 169,column 2,is_stmt,isa 0
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("myADCC_init")
	.dwattr $C$DW$171, DW_AT_TI_call

        LCR       #||myADCC_init||      ; [CPU_ALU] |169| 
        ; call occurs [#||myADCC_init||] ; [] |169| 
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$168, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$168, DW_AT_TI_end_line(0xaa)
	.dwattr $C$DW$168, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$168

	.sect	".text:Board_init"
	.clink
	.global	||Board_init||

$C$DW$173	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$173, DW_AT_name("Board_init")
	.dwattr $C$DW$173, DW_AT_low_pc(||Board_init||)
	.dwattr $C$DW$173, DW_AT_high_pc(0x00)
	.dwattr $C$DW$173, DW_AT_linkage_name("Board_init")
	.dwattr $C$DW$173, DW_AT_external
	.dwattr $C$DW$173, DW_AT_decl_file("syscfg/board.c")
	.dwattr $C$DW$173, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$173, DW_AT_decl_column(0x06)
	.dwattr $C$DW$173, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "syscfg/board.c",line 47,column 1,is_stmt,address ||Board_init||,isa 0

	.dwfde $C$DW$CIE, ||Board_init||

;***************************************************************
;* FNAME: Board_init                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||Board_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "syscfg/board.c",line 48,column 2,is_stmt,isa 0
        EALLOW    ; [CPU_ALU] |48| 
	.dwpsn	file "syscfg/board.c",line 50,column 2,is_stmt,isa 0
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("PinMux_init")
	.dwattr $C$DW$174, DW_AT_TI_call

        LCR       #||PinMux_init||      ; [CPU_ALU] |50| 
        ; call occurs [#||PinMux_init||] ; [] |50| 
	.dwpsn	file "syscfg/board.c",line 51,column 2,is_stmt,isa 0
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("SYNC_init")
	.dwattr $C$DW$175, DW_AT_TI_call

        LCR       #||SYNC_init||        ; [CPU_ALU] |51| 
        ; call occurs [#||SYNC_init||] ; [] |51| 
	.dwpsn	file "syscfg/board.c",line 52,column 2,is_stmt,isa 0
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("ADC_init")
	.dwattr $C$DW$176, DW_AT_TI_call

        LCR       #||ADC_init||         ; [CPU_ALU] |52| 
        ; call occurs [#||ADC_init||] ; [] |52| 
	.dwpsn	file "syscfg/board.c",line 53,column 2,is_stmt,isa 0
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("EPWM_init")
	.dwattr $C$DW$177, DW_AT_TI_call

        LCR       #||EPWM_init||        ; [CPU_ALU] |53| 
        ; call occurs [#||EPWM_init||] ; [] |53| 
	.dwpsn	file "syscfg/board.c",line 54,column 2,is_stmt,isa 0
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("EQEP_init")
	.dwattr $C$DW$178, DW_AT_TI_call

        LCR       #||EQEP_init||        ; [CPU_ALU] |54| 
        ; call occurs [#||EQEP_init||] ; [] |54| 
	.dwpsn	file "syscfg/board.c",line 55,column 2,is_stmt,isa 0
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("GPIO_init")
	.dwattr $C$DW$179, DW_AT_TI_call

        LCR       #||GPIO_init||        ; [CPU_ALU] |55| 
        ; call occurs [#||GPIO_init||] ; [] |55| 
	.dwpsn	file "syscfg/board.c",line 56,column 2,is_stmt,isa 0
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("SCI_init")
	.dwattr $C$DW$180, DW_AT_TI_call

        LCR       #||SCI_init||         ; [CPU_ALU] |56| 
        ; call occurs [#||SCI_init||] ; [] |56| 
	.dwpsn	file "syscfg/board.c",line 57,column 2,is_stmt,isa 0
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("SPI_init")
	.dwattr $C$DW$181, DW_AT_TI_call

        LCR       #||SPI_init||         ; [CPU_ALU] |57| 
        ; call occurs [#||SPI_init||] ; [] |57| 
	.dwpsn	file "syscfg/board.c",line 58,column 2,is_stmt,isa 0
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("INTERRUPT_init")
	.dwattr $C$DW$182, DW_AT_TI_call

        LCR       #||INTERRUPT_init||   ; [CPU_ALU] |58| 
        ; call occurs [#||INTERRUPT_init||] ; [] |58| 
	.dwpsn	file "syscfg/board.c",line 60,column 2,is_stmt,isa 0
        EDIS      ; [CPU_ALU] |60| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$173, DW_AT_TI_end_file("syscfg/board.c")
	.dwattr $C$DW$173, DW_AT_TI_end_line(0x3d)
	.dwattr $C$DW$173, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$173

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||GPIO_setPinConfig||
	.global	||GPIO_setPadConfig||
	.global	||GPIO_setQualificationMode||
	.global	||ADC_setMode||
	.global	||SysCtl_delay||
	.global	||EQEP_setInputPolarity||
	.global	||GPIO_setDirectionMode||
	.global	||GPIO_setControllerCore||
	.global	||adcA1_isr||
	.global	||Interrupt_enable||
	.global	||sciA_rx_isr||
	.global	||SCI_clearInterruptStatus||
	.global	||SCI_setConfig||
	.global	||SCI_enableInterrupt||
	.global	||SPI_setConfig||

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

$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19

$C$DW$T$19	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x01)
$C$DW$184	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$184, DW_AT_name("ADC_CLK_DIV_1_0")
	.dwattr $C$DW$184, DW_AT_const_value(0x00)
	.dwattr $C$DW$184, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$184, DW_AT_decl_line(0x98)
	.dwattr $C$DW$184, DW_AT_decl_column(0x05)

$C$DW$185	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$185, DW_AT_name("ADC_CLK_DIV_2_0")
	.dwattr $C$DW$185, DW_AT_const_value(0x02)
	.dwattr $C$DW$185, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$185, DW_AT_decl_line(0x99)
	.dwattr $C$DW$185, DW_AT_decl_column(0x05)

$C$DW$186	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$186, DW_AT_name("ADC_CLK_DIV_2_5")
	.dwattr $C$DW$186, DW_AT_const_value(0x03)
	.dwattr $C$DW$186, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$186, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$186, DW_AT_decl_column(0x05)

$C$DW$187	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$187, DW_AT_name("ADC_CLK_DIV_3_0")
	.dwattr $C$DW$187, DW_AT_const_value(0x04)
	.dwattr $C$DW$187, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$187, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$187, DW_AT_decl_column(0x05)

$C$DW$188	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$188, DW_AT_name("ADC_CLK_DIV_3_5")
	.dwattr $C$DW$188, DW_AT_const_value(0x05)
	.dwattr $C$DW$188, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$188, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$188, DW_AT_decl_column(0x05)

$C$DW$189	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$189, DW_AT_name("ADC_CLK_DIV_4_0")
	.dwattr $C$DW$189, DW_AT_const_value(0x06)
	.dwattr $C$DW$189, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$189, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$189, DW_AT_decl_column(0x05)

$C$DW$190	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$190, DW_AT_name("ADC_CLK_DIV_4_5")
	.dwattr $C$DW$190, DW_AT_const_value(0x07)
	.dwattr $C$DW$190, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$190, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$190, DW_AT_decl_column(0x05)

$C$DW$191	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$191, DW_AT_name("ADC_CLK_DIV_5_0")
	.dwattr $C$DW$191, DW_AT_const_value(0x08)
	.dwattr $C$DW$191, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$191, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$191, DW_AT_decl_column(0x05)

$C$DW$192	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$192, DW_AT_name("ADC_CLK_DIV_5_5")
	.dwattr $C$DW$192, DW_AT_const_value(0x09)
	.dwattr $C$DW$192, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$192, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$192, DW_AT_decl_column(0x05)

$C$DW$193	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$193, DW_AT_name("ADC_CLK_DIV_6_0")
	.dwattr $C$DW$193, DW_AT_const_value(0x0a)
	.dwattr $C$DW$193, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$193, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$193, DW_AT_decl_column(0x05)

$C$DW$194	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$194, DW_AT_name("ADC_CLK_DIV_6_5")
	.dwattr $C$DW$194, DW_AT_const_value(0x0b)
	.dwattr $C$DW$194, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$194, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$194, DW_AT_decl_column(0x05)

$C$DW$195	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$195, DW_AT_name("ADC_CLK_DIV_7_0")
	.dwattr $C$DW$195, DW_AT_const_value(0x0c)
	.dwattr $C$DW$195, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$195, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$195, DW_AT_decl_column(0x05)

$C$DW$196	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$196, DW_AT_name("ADC_CLK_DIV_7_5")
	.dwattr $C$DW$196, DW_AT_const_value(0x0d)
	.dwattr $C$DW$196, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$196, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$196, DW_AT_decl_column(0x05)

$C$DW$197	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$197, DW_AT_name("ADC_CLK_DIV_8_0")
	.dwattr $C$DW$197, DW_AT_const_value(0x0e)
	.dwattr $C$DW$197, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$197, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$197, DW_AT_decl_column(0x05)

$C$DW$198	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$198, DW_AT_name("ADC_CLK_DIV_8_5")
	.dwattr $C$DW$198, DW_AT_const_value(0x0f)
	.dwattr $C$DW$198, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$198, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$198, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x97)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("ADC_ClkPrescale")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$199	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$199, DW_AT_name("ADC_SOC_NUMBER0")
	.dwattr $C$DW$199, DW_AT_const_value(0x00)
	.dwattr $C$DW$199, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$199, DW_AT_decl_line(0x145)
	.dwattr $C$DW$199, DW_AT_decl_column(0x05)

$C$DW$200	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$200, DW_AT_name("ADC_SOC_NUMBER1")
	.dwattr $C$DW$200, DW_AT_const_value(0x01)
	.dwattr $C$DW$200, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$200, DW_AT_decl_line(0x146)
	.dwattr $C$DW$200, DW_AT_decl_column(0x05)

$C$DW$201	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$201, DW_AT_name("ADC_SOC_NUMBER2")
	.dwattr $C$DW$201, DW_AT_const_value(0x02)
	.dwattr $C$DW$201, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$201, DW_AT_decl_line(0x147)
	.dwattr $C$DW$201, DW_AT_decl_column(0x05)

$C$DW$202	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$202, DW_AT_name("ADC_SOC_NUMBER3")
	.dwattr $C$DW$202, DW_AT_const_value(0x03)
	.dwattr $C$DW$202, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$202, DW_AT_decl_line(0x148)
	.dwattr $C$DW$202, DW_AT_decl_column(0x05)

$C$DW$203	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$203, DW_AT_name("ADC_SOC_NUMBER4")
	.dwattr $C$DW$203, DW_AT_const_value(0x04)
	.dwattr $C$DW$203, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$203, DW_AT_decl_line(0x149)
	.dwattr $C$DW$203, DW_AT_decl_column(0x05)

$C$DW$204	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$204, DW_AT_name("ADC_SOC_NUMBER5")
	.dwattr $C$DW$204, DW_AT_const_value(0x05)
	.dwattr $C$DW$204, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$204, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$204, DW_AT_decl_column(0x05)

$C$DW$205	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$205, DW_AT_name("ADC_SOC_NUMBER6")
	.dwattr $C$DW$205, DW_AT_const_value(0x06)
	.dwattr $C$DW$205, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$205, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$205, DW_AT_decl_column(0x05)

$C$DW$206	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$206, DW_AT_name("ADC_SOC_NUMBER7")
	.dwattr $C$DW$206, DW_AT_const_value(0x07)
	.dwattr $C$DW$206, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$206, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$206, DW_AT_decl_column(0x05)

$C$DW$207	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$207, DW_AT_name("ADC_SOC_NUMBER8")
	.dwattr $C$DW$207, DW_AT_const_value(0x08)
	.dwattr $C$DW$207, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$207, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$207, DW_AT_decl_column(0x05)

$C$DW$208	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$208, DW_AT_name("ADC_SOC_NUMBER9")
	.dwattr $C$DW$208, DW_AT_const_value(0x09)
	.dwattr $C$DW$208, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$208, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$208, DW_AT_decl_column(0x05)

$C$DW$209	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$209, DW_AT_name("ADC_SOC_NUMBER10")
	.dwattr $C$DW$209, DW_AT_const_value(0x0a)
	.dwattr $C$DW$209, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$209, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$209, DW_AT_decl_column(0x05)

$C$DW$210	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$210, DW_AT_name("ADC_SOC_NUMBER11")
	.dwattr $C$DW$210, DW_AT_const_value(0x0b)
	.dwattr $C$DW$210, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$210, DW_AT_decl_line(0x150)
	.dwattr $C$DW$210, DW_AT_decl_column(0x05)

$C$DW$211	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$211, DW_AT_name("ADC_SOC_NUMBER12")
	.dwattr $C$DW$211, DW_AT_const_value(0x0c)
	.dwattr $C$DW$211, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$211, DW_AT_decl_line(0x151)
	.dwattr $C$DW$211, DW_AT_decl_column(0x05)

$C$DW$212	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$212, DW_AT_name("ADC_SOC_NUMBER13")
	.dwattr $C$DW$212, DW_AT_const_value(0x0d)
	.dwattr $C$DW$212, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$212, DW_AT_decl_line(0x152)
	.dwattr $C$DW$212, DW_AT_decl_column(0x05)

$C$DW$213	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$213, DW_AT_name("ADC_SOC_NUMBER14")
	.dwattr $C$DW$213, DW_AT_const_value(0x0e)
	.dwattr $C$DW$213, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$213, DW_AT_decl_line(0x153)
	.dwattr $C$DW$213, DW_AT_decl_column(0x05)

$C$DW$214	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$214, DW_AT_name("ADC_SOC_NUMBER15")
	.dwattr $C$DW$214, DW_AT_const_value(0x0f)
	.dwattr $C$DW$214, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$214, DW_AT_decl_line(0x154)
	.dwattr $C$DW$214, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x144)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("ADC_SOCNumber")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x155)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$215	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$215, DW_AT_name("ADC_TRIGGER_SW_ONLY")
	.dwattr $C$DW$215, DW_AT_const_value(0x00)
	.dwattr $C$DW$215, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$215, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$215, DW_AT_decl_column(0x05)

$C$DW$216	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$216, DW_AT_name("ADC_TRIGGER_CPU1_TINT0")
	.dwattr $C$DW$216, DW_AT_const_value(0x01)
	.dwattr $C$DW$216, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$216, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$216, DW_AT_decl_column(0x05)

$C$DW$217	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$217, DW_AT_name("ADC_TRIGGER_CPU1_TINT1")
	.dwattr $C$DW$217, DW_AT_const_value(0x02)
	.dwattr $C$DW$217, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$217, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$217, DW_AT_decl_column(0x05)

$C$DW$218	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$218, DW_AT_name("ADC_TRIGGER_CPU1_TINT2")
	.dwattr $C$DW$218, DW_AT_const_value(0x03)
	.dwattr $C$DW$218, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$218, DW_AT_decl_line(0xce)
	.dwattr $C$DW$218, DW_AT_decl_column(0x05)

$C$DW$219	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$219, DW_AT_name("ADC_TRIGGER_GPIO")
	.dwattr $C$DW$219, DW_AT_const_value(0x04)
	.dwattr $C$DW$219, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$219, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$219, DW_AT_decl_column(0x05)

$C$DW$220	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$220, DW_AT_name("ADC_TRIGGER_EPWM1_SOCA")
	.dwattr $C$DW$220, DW_AT_const_value(0x05)
	.dwattr $C$DW$220, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$220, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$220, DW_AT_decl_column(0x05)

$C$DW$221	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$221, DW_AT_name("ADC_TRIGGER_EPWM1_SOCB")
	.dwattr $C$DW$221, DW_AT_const_value(0x06)
	.dwattr $C$DW$221, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$221, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$221, DW_AT_decl_column(0x05)

$C$DW$222	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$222, DW_AT_name("ADC_TRIGGER_EPWM2_SOCA")
	.dwattr $C$DW$222, DW_AT_const_value(0x07)
	.dwattr $C$DW$222, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$222, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$222, DW_AT_decl_column(0x05)

$C$DW$223	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$223, DW_AT_name("ADC_TRIGGER_EPWM2_SOCB")
	.dwattr $C$DW$223, DW_AT_const_value(0x08)
	.dwattr $C$DW$223, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$223, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$223, DW_AT_decl_column(0x05)

$C$DW$224	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$224, DW_AT_name("ADC_TRIGGER_EPWM3_SOCA")
	.dwattr $C$DW$224, DW_AT_const_value(0x09)
	.dwattr $C$DW$224, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$224, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$224, DW_AT_decl_column(0x05)

$C$DW$225	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$225, DW_AT_name("ADC_TRIGGER_EPWM3_SOCB")
	.dwattr $C$DW$225, DW_AT_const_value(0x0a)
	.dwattr $C$DW$225, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$225, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$225, DW_AT_decl_column(0x05)

$C$DW$226	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$226, DW_AT_name("ADC_TRIGGER_EPWM4_SOCA")
	.dwattr $C$DW$226, DW_AT_const_value(0x0b)
	.dwattr $C$DW$226, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$226, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$226, DW_AT_decl_column(0x05)

$C$DW$227	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$227, DW_AT_name("ADC_TRIGGER_EPWM4_SOCB")
	.dwattr $C$DW$227, DW_AT_const_value(0x0c)
	.dwattr $C$DW$227, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$227, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$227, DW_AT_decl_column(0x05)

$C$DW$228	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$228, DW_AT_name("ADC_TRIGGER_EPWM5_SOCA")
	.dwattr $C$DW$228, DW_AT_const_value(0x0d)
	.dwattr $C$DW$228, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$228, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$228, DW_AT_decl_column(0x05)

$C$DW$229	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$229, DW_AT_name("ADC_TRIGGER_EPWM5_SOCB")
	.dwattr $C$DW$229, DW_AT_const_value(0x0e)
	.dwattr $C$DW$229, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$229, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$229, DW_AT_decl_column(0x05)

$C$DW$230	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$230, DW_AT_name("ADC_TRIGGER_EPWM6_SOCA")
	.dwattr $C$DW$230, DW_AT_const_value(0x0f)
	.dwattr $C$DW$230, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$230, DW_AT_decl_line(0xda)
	.dwattr $C$DW$230, DW_AT_decl_column(0x05)

$C$DW$231	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$231, DW_AT_name("ADC_TRIGGER_EPWM6_SOCB")
	.dwattr $C$DW$231, DW_AT_const_value(0x10)
	.dwattr $C$DW$231, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$231, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$231, DW_AT_decl_column(0x05)

$C$DW$232	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$232, DW_AT_name("ADC_TRIGGER_EPWM7_SOCA")
	.dwattr $C$DW$232, DW_AT_const_value(0x11)
	.dwattr $C$DW$232, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$232, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$232, DW_AT_decl_column(0x05)

$C$DW$233	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$233, DW_AT_name("ADC_TRIGGER_EPWM7_SOCB")
	.dwattr $C$DW$233, DW_AT_const_value(0x12)
	.dwattr $C$DW$233, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$233, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$233, DW_AT_decl_column(0x05)

$C$DW$234	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$234, DW_AT_name("ADC_TRIGGER_EPWM8_SOCA")
	.dwattr $C$DW$234, DW_AT_const_value(0x13)
	.dwattr $C$DW$234, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$234, DW_AT_decl_line(0xde)
	.dwattr $C$DW$234, DW_AT_decl_column(0x05)

$C$DW$235	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$235, DW_AT_name("ADC_TRIGGER_EPWM8_SOCB")
	.dwattr $C$DW$235, DW_AT_const_value(0x14)
	.dwattr $C$DW$235, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$235, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$235, DW_AT_decl_column(0x05)

$C$DW$236	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$236, DW_AT_name("ADC_TRIGGER_EPWM9_SOCA")
	.dwattr $C$DW$236, DW_AT_const_value(0x15)
	.dwattr $C$DW$236, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$236, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$236, DW_AT_decl_column(0x05)

$C$DW$237	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$237, DW_AT_name("ADC_TRIGGER_EPWM9_SOCB")
	.dwattr $C$DW$237, DW_AT_const_value(0x16)
	.dwattr $C$DW$237, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$237, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$237, DW_AT_decl_column(0x05)

$C$DW$238	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$238, DW_AT_name("ADC_TRIGGER_EPWM10_SOCA")
	.dwattr $C$DW$238, DW_AT_const_value(0x17)
	.dwattr $C$DW$238, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$238, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$238, DW_AT_decl_column(0x05)

$C$DW$239	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$239, DW_AT_name("ADC_TRIGGER_EPWM10_SOCB")
	.dwattr $C$DW$239, DW_AT_const_value(0x18)
	.dwattr $C$DW$239, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$239, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$239, DW_AT_decl_column(0x05)

$C$DW$240	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$240, DW_AT_name("ADC_TRIGGER_EPWM11_SOCA")
	.dwattr $C$DW$240, DW_AT_const_value(0x19)
	.dwattr $C$DW$240, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$240, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$240, DW_AT_decl_column(0x05)

$C$DW$241	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$241, DW_AT_name("ADC_TRIGGER_EPWM11_SOCB")
	.dwattr $C$DW$241, DW_AT_const_value(0x1a)
	.dwattr $C$DW$241, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$241, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$241, DW_AT_decl_column(0x05)

$C$DW$242	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$242, DW_AT_name("ADC_TRIGGER_EPWM12_SOCA")
	.dwattr $C$DW$242, DW_AT_const_value(0x1b)
	.dwattr $C$DW$242, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$242, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$242, DW_AT_decl_column(0x05)

$C$DW$243	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$243, DW_AT_name("ADC_TRIGGER_EPWM12_SOCB")
	.dwattr $C$DW$243, DW_AT_const_value(0x1c)
	.dwattr $C$DW$243, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$243, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$243, DW_AT_decl_column(0x05)

$C$DW$244	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$244, DW_AT_name("ADC_TRIGGER_CPU2_TINT0")
	.dwattr $C$DW$244, DW_AT_const_value(0x1d)
	.dwattr $C$DW$244, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$244, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$244, DW_AT_decl_column(0x05)

$C$DW$245	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$245, DW_AT_name("ADC_TRIGGER_CPU2_TINT1")
	.dwattr $C$DW$245, DW_AT_const_value(0x1e)
	.dwattr $C$DW$245, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$245, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$245, DW_AT_decl_column(0x05)

$C$DW$246	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$246, DW_AT_name("ADC_TRIGGER_CPU2_TINT2")
	.dwattr $C$DW$246, DW_AT_const_value(0x1f)
	.dwattr $C$DW$246, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$246, DW_AT_decl_line(0xea)
	.dwattr $C$DW$246, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$23, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0xca)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("ADC_Trigger")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$247	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$247, DW_AT_name("ADC_CH_ADCIN0")
	.dwattr $C$DW$247, DW_AT_const_value(0x00)
	.dwattr $C$DW$247, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$247, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$247, DW_AT_decl_column(0x05)

$C$DW$248	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$248, DW_AT_name("ADC_CH_ADCIN1")
	.dwattr $C$DW$248, DW_AT_const_value(0x01)
	.dwattr $C$DW$248, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$248, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$248, DW_AT_decl_column(0x05)

$C$DW$249	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$249, DW_AT_name("ADC_CH_ADCIN2")
	.dwattr $C$DW$249, DW_AT_const_value(0x02)
	.dwattr $C$DW$249, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$249, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$249, DW_AT_decl_column(0x05)

$C$DW$250	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$250, DW_AT_name("ADC_CH_ADCIN3")
	.dwattr $C$DW$250, DW_AT_const_value(0x03)
	.dwattr $C$DW$250, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$250, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$250, DW_AT_decl_column(0x05)

$C$DW$251	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$251, DW_AT_name("ADC_CH_ADCIN4")
	.dwattr $C$DW$251, DW_AT_const_value(0x04)
	.dwattr $C$DW$251, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$251, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$251, DW_AT_decl_column(0x05)

$C$DW$252	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$252, DW_AT_name("ADC_CH_ADCIN5")
	.dwattr $C$DW$252, DW_AT_const_value(0x05)
	.dwattr $C$DW$252, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$252, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$252, DW_AT_decl_column(0x05)

$C$DW$253	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$253, DW_AT_name("ADC_CH_ADCIN6")
	.dwattr $C$DW$253, DW_AT_const_value(0x06)
	.dwattr $C$DW$253, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$253, DW_AT_decl_line(0xfc)
	.dwattr $C$DW$253, DW_AT_decl_column(0x05)

$C$DW$254	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$254, DW_AT_name("ADC_CH_ADCIN7")
	.dwattr $C$DW$254, DW_AT_const_value(0x07)
	.dwattr $C$DW$254, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$254, DW_AT_decl_line(0xfd)
	.dwattr $C$DW$254, DW_AT_decl_column(0x05)

$C$DW$255	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$255, DW_AT_name("ADC_CH_ADCIN8")
	.dwattr $C$DW$255, DW_AT_const_value(0x08)
	.dwattr $C$DW$255, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$255, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$255, DW_AT_decl_column(0x05)

$C$DW$256	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$256, DW_AT_name("ADC_CH_ADCIN9")
	.dwattr $C$DW$256, DW_AT_const_value(0x09)
	.dwattr $C$DW$256, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$256, DW_AT_decl_line(0xff)
	.dwattr $C$DW$256, DW_AT_decl_column(0x05)

$C$DW$257	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$257, DW_AT_name("ADC_CH_ADCIN10")
	.dwattr $C$DW$257, DW_AT_const_value(0x0a)
	.dwattr $C$DW$257, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$257, DW_AT_decl_line(0x100)
	.dwattr $C$DW$257, DW_AT_decl_column(0x05)

$C$DW$258	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$258, DW_AT_name("ADC_CH_ADCIN11")
	.dwattr $C$DW$258, DW_AT_const_value(0x0b)
	.dwattr $C$DW$258, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$258, DW_AT_decl_line(0x101)
	.dwattr $C$DW$258, DW_AT_decl_column(0x05)

$C$DW$259	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$259, DW_AT_name("ADC_CH_ADCIN12")
	.dwattr $C$DW$259, DW_AT_const_value(0x0c)
	.dwattr $C$DW$259, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$259, DW_AT_decl_line(0x102)
	.dwattr $C$DW$259, DW_AT_decl_column(0x05)

$C$DW$260	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$260, DW_AT_name("ADC_CH_ADCIN13")
	.dwattr $C$DW$260, DW_AT_const_value(0x0d)
	.dwattr $C$DW$260, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$260, DW_AT_decl_line(0x103)
	.dwattr $C$DW$260, DW_AT_decl_column(0x05)

$C$DW$261	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$261, DW_AT_name("ADC_CH_ADCIN14")
	.dwattr $C$DW$261, DW_AT_const_value(0x0e)
	.dwattr $C$DW$261, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$261, DW_AT_decl_line(0x104)
	.dwattr $C$DW$261, DW_AT_decl_column(0x05)

$C$DW$262	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$262, DW_AT_name("ADC_CH_ADCIN15")
	.dwattr $C$DW$262, DW_AT_const_value(0x0f)
	.dwattr $C$DW$262, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$262, DW_AT_decl_line(0x105)
	.dwattr $C$DW$262, DW_AT_decl_column(0x05)

$C$DW$263	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$263, DW_AT_name("ADC_CH_ADCIN0_ADCIN1")
	.dwattr $C$DW$263, DW_AT_const_value(0x00)
	.dwattr $C$DW$263, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$263, DW_AT_decl_line(0x106)
	.dwattr $C$DW$263, DW_AT_decl_column(0x05)

$C$DW$264	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$264, DW_AT_name("ADC_CH_ADCIN2_ADCIN3")
	.dwattr $C$DW$264, DW_AT_const_value(0x02)
	.dwattr $C$DW$264, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$264, DW_AT_decl_line(0x107)
	.dwattr $C$DW$264, DW_AT_decl_column(0x05)

$C$DW$265	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$265, DW_AT_name("ADC_CH_ADCIN4_ADCIN5")
	.dwattr $C$DW$265, DW_AT_const_value(0x04)
	.dwattr $C$DW$265, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$265, DW_AT_decl_line(0x108)
	.dwattr $C$DW$265, DW_AT_decl_column(0x05)

$C$DW$266	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$266, DW_AT_name("ADC_CH_ADCIN6_ADCIN7")
	.dwattr $C$DW$266, DW_AT_const_value(0x06)
	.dwattr $C$DW$266, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$266, DW_AT_decl_line(0x109)
	.dwattr $C$DW$266, DW_AT_decl_column(0x05)

$C$DW$267	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$267, DW_AT_name("ADC_CH_ADCIN8_ADCIN9")
	.dwattr $C$DW$267, DW_AT_const_value(0x08)
	.dwattr $C$DW$267, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$267, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$267, DW_AT_decl_column(0x05)

$C$DW$268	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$268, DW_AT_name("ADC_CH_ADCIN10_ADCIN11")
	.dwattr $C$DW$268, DW_AT_const_value(0x0a)
	.dwattr $C$DW$268, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$268, DW_AT_decl_line(0x10b)
	.dwattr $C$DW$268, DW_AT_decl_column(0x05)

$C$DW$269	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$269, DW_AT_name("ADC_CH_ADCIN12_ADCIN13")
	.dwattr $C$DW$269, DW_AT_const_value(0x0c)
	.dwattr $C$DW$269, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$269, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$269, DW_AT_decl_column(0x05)

$C$DW$270	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$270, DW_AT_name("ADC_CH_ADCIN14_ADCIN15")
	.dwattr $C$DW$270, DW_AT_const_value(0x0e)
	.dwattr $C$DW$270, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$270, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$270, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$25, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("ADC_Channel")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$26, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27

$C$DW$T$27	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$271	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$271, DW_AT_name("ADC_INT_SOC_TRIGGER_NONE")
	.dwattr $C$DW$271, DW_AT_const_value(0x00)
	.dwattr $C$DW$271, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$271, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$271, DW_AT_decl_column(0x05)

$C$DW$272	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$272, DW_AT_name("ADC_INT_SOC_TRIGGER_ADCINT1")
	.dwattr $C$DW$272, DW_AT_const_value(0x01)
	.dwattr $C$DW$272, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$272, DW_AT_decl_line(0x160)
	.dwattr $C$DW$272, DW_AT_decl_column(0x05)

$C$DW$273	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$273, DW_AT_name("ADC_INT_SOC_TRIGGER_ADCINT2")
	.dwattr $C$DW$273, DW_AT_const_value(0x02)
	.dwattr $C$DW$273, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$273, DW_AT_decl_line(0x161)
	.dwattr $C$DW$273, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$27, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("ADC_IntSOCTrigger")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x162)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$274	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$274, DW_AT_name("ADC_PULSE_END_OF_ACQ_WIN")
	.dwattr $C$DW$274, DW_AT_const_value(0x00)
	.dwattr $C$DW$274, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$274, DW_AT_decl_line(0x119)
	.dwattr $C$DW$274, DW_AT_decl_column(0x05)

$C$DW$275	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$275, DW_AT_name("ADC_PULSE_END_OF_CONV")
	.dwattr $C$DW$275, DW_AT_const_value(0x04)
	.dwattr $C$DW$275, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$275, DW_AT_decl_line(0x11b)
	.dwattr $C$DW$275, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$29, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x117)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("ADC_PulseMode")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x11c)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$276	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$276, DW_AT_name("ADC_INT_NUMBER1")
	.dwattr $C$DW$276, DW_AT_const_value(0x00)
	.dwattr $C$DW$276, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$276, DW_AT_decl_line(0x126)
	.dwattr $C$DW$276, DW_AT_decl_column(0x05)

$C$DW$277	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$277, DW_AT_name("ADC_INT_NUMBER2")
	.dwattr $C$DW$277, DW_AT_const_value(0x01)
	.dwattr $C$DW$277, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$277, DW_AT_decl_line(0x127)
	.dwattr $C$DW$277, DW_AT_decl_column(0x05)

$C$DW$278	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$278, DW_AT_name("ADC_INT_NUMBER3")
	.dwattr $C$DW$278, DW_AT_const_value(0x02)
	.dwattr $C$DW$278, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$278, DW_AT_decl_line(0x128)
	.dwattr $C$DW$278, DW_AT_decl_column(0x05)

$C$DW$279	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$279, DW_AT_name("ADC_INT_NUMBER4")
	.dwattr $C$DW$279, DW_AT_const_value(0x03)
	.dwattr $C$DW$279, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$279, DW_AT_decl_line(0x129)
	.dwattr $C$DW$279, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$31, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x125)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$T$32	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$32, DW_AT_name("ADC_IntNumber")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$32, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$280	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$280, DW_AT_name("ADC_PRI_ALL_ROUND_ROBIN")
	.dwattr $C$DW$280, DW_AT_const_value(0x00)
	.dwattr $C$DW$280, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$280, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$280, DW_AT_decl_column(0x05)

$C$DW$281	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$281, DW_AT_name("ADC_PRI_SOC0_HIPRI")
	.dwattr $C$DW$281, DW_AT_const_value(0x01)
	.dwattr $C$DW$281, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$281, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$281, DW_AT_decl_column(0x05)

$C$DW$282	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$282, DW_AT_name("ADC_PRI_THRU_SOC1_HIPRI")
	.dwattr $C$DW$282, DW_AT_const_value(0x02)
	.dwattr $C$DW$282, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$282, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$282, DW_AT_decl_column(0x05)

$C$DW$283	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$283, DW_AT_name("ADC_PRI_THRU_SOC2_HIPRI")
	.dwattr $C$DW$283, DW_AT_const_value(0x03)
	.dwattr $C$DW$283, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$283, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$283, DW_AT_decl_column(0x05)

$C$DW$284	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$284, DW_AT_name("ADC_PRI_THRU_SOC3_HIPRI")
	.dwattr $C$DW$284, DW_AT_const_value(0x04)
	.dwattr $C$DW$284, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$284, DW_AT_decl_line(0x170)
	.dwattr $C$DW$284, DW_AT_decl_column(0x05)

$C$DW$285	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$285, DW_AT_name("ADC_PRI_THRU_SOC4_HIPRI")
	.dwattr $C$DW$285, DW_AT_const_value(0x05)
	.dwattr $C$DW$285, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$285, DW_AT_decl_line(0x171)
	.dwattr $C$DW$285, DW_AT_decl_column(0x05)

$C$DW$286	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$286, DW_AT_name("ADC_PRI_THRU_SOC5_HIPRI")
	.dwattr $C$DW$286, DW_AT_const_value(0x06)
	.dwattr $C$DW$286, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$286, DW_AT_decl_line(0x172)
	.dwattr $C$DW$286, DW_AT_decl_column(0x05)

$C$DW$287	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$287, DW_AT_name("ADC_PRI_THRU_SOC6_HIPRI")
	.dwattr $C$DW$287, DW_AT_const_value(0x07)
	.dwattr $C$DW$287, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$287, DW_AT_decl_line(0x173)
	.dwattr $C$DW$287, DW_AT_decl_column(0x05)

$C$DW$288	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$288, DW_AT_name("ADC_PRI_THRU_SOC7_HIPRI")
	.dwattr $C$DW$288, DW_AT_const_value(0x08)
	.dwattr $C$DW$288, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$288, DW_AT_decl_line(0x174)
	.dwattr $C$DW$288, DW_AT_decl_column(0x05)

$C$DW$289	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$289, DW_AT_name("ADC_PRI_THRU_SOC8_HIPRI")
	.dwattr $C$DW$289, DW_AT_const_value(0x09)
	.dwattr $C$DW$289, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$289, DW_AT_decl_line(0x175)
	.dwattr $C$DW$289, DW_AT_decl_column(0x05)

$C$DW$290	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$290, DW_AT_name("ADC_PRI_THRU_SOC9_HIPRI")
	.dwattr $C$DW$290, DW_AT_const_value(0x0a)
	.dwattr $C$DW$290, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$290, DW_AT_decl_line(0x176)
	.dwattr $C$DW$290, DW_AT_decl_column(0x05)

$C$DW$291	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$291, DW_AT_name("ADC_PRI_THRU_SOC10_HIPRI")
	.dwattr $C$DW$291, DW_AT_const_value(0x0b)
	.dwattr $C$DW$291, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$291, DW_AT_decl_line(0x177)
	.dwattr $C$DW$291, DW_AT_decl_column(0x05)

$C$DW$292	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$292, DW_AT_name("ADC_PRI_THRU_SOC11_HIPRI")
	.dwattr $C$DW$292, DW_AT_const_value(0x0c)
	.dwattr $C$DW$292, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$292, DW_AT_decl_line(0x178)
	.dwattr $C$DW$292, DW_AT_decl_column(0x05)

$C$DW$293	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$293, DW_AT_name("ADC_PRI_THRU_SOC12_HIPRI")
	.dwattr $C$DW$293, DW_AT_const_value(0x0d)
	.dwattr $C$DW$293, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$293, DW_AT_decl_line(0x179)
	.dwattr $C$DW$293, DW_AT_decl_column(0x05)

$C$DW$294	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$294, DW_AT_name("ADC_PRI_THRU_SOC13_HIPRI")
	.dwattr $C$DW$294, DW_AT_const_value(0x0e)
	.dwattr $C$DW$294, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$294, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$294, DW_AT_decl_column(0x05)

$C$DW$295	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$295, DW_AT_name("ADC_PRI_THRU_SOC14_HIPRI")
	.dwattr $C$DW$295, DW_AT_const_value(0x0f)
	.dwattr $C$DW$295, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$295, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$295, DW_AT_decl_column(0x05)

$C$DW$296	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$296, DW_AT_name("ADC_PRI_ALL_HIPRI")
	.dwattr $C$DW$296, DW_AT_const_value(0x10)
	.dwattr $C$DW$296, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$296, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$296, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$33, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$T$34	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$34, DW_AT_name("ADC_PriorityMode")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$34, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$297	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$297, DW_AT_name("ADC_RESOLUTION_12BIT")
	.dwattr $C$DW$297, DW_AT_const_value(0x00)
	.dwattr $C$DW$297, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$297, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$297, DW_AT_decl_column(0x05)

$C$DW$298	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$298, DW_AT_name("ADC_RESOLUTION_16BIT")
	.dwattr $C$DW$298, DW_AT_const_value(0x40)
	.dwattr $C$DW$298, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$298, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$298, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$35, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("ADC_Resolution")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$36, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$299	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$299, DW_AT_name("ADC_MODE_SINGLE_ENDED")
	.dwattr $C$DW$299, DW_AT_const_value(0x00)
	.dwattr $C$DW$299, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$299, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$299, DW_AT_decl_column(0x05)

$C$DW$300	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$300, DW_AT_name("ADC_MODE_DIFFERENTIAL")
	.dwattr $C$DW$300, DW_AT_const_value(0x80)
	.dwattr $C$DW$300, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$300, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$300, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$37, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$T$38	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$38, DW_AT_name("ADC_SignalMode")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/adc.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$301	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$301, DW_AT_name("SYSCTL_SYNC_IN_EPWM4")
	.dwattr $C$DW$301, DW_AT_const_value(0x00)
	.dwattr $C$DW$301, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$301, DW_AT_decl_line(0x2de)
	.dwattr $C$DW$301, DW_AT_decl_column(0x05)

$C$DW$302	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$302, DW_AT_name("SYSCTL_SYNC_IN_EPWM7")
	.dwattr $C$DW$302, DW_AT_const_value(0x03)
	.dwattr $C$DW$302, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$302, DW_AT_decl_line(0x2df)
	.dwattr $C$DW$302, DW_AT_decl_column(0x05)

$C$DW$303	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$303, DW_AT_name("SYSCTL_SYNC_IN_EPWM10")
	.dwattr $C$DW$303, DW_AT_const_value(0x06)
	.dwattr $C$DW$303, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$303, DW_AT_decl_line(0x2e0)
	.dwattr $C$DW$303, DW_AT_decl_column(0x05)

$C$DW$304	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$304, DW_AT_name("SYSCTL_SYNC_IN_ECAP1")
	.dwattr $C$DW$304, DW_AT_const_value(0x09)
	.dwattr $C$DW$304, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$304, DW_AT_decl_line(0x2e1)
	.dwattr $C$DW$304, DW_AT_decl_column(0x05)

$C$DW$305	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$305, DW_AT_name("SYSCTL_SYNC_IN_ECAP4")
	.dwattr $C$DW$305, DW_AT_const_value(0x0c)
	.dwattr $C$DW$305, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$305, DW_AT_decl_line(0x2e2)
	.dwattr $C$DW$305, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$39, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x2dd)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("SysCtl_SyncInput")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x2e3)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41

$C$DW$T$41	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$306	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$306, DW_AT_name("SYSCTL_SYNC_IN_SRC_EPWM1SYNCOUT")
	.dwattr $C$DW$306, DW_AT_const_value(0x00)
	.dwattr $C$DW$306, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$306, DW_AT_decl_line(0x2f0)
	.dwattr $C$DW$306, DW_AT_decl_column(0x05)

$C$DW$307	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$307, DW_AT_name("SYSCTL_SYNC_IN_SRC_EPWM4SYNCOUT")
	.dwattr $C$DW$307, DW_AT_const_value(0x01)
	.dwattr $C$DW$307, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0x2f2)
	.dwattr $C$DW$307, DW_AT_decl_column(0x05)

$C$DW$308	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$308, DW_AT_name("SYSCTL_SYNC_IN_SRC_EPWM7SYNCOUT")
	.dwattr $C$DW$308, DW_AT_const_value(0x02)
	.dwattr $C$DW$308, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0x2f4)
	.dwattr $C$DW$308, DW_AT_decl_column(0x05)

$C$DW$309	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$309, DW_AT_name("SYSCTL_SYNC_IN_SRC_EPWM10SYNCOUT")
	.dwattr $C$DW$309, DW_AT_const_value(0x03)
	.dwattr $C$DW$309, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0x2f6)
	.dwattr $C$DW$309, DW_AT_decl_column(0x05)

$C$DW$310	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$310, DW_AT_name("SYSCTL_SYNC_IN_SRC_ECAP1SYNCOUT")
	.dwattr $C$DW$310, DW_AT_const_value(0x04)
	.dwattr $C$DW$310, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$310, DW_AT_decl_line(0x2f8)
	.dwattr $C$DW$310, DW_AT_decl_column(0x05)

$C$DW$311	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$311, DW_AT_name("SYSCTL_SYNC_IN_SRC_EXTSYNCIN1")
	.dwattr $C$DW$311, DW_AT_const_value(0x05)
	.dwattr $C$DW$311, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0x2fa)
	.dwattr $C$DW$311, DW_AT_decl_column(0x05)

$C$DW$312	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$312, DW_AT_name("SYSCTL_SYNC_IN_SRC_EXTSYNCIN2")
	.dwattr $C$DW$312, DW_AT_const_value(0x06)
	.dwattr $C$DW$312, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0x2fc)
	.dwattr $C$DW$312, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$41, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x2ee)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$41

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42
$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("SysCtl_SyncInputSource")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x2fd)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$42


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43

$C$DW$T$43	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$313	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$313, DW_AT_name("SYSCTL_SYNC_OUT_SRC_EPWM1SYNCOUT")
	.dwattr $C$DW$313, DW_AT_const_value(0x00)
	.dwattr $C$DW$313, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$313, DW_AT_decl_line(0x307)
	.dwattr $C$DW$313, DW_AT_decl_column(0x05)

$C$DW$314	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$314, DW_AT_name("SYSCTL_SYNC_OUT_SRC_EPWM4SYNCOUT")
	.dwattr $C$DW$314, DW_AT_const_value(0x01)
	.dwattr $C$DW$314, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$314, DW_AT_decl_line(0x308)
	.dwattr $C$DW$314, DW_AT_decl_column(0x05)

$C$DW$315	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$315, DW_AT_name("SYSCTL_SYNC_OUT_SRC_EPWM7SYNCOUT")
	.dwattr $C$DW$315, DW_AT_const_value(0x02)
	.dwattr $C$DW$315, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0x309)
	.dwattr $C$DW$315, DW_AT_decl_column(0x05)

$C$DW$316	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$316, DW_AT_name("SYSCTL_SYNC_OUT_SRC_EPWM10SYNCOUT")
	.dwattr $C$DW$316, DW_AT_const_value(0x03)
	.dwattr $C$DW$316, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0x30a)
	.dwattr $C$DW$316, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$43, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x306)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$43

	.dwendtag $C$DW$TU$43


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("SysCtl_SyncOutputSource")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x30c)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$44


$C$DW$TU$45	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$45

$C$DW$T$45	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$317	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$317, DW_AT_name("EPWM_COUNT_MODE_DOWN_AFTER_SYNC")
	.dwattr $C$DW$317, DW_AT_const_value(0x00)
	.dwattr $C$DW$317, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$317, DW_AT_decl_line(0x65)
	.dwattr $C$DW$317, DW_AT_decl_column(0x04)

$C$DW$318	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$318, DW_AT_name("EPWM_COUNT_MODE_UP_AFTER_SYNC")
	.dwattr $C$DW$318, DW_AT_const_value(0x01)
	.dwattr $C$DW$318, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$318, DW_AT_decl_line(0x66)
	.dwattr $C$DW$318, DW_AT_decl_column(0x04)

	.dwattr $C$DW$T$45, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$45

	.dwendtag $C$DW$TU$45


$C$DW$TU$46	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$46
$C$DW$T$46	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$46, DW_AT_name("EPWM_SyncCountMode")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$46, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x67)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$46


$C$DW$TU$47	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$47

$C$DW$T$47	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$319	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$319, DW_AT_name("EPWM_CLOCK_DIVIDER_1")
	.dwattr $C$DW$319, DW_AT_const_value(0x00)
	.dwattr $C$DW$319, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$319, DW_AT_decl_line(0x71)
	.dwattr $C$DW$319, DW_AT_decl_column(0x05)

$C$DW$320	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$320, DW_AT_name("EPWM_CLOCK_DIVIDER_2")
	.dwattr $C$DW$320, DW_AT_const_value(0x01)
	.dwattr $C$DW$320, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$320, DW_AT_decl_line(0x72)
	.dwattr $C$DW$320, DW_AT_decl_column(0x05)

$C$DW$321	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$321, DW_AT_name("EPWM_CLOCK_DIVIDER_4")
	.dwattr $C$DW$321, DW_AT_const_value(0x02)
	.dwattr $C$DW$321, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$321, DW_AT_decl_line(0x73)
	.dwattr $C$DW$321, DW_AT_decl_column(0x05)

$C$DW$322	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$322, DW_AT_name("EPWM_CLOCK_DIVIDER_8")
	.dwattr $C$DW$322, DW_AT_const_value(0x03)
	.dwattr $C$DW$322, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$322, DW_AT_decl_line(0x74)
	.dwattr $C$DW$322, DW_AT_decl_column(0x05)

$C$DW$323	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$323, DW_AT_name("EPWM_CLOCK_DIVIDER_16")
	.dwattr $C$DW$323, DW_AT_const_value(0x04)
	.dwattr $C$DW$323, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$323, DW_AT_decl_line(0x75)
	.dwattr $C$DW$323, DW_AT_decl_column(0x05)

$C$DW$324	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$324, DW_AT_name("EPWM_CLOCK_DIVIDER_32")
	.dwattr $C$DW$324, DW_AT_const_value(0x05)
	.dwattr $C$DW$324, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$324, DW_AT_decl_line(0x76)
	.dwattr $C$DW$324, DW_AT_decl_column(0x05)

$C$DW$325	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$325, DW_AT_name("EPWM_CLOCK_DIVIDER_64")
	.dwattr $C$DW$325, DW_AT_const_value(0x06)
	.dwattr $C$DW$325, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$325, DW_AT_decl_line(0x77)
	.dwattr $C$DW$325, DW_AT_decl_column(0x05)

$C$DW$326	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$326, DW_AT_name("EPWM_CLOCK_DIVIDER_128")
	.dwattr $C$DW$326, DW_AT_const_value(0x07)
	.dwattr $C$DW$326, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$326, DW_AT_decl_line(0x78)
	.dwattr $C$DW$326, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$47, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$47

	.dwendtag $C$DW$TU$47


$C$DW$TU$48	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$48
$C$DW$T$48	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$48, DW_AT_name("EPWM_ClockDivider")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$48, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$48


$C$DW$TU$49	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$49

$C$DW$T$49	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$327	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$327, DW_AT_name("EPWM_HSCLOCK_DIVIDER_1")
	.dwattr $C$DW$327, DW_AT_const_value(0x00)
	.dwattr $C$DW$327, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0x83)
	.dwattr $C$DW$327, DW_AT_decl_column(0x05)

$C$DW$328	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$328, DW_AT_name("EPWM_HSCLOCK_DIVIDER_2")
	.dwattr $C$DW$328, DW_AT_const_value(0x01)
	.dwattr $C$DW$328, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0x84)
	.dwattr $C$DW$328, DW_AT_decl_column(0x05)

$C$DW$329	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$329, DW_AT_name("EPWM_HSCLOCK_DIVIDER_4")
	.dwattr $C$DW$329, DW_AT_const_value(0x02)
	.dwattr $C$DW$329, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0x85)
	.dwattr $C$DW$329, DW_AT_decl_column(0x05)

$C$DW$330	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$330, DW_AT_name("EPWM_HSCLOCK_DIVIDER_6")
	.dwattr $C$DW$330, DW_AT_const_value(0x03)
	.dwattr $C$DW$330, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$330, DW_AT_decl_line(0x86)
	.dwattr $C$DW$330, DW_AT_decl_column(0x05)

$C$DW$331	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$331, DW_AT_name("EPWM_HSCLOCK_DIVIDER_8")
	.dwattr $C$DW$331, DW_AT_const_value(0x04)
	.dwattr $C$DW$331, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$331, DW_AT_decl_line(0x87)
	.dwattr $C$DW$331, DW_AT_decl_column(0x05)

$C$DW$332	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$332, DW_AT_name("EPWM_HSCLOCK_DIVIDER_10")
	.dwattr $C$DW$332, DW_AT_const_value(0x05)
	.dwattr $C$DW$332, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$332, DW_AT_decl_line(0x88)
	.dwattr $C$DW$332, DW_AT_decl_column(0x05)

$C$DW$333	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$333, DW_AT_name("EPWM_HSCLOCK_DIVIDER_12")
	.dwattr $C$DW$333, DW_AT_const_value(0x06)
	.dwattr $C$DW$333, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$333, DW_AT_decl_line(0x89)
	.dwattr $C$DW$333, DW_AT_decl_column(0x05)

$C$DW$334	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$334, DW_AT_name("EPWM_HSCLOCK_DIVIDER_14")
	.dwattr $C$DW$334, DW_AT_const_value(0x07)
	.dwattr $C$DW$334, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$334, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$334, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$49, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$49

	.dwendtag $C$DW$TU$49


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("EPWM_HSClockDivider")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$50, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51

$C$DW$T$51	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$335	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$335, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_SOFTWARE")
	.dwattr $C$DW$335, DW_AT_const_value(0x00)
	.dwattr $C$DW$335, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$335, DW_AT_decl_line(0x96)
	.dwattr $C$DW$335, DW_AT_decl_column(0x05)

$C$DW$336	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$336, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN")
	.dwattr $C$DW$336, DW_AT_const_value(0x00)
	.dwattr $C$DW$336, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$336, DW_AT_decl_line(0x98)
	.dwattr $C$DW$336, DW_AT_decl_column(0x05)

$C$DW$337	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$337, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO")
	.dwattr $C$DW$337, DW_AT_const_value(0x01)
	.dwattr $C$DW$337, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$337, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$337, DW_AT_decl_column(0x05)

$C$DW$338	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$338, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_B")
	.dwattr $C$DW$338, DW_AT_const_value(0x02)
	.dwattr $C$DW$338, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$338, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$338, DW_AT_decl_column(0x05)

$C$DW$339	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$339, DW_AT_name("EPWM_SYNC_OUT_PULSE_DISABLED")
	.dwattr $C$DW$339, DW_AT_const_value(0x04)
	.dwattr $C$DW$339, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$339, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$339, DW_AT_decl_column(0x05)

$C$DW$340	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$340, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_C")
	.dwattr $C$DW$340, DW_AT_const_value(0x05)
	.dwattr $C$DW$340, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$340, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$340, DW_AT_decl_column(0x05)

$C$DW$341	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$341, DW_AT_name("EPWM_SYNC_OUT_PULSE_ON_COUNTER_COMPARE_D")
	.dwattr $C$DW$341, DW_AT_const_value(0x06)
	.dwattr $C$DW$341, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$341, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$341, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$51, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x94)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$51

	.dwendtag $C$DW$TU$51


$C$DW$TU$52	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$52
$C$DW$T$52	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$52, DW_AT_name("EPWM_SyncOutPulseMode")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$52, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$52


$C$DW$TU$53	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$53

$C$DW$T$53	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$342	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$342, DW_AT_name("EPWM_COUNTER_MODE_UP")
	.dwattr $C$DW$342, DW_AT_const_value(0x00)
	.dwattr $C$DW$342, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$342, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$342, DW_AT_decl_column(0x05)

$C$DW$343	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$343, DW_AT_name("EPWM_COUNTER_MODE_DOWN")
	.dwattr $C$DW$343, DW_AT_const_value(0x01)
	.dwattr $C$DW$343, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$343, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$343, DW_AT_decl_column(0x05)

$C$DW$344	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$344, DW_AT_name("EPWM_COUNTER_MODE_UP_DOWN")
	.dwattr $C$DW$344, DW_AT_const_value(0x02)
	.dwattr $C$DW$344, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$344, DW_AT_decl_column(0x05)

$C$DW$345	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$345, DW_AT_name("EPWM_COUNTER_MODE_STOP_FREEZE")
	.dwattr $C$DW$345, DW_AT_const_value(0x03)
	.dwattr $C$DW$345, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$345, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$345, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$53, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0xba)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$53

	.dwendtag $C$DW$TU$53


$C$DW$TU$54	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$54
$C$DW$T$54	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$54, DW_AT_name("EPWM_TimeBaseCountMode")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$54


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55

$C$DW$T$55	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$346	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$346, DW_AT_name("EPWM_COUNTER_COMPARE_A")
	.dwattr $C$DW$346, DW_AT_const_value(0x00)
	.dwattr $C$DW$346, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0x111)
	.dwattr $C$DW$346, DW_AT_decl_column(0x05)

$C$DW$347	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$347, DW_AT_name("EPWM_COUNTER_COMPARE_B")
	.dwattr $C$DW$347, DW_AT_const_value(0x02)
	.dwattr $C$DW$347, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$347, DW_AT_decl_line(0x112)
	.dwattr $C$DW$347, DW_AT_decl_column(0x05)

$C$DW$348	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$348, DW_AT_name("EPWM_COUNTER_COMPARE_C")
	.dwattr $C$DW$348, DW_AT_const_value(0x05)
	.dwattr $C$DW$348, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$348, DW_AT_decl_line(0x113)
	.dwattr $C$DW$348, DW_AT_decl_column(0x05)

$C$DW$349	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$349, DW_AT_name("EPWM_COUNTER_COMPARE_D")
	.dwattr $C$DW$349, DW_AT_const_value(0x07)
	.dwattr $C$DW$349, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0x114)
	.dwattr $C$DW$349, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$55, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x110)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$55

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56
$C$DW$T$56	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$56, DW_AT_name("EPWM_CounterCompareModule")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x115)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$56


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57

$C$DW$T$57	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$350	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$350, DW_AT_name("EPWM_COMP_LOAD_ON_CNTR_ZERO")
	.dwattr $C$DW$350, DW_AT_const_value(0x00)
	.dwattr $C$DW$350, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0x120)
	.dwattr $C$DW$350, DW_AT_decl_column(0x05)

$C$DW$351	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$351, DW_AT_name("EPWM_COMP_LOAD_ON_CNTR_PERIOD")
	.dwattr $C$DW$351, DW_AT_const_value(0x01)
	.dwattr $C$DW$351, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$351, DW_AT_decl_line(0x122)
	.dwattr $C$DW$351, DW_AT_decl_column(0x05)

$C$DW$352	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$352, DW_AT_name("EPWM_COMP_LOAD_ON_CNTR_ZERO_PERIOD")
	.dwattr $C$DW$352, DW_AT_const_value(0x02)
	.dwattr $C$DW$352, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$352, DW_AT_decl_line(0x124)
	.dwattr $C$DW$352, DW_AT_decl_column(0x05)

$C$DW$353	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$353, DW_AT_name("EPWM_COMP_LOAD_FREEZE")
	.dwattr $C$DW$353, DW_AT_const_value(0x03)
	.dwattr $C$DW$353, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0x126)
	.dwattr $C$DW$353, DW_AT_decl_column(0x05)

$C$DW$354	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$354, DW_AT_name("EPWM_COMP_LOAD_ON_SYNC_CNTR_ZERO")
	.dwattr $C$DW$354, DW_AT_const_value(0x04)
	.dwattr $C$DW$354, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0x128)
	.dwattr $C$DW$354, DW_AT_decl_column(0x05)

$C$DW$355	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$355, DW_AT_name("EPWM_COMP_LOAD_ON_SYNC_CNTR_PERIOD")
	.dwattr $C$DW$355, DW_AT_const_value(0x05)
	.dwattr $C$DW$355, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$355, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$355, DW_AT_decl_column(0x05)

$C$DW$356	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$356, DW_AT_name("EPWM_COMP_LOAD_ON_SYNC_CNTR_ZERO_PERIOD")
	.dwattr $C$DW$356, DW_AT_const_value(0x06)
	.dwattr $C$DW$356, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$356, DW_AT_decl_column(0x05)

$C$DW$357	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$357, DW_AT_name("EPWM_COMP_LOAD_ON_SYNC_ONLY")
	.dwattr $C$DW$357, DW_AT_const_value(0x08)
	.dwattr $C$DW$357, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$357, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$357, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$57, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$57

	.dwendtag $C$DW$TU$57


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58
$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("EPWM_CounterCompareLoadMode")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$58, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59

$C$DW$T$59	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$358	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$358, DW_AT_name("EPWM_ACTION_QUALIFIER_A")
	.dwattr $C$DW$358, DW_AT_const_value(0x00)
	.dwattr $C$DW$358, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0x13c)
	.dwattr $C$DW$358, DW_AT_decl_column(0x05)

$C$DW$359	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$359, DW_AT_name("EPWM_ACTION_QUALIFIER_B")
	.dwattr $C$DW$359, DW_AT_const_value(0x02)
	.dwattr $C$DW$359, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0x13d)
	.dwattr $C$DW$359, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$59, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x13b)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$59

	.dwendtag $C$DW$TU$59


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60
$C$DW$T$60	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$60, DW_AT_name("EPWM_ActionQualifierModule")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$60, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x13e)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$360	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$360, DW_AT_name("EPWM_AQ_OUTPUT_A")
	.dwattr $C$DW$360, DW_AT_const_value(0x00)
	.dwattr $C$DW$360, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0x213)
	.dwattr $C$DW$360, DW_AT_decl_column(0x05)

$C$DW$361	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$361, DW_AT_name("EPWM_AQ_OUTPUT_B")
	.dwattr $C$DW$361, DW_AT_const_value(0x02)
	.dwattr $C$DW$361, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0x214)
	.dwattr $C$DW$361, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$61, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x212)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62
$C$DW$T$62	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$62, DW_AT_name("EPWM_ActionQualifierOutputModule")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$62, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x215)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$62


$C$DW$TU$63	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$63

$C$DW$T$63	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$362	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$362, DW_AT_name("EPWM_AQ_OUTPUT_NO_CHANGE")
	.dwattr $C$DW$362, DW_AT_const_value(0x00)
	.dwattr $C$DW$362, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0x192)
	.dwattr $C$DW$362, DW_AT_decl_column(0x05)

$C$DW$363	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$363, DW_AT_name("EPWM_AQ_OUTPUT_LOW")
	.dwattr $C$DW$363, DW_AT_const_value(0x01)
	.dwattr $C$DW$363, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0x193)
	.dwattr $C$DW$363, DW_AT_decl_column(0x05)

$C$DW$364	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$364, DW_AT_name("EPWM_AQ_OUTPUT_HIGH")
	.dwattr $C$DW$364, DW_AT_const_value(0x02)
	.dwattr $C$DW$364, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0x194)
	.dwattr $C$DW$364, DW_AT_decl_column(0x05)

$C$DW$365	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$365, DW_AT_name("EPWM_AQ_OUTPUT_TOGGLE")
	.dwattr $C$DW$365, DW_AT_const_value(0x03)
	.dwattr $C$DW$365, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$365, DW_AT_decl_line(0x195)
	.dwattr $C$DW$365, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$63, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x191)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$63

	.dwendtag $C$DW$TU$63


$C$DW$TU$64	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$64
$C$DW$T$64	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$64, DW_AT_name("EPWM_ActionQualifierOutput")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$64, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x196)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$64


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65

$C$DW$T$65	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$366	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$366, DW_AT_name("EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO")
	.dwattr $C$DW$366, DW_AT_const_value(0x00)
	.dwattr $C$DW$366, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0x175)
	.dwattr $C$DW$366, DW_AT_decl_column(0x05)

$C$DW$367	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$367, DW_AT_name("EPWM_AQ_OUTPUT_ON_TIMEBASE_PERIOD")
	.dwattr $C$DW$367, DW_AT_const_value(0x02)
	.dwattr $C$DW$367, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0x177)
	.dwattr $C$DW$367, DW_AT_decl_column(0x05)

$C$DW$368	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$368, DW_AT_name("EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA")
	.dwattr $C$DW$368, DW_AT_const_value(0x04)
	.dwattr $C$DW$368, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0x179)
	.dwattr $C$DW$368, DW_AT_decl_column(0x05)

$C$DW$369	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$369, DW_AT_name("EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA")
	.dwattr $C$DW$369, DW_AT_const_value(0x06)
	.dwattr $C$DW$369, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0x17b)
	.dwattr $C$DW$369, DW_AT_decl_column(0x05)

$C$DW$370	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$370, DW_AT_name("EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB")
	.dwattr $C$DW$370, DW_AT_const_value(0x08)
	.dwattr $C$DW$370, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0x17d)
	.dwattr $C$DW$370, DW_AT_decl_column(0x05)

$C$DW$371	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$371, DW_AT_name("EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPB")
	.dwattr $C$DW$371, DW_AT_const_value(0x0a)
	.dwattr $C$DW$371, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0x17f)
	.dwattr $C$DW$371, DW_AT_decl_column(0x05)

$C$DW$372	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$372, DW_AT_name("EPWM_AQ_OUTPUT_ON_T1_COUNT_UP")
	.dwattr $C$DW$372, DW_AT_const_value(0x01)
	.dwattr $C$DW$372, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0x181)
	.dwattr $C$DW$372, DW_AT_decl_column(0x05)

$C$DW$373	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$373, DW_AT_name("EPWM_AQ_OUTPUT_ON_T1_COUNT_DOWN")
	.dwattr $C$DW$373, DW_AT_const_value(0x03)
	.dwattr $C$DW$373, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0x183)
	.dwattr $C$DW$373, DW_AT_decl_column(0x05)

$C$DW$374	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$374, DW_AT_name("EPWM_AQ_OUTPUT_ON_T2_COUNT_UP")
	.dwattr $C$DW$374, DW_AT_const_value(0x05)
	.dwattr $C$DW$374, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0x185)
	.dwattr $C$DW$374, DW_AT_decl_column(0x05)

$C$DW$375	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$375, DW_AT_name("EPWM_AQ_OUTPUT_ON_T2_COUNT_DOWN")
	.dwattr $C$DW$375, DW_AT_const_value(0x07)
	.dwattr $C$DW$375, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0x187)
	.dwattr $C$DW$375, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$65, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x173)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$65

	.dwendtag $C$DW$TU$65


$C$DW$TU$66	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$66
$C$DW$T$66	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$66, DW_AT_name("EPWM_ActionQualifierOutputEvent")
	.dwattr $C$DW$T$66, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$66, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0x188)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$66


$C$DW$TU$67	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$67

$C$DW$T$67	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$376	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$376, DW_AT_name("EPWM_DB_RED")
	.dwattr $C$DW$376, DW_AT_const_value(0x01)
	.dwattr $C$DW$376, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0x23d)
	.dwattr $C$DW$376, DW_AT_decl_column(0x05)

$C$DW$377	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$377, DW_AT_name("EPWM_DB_FED")
	.dwattr $C$DW$377, DW_AT_const_value(0x00)
	.dwattr $C$DW$377, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0x23e)
	.dwattr $C$DW$377, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$67, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0x23c)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$67

	.dwendtag $C$DW$TU$67


$C$DW$TU$68	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$68
$C$DW$T$68	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$68, DW_AT_name("EPWM_DeadBandDelayMode")
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$68, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0x23f)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$68


$C$DW$TU$69	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$69

$C$DW$T$69	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$378	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$378, DW_AT_name("EPWM_DB_POLARITY_ACTIVE_HIGH")
	.dwattr $C$DW$378, DW_AT_const_value(0x00)
	.dwattr $C$DW$378, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0x249)
	.dwattr $C$DW$378, DW_AT_decl_column(0x05)

$C$DW$379	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$379, DW_AT_name("EPWM_DB_POLARITY_ACTIVE_LOW")
	.dwattr $C$DW$379, DW_AT_const_value(0x01)
	.dwattr $C$DW$379, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0x24a)
	.dwattr $C$DW$379, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$69, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0x248)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$69

	.dwendtag $C$DW$TU$69


$C$DW$TU$70	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$70
$C$DW$T$70	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$70, DW_AT_name("EPWM_DeadBandPolarity")
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$70, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0x24b)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$70


$C$DW$TU$71	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$71

$C$DW$T$71	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$380	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$380, DW_AT_name("EPWM_DB_LOAD_ON_CNTR_ZERO")
	.dwattr $C$DW$380, DW_AT_const_value(0x00)
	.dwattr $C$DW$380, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0x266)
	.dwattr $C$DW$380, DW_AT_decl_column(0x05)

$C$DW$381	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$381, DW_AT_name("EPWM_DB_LOAD_ON_CNTR_PERIOD")
	.dwattr $C$DW$381, DW_AT_const_value(0x01)
	.dwattr $C$DW$381, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0x268)
	.dwattr $C$DW$381, DW_AT_decl_column(0x05)

$C$DW$382	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$382, DW_AT_name("EPWM_DB_LOAD_ON_CNTR_ZERO_PERIOD")
	.dwattr $C$DW$382, DW_AT_const_value(0x02)
	.dwattr $C$DW$382, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0x26a)
	.dwattr $C$DW$382, DW_AT_decl_column(0x05)

$C$DW$383	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$383, DW_AT_name("EPWM_DB_LOAD_FREEZE")
	.dwattr $C$DW$383, DW_AT_const_value(0x03)
	.dwattr $C$DW$383, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0x26c)
	.dwattr $C$DW$383, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$71, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0x264)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$71

	.dwendtag $C$DW$TU$71


$C$DW$TU$72	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$72
$C$DW$T$72	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$72, DW_AT_name("EPWM_DeadBandControlLoadMode")
	.dwattr $C$DW$T$72, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$72, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0x26d)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$72


$C$DW$TU$73	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$73

$C$DW$T$73	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$384	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$384, DW_AT_name("EPWM_RED_LOAD_ON_CNTR_ZERO")
	.dwattr $C$DW$384, DW_AT_const_value(0x00)
	.dwattr $C$DW$384, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0x278)
	.dwattr $C$DW$384, DW_AT_decl_column(0x05)

$C$DW$385	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$385, DW_AT_name("EPWM_RED_LOAD_ON_CNTR_PERIOD")
	.dwattr $C$DW$385, DW_AT_const_value(0x01)
	.dwattr $C$DW$385, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x27a)
	.dwattr $C$DW$385, DW_AT_decl_column(0x05)

$C$DW$386	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$386, DW_AT_name("EPWM_RED_LOAD_ON_CNTR_ZERO_PERIOD")
	.dwattr $C$DW$386, DW_AT_const_value(0x02)
	.dwattr $C$DW$386, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0x27c)
	.dwattr $C$DW$386, DW_AT_decl_column(0x05)

$C$DW$387	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$387, DW_AT_name("EPWM_RED_LOAD_FREEZE")
	.dwattr $C$DW$387, DW_AT_const_value(0x03)
	.dwattr $C$DW$387, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0x27e)
	.dwattr $C$DW$387, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$73, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0x276)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$73

	.dwendtag $C$DW$TU$73


$C$DW$TU$74	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$74
$C$DW$T$74	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$74, DW_AT_name("EPWM_RisingEdgeDelayLoadMode")
	.dwattr $C$DW$T$74, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$74, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0x27f)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$74


$C$DW$TU$75	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$75

$C$DW$T$75	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x01)
$C$DW$388	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$388, DW_AT_name("EPWM_FED_LOAD_ON_CNTR_ZERO")
	.dwattr $C$DW$388, DW_AT_const_value(0x00)
	.dwattr $C$DW$388, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0x28a)
	.dwattr $C$DW$388, DW_AT_decl_column(0x05)

$C$DW$389	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$389, DW_AT_name("EPWM_FED_LOAD_ON_CNTR_PERIOD")
	.dwattr $C$DW$389, DW_AT_const_value(0x01)
	.dwattr $C$DW$389, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0x28c)
	.dwattr $C$DW$389, DW_AT_decl_column(0x05)

$C$DW$390	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$390, DW_AT_name("EPWM_FED_LOAD_ON_CNTR_ZERO_PERIOD")
	.dwattr $C$DW$390, DW_AT_const_value(0x02)
	.dwattr $C$DW$390, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0x28e)
	.dwattr $C$DW$390, DW_AT_decl_column(0x05)

$C$DW$391	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$391, DW_AT_name("EPWM_FED_LOAD_FREEZE")
	.dwattr $C$DW$391, DW_AT_const_value(0x03)
	.dwattr $C$DW$391, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0x290)
	.dwattr $C$DW$391, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$75, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0x288)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$75

	.dwendtag $C$DW$TU$75


$C$DW$TU$76	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$76
$C$DW$T$76	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$76, DW_AT_name("EPWM_FallingEdgeDelayLoadMode")
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$76, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0x291)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$76


$C$DW$TU$77	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$77

$C$DW$T$77	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x01)
$C$DW$392	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$392, DW_AT_name("EPWM_SOC_A")
	.dwattr $C$DW$392, DW_AT_const_value(0x00)
	.dwattr $C$DW$392, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0x429)
	.dwattr $C$DW$392, DW_AT_decl_column(0x05)

$C$DW$393	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$393, DW_AT_name("EPWM_SOC_B")
	.dwattr $C$DW$393, DW_AT_const_value(0x01)
	.dwattr $C$DW$393, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0x42a)
	.dwattr $C$DW$393, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$77, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0x428)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$77

	.dwendtag $C$DW$TU$77


$C$DW$TU$78	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$78
$C$DW$T$78	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$78, DW_AT_name("EPWM_ADCStartOfConversionType")
	.dwattr $C$DW$T$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$78, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0x42b)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$78


$C$DW$TU$79	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$79

$C$DW$T$79	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x01)
$C$DW$394	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$394, DW_AT_name("EPWM_SOC_DCxEVT1")
	.dwattr $C$DW$394, DW_AT_const_value(0x00)
	.dwattr $C$DW$394, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0x436)
	.dwattr $C$DW$394, DW_AT_decl_column(0x05)

$C$DW$395	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$395, DW_AT_name("EPWM_SOC_TBCTR_ZERO")
	.dwattr $C$DW$395, DW_AT_const_value(0x01)
	.dwattr $C$DW$395, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x438)
	.dwattr $C$DW$395, DW_AT_decl_column(0x05)

$C$DW$396	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$396, DW_AT_name("EPWM_SOC_TBCTR_PERIOD")
	.dwattr $C$DW$396, DW_AT_const_value(0x02)
	.dwattr $C$DW$396, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x43a)
	.dwattr $C$DW$396, DW_AT_decl_column(0x05)

$C$DW$397	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$397, DW_AT_name("EPWM_SOC_TBCTR_ZERO_OR_PERIOD")
	.dwattr $C$DW$397, DW_AT_const_value(0x03)
	.dwattr $C$DW$397, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x43c)
	.dwattr $C$DW$397, DW_AT_decl_column(0x05)

$C$DW$398	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$398, DW_AT_name("EPWM_SOC_TBCTR_U_CMPA")
	.dwattr $C$DW$398, DW_AT_const_value(0x04)
	.dwattr $C$DW$398, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x43e)
	.dwattr $C$DW$398, DW_AT_decl_column(0x05)

$C$DW$399	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$399, DW_AT_name("EPWM_SOC_TBCTR_U_CMPC")
	.dwattr $C$DW$399, DW_AT_const_value(0x08)
	.dwattr $C$DW$399, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x440)
	.dwattr $C$DW$399, DW_AT_decl_column(0x05)

$C$DW$400	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$400, DW_AT_name("EPWM_SOC_TBCTR_D_CMPA")
	.dwattr $C$DW$400, DW_AT_const_value(0x05)
	.dwattr $C$DW$400, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x442)
	.dwattr $C$DW$400, DW_AT_decl_column(0x05)

$C$DW$401	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$401, DW_AT_name("EPWM_SOC_TBCTR_D_CMPC")
	.dwattr $C$DW$401, DW_AT_const_value(0x0a)
	.dwattr $C$DW$401, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x444)
	.dwattr $C$DW$401, DW_AT_decl_column(0x05)

$C$DW$402	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$402, DW_AT_name("EPWM_SOC_TBCTR_U_CMPB")
	.dwattr $C$DW$402, DW_AT_const_value(0x06)
	.dwattr $C$DW$402, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0x446)
	.dwattr $C$DW$402, DW_AT_decl_column(0x05)

$C$DW$403	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$403, DW_AT_name("EPWM_SOC_TBCTR_U_CMPD")
	.dwattr $C$DW$403, DW_AT_const_value(0x0c)
	.dwattr $C$DW$403, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0x448)
	.dwattr $C$DW$403, DW_AT_decl_column(0x05)

$C$DW$404	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$404, DW_AT_name("EPWM_SOC_TBCTR_D_CMPB")
	.dwattr $C$DW$404, DW_AT_const_value(0x07)
	.dwattr $C$DW$404, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x44a)
	.dwattr $C$DW$404, DW_AT_decl_column(0x05)

$C$DW$405	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$405, DW_AT_name("EPWM_SOC_TBCTR_D_CMPD")
	.dwattr $C$DW$405, DW_AT_const_value(0x0e)
	.dwattr $C$DW$405, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x44c)
	.dwattr $C$DW$405, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$79, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x434)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$79

	.dwendtag $C$DW$TU$79


$C$DW$TU$80	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$80
$C$DW$T$80	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$80, DW_AT_name("EPWM_ADCStartOfConversionSource")
	.dwattr $C$DW$T$80, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$80, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x44d)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$80


$C$DW$TU$81	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$81

$C$DW$T$81	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x01)
$C$DW$406	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$406, DW_AT_name("EQEP_POSITION_RESET_IDX")
	.dwattr $C$DW$406, DW_AT_const_value(0x00)
	.dwattr $C$DW$406, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$406, DW_AT_decl_column(0x05)

$C$DW$407	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$407, DW_AT_name("EQEP_POSITION_RESET_MAX_POS")
	.dwattr $C$DW$407, DW_AT_const_value(0x1000)
	.dwattr $C$DW$407, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$407, DW_AT_decl_column(0x05)

$C$DW$408	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$408, DW_AT_name("EQEP_POSITION_RESET_1ST_IDX")
	.dwattr $C$DW$408, DW_AT_const_value(0x2000)
	.dwattr $C$DW$408, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$408, DW_AT_decl_column(0x05)

$C$DW$409	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$409, DW_AT_name("EQEP_POSITION_RESET_UNIT_TIME_OUT")
	.dwattr $C$DW$409, DW_AT_const_value(0x3000)
	.dwattr $C$DW$409, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$409, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$81, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$81

	.dwendtag $C$DW$TU$81


$C$DW$TU$82	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$82
$C$DW$T$82	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$82, DW_AT_name("EQEP_PositionResetMode")
	.dwattr $C$DW$T$82, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$82, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0xec)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$82


$C$DW$TU$83	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$83

$C$DW$T$83	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$410	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$410, DW_AT_name("EQEP_EMULATIONMODE_STOPIMMEDIATELY")
	.dwattr $C$DW$410, DW_AT_const_value(0x00)
	.dwattr $C$DW$410, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0x11f)
	.dwattr $C$DW$410, DW_AT_decl_column(0x03)

$C$DW$411	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$411, DW_AT_name("EQEP_EMULATIONMODE_STOPATROLLOVER")
	.dwattr $C$DW$411, DW_AT_const_value(0x01)
	.dwattr $C$DW$411, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0x120)
	.dwattr $C$DW$411, DW_AT_decl_column(0x03)

$C$DW$412	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$412, DW_AT_name("EQEP_EMULATIONMODE_RUNFREE")
	.dwattr $C$DW$412, DW_AT_const_value(0x02)
	.dwattr $C$DW$412, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0x121)
	.dwattr $C$DW$412, DW_AT_decl_column(0x03)

	.dwattr $C$DW$T$83, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$83

	.dwendtag $C$DW$TU$83


$C$DW$TU$84	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$84
$C$DW$T$84	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$84, DW_AT_name("EQEP_EmulationMode")
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$84, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/eqep.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x122)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x02)

	.dwendtag $C$DW$TU$84


$C$DW$TU$85	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$85

$C$DW$T$85	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$413	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$413, DW_AT_name("GPIO_DIR_MODE_IN")
	.dwattr $C$DW$413, DW_AT_const_value(0x00)
	.dwattr $C$DW$413, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$413, DW_AT_decl_column(0x05)

$C$DW$414	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$414, DW_AT_name("GPIO_DIR_MODE_OUT")
	.dwattr $C$DW$414, DW_AT_const_value(0x01)
	.dwattr $C$DW$414, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$414, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$85, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$85

	.dwendtag $C$DW$TU$85


$C$DW$TU$86	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$86
$C$DW$T$86	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$86, DW_AT_name("GPIO_Direction")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$86, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$86


$C$DW$TU$87	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$87

$C$DW$T$87	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x01)
$C$DW$415	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$415, DW_AT_name("GPIO_QUAL_SYNC")
	.dwattr $C$DW$415, DW_AT_const_value(0x00)
	.dwattr $C$DW$415, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x97)
	.dwattr $C$DW$415, DW_AT_decl_column(0x05)

$C$DW$416	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$416, DW_AT_name("GPIO_QUAL_3SAMPLE")
	.dwattr $C$DW$416, DW_AT_const_value(0x01)
	.dwattr $C$DW$416, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0x98)
	.dwattr $C$DW$416, DW_AT_decl_column(0x05)

$C$DW$417	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$417, DW_AT_name("GPIO_QUAL_6SAMPLE")
	.dwattr $C$DW$417, DW_AT_const_value(0x02)
	.dwattr $C$DW$417, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x99)
	.dwattr $C$DW$417, DW_AT_decl_column(0x05)

$C$DW$418	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$418, DW_AT_name("GPIO_QUAL_ASYNC")
	.dwattr $C$DW$418, DW_AT_const_value(0x03)
	.dwattr $C$DW$418, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$418, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$87, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x96)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$87

	.dwendtag $C$DW$TU$87


$C$DW$TU$88	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$88
$C$DW$T$88	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$88, DW_AT_name("GPIO_QualificationMode")
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$88


$C$DW$TU$89	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$89

$C$DW$T$89	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x01)
$C$DW$419	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$419, DW_AT_name("GPIO_CORE_CPU1")
	.dwattr $C$DW$419, DW_AT_const_value(0x00)
	.dwattr $C$DW$419, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$419, DW_AT_decl_column(0x05)

$C$DW$420	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$420, DW_AT_name("GPIO_CORE_CPU1_CLA1")
	.dwattr $C$DW$420, DW_AT_const_value(0x01)
	.dwattr $C$DW$420, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$420, DW_AT_decl_column(0x05)

$C$DW$421	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$421, DW_AT_name("GPIO_CORE_CPU2")
	.dwattr $C$DW$421, DW_AT_const_value(0x02)
	.dwattr $C$DW$421, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$421, DW_AT_decl_column(0x05)

$C$DW$422	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$422, DW_AT_name("GPIO_CORE_CPU2_CLA1")
	.dwattr $C$DW$422, DW_AT_const_value(0x03)
	.dwattr $C$DW$422, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$422, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$89, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$89

	.dwendtag $C$DW$TU$89


$C$DW$TU$90	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$90
$C$DW$T$90	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$90, DW_AT_name("GPIO_CoreSelect")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$90


$C$DW$TU$91	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$91

$C$DW$T$91	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x01)
$C$DW$423	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$423, DW_AT_name("SCI_FIFO_TX0")
	.dwattr $C$DW$423, DW_AT_const_value(0x00)
	.dwattr $C$DW$423, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0x84)
	.dwattr $C$DW$423, DW_AT_decl_column(0x05)

$C$DW$424	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$424, DW_AT_name("SCI_FIFO_TX1")
	.dwattr $C$DW$424, DW_AT_const_value(0x01)
	.dwattr $C$DW$424, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x85)
	.dwattr $C$DW$424, DW_AT_decl_column(0x05)

$C$DW$425	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$425, DW_AT_name("SCI_FIFO_TX2")
	.dwattr $C$DW$425, DW_AT_const_value(0x02)
	.dwattr $C$DW$425, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0x86)
	.dwattr $C$DW$425, DW_AT_decl_column(0x05)

$C$DW$426	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$426, DW_AT_name("SCI_FIFO_TX3")
	.dwattr $C$DW$426, DW_AT_const_value(0x03)
	.dwattr $C$DW$426, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0x87)
	.dwattr $C$DW$426, DW_AT_decl_column(0x05)

$C$DW$427	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$427, DW_AT_name("SCI_FIFO_TX4")
	.dwattr $C$DW$427, DW_AT_const_value(0x04)
	.dwattr $C$DW$427, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0x88)
	.dwattr $C$DW$427, DW_AT_decl_column(0x05)

$C$DW$428	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$428, DW_AT_name("SCI_FIFO_TX5")
	.dwattr $C$DW$428, DW_AT_const_value(0x05)
	.dwattr $C$DW$428, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0x89)
	.dwattr $C$DW$428, DW_AT_decl_column(0x05)

$C$DW$429	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$429, DW_AT_name("SCI_FIFO_TX6")
	.dwattr $C$DW$429, DW_AT_const_value(0x06)
	.dwattr $C$DW$429, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$429, DW_AT_decl_column(0x05)

$C$DW$430	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$430, DW_AT_name("SCI_FIFO_TX7")
	.dwattr $C$DW$430, DW_AT_const_value(0x07)
	.dwattr $C$DW$430, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$430, DW_AT_decl_column(0x05)

$C$DW$431	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$431, DW_AT_name("SCI_FIFO_TX8")
	.dwattr $C$DW$431, DW_AT_const_value(0x08)
	.dwattr $C$DW$431, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$431, DW_AT_decl_column(0x05)

$C$DW$432	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$432, DW_AT_name("SCI_FIFO_TX9")
	.dwattr $C$DW$432, DW_AT_const_value(0x09)
	.dwattr $C$DW$432, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$432, DW_AT_decl_column(0x05)

$C$DW$433	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$433, DW_AT_name("SCI_FIFO_TX10")
	.dwattr $C$DW$433, DW_AT_const_value(0x0a)
	.dwattr $C$DW$433, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$433, DW_AT_decl_column(0x05)

$C$DW$434	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$434, DW_AT_name("SCI_FIFO_TX11")
	.dwattr $C$DW$434, DW_AT_const_value(0x0b)
	.dwattr $C$DW$434, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$434, DW_AT_decl_column(0x05)

$C$DW$435	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$435, DW_AT_name("SCI_FIFO_TX12")
	.dwattr $C$DW$435, DW_AT_const_value(0x0c)
	.dwattr $C$DW$435, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0x90)
	.dwattr $C$DW$435, DW_AT_decl_column(0x05)

$C$DW$436	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$436, DW_AT_name("SCI_FIFO_TX13")
	.dwattr $C$DW$436, DW_AT_const_value(0x0d)
	.dwattr $C$DW$436, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x91)
	.dwattr $C$DW$436, DW_AT_decl_column(0x05)

$C$DW$437	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$437, DW_AT_name("SCI_FIFO_TX14")
	.dwattr $C$DW$437, DW_AT_const_value(0x0e)
	.dwattr $C$DW$437, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0x92)
	.dwattr $C$DW$437, DW_AT_decl_column(0x05)

$C$DW$438	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$438, DW_AT_name("SCI_FIFO_TX15")
	.dwattr $C$DW$438, DW_AT_const_value(0x0f)
	.dwattr $C$DW$438, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0x93)
	.dwattr $C$DW$438, DW_AT_decl_column(0x05)

$C$DW$439	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$439, DW_AT_name("SCI_FIFO_TX16")
	.dwattr $C$DW$439, DW_AT_const_value(0x10)
	.dwattr $C$DW$439, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0x94)
	.dwattr $C$DW$439, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$91, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x83)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$91

	.dwendtag $C$DW$TU$91


$C$DW$TU$92	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$92
$C$DW$T$92	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$92, DW_AT_name("SCI_TxFIFOLevel")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x95)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$92


$C$DW$TU$93	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$93

$C$DW$T$93	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x01)
$C$DW$440	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$440, DW_AT_name("SCI_FIFO_RX0")
	.dwattr $C$DW$440, DW_AT_const_value(0x00)
	.dwattr $C$DW$440, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$440, DW_AT_decl_column(0x05)

$C$DW$441	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$441, DW_AT_name("SCI_FIFO_RX1")
	.dwattr $C$DW$441, DW_AT_const_value(0x01)
	.dwattr $C$DW$441, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$441, DW_AT_decl_column(0x05)

$C$DW$442	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$442, DW_AT_name("SCI_FIFO_RX2")
	.dwattr $C$DW$442, DW_AT_const_value(0x02)
	.dwattr $C$DW$442, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$442, DW_AT_decl_column(0x05)

$C$DW$443	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$443, DW_AT_name("SCI_FIFO_RX3")
	.dwattr $C$DW$443, DW_AT_const_value(0x03)
	.dwattr $C$DW$443, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$443, DW_AT_decl_column(0x05)

$C$DW$444	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$444, DW_AT_name("SCI_FIFO_RX4")
	.dwattr $C$DW$444, DW_AT_const_value(0x04)
	.dwattr $C$DW$444, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$444, DW_AT_decl_column(0x05)

$C$DW$445	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$445, DW_AT_name("SCI_FIFO_RX5")
	.dwattr $C$DW$445, DW_AT_const_value(0x05)
	.dwattr $C$DW$445, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$445, DW_AT_decl_column(0x05)

$C$DW$446	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$446, DW_AT_name("SCI_FIFO_RX6")
	.dwattr $C$DW$446, DW_AT_const_value(0x06)
	.dwattr $C$DW$446, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$446, DW_AT_decl_column(0x05)

$C$DW$447	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$447, DW_AT_name("SCI_FIFO_RX7")
	.dwattr $C$DW$447, DW_AT_const_value(0x07)
	.dwattr $C$DW$447, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$447, DW_AT_decl_column(0x05)

$C$DW$448	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$448, DW_AT_name("SCI_FIFO_RX8")
	.dwattr $C$DW$448, DW_AT_const_value(0x08)
	.dwattr $C$DW$448, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$448, DW_AT_decl_column(0x05)

$C$DW$449	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$449, DW_AT_name("SCI_FIFO_RX9")
	.dwattr $C$DW$449, DW_AT_const_value(0x09)
	.dwattr $C$DW$449, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$449, DW_AT_decl_column(0x05)

$C$DW$450	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$450, DW_AT_name("SCI_FIFO_RX10")
	.dwattr $C$DW$450, DW_AT_const_value(0x0a)
	.dwattr $C$DW$450, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$450, DW_AT_decl_column(0x05)

$C$DW$451	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$451, DW_AT_name("SCI_FIFO_RX11")
	.dwattr $C$DW$451, DW_AT_const_value(0x0b)
	.dwattr $C$DW$451, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0xab)
	.dwattr $C$DW$451, DW_AT_decl_column(0x05)

$C$DW$452	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$452, DW_AT_name("SCI_FIFO_RX12")
	.dwattr $C$DW$452, DW_AT_const_value(0x0c)
	.dwattr $C$DW$452, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0xac)
	.dwattr $C$DW$452, DW_AT_decl_column(0x05)

$C$DW$453	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$453, DW_AT_name("SCI_FIFO_RX13")
	.dwattr $C$DW$453, DW_AT_const_value(0x0d)
	.dwattr $C$DW$453, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0xad)
	.dwattr $C$DW$453, DW_AT_decl_column(0x05)

$C$DW$454	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$454, DW_AT_name("SCI_FIFO_RX14")
	.dwattr $C$DW$454, DW_AT_const_value(0x0e)
	.dwattr $C$DW$454, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0xae)
	.dwattr $C$DW$454, DW_AT_decl_column(0x05)

$C$DW$455	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$455, DW_AT_name("SCI_FIFO_RX15")
	.dwattr $C$DW$455, DW_AT_const_value(0x0f)
	.dwattr $C$DW$455, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$455, DW_AT_decl_column(0x05)

$C$DW$456	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$456, DW_AT_name("SCI_FIFO_RX16")
	.dwattr $C$DW$456, DW_AT_const_value(0x10)
	.dwattr $C$DW$456, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$456, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$93, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$93

	.dwendtag $C$DW$TU$93


$C$DW$TU$94	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$94
$C$DW$T$94	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$94, DW_AT_name("SCI_RxFIFOLevel")
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$94, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$T$94, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$T$94, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$94


$C$DW$TU$95	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$95

$C$DW$T$95	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x01)
$C$DW$457	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$457, DW_AT_name("SPI_FIFO_TXEMPTY")
	.dwattr $C$DW$457, DW_AT_const_value(0x00)
	.dwattr $C$DW$457, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x141)
	.dwattr $C$DW$457, DW_AT_decl_column(0x05)

$C$DW$458	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$458, DW_AT_name("SPI_FIFO_TX0")
	.dwattr $C$DW$458, DW_AT_const_value(0x00)
	.dwattr $C$DW$458, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x142)
	.dwattr $C$DW$458, DW_AT_decl_column(0x05)

$C$DW$459	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$459, DW_AT_name("SPI_FIFO_TX1")
	.dwattr $C$DW$459, DW_AT_const_value(0x01)
	.dwattr $C$DW$459, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x143)
	.dwattr $C$DW$459, DW_AT_decl_column(0x05)

$C$DW$460	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$460, DW_AT_name("SPI_FIFO_TX2")
	.dwattr $C$DW$460, DW_AT_const_value(0x02)
	.dwattr $C$DW$460, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x144)
	.dwattr $C$DW$460, DW_AT_decl_column(0x05)

$C$DW$461	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$461, DW_AT_name("SPI_FIFO_TX3")
	.dwattr $C$DW$461, DW_AT_const_value(0x03)
	.dwattr $C$DW$461, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0x145)
	.dwattr $C$DW$461, DW_AT_decl_column(0x05)

$C$DW$462	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$462, DW_AT_name("SPI_FIFO_TX4")
	.dwattr $C$DW$462, DW_AT_const_value(0x04)
	.dwattr $C$DW$462, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0x146)
	.dwattr $C$DW$462, DW_AT_decl_column(0x05)

$C$DW$463	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$463, DW_AT_name("SPI_FIFO_TX5")
	.dwattr $C$DW$463, DW_AT_const_value(0x05)
	.dwattr $C$DW$463, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0x147)
	.dwattr $C$DW$463, DW_AT_decl_column(0x05)

$C$DW$464	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$464, DW_AT_name("SPI_FIFO_TX6")
	.dwattr $C$DW$464, DW_AT_const_value(0x06)
	.dwattr $C$DW$464, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0x148)
	.dwattr $C$DW$464, DW_AT_decl_column(0x05)

$C$DW$465	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$465, DW_AT_name("SPI_FIFO_TX7")
	.dwattr $C$DW$465, DW_AT_const_value(0x07)
	.dwattr $C$DW$465, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x149)
	.dwattr $C$DW$465, DW_AT_decl_column(0x05)

$C$DW$466	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$466, DW_AT_name("SPI_FIFO_TX8")
	.dwattr $C$DW$466, DW_AT_const_value(0x08)
	.dwattr $C$DW$466, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$466, DW_AT_decl_column(0x05)

$C$DW$467	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$467, DW_AT_name("SPI_FIFO_TX9")
	.dwattr $C$DW$467, DW_AT_const_value(0x09)
	.dwattr $C$DW$467, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$467, DW_AT_decl_column(0x05)

$C$DW$468	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$468, DW_AT_name("SPI_FIFO_TX10")
	.dwattr $C$DW$468, DW_AT_const_value(0x0a)
	.dwattr $C$DW$468, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$468, DW_AT_decl_column(0x05)

$C$DW$469	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$469, DW_AT_name("SPI_FIFO_TX11")
	.dwattr $C$DW$469, DW_AT_const_value(0x0b)
	.dwattr $C$DW$469, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$469, DW_AT_decl_column(0x05)

$C$DW$470	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$470, DW_AT_name("SPI_FIFO_TX12")
	.dwattr $C$DW$470, DW_AT_const_value(0x0c)
	.dwattr $C$DW$470, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$470, DW_AT_decl_column(0x05)

$C$DW$471	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$471, DW_AT_name("SPI_FIFO_TX13")
	.dwattr $C$DW$471, DW_AT_const_value(0x0d)
	.dwattr $C$DW$471, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$471, DW_AT_decl_column(0x05)

$C$DW$472	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$472, DW_AT_name("SPI_FIFO_TX14")
	.dwattr $C$DW$472, DW_AT_const_value(0x0e)
	.dwattr $C$DW$472, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0x150)
	.dwattr $C$DW$472, DW_AT_decl_column(0x05)

$C$DW$473	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$473, DW_AT_name("SPI_FIFO_TX15")
	.dwattr $C$DW$473, DW_AT_const_value(0x0f)
	.dwattr $C$DW$473, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x151)
	.dwattr $C$DW$473, DW_AT_decl_column(0x05)

$C$DW$474	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$474, DW_AT_name("SPI_FIFO_TX16")
	.dwattr $C$DW$474, DW_AT_const_value(0x10)
	.dwattr $C$DW$474, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0x152)
	.dwattr $C$DW$474, DW_AT_decl_column(0x05)

$C$DW$475	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$475, DW_AT_name("SPI_FIFO_TXFULL")
	.dwattr $C$DW$475, DW_AT_const_value(0x10)
	.dwattr $C$DW$475, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0x153)
	.dwattr $C$DW$475, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$95, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x140)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$95

	.dwendtag $C$DW$TU$95


$C$DW$TU$96	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$96
$C$DW$T$96	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$96, DW_AT_name("SPI_TxFIFOLevel")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$96, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x154)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$96


$C$DW$TU$97	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$97

$C$DW$T$97	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x01)
$C$DW$476	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$476, DW_AT_name("SPI_FIFO_RXEMPTY")
	.dwattr $C$DW$476, DW_AT_const_value(0x00)
	.dwattr $C$DW$476, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$476, DW_AT_decl_column(0x05)

$C$DW$477	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$477, DW_AT_name("SPI_FIFO_RX0")
	.dwattr $C$DW$477, DW_AT_const_value(0x00)
	.dwattr $C$DW$477, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0x160)
	.dwattr $C$DW$477, DW_AT_decl_column(0x05)

$C$DW$478	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$478, DW_AT_name("SPI_FIFO_RX1")
	.dwattr $C$DW$478, DW_AT_const_value(0x01)
	.dwattr $C$DW$478, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0x161)
	.dwattr $C$DW$478, DW_AT_decl_column(0x05)

$C$DW$479	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$479, DW_AT_name("SPI_FIFO_RX2")
	.dwattr $C$DW$479, DW_AT_const_value(0x02)
	.dwattr $C$DW$479, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0x162)
	.dwattr $C$DW$479, DW_AT_decl_column(0x05)

$C$DW$480	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$480, DW_AT_name("SPI_FIFO_RX3")
	.dwattr $C$DW$480, DW_AT_const_value(0x03)
	.dwattr $C$DW$480, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$480, DW_AT_decl_line(0x163)
	.dwattr $C$DW$480, DW_AT_decl_column(0x05)

$C$DW$481	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$481, DW_AT_name("SPI_FIFO_RX4")
	.dwattr $C$DW$481, DW_AT_const_value(0x04)
	.dwattr $C$DW$481, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0x164)
	.dwattr $C$DW$481, DW_AT_decl_column(0x05)

$C$DW$482	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$482, DW_AT_name("SPI_FIFO_RX5")
	.dwattr $C$DW$482, DW_AT_const_value(0x05)
	.dwattr $C$DW$482, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0x165)
	.dwattr $C$DW$482, DW_AT_decl_column(0x05)

$C$DW$483	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$483, DW_AT_name("SPI_FIFO_RX6")
	.dwattr $C$DW$483, DW_AT_const_value(0x06)
	.dwattr $C$DW$483, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0x166)
	.dwattr $C$DW$483, DW_AT_decl_column(0x05)

$C$DW$484	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$484, DW_AT_name("SPI_FIFO_RX7")
	.dwattr $C$DW$484, DW_AT_const_value(0x07)
	.dwattr $C$DW$484, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0x167)
	.dwattr $C$DW$484, DW_AT_decl_column(0x05)

$C$DW$485	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$485, DW_AT_name("SPI_FIFO_RX8")
	.dwattr $C$DW$485, DW_AT_const_value(0x08)
	.dwattr $C$DW$485, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$485, DW_AT_decl_line(0x168)
	.dwattr $C$DW$485, DW_AT_decl_column(0x05)

$C$DW$486	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$486, DW_AT_name("SPI_FIFO_RX9")
	.dwattr $C$DW$486, DW_AT_const_value(0x09)
	.dwattr $C$DW$486, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$486, DW_AT_decl_line(0x169)
	.dwattr $C$DW$486, DW_AT_decl_column(0x05)

$C$DW$487	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$487, DW_AT_name("SPI_FIFO_RX10")
	.dwattr $C$DW$487, DW_AT_const_value(0x0a)
	.dwattr $C$DW$487, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$487, DW_AT_decl_column(0x05)

$C$DW$488	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$488, DW_AT_name("SPI_FIFO_RX11")
	.dwattr $C$DW$488, DW_AT_const_value(0x0b)
	.dwattr $C$DW$488, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$488, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$488, DW_AT_decl_column(0x05)

$C$DW$489	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$489, DW_AT_name("SPI_FIFO_RX12")
	.dwattr $C$DW$489, DW_AT_const_value(0x0c)
	.dwattr $C$DW$489, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$489, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$489, DW_AT_decl_column(0x05)

$C$DW$490	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$490, DW_AT_name("SPI_FIFO_RX13")
	.dwattr $C$DW$490, DW_AT_const_value(0x0d)
	.dwattr $C$DW$490, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$490, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$490, DW_AT_decl_column(0x05)

$C$DW$491	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$491, DW_AT_name("SPI_FIFO_RX14")
	.dwattr $C$DW$491, DW_AT_const_value(0x0e)
	.dwattr $C$DW$491, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$491, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$491, DW_AT_decl_column(0x05)

$C$DW$492	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$492, DW_AT_name("SPI_FIFO_RX15")
	.dwattr $C$DW$492, DW_AT_const_value(0x0f)
	.dwattr $C$DW$492, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$492, DW_AT_decl_column(0x05)

$C$DW$493	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$493, DW_AT_name("SPI_FIFO_RX16")
	.dwattr $C$DW$493, DW_AT_const_value(0x10)
	.dwattr $C$DW$493, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$493, DW_AT_decl_line(0x170)
	.dwattr $C$DW$493, DW_AT_decl_column(0x05)

$C$DW$494	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$494, DW_AT_name("SPI_FIFO_RXFULL")
	.dwattr $C$DW$494, DW_AT_const_value(0x10)
	.dwattr $C$DW$494, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$494, DW_AT_decl_line(0x171)
	.dwattr $C$DW$494, DW_AT_decl_column(0x05)

$C$DW$495	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$495, DW_AT_name("SPI_FIFO_RXDEFAULT")
	.dwattr $C$DW$495, DW_AT_const_value(0x1f)
	.dwattr $C$DW$495, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$495, DW_AT_decl_line(0x172)
	.dwattr $C$DW$495, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$97, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$97

	.dwendtag $C$DW$TU$97


$C$DW$TU$98	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$98
$C$DW$T$98	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$98, DW_AT_name("SPI_RxFIFOLevel")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$98, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x173)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$98


$C$DW$TU$99	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$99

$C$DW$T$99	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x01)
$C$DW$496	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$496, DW_AT_name("SPI_PTE_ACTIVE_LOW")
	.dwattr $C$DW$496, DW_AT_const_value(0x00)
	.dwattr $C$DW$496, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0x18d)
	.dwattr $C$DW$496, DW_AT_decl_column(0x05)

$C$DW$497	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$497, DW_AT_name("SPI_PTE_ACTIVE_HIGH")
	.dwattr $C$DW$497, DW_AT_const_value(0x02)
	.dwattr $C$DW$497, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$497, DW_AT_decl_line(0x18e)
	.dwattr $C$DW$497, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$99, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x18c)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$99

	.dwendtag $C$DW$TU$99


$C$DW$TU$100	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$100
$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("SPI_PTEPolarity")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x18f)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$100


$C$DW$TU$101	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$101

$C$DW$T$101	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x01)
$C$DW$498	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$498, DW_AT_name("SPI_EMULATION_STOP_MIDWAY")
	.dwattr $C$DW$498, DW_AT_const_value(0x00)
	.dwattr $C$DW$498, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$498, DW_AT_decl_line(0x17e)
	.dwattr $C$DW$498, DW_AT_decl_column(0x05)

$C$DW$499	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$499, DW_AT_name("SPI_EMULATION_FREE_RUN")
	.dwattr $C$DW$499, DW_AT_const_value(0x10)
	.dwattr $C$DW$499, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$499, DW_AT_decl_line(0x180)
	.dwattr $C$DW$499, DW_AT_decl_column(0x05)

$C$DW$500	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$500, DW_AT_name("SPI_EMULATION_STOP_AFTER_TRANSMIT")
	.dwattr $C$DW$500, DW_AT_const_value(0x20)
	.dwattr $C$DW$500, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$500, DW_AT_decl_line(0x182)
	.dwattr $C$DW$500, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$101, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x17c)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$101

	.dwendtag $C$DW$TU$101


$C$DW$TU$102	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$102
$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("SPI_EmulationMode")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$102, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$102, DW_AT_decl_line(0x183)
	.dwattr $C$DW$T$102, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$102


$C$DW$TU$103	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$103

$C$DW$T$103	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x01)
$C$DW$501	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$501, DW_AT_name("SPI_PROT_POL0PHA0")
	.dwattr $C$DW$501, DW_AT_const_value(0x00)
	.dwattr $C$DW$501, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0x122)
	.dwattr $C$DW$501, DW_AT_decl_column(0x05)

$C$DW$502	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$502, DW_AT_name("SPI_PROT_POL0PHA1")
	.dwattr $C$DW$502, DW_AT_const_value(0x02)
	.dwattr $C$DW$502, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$502, DW_AT_decl_line(0x124)
	.dwattr $C$DW$502, DW_AT_decl_column(0x05)

$C$DW$503	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$503, DW_AT_name("SPI_PROT_POL1PHA0")
	.dwattr $C$DW$503, DW_AT_const_value(0x01)
	.dwattr $C$DW$503, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$503, DW_AT_decl_line(0x126)
	.dwattr $C$DW$503, DW_AT_decl_column(0x05)

$C$DW$504	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$504, DW_AT_name("SPI_PROT_POL1PHA1")
	.dwattr $C$DW$504, DW_AT_const_value(0x03)
	.dwattr $C$DW$504, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$504, DW_AT_decl_line(0x128)
	.dwattr $C$DW$504, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$103, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$103, DW_AT_decl_line(0x120)
	.dwattr $C$DW$T$103, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$103

	.dwendtag $C$DW$TU$103


$C$DW$TU$104	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$104
$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("SPI_TransferProtocol")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x129)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$104


$C$DW$TU$105	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$105

$C$DW$T$105	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x01)
$C$DW$505	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$505, DW_AT_name("SPI_MODE_PERIPHERAL")
	.dwattr $C$DW$505, DW_AT_const_value(0x02)
	.dwattr $C$DW$505, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$505, DW_AT_decl_line(0x132)
	.dwattr $C$DW$505, DW_AT_decl_column(0x05)

$C$DW$506	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$506, DW_AT_name("SPI_MODE_CONTROLLER")
	.dwattr $C$DW$506, DW_AT_const_value(0x06)
	.dwattr $C$DW$506, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0x133)
	.dwattr $C$DW$506, DW_AT_decl_column(0x05)

$C$DW$507	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$507, DW_AT_name("SPI_MODE_PERIPHERAL_OD")
	.dwattr $C$DW$507, DW_AT_const_value(0x00)
	.dwattr $C$DW$507, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$507, DW_AT_decl_line(0x134)
	.dwattr $C$DW$507, DW_AT_decl_column(0x05)

$C$DW$508	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$508, DW_AT_name("SPI_MODE_CONTROLLER_OD")
	.dwattr $C$DW$508, DW_AT_const_value(0x04)
	.dwattr $C$DW$508, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$508, DW_AT_decl_line(0x135)
	.dwattr $C$DW$508, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$105, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x131)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$105

	.dwendtag $C$DW$TU$105


$C$DW$TU$106	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$106
$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("SPI_Mode")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$T$106, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$106, DW_AT_decl_line(0x136)
	.dwattr $C$DW$T$106, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$106


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


$C$DW$TU$119	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$119
$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$119, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$119


$C$DW$TU$120	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$120
$C$DW$T$120	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$120, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$T$120, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$120, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$120, DW_AT_decl_column(0x15)

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


$C$DW$TU$109	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$109
$C$DW$T$109	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$109, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$109, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$109


$C$DW$TU$110	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$110
$C$DW$T$110	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$110, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$T$110, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$110, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$110, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$110


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


$C$DW$TU$136	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$136
$C$DW$T$136	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$136, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$136, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$136, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$136

