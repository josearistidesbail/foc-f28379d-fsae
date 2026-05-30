;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Sat May 30 15:57:51 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("/home/jose/Documents/source/foc-f28379d-fsae/src/main.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen Unix v25.11.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("Device_init")
	.dwattr $C$DW$1, DW_AT_linkage_name("Device_init")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/common/include/device.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x10d)
	.dwattr $C$DW$1, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$1


$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("Device_initGPIO")
	.dwattr $C$DW$2, DW_AT_linkage_name("Device_initGPIO")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/common/include/device.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x124)
	.dwattr $C$DW$2, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$2


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("Interrupt_initModule")
	.dwattr $C$DW$3, DW_AT_linkage_name("Interrupt_initModule")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/interrupt.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x1ab)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$3


$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("Interrupt_initVectorTable")
	.dwattr $C$DW$4, DW_AT_linkage_name("Interrupt_initVectorTable")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/interrupt.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x1b6)
	.dwattr $C$DW$4, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$4


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("Board_init")
	.dwattr $C$DW$5, DW_AT_linkage_name("Board_init")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP/syscfg/board.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x15d)
	.dwattr $C$DW$5, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$5


$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("debug_init")
	.dwattr $C$DW$6, DW_AT_linkage_name("debug_init")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/debug_hooks.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$6, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$6


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("safety_init")
	.dwattr $C$DW$7, DW_AT_linkage_name("safety_init")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/safety.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x18)
	.dwattr $C$DW$7, DW_AT_decl_column(0x11)
	.dwendtag $C$DW$7


$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("adc_init")
	.dwattr $C$DW$8, DW_AT_linkage_name("adc_init")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/adc_iface.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$8, DW_AT_decl_column(0x0e)
	.dwendtag $C$DW$8


$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("pwm_init")
	.dwattr $C$DW$9, DW_AT_linkage_name("pwm_init")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/pwm_iface.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x0a)
	.dwattr $C$DW$9, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$9


$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("sensor_init")
	.dwattr $C$DW$10, DW_AT_linkage_name("sensor_init")
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/sensor_iface.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0x13)
	.dwattr $C$DW$10, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$10


$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("inverter_init")
	.dwattr $C$DW$11, DW_AT_linkage_name("inverter_init")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/inverter_iface.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$11, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$11


$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("foc_init")
	.dwattr $C$DW$12, DW_AT_linkage_name("foc_init")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/foc_pipeline.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$12, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$12


$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("sm_init")
	.dwattr $C$DW$13, DW_AT_linkage_name("sm_init")
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/foc_state_machine.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x15)
	.dwattr $C$DW$13, DW_AT_decl_column(0x15)
	.dwendtag $C$DW$13


$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("debug_iface_init")
	.dwattr $C$DW$14, DW_AT_linkage_name("debug_iface_init")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/debug_iface.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$14, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$14


$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("inverter_enable_gate")
	.dwattr $C$DW$15, DW_AT_linkage_name("inverter_enable_gate")
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/inverter_iface.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$15, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$15


$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("debug_iface_poll")
	.dwattr $C$DW$16, DW_AT_linkage_name("debug_iface_poll")
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/include/debug_iface.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$16, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$16

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("g_dbg_en_gate")
	.dwattr $C$DW$17, DW_AT_linkage_name("g_dbg_en_gate")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/main.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$17, DW_AT_decl_column(0x1a)

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("g_dbg_nfault")
	.dwattr $C$DW$18, DW_AT_linkage_name("g_dbg_nfault")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/main.c")
	.dwattr $C$DW$18, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$18, DW_AT_decl_column(0x1a)

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("g_isr_count")
	.dwattr $C$DW$19, DW_AT_linkage_name("g_isr_count")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/main.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$19, DW_AT_decl_column(0x1a)

;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TI26j5Ha4lV /tmp/TI26jKM1frw --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TI26jKiX7Vp 
	.sect	".text:main"
	.clink
	.global	||main||

$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("main")
	.dwattr $C$DW$20, DW_AT_low_pc(||main||)
	.dwattr $C$DW$20, DW_AT_high_pc(0x00)
	.dwattr $C$DW$20, DW_AT_linkage_name("main")
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$20, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/main.c")
	.dwattr $C$DW$20, DW_AT_decl_line(0x24)
	.dwattr $C$DW$20, DW_AT_decl_column(0x05)
	.dwattr $C$DW$20, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 37,column 1,is_stmt,address ||main||,isa 0

	.dwfde $C$DW$CIE, ||main||

;***************************************************************
;* FNAME: main                          FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||main||:
;* AL    assigned to $O$R1
;* AL    assigned to $O$R2
;* AR1   assigned to last_led_tick
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("last_led_tick")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg6]

;* AR6   assigned to now
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("now")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 39,column 5,is_stmt,isa 0
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("Device_init")
	.dwattr $C$DW$23, DW_AT_TI_call

        LCR       #||Device_init||      ; [CPU_ALU] |39| 
        ; call occurs [#||Device_init||] ; [] |39| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 40,column 5,is_stmt,isa 0
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("Device_initGPIO")
	.dwattr $C$DW$24, DW_AT_TI_call

        LCR       #||Device_initGPIO||  ; [CPU_ALU] |40| 
        ; call occurs [#||Device_initGPIO||] ; [] |40| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 41,column 5,is_stmt,isa 0
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("Interrupt_initModule")
	.dwattr $C$DW$25, DW_AT_TI_call

        LCR       #||Interrupt_initModule|| ; [CPU_ALU] |41| 
        ; call occurs [#||Interrupt_initModule||] ; [] |41| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 42,column 5,is_stmt,isa 0
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("Interrupt_initVectorTable")
	.dwattr $C$DW$26, DW_AT_TI_call

        LCR       #||Interrupt_initVectorTable|| ; [CPU_ALU] |42| 
        ; call occurs [#||Interrupt_initVectorTable||] ; [] |42| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 43,column 5,is_stmt,isa 0
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("Board_init")
	.dwattr $C$DW$27, DW_AT_TI_call

        LCR       #||Board_init||       ; [CPU_ALU] |43| 
        ; call occurs [#||Board_init||] ; [] |43| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 46,column 5,is_stmt,isa 0
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("debug_init")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #||debug_init||       ; [CPU_ALU] |46| 
        ; call occurs [#||debug_init||] ; [] |46| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 47,column 5,is_stmt,isa 0
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("safety_init")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #||safety_init||      ; [CPU_ALU] |47| 
        ; call occurs [#||safety_init||] ; [] |47| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 48,column 5,is_stmt,isa 0
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("adc_init")
	.dwattr $C$DW$30, DW_AT_TI_call

        LCR       #||adc_init||         ; [CPU_ALU] |48| 
        ; call occurs [#||adc_init||] ; [] |48| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 49,column 5,is_stmt,isa 0
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_name("pwm_init")
	.dwattr $C$DW$31, DW_AT_TI_call

        LCR       #||pwm_init||         ; [CPU_ALU] |49| 
        ; call occurs [#||pwm_init||] ; [] |49| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 50,column 5,is_stmt,isa 0
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("sensor_init")
	.dwattr $C$DW$32, DW_AT_TI_call

        LCR       #||sensor_init||      ; [CPU_ALU] |50| 
        ; call occurs [#||sensor_init||] ; [] |50| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 51,column 5,is_stmt,isa 0
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("inverter_init")
	.dwattr $C$DW$33, DW_AT_TI_call

        LCR       #||inverter_init||    ; [CPU_ALU] |51| 
        ; call occurs [#||inverter_init||] ; [] |51| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 52,column 5,is_stmt,isa 0
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("foc_init")
	.dwattr $C$DW$34, DW_AT_TI_call

        LCR       #||foc_init||         ; [CPU_ALU] |52| 
        ; call occurs [#||foc_init||] ; [] |52| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 53,column 5,is_stmt,isa 0
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("sm_init")
	.dwattr $C$DW$35, DW_AT_TI_call

        LCR       #||sm_init||          ; [CPU_ALU] |53| 
        ; call occurs [#||sm_init||] ; [] |53| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 54,column 5,is_stmt,isa 0
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("debug_iface_init")
	.dwattr $C$DW$36, DW_AT_TI_call

        LCR       #||debug_iface_init|| ; [CPU_ALU] |54| 
        ; call occurs [#||debug_iface_init||] ; [] |54| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 59,column 5,is_stmt,isa 0
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("inverter_enable_gate")
	.dwattr $C$DW$37, DW_AT_TI_call

        LCR       #||inverter_enable_gate|| ; [CPU_ALU] |59| 
        ; call occurs [#||inverter_enable_gate||] ; [] |59| 
 clrc INTM
 clrc DBGM
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 67,column 28,is_stmt,isa 0
        MOVB      XAR1,#0               ; [CPU_ALU] |67| 
||$C$L1||:    
        SPM       #0                    ; [CPU_ALU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 70,column 9,is_stmt,isa 0
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("debug_iface_poll")
	.dwattr $C$DW$38, DW_AT_TI_call

        LCR       #||debug_iface_poll|| ; [CPU_ALU] |70| 
        ; call occurs [#||debug_iface_poll||] ; [] |70| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 431,column 5,is_stmt,isa 0
        MOV       T,#28                 ; [CPU_ALU] |431| 
        MOVW      DP,#||g_dbg_en_gate|| ; [CPU_ARAU] 
        MOV32     ACC,*(0:0x7f18)       ; [CPU_FPU] |431| 
        LSRL      ACC,T                 ; [CPU_ALU] |431| 
        ANDB      AL,#0x01              ; [CPU_ALU] |431| 
        MOV       T,#19                 ; [CPU_ALU] |431| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 72,column 9,is_stmt,isa 0
        MOV       @||g_dbg_en_gate||,AL ; [CPU_ALU] |72| 
        MOVW      DP,#||g_dbg_nfault||  ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 431,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7f00)       ; [CPU_FPU] |431| 
        LSRL      ACC,T                 ; [CPU_ALU] |431| 
        ANDB      AL,#0x01              ; [CPU_ALU] |431| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 73,column 9,is_stmt,isa 0
        MOV       @||g_dbg_nfault||,AL  ; [CPU_ALU] |73| 
        MOVW      DP,#||g_isr_count||   ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 75,column 22,is_stmt,isa 0
        MOVL      XAR6,@||g_isr_count|| ; [CPU_ALU] |75| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 76,column 9,is_stmt,isa 0
        MOV       ACC,#5000             ; [CPU_ALU] |76| 
        MOVL      P,XAR6                ; [CPU_ALU] |76| 
        SUBUL     P,XAR1                ; [CPU_ALU] |76| 
        CMPL      ACC,P                 ; [CPU_ALU] |76| 
        B         ||$C$L1||,HI          ; [CPU_ALU] |76| 
        ; branchcc occurs ; [] |76| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 505,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |505| 
        MOV       AH,#32768             ; [CPU_ALU] |505| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 79,column 13,is_stmt,isa 0
        MOVL      XAR1,XAR6             ; [CPU_ALU] |79| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 505,column 5,is_stmt,isa 0
        MOV32     *(0:0x7f06),ACC       ; [CPU_FPU] |505| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/main.c",line 79,column 13,is_stmt,isa 0
        B         ||$C$L1||,UNC         ; [CPU_ALU] |79| 
        ; branch occurs ; [] |79| 
	.dwattr $C$DW$20, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/main.c")
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x52)
	.dwattr $C$DW$20, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$20

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||Device_init||
	.global	||Device_initGPIO||
	.global	||Interrupt_initModule||
	.global	||Interrupt_initVectorTable||
	.global	||Board_init||
	.global	||debug_init||
	.global	||safety_init||
	.global	||adc_init||
	.global	||pwm_init||
	.global	||sensor_init||
	.global	||inverter_init||
	.global	||foc_init||
	.global	||sm_init||
	.global	||debug_iface_init||
	.global	||inverter_enable_gate||
	.global	||debug_iface_poll||
	.global	||g_dbg_en_gate||
	.global	||g_dbg_nfault||
	.global	||g_isr_count||

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


$C$DW$TU$9	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$9
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$9


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$26, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$39	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$27)

$C$DW$T$28	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$39)

	.dwendtag $C$DW$TU$28


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


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$21, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$22


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35
$C$DW$40	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$22)

$C$DW$T$35	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$40)

	.dwendtag $C$DW$TU$35


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

