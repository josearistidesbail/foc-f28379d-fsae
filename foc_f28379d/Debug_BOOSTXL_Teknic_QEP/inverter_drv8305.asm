;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Sat May 30 20:22:51 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src/inverter_drv8305.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen Unix v25.11.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$1, DW_AT_linkage_name("SysCtl_delay")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sysctl.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0xcd7)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$24)

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
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$24)

$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$24)

	.dwendtag $C$DW$3


$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$6, DW_AT_linkage_name("GPIO_setDirectionMode")
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x326)
	.dwattr $C$DW$6, DW_AT_decl_column(0x01)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$24)

$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$6


$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("pwm_force_safe")
	.dwattr $C$DW$9, DW_AT_linkage_name("pwm_force_safe")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/pwm_iface.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$9, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$9

	.data
	.align	1
	.elfsym	||s_last_fault_status||,SYM_SIZE(1),SYM_BLOCKED(1)
||s_last_fault_status||:
	.bits		0,16
			; s_last_fault_status @ 0

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("s_last_fault_status")
	.dwattr $C$DW$10, DW_AT_linkage_name("s_last_fault_status")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_addr ||s_last_fault_status||]
	.dwattr $C$DW$10, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$10, DW_AT_decl_line(0x21)
	.dwattr $C$DW$10, DW_AT_decl_column(0x11)

	.global	||g_dbg_en_gate||
	.bss	||g_dbg_en_gate||,1,1,0
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("g_dbg_en_gate")
	.dwattr $C$DW$11, DW_AT_linkage_name("g_dbg_en_gate")
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr ||g_dbg_en_gate||]
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x24)
	.dwattr $C$DW$11, DW_AT_decl_column(0x13)

	.global	||g_dbg_nfault||
	.bss	||g_dbg_nfault||,1,1,0
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("g_dbg_nfault")
	.dwattr $C$DW$12, DW_AT_linkage_name("g_dbg_nfault")
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr ||g_dbg_nfault||]
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$12, DW_AT_decl_line(0x25)
	.dwattr $C$DW$12, DW_AT_decl_column(0x13)

	.global	||g_dbg_spi_wr_shunt||
	.bss	||g_dbg_spi_wr_shunt||,1,1,0
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("g_dbg_spi_wr_shunt")
	.dwattr $C$DW$13, DW_AT_linkage_name("g_dbg_spi_wr_shunt")
	.dwattr $C$DW$13, DW_AT_location[DW_OP_addr ||g_dbg_spi_wr_shunt||]
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$13, DW_AT_decl_line(0x26)
	.dwattr $C$DW$13, DW_AT_decl_column(0x13)

	.global	||g_dbg_spi_rd_shunt||
	.bss	||g_dbg_spi_rd_shunt||,1,1,0
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("g_dbg_spi_rd_shunt")
	.dwattr $C$DW$14, DW_AT_linkage_name("g_dbg_spi_rd_shunt")
	.dwattr $C$DW$14, DW_AT_location[DW_OP_addr ||g_dbg_spi_rd_shunt||]
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$14, DW_AT_decl_line(0x27)
	.dwattr $C$DW$14, DW_AT_decl_column(0x13)

	.global	||g_dbg_spi_warn||
	.bss	||g_dbg_spi_warn||,1,1,0
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("g_dbg_spi_warn")
	.dwattr $C$DW$15, DW_AT_linkage_name("g_dbg_spi_warn")
	.dwattr $C$DW$15, DW_AT_location[DW_OP_addr ||g_dbg_spi_warn||]
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x28)
	.dwattr $C$DW$15, DW_AT_decl_column(0x13)

	.global	||g_dbg_spi_ovvds||
	.bss	||g_dbg_spi_ovvds||,1,1,0
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("g_dbg_spi_ovvds")
	.dwattr $C$DW$16, DW_AT_linkage_name("g_dbg_spi_ovvds")
	.dwattr $C$DW$16, DW_AT_location[DW_OP_addr ||g_dbg_spi_ovvds||]
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$16, DW_AT_decl_line(0x29)
	.dwattr $C$DW$16, DW_AT_decl_column(0x13)

	.global	||g_dbg_spi_icflt||
	.bss	||g_dbg_spi_icflt||,1,1,0
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("g_dbg_spi_icflt")
	.dwattr $C$DW$17, DW_AT_linkage_name("g_dbg_spi_icflt")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_addr ||g_dbg_spi_icflt||]
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$17, DW_AT_decl_column(0x13)

	.global	||g_dbg_spi_vgsflt||
	.bss	||g_dbg_spi_vgsflt||,1,1,0
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("g_dbg_spi_vgsflt")
	.dwattr $C$DW$18, DW_AT_linkage_name("g_dbg_spi_vgsflt")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_addr ||g_dbg_spi_vgsflt||]
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$18, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$18, DW_AT_decl_column(0x13)

	.global	||g_dbg_fault_warn||
	.bss	||g_dbg_fault_warn||,1,1,0
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("g_dbg_fault_warn")
	.dwattr $C$DW$19, DW_AT_linkage_name("g_dbg_fault_warn")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_addr ||g_dbg_fault_warn||]
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x30)
	.dwattr $C$DW$19, DW_AT_decl_column(0x13)

	.global	||g_dbg_fault_ovvds||
	.bss	||g_dbg_fault_ovvds||,1,1,0
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("g_dbg_fault_ovvds")
	.dwattr $C$DW$20, DW_AT_linkage_name("g_dbg_fault_ovvds")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr ||g_dbg_fault_ovvds||]
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$20, DW_AT_decl_line(0x31)
	.dwattr $C$DW$20, DW_AT_decl_column(0x13)

	.global	||g_dbg_fault_icflt||
	.bss	||g_dbg_fault_icflt||,1,1,0
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("g_dbg_fault_icflt")
	.dwattr $C$DW$21, DW_AT_linkage_name("g_dbg_fault_icflt")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr ||g_dbg_fault_icflt||]
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$21, DW_AT_decl_line(0x32)
	.dwattr $C$DW$21, DW_AT_decl_column(0x13)

	.global	||g_dbg_fault_vgsflt||
	.bss	||g_dbg_fault_vgsflt||,1,1,0
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("g_dbg_fault_vgsflt")
	.dwattr $C$DW$22, DW_AT_linkage_name("g_dbg_fault_vgsflt")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr ||g_dbg_fault_vgsflt||]
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0x33)
	.dwattr $C$DW$22, DW_AT_decl_column(0x13)

	.global	||g_dbg_spi_sts||
	.bss	||g_dbg_spi_sts||,1,1,0
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("g_dbg_spi_sts")
	.dwattr $C$DW$23, DW_AT_linkage_name("g_dbg_spi_sts")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr ||g_dbg_spi_sts||]
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$23, DW_AT_decl_column(0x13)

	.global	||g_dbg_spi_fftx_level||
	.bss	||g_dbg_spi_fftx_level||,1,1,0
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("g_dbg_spi_fftx_level")
	.dwattr $C$DW$24, DW_AT_linkage_name("g_dbg_spi_fftx_level")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_addr ||g_dbg_spi_fftx_level||]
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$24, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$24, DW_AT_decl_column(0x13)

	.global	||g_dbg_spi_ffrx_level||
	.bss	||g_dbg_spi_ffrx_level||,1,1,0
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("g_dbg_spi_ffrx_level")
	.dwattr $C$DW$25, DW_AT_linkage_name("g_dbg_spi_ffrx_level")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_addr ||g_dbg_spi_ffrx_level||]
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$25, DW_AT_decl_line(0x40)
	.dwattr $C$DW$25, DW_AT_decl_column(0x13)

	.global	||g_dbg_spi_rx_raw||
	.bss	||g_dbg_spi_rx_raw||,1,1,0
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("g_dbg_spi_rx_raw")
	.dwattr $C$DW$26, DW_AT_linkage_name("g_dbg_spi_rx_raw")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_addr ||g_dbg_spi_rx_raw||]
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$26, DW_AT_decl_line(0x41)
	.dwattr $C$DW$26, DW_AT_decl_column(0x13)

	.global	||g_dbg_spi_hs_default||
	.bss	||g_dbg_spi_hs_default||,1,1,0
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("g_dbg_spi_hs_default")
	.dwattr $C$DW$27, DW_AT_linkage_name("g_dbg_spi_hs_default")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr ||g_dbg_spi_hs_default||]
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0x42)
	.dwattr $C$DW$27, DW_AT_decl_column(0x13)

	.sblock	".bss"
	.sblock	".data"
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TI6XCqgHUwa /tmp/TI6XCtA24EJ --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TI6XCWB53K8 
	.sect	".text:drv8305_xfer"
	.clink

$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("drv8305_xfer")
	.dwattr $C$DW$28, DW_AT_low_pc(||drv8305_xfer||)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_linkage_name("drv8305_xfer")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$28, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$28, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$28, DW_AT_decl_column(0x11)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../src/inverter_drv8305.c",line 75,column 1,is_stmt,address ||drv8305_xfer||,isa 0

	.dwfde $C$DW$CIE, ||drv8305_xfer||
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_name("rw")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg0]

$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_name("addr")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg1]

$C$DW$31	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$31, DW_AT_name("data")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: drv8305_xfer                  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

||drv8305_xfer||:
;* AR1   assigned to rw
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("rw")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to addr
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("addr")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg8]

;* AR3   assigned to data
$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("data")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg10]

;* AR1   assigned to r
$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("r")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg6]

;* AR3   assigned to data
$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("data")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg10]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVZ      AR1,AL                ; [CPU_ALU] |75| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 628,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x610b)        ; [CPU_ALU] |628| 
        AND       AL,#0xdfff            ; [CPU_ALU] |628| 
        MOV       *(0:0x610b),AL        ; [CPU_ALU] |628| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 629,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x610b)       ; [CPU_ALU] |629| 
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../src/inverter_drv8305.c",line 75,column 1,is_stmt,isa 0
        MOVZ      AR2,AH                ; [CPU_ALU] |75| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 629,column 5,is_stmt,isa 0
        OR        AR6,#0x2000           ; [CPU_ALU] |629| 
        MOVL      *SP++,XAR3            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOV       ACC,#16384 << 15      ; [CPU_ALU] |469| 
	.dwpsn	file "../src/inverter_drv8305.c",line 75,column 1,is_stmt,isa 0
        MOVZ      AR3,AR4               ; [CPU_ALU] |75| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 629,column 5,is_stmt,isa 0
        MOV       *(0:0x610b),AR6       ; [CPU_ALU] |629| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOV32     *(0:0x7f0c),ACC       ; [CPU_FPU] |469| 
	.dwpsn	file "../src/inverter_drv8305.c",line 81,column 5,is_stmt,isa 0
        MOVB      ACC,#38               ; [CPU_ALU] |81| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$37, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |81| 
        ; call occurs [#||SysCtl_delay||] ; [] |81| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 876,column 1,is_stmt,isa 0
        MOV       ACC,AR1 << #15        ; [CPU_ALU] |876| 
        AND       AH,AR2,#0x000f        ; [CPU_ALU] |876| 
        LSL       AH,11                 ; [CPU_ALU] |876| 
        OR        AH,AL                 ; [CPU_ALU] |876| 
        AND       AL,AR3,#0x07ff        ; [CPU_FPU] |876| 
        OR        AL,AH                 ; [CPU_ALU] |876| 
        MOVZ      AR3,AL                ; [CPU_ALU] |876| 
||$C$L1||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 729,column 5,is_stmt,isa 0
        MOV       AH,*(0:0x610a)        ; [CPU_ALU] |729| 
        LSR       AH,8                  ; [CPU_ALU] |729| 
        ANDB      AH,#0x1f              ; [CPU_ALU] |729| 
        CMPB      AH,#16                ; [CPU_ALU] |729| 
        B         ||$C$L1||,EQ          ; [CPU_ALU] |729| 
        ; branchcc occurs ; [] |729| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 892,column 5,is_stmt,isa 0
        MOV       *(0:0x6108),AR3       ; [CPU_ALU] |892| 
||$C$L2||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 758,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x610b)        ; [CPU_ALU] |758| 
        LSR       AL,8                  ; [CPU_ALU] |758| 
        ANDB      AL,#0x1f              ; [CPU_ALU] |758| 
        B         ||$C$L2||,EQ          ; [CPU_ALU] |758| 
        ; branchcc occurs ; [] |758| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h",line 931,column 5,is_stmt,isa 0
        MOV       AR1,*(0:0x6107)       ; [CPU_ALU] |931| 
        MOVW      DP,#||g_dbg_spi_rx_raw|| ; [CPU_ARAU] 
	.dwpsn	file "../src/inverter_drv8305.c",line 87,column 5,is_stmt,isa 0
        MOVB      ACC,#38               ; [CPU_ALU] |87| 
	.dwpsn	file "../src/inverter_drv8305.c",line 85,column 5,is_stmt,isa 0
        MOV       @||g_dbg_spi_rx_raw||,AR1 ; [CPU_ALU] |85| 
	.dwpsn	file "../src/inverter_drv8305.c",line 87,column 5,is_stmt,isa 0
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$38, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |87| 
        ; call occurs [#||SysCtl_delay||] ; [] |87| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV       ACC,#16384 << 15      ; [CPU_ALU] |473| 
        MOV32     *(0:0x7f0a),ACC       ; [CPU_FPU] |473| 
	.dwpsn	file "../src/inverter_drv8305.c",line 89,column 5,is_stmt,isa 0
        MOVB      ACC,#38               ; [CPU_ALU] |89| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$39, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |89| 
        ; call occurs [#||SysCtl_delay||] ; [] |89| 
        MOVL      XAR3,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
	.dwpsn	file "../src/inverter_drv8305.c",line 90,column 5,is_stmt,isa 0
        AND       AL,AR1,#0x07ff        ; [CPU_ALU] |90| 
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$28, DW_AT_TI_end_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x5b)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text:inverter_snapshot_fault_regs"
	.clink
	.global	||inverter_snapshot_fault_regs||

$C$DW$41	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$41, DW_AT_name("inverter_snapshot_fault_regs")
	.dwattr $C$DW$41, DW_AT_low_pc(||inverter_snapshot_fault_regs||)
	.dwattr $C$DW$41, DW_AT_high_pc(0x00)
	.dwattr $C$DW$41, DW_AT_linkage_name("inverter_snapshot_fault_regs")
	.dwattr $C$DW$41, DW_AT_external
	.dwattr $C$DW$41, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$41, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$41, DW_AT_decl_column(0x06)
	.dwattr $C$DW$41, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/inverter_drv8305.c",line 109,column 1,is_stmt,address ||inverter_snapshot_fault_regs||,isa 0

	.dwfde $C$DW$CIE, ||inverter_snapshot_fault_regs||

;***************************************************************
;* FNAME: inverter_snapshot_fault_regs  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||inverter_snapshot_fault_regs||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src/inverter_drv8305.c",line 111,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |111| 
        MOVB      XAR4,#0               ; [CPU_ALU] |111| 
        MOVB      AH,#1                 ; [CPU_ALU] |111| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("drv8305_xfer")
	.dwattr $C$DW$42, DW_AT_TI_call

        LCR       #||drv8305_xfer||     ; [CPU_ALU] |111| 
        ; call occurs [#||drv8305_xfer||] ; [] |111| 
        MOVW      DP,#||g_dbg_fault_warn|| ; [CPU_ARAU] 
	.dwpsn	file "../src/inverter_drv8305.c",line 112,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |112| 
        MOVB      AH,#2                 ; [CPU_ALU] |112| 
	.dwpsn	file "../src/inverter_drv8305.c",line 111,column 5,is_stmt,isa 0
        MOV       @||g_dbg_fault_warn||,AL ; [CPU_ALU] |111| 
	.dwpsn	file "../src/inverter_drv8305.c",line 112,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |112| 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("drv8305_xfer")
	.dwattr $C$DW$43, DW_AT_TI_call

        LCR       #||drv8305_xfer||     ; [CPU_ALU] |112| 
        ; call occurs [#||drv8305_xfer||] ; [] |112| 
        MOVW      DP,#||g_dbg_fault_ovvds|| ; [CPU_ARAU] 
	.dwpsn	file "../src/inverter_drv8305.c",line 113,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |113| 
        MOVB      AH,#3                 ; [CPU_ALU] |113| 
	.dwpsn	file "../src/inverter_drv8305.c",line 112,column 5,is_stmt,isa 0
        MOV       @||g_dbg_fault_ovvds||,AL ; [CPU_ALU] |112| 
	.dwpsn	file "../src/inverter_drv8305.c",line 113,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |113| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("drv8305_xfer")
	.dwattr $C$DW$44, DW_AT_TI_call

        LCR       #||drv8305_xfer||     ; [CPU_ALU] |113| 
        ; call occurs [#||drv8305_xfer||] ; [] |113| 
        MOVW      DP,#||g_dbg_fault_icflt|| ; [CPU_ARAU] 
	.dwpsn	file "../src/inverter_drv8305.c",line 114,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |114| 
        MOVB      AH,#4                 ; [CPU_ALU] |114| 
	.dwpsn	file "../src/inverter_drv8305.c",line 113,column 5,is_stmt,isa 0
        MOV       @||g_dbg_fault_icflt||,AL ; [CPU_ALU] |113| 
	.dwpsn	file "../src/inverter_drv8305.c",line 114,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |114| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("drv8305_xfer")
	.dwattr $C$DW$45, DW_AT_TI_call

        LCR       #||drv8305_xfer||     ; [CPU_ALU] |114| 
        ; call occurs [#||drv8305_xfer||] ; [] |114| 
        MOVW      DP,#||g_dbg_fault_vgsflt|| ; [CPU_ARAU] 
        MOV       @||g_dbg_fault_vgsflt||,AL ; [CPU_ALU] |114| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$41, DW_AT_TI_end_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$41, DW_AT_TI_end_line(0x73)
	.dwattr $C$DW$41, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$41

	.sect	".text:inverter_is_faulted"
	.clink
	.global	||inverter_is_faulted||

$C$DW$47	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$47, DW_AT_name("inverter_is_faulted")
	.dwattr $C$DW$47, DW_AT_low_pc(||inverter_is_faulted||)
	.dwattr $C$DW$47, DW_AT_high_pc(0x00)
	.dwattr $C$DW$47, DW_AT_linkage_name("inverter_is_faulted")
	.dwattr $C$DW$47, DW_AT_external
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$47, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$47, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$47, DW_AT_decl_column(0x06)
	.dwattr $C$DW$47, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/inverter_drv8305.c",line 190,column 1,is_stmt,address ||inverter_is_faulted||,isa 0

	.dwfde $C$DW$CIE, ||inverter_is_faulted||

;***************************************************************
;* FNAME: inverter_is_faulted           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||inverter_is_faulted||:
;* AL    assigned to $O$R1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 431,column 5,is_stmt,isa 0
        MOV32     ACC,*(0:0x7f00)       ; [CPU_FPU] |431| 
        MOV       T,#19                 ; [CPU_ALU] |431| 
	.dwpsn	file "../src/inverter_drv8305.c",line 191,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |191| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 431,column 5,is_stmt,isa 0
        LSRL      ACC,T                 ; [CPU_ALU] |431| 
        MOVB      AH,#0                 ; [CPU_ALU] |431| 
        ANDB      AL,#0x01              ; [CPU_ALU] |431| 
	.dwpsn	file "../src/inverter_drv8305.c",line 191,column 5,is_stmt,isa 0
        TEST      ACC                   ; [CPU_ALU] |191| 
        MOVB      XAR6,#1,EQ            ; [CPU_ALU] |191| 
        MOV       AL,AR6                ; [CPU_ALU] |191| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$47, DW_AT_TI_end_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$47, DW_AT_TI_end_line(0xc0)
	.dwattr $C$DW$47, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$47

	.sect	".text:inverter_clear_faults"
	.clink
	.global	||inverter_clear_faults||

$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("inverter_clear_faults")
	.dwattr $C$DW$49, DW_AT_low_pc(||inverter_clear_faults||)
	.dwattr $C$DW$49, DW_AT_high_pc(0x00)
	.dwattr $C$DW$49, DW_AT_linkage_name("inverter_clear_faults")
	.dwattr $C$DW$49, DW_AT_external
	.dwattr $C$DW$49, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$49, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$49, DW_AT_decl_column(0x06)
	.dwattr $C$DW$49, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/inverter_drv8305.c",line 94,column 1,is_stmt,address ||inverter_clear_faults||,isa 0

	.dwfde $C$DW$CIE, ||inverter_clear_faults||

;***************************************************************
;* FNAME: inverter_clear_faults         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||inverter_clear_faults||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src/inverter_drv8305.c",line 103,column 5,is_stmt,isa 0
        MOVL      XAR4,#79998           ; [CPU_ARAU] |103| 
        MOVL      ACC,XAR4              ; [CPU_ALU] |103| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$50, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |103| 
        ; call occurs [#||SysCtl_delay||] ; [] |103| 
	.dwpsn	file "../src/inverter_drv8305.c",line 104,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |104| 
        MOVB      XAR4,#2               ; [CPU_ALU] |104| 
        MOVB      AH,#9                 ; [CPU_ALU] |104| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("drv8305_xfer")
	.dwattr $C$DW$51, DW_AT_TI_call

        LCR       #||drv8305_xfer||     ; [CPU_ALU] |104| 
        ; call occurs [#||drv8305_xfer||] ; [] |104| 
	.dwpsn	file "../src/inverter_drv8305.c",line 105,column 5,is_stmt,isa 0
        MOV       ACC,#3998             ; [CPU_ALU] |105| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$52, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |105| 
        ; call occurs [#||SysCtl_delay||] ; [] |105| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$49, DW_AT_TI_end_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$49, DW_AT_TI_end_line(0x6a)
	.dwattr $C$DW$49, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$49

	.sect	".text:inverter_init"
	.clink
	.global	||inverter_init||

$C$DW$54	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$54, DW_AT_name("inverter_init")
	.dwattr $C$DW$54, DW_AT_low_pc(||inverter_init||)
	.dwattr $C$DW$54, DW_AT_high_pc(0x00)
	.dwattr $C$DW$54, DW_AT_linkage_name("inverter_init")
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$54, DW_AT_decl_line(0x75)
	.dwattr $C$DW$54, DW_AT_decl_column(0x06)
	.dwattr $C$DW$54, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../src/inverter_drv8305.c",line 118,column 1,is_stmt,address ||inverter_init||,isa 0

	.dwfde $C$DW$CIE, ||inverter_init||

;***************************************************************
;* FNAME: inverter_init                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||inverter_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../src/inverter_drv8305.c",line 121,column 5,is_stmt,isa 0
        MOVB      ACC,#1                ; [CPU_ALU] |121| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |121| 
        MOVB      ACC,#19               ; [CPU_ALU] |121| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("GPIO_setPadConfig")
	.dwattr $C$DW$55, DW_AT_TI_call

        LCR       #||GPIO_setPadConfig|| ; [CPU_ALU] |121| 
        ; call occurs [#||GPIO_setPadConfig||] ; [] |121| 
	.dwpsn	file "../src/inverter_drv8305.c",line 122,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |122| 
        MOVB      ACC,#19               ; [CPU_ALU] |122| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("GPIO_setDirectionMode")
	.dwattr $C$DW$56, DW_AT_TI_call

        LCR       #||GPIO_setDirectionMode|| ; [CPU_ALU] |122| 
        ; call occurs [#||GPIO_setDirectionMode||] ; [] |122| 
	.dwpsn	file "../src/inverter_drv8305.c",line 128,column 5,is_stmt,isa 0
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("pwm_force_safe")
	.dwattr $C$DW$57, DW_AT_TI_call

        LCR       #||pwm_force_safe||   ; [CPU_ALU] |128| 
        ; call occurs [#||pwm_force_safe||] ; [] |128| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOV       ACC,#8192 << 15       ; [CPU_ALU] |469| 
	.dwpsn	file "../src/inverter_drv8305.c",line 133,column 5,is_stmt,isa 0
        MOVL      XAR4,#79998           ; [CPU_ARAU] |133| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOV32     *(0:0x7f1c),ACC       ; [CPU_FPU] |469| 
	.dwpsn	file "../src/inverter_drv8305.c",line 133,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |133| 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$58, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |133| 
        ; call occurs [#||SysCtl_delay||] ; [] |133| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV       ACC,#8192 << 15       ; [CPU_ALU] |473| 
	.dwpsn	file "../src/inverter_drv8305.c",line 135,column 5,is_stmt,isa 0
        MOVL      XAR4,#79998           ; [CPU_ARAU] |135| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV32     *(0:0x7f1a),ACC       ; [CPU_FPU] |473| 
	.dwpsn	file "../src/inverter_drv8305.c",line 135,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |135| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$59, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |135| 
        ; call occurs [#||SysCtl_delay||] ; [] |135| 
	.dwpsn	file "../src/inverter_drv8305.c",line 143,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |143| 
        MOVL      XAR4,#656             ; [CPU_ALU] |143| 
        MOVB      AH,#10                ; [CPU_ALU] |143| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("drv8305_xfer")
	.dwattr $C$DW$60, DW_AT_TI_call

        LCR       #||drv8305_xfer||     ; [CPU_ALU] |143| 
        ; call occurs [#||drv8305_xfer||] ; [] |143| 
	.dwpsn	file "../src/inverter_drv8305.c",line 148,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |148| 
        MOVB      XAR4,#128             ; [CPU_ALU] |148| 
        MOVB      AH,#12                ; [CPU_ALU] |148| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("drv8305_xfer")
	.dwattr $C$DW$61, DW_AT_TI_call

        LCR       #||drv8305_xfer||     ; [CPU_ALU] |148| 
        ; call occurs [#||drv8305_xfer||] ; [] |148| 
	.dwpsn	file "../src/inverter_drv8305.c",line 154,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |154| 
        MOVL      XAR4,#534             ; [CPU_ALU] |154| 
        MOVB      AH,#7                 ; [CPU_ALU] |154| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("drv8305_xfer")
	.dwattr $C$DW$62, DW_AT_TI_call

        LCR       #||drv8305_xfer||     ; [CPU_ALU] |154| 
        ; call occurs [#||drv8305_xfer||] ; [] |154| 
	.dwpsn	file "../src/inverter_drv8305.c",line 156,column 5,is_stmt,isa 0
        MOV       ACC,#19998            ; [CPU_ALU] |156| 
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("SysCtl_delay")
	.dwattr $C$DW$63, DW_AT_TI_call

        LCR       #||SysCtl_delay||     ; [CPU_ALU] |156| 
        ; call occurs [#||SysCtl_delay||] ; [] |156| 
	.dwpsn	file "../src/inverter_drv8305.c",line 160,column 5,is_stmt,isa 0
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("inverter_clear_faults")
	.dwattr $C$DW$64, DW_AT_TI_call

        LCR       #||inverter_clear_faults|| ; [CPU_ALU] |160| 
        ; call occurs [#||inverter_clear_faults||] ; [] |160| 
        MOVW      DP,#||g_dbg_spi_wr_shunt|| ; [CPU_ARAU] 
	.dwpsn	file "../src/inverter_drv8305.c",line 165,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |165| 
        MOVB      XAR4,#0               ; [CPU_ALU] |165| 
        MOVB      AH,#10                ; [CPU_ALU] |165| 
	.dwpsn	file "../src/inverter_drv8305.c",line 164,column 5,is_stmt,isa 0
        MOV       @||g_dbg_spi_wr_shunt||,#656 ; [CPU_ALU] |164| 
	.dwpsn	file "../src/inverter_drv8305.c",line 165,column 5,is_stmt,isa 0
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("drv8305_xfer")
	.dwattr $C$DW$65, DW_AT_TI_call

        LCR       #||drv8305_xfer||     ; [CPU_ALU] |165| 
        ; call occurs [#||drv8305_xfer||] ; [] |165| 
        MOVW      DP,#||g_dbg_spi_rd_shunt|| ; [CPU_ARAU] 
        MOV       @||g_dbg_spi_rd_shunt||,AL ; [CPU_ALU] |165| 
	.dwpsn	file "../src/inverter_drv8305.c",line 176,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |176| 
        MOVB      AH,#5                 ; [CPU_ALU] |176| 
	.dwpsn	file "../src/inverter_drv8305.c",line 169,column 5,is_stmt,isa 0
        MOV       @||g_dbg_spi_sts||,*(0:0x6102) ; [CPU_ALU] |169| 
	.dwpsn	file "../src/inverter_drv8305.c",line 170,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x610a)        ; [CPU_ALU] |170| 
        AND       AL,#0x1f00            ; [CPU_ALU] |170| 
        MOV       @||g_dbg_spi_fftx_level||,AL ; [CPU_ALU] |170| 
	.dwpsn	file "../src/inverter_drv8305.c",line 171,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x610b)        ; [CPU_ALU] |171| 
        AND       AL,#0x1f00            ; [CPU_ALU] |171| 
        MOV       @||g_dbg_spi_ffrx_level||,AL ; [CPU_ALU] |171| 
	.dwpsn	file "../src/inverter_drv8305.c",line 176,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |176| 
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("drv8305_xfer")
	.dwattr $C$DW$66, DW_AT_TI_call

        LCR       #||drv8305_xfer||     ; [CPU_ALU] |176| 
        ; call occurs [#||drv8305_xfer||] ; [] |176| 
        MOVW      DP,#||g_dbg_spi_hs_default|| ; [CPU_ARAU] 
	.dwpsn	file "../src/inverter_drv8305.c",line 180,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |180| 
        MOVB      AH,#1                 ; [CPU_ALU] |180| 
	.dwpsn	file "../src/inverter_drv8305.c",line 176,column 5,is_stmt,isa 0
        MOV       @||g_dbg_spi_hs_default||,AL ; [CPU_ALU] |176| 
	.dwpsn	file "../src/inverter_drv8305.c",line 180,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |180| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("drv8305_xfer")
	.dwattr $C$DW$67, DW_AT_TI_call

        LCR       #||drv8305_xfer||     ; [CPU_ALU] |180| 
        ; call occurs [#||drv8305_xfer||] ; [] |180| 
        MOVW      DP,#||g_dbg_spi_warn|| ; [CPU_ARAU] 
	.dwpsn	file "../src/inverter_drv8305.c",line 181,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |181| 
        MOVB      AH,#2                 ; [CPU_ALU] |181| 
	.dwpsn	file "../src/inverter_drv8305.c",line 180,column 5,is_stmt,isa 0
        MOV       @||g_dbg_spi_warn||,AL ; [CPU_ALU] |180| 
	.dwpsn	file "../src/inverter_drv8305.c",line 181,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |181| 
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("drv8305_xfer")
	.dwattr $C$DW$68, DW_AT_TI_call

        LCR       #||drv8305_xfer||     ; [CPU_ALU] |181| 
        ; call occurs [#||drv8305_xfer||] ; [] |181| 
        MOVW      DP,#||g_dbg_spi_ovvds|| ; [CPU_ARAU] 
	.dwpsn	file "../src/inverter_drv8305.c",line 182,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |182| 
        MOVB      AH,#3                 ; [CPU_ALU] |182| 
	.dwpsn	file "../src/inverter_drv8305.c",line 181,column 5,is_stmt,isa 0
        MOV       @||g_dbg_spi_ovvds||,AL ; [CPU_ALU] |181| 
	.dwpsn	file "../src/inverter_drv8305.c",line 182,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |182| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("drv8305_xfer")
	.dwattr $C$DW$69, DW_AT_TI_call

        LCR       #||drv8305_xfer||     ; [CPU_ALU] |182| 
        ; call occurs [#||drv8305_xfer||] ; [] |182| 
        MOVW      DP,#||g_dbg_spi_icflt|| ; [CPU_ARAU] 
	.dwpsn	file "../src/inverter_drv8305.c",line 183,column 5,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_ALU] |183| 
        MOVB      AH,#4                 ; [CPU_ALU] |183| 
	.dwpsn	file "../src/inverter_drv8305.c",line 182,column 5,is_stmt,isa 0
        MOV       @||g_dbg_spi_icflt||,AL ; [CPU_ALU] |182| 
	.dwpsn	file "../src/inverter_drv8305.c",line 183,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |183| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("drv8305_xfer")
	.dwattr $C$DW$70, DW_AT_TI_call

        LCR       #||drv8305_xfer||     ; [CPU_ALU] |183| 
        ; call occurs [#||drv8305_xfer||] ; [] |183| 
        MOVW      DP,#||g_dbg_spi_vgsflt|| ; [CPU_ARAU] 
        MOV       @||g_dbg_spi_vgsflt||,AL ; [CPU_ALU] |183| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -2
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$54, DW_AT_TI_end_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$54, DW_AT_TI_end_line(0xb8)
	.dwattr $C$DW$54, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$54

	.sect	".text:inverter_fault_status"
	.clink
	.global	||inverter_fault_status||

$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("inverter_fault_status")
	.dwattr $C$DW$72, DW_AT_low_pc(||inverter_fault_status||)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_linkage_name("inverter_fault_status")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$72, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$72, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$72, DW_AT_decl_column(0x0a)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/inverter_drv8305.c",line 195,column 1,is_stmt,address ||inverter_fault_status||,isa 0

	.dwfde $C$DW$CIE, ||inverter_fault_status||

;***************************************************************
;* FNAME: inverter_fault_status         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||inverter_fault_status||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src/inverter_drv8305.c",line 196,column 5,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_ALU] |196| 
        MOVB      XAR4,#0               ; [CPU_ALU] |196| 
        MOVB      AH,#1                 ; [CPU_ALU] |196| 
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("drv8305_xfer")
	.dwattr $C$DW$73, DW_AT_TI_call

        LCR       #||drv8305_xfer||     ; [CPU_ALU] |196| 
        ; call occurs [#||drv8305_xfer||] ; [] |196| 
        MOVW      DP,#||s_last_fault_status|| ; [CPU_ARAU] 
        MOV       @||s_last_fault_status||,AL ; [CPU_ALU] |196| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$72, DW_AT_TI_end_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0xc6)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text:inverter_enable_gate"
	.clink
	.global	||inverter_enable_gate||

$C$DW$75	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$75, DW_AT_name("inverter_enable_gate")
	.dwattr $C$DW$75, DW_AT_low_pc(||inverter_enable_gate||)
	.dwattr $C$DW$75, DW_AT_high_pc(0x00)
	.dwattr $C$DW$75, DW_AT_linkage_name("inverter_enable_gate")
	.dwattr $C$DW$75, DW_AT_external
	.dwattr $C$DW$75, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$75, DW_AT_decl_line(0xba)
	.dwattr $C$DW$75, DW_AT_decl_column(0x06)
	.dwattr $C$DW$75, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/inverter_drv8305.c",line 186,column 33,is_stmt,address ||inverter_enable_gate||,isa 0

	.dwfde $C$DW$CIE, ||inverter_enable_gate||

;***************************************************************
;* FNAME: inverter_enable_gate          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||inverter_enable_gate||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOV       ACC,#8192 << 15       ; [CPU_ALU] |473| 
        MOV32     *(0:0x7f1a),ACC       ; [CPU_FPU] |473| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$75, DW_AT_TI_end_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$75, DW_AT_TI_end_line(0xba)
	.dwattr $C$DW$75, DW_AT_TI_end_column(0x4b)
	.dwendentry
	.dwendtag $C$DW$75

	.sect	".text:inverter_disable_gate"
	.clink
	.global	||inverter_disable_gate||

$C$DW$77	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$77, DW_AT_name("inverter_disable_gate")
	.dwattr $C$DW$77, DW_AT_low_pc(||inverter_disable_gate||)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_linkage_name("inverter_disable_gate")
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_decl_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$77, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$77, DW_AT_decl_column(0x06)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/inverter_drv8305.c",line 187,column 33,is_stmt,address ||inverter_disable_gate||,isa 0

	.dwfde $C$DW$CIE, ||inverter_disable_gate||

;***************************************************************
;* FNAME: inverter_disable_gate         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||inverter_disable_gate||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOV       ACC,#8192 << 15       ; [CPU_ALU] |469| 
        MOV32     *(0:0x7f1c),ACC       ; [CPU_FPU] |469| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$77, DW_AT_TI_end_file("../src/inverter_drv8305.c")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0xbb)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x4b)
	.dwendentry
	.dwendtag $C$DW$77

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||SysCtl_delay||
	.global	||GPIO_setPadConfig||
	.global	||GPIO_setDirectionMode||
	.global	||pwm_force_safe||

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
$C$DW$79	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$79, DW_AT_name("GPIO_DIR_MODE_IN")
	.dwattr $C$DW$79, DW_AT_const_value(0x00)
	.dwattr $C$DW$79, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$79, DW_AT_decl_column(0x05)

$C$DW$80	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$80, DW_AT_name("GPIO_DIR_MODE_OUT")
	.dwattr $C$DW$80, DW_AT_const_value(0x01)
	.dwattr $C$DW$80, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$80, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("GPIO_Direction")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$81	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$81, DW_AT_name("SPI_FIFO_TXEMPTY")
	.dwattr $C$DW$81, DW_AT_const_value(0x00)
	.dwattr $C$DW$81, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0x141)
	.dwattr $C$DW$81, DW_AT_decl_column(0x05)

$C$DW$82	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$82, DW_AT_name("SPI_FIFO_TX0")
	.dwattr $C$DW$82, DW_AT_const_value(0x00)
	.dwattr $C$DW$82, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x142)
	.dwattr $C$DW$82, DW_AT_decl_column(0x05)

$C$DW$83	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$83, DW_AT_name("SPI_FIFO_TX1")
	.dwattr $C$DW$83, DW_AT_const_value(0x01)
	.dwattr $C$DW$83, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0x143)
	.dwattr $C$DW$83, DW_AT_decl_column(0x05)

$C$DW$84	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$84, DW_AT_name("SPI_FIFO_TX2")
	.dwattr $C$DW$84, DW_AT_const_value(0x02)
	.dwattr $C$DW$84, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0x144)
	.dwattr $C$DW$84, DW_AT_decl_column(0x05)

$C$DW$85	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$85, DW_AT_name("SPI_FIFO_TX3")
	.dwattr $C$DW$85, DW_AT_const_value(0x03)
	.dwattr $C$DW$85, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0x145)
	.dwattr $C$DW$85, DW_AT_decl_column(0x05)

$C$DW$86	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$86, DW_AT_name("SPI_FIFO_TX4")
	.dwattr $C$DW$86, DW_AT_const_value(0x04)
	.dwattr $C$DW$86, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0x146)
	.dwattr $C$DW$86, DW_AT_decl_column(0x05)

$C$DW$87	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$87, DW_AT_name("SPI_FIFO_TX5")
	.dwattr $C$DW$87, DW_AT_const_value(0x05)
	.dwattr $C$DW$87, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0x147)
	.dwattr $C$DW$87, DW_AT_decl_column(0x05)

$C$DW$88	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$88, DW_AT_name("SPI_FIFO_TX6")
	.dwattr $C$DW$88, DW_AT_const_value(0x06)
	.dwattr $C$DW$88, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0x148)
	.dwattr $C$DW$88, DW_AT_decl_column(0x05)

$C$DW$89	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$89, DW_AT_name("SPI_FIFO_TX7")
	.dwattr $C$DW$89, DW_AT_const_value(0x07)
	.dwattr $C$DW$89, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0x149)
	.dwattr $C$DW$89, DW_AT_decl_column(0x05)

$C$DW$90	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$90, DW_AT_name("SPI_FIFO_TX8")
	.dwattr $C$DW$90, DW_AT_const_value(0x08)
	.dwattr $C$DW$90, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$90, DW_AT_decl_column(0x05)

$C$DW$91	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$91, DW_AT_name("SPI_FIFO_TX9")
	.dwattr $C$DW$91, DW_AT_const_value(0x09)
	.dwattr $C$DW$91, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0x14b)
	.dwattr $C$DW$91, DW_AT_decl_column(0x05)

$C$DW$92	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$92, DW_AT_name("SPI_FIFO_TX10")
	.dwattr $C$DW$92, DW_AT_const_value(0x0a)
	.dwattr $C$DW$92, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0x14c)
	.dwattr $C$DW$92, DW_AT_decl_column(0x05)

$C$DW$93	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$93, DW_AT_name("SPI_FIFO_TX11")
	.dwattr $C$DW$93, DW_AT_const_value(0x0b)
	.dwattr $C$DW$93, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0x14d)
	.dwattr $C$DW$93, DW_AT_decl_column(0x05)

$C$DW$94	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$94, DW_AT_name("SPI_FIFO_TX12")
	.dwattr $C$DW$94, DW_AT_const_value(0x0c)
	.dwattr $C$DW$94, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0x14e)
	.dwattr $C$DW$94, DW_AT_decl_column(0x05)

$C$DW$95	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$95, DW_AT_name("SPI_FIFO_TX13")
	.dwattr $C$DW$95, DW_AT_const_value(0x0d)
	.dwattr $C$DW$95, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x14f)
	.dwattr $C$DW$95, DW_AT_decl_column(0x05)

$C$DW$96	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$96, DW_AT_name("SPI_FIFO_TX14")
	.dwattr $C$DW$96, DW_AT_const_value(0x0e)
	.dwattr $C$DW$96, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x150)
	.dwattr $C$DW$96, DW_AT_decl_column(0x05)

$C$DW$97	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$97, DW_AT_name("SPI_FIFO_TX15")
	.dwattr $C$DW$97, DW_AT_const_value(0x0f)
	.dwattr $C$DW$97, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x151)
	.dwattr $C$DW$97, DW_AT_decl_column(0x05)

$C$DW$98	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$98, DW_AT_name("SPI_FIFO_TX16")
	.dwattr $C$DW$98, DW_AT_const_value(0x10)
	.dwattr $C$DW$98, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x152)
	.dwattr $C$DW$98, DW_AT_decl_column(0x05)

$C$DW$99	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$99, DW_AT_name("SPI_FIFO_TXFULL")
	.dwattr $C$DW$99, DW_AT_const_value(0x10)
	.dwattr $C$DW$99, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x153)
	.dwattr $C$DW$99, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$21, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x140)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("SPI_TxFIFOLevel")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x154)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$22


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$100	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$100, DW_AT_name("SPI_FIFO_RXEMPTY")
	.dwattr $C$DW$100, DW_AT_const_value(0x00)
	.dwattr $C$DW$100, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0x15f)
	.dwattr $C$DW$100, DW_AT_decl_column(0x05)

$C$DW$101	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$101, DW_AT_name("SPI_FIFO_RX0")
	.dwattr $C$DW$101, DW_AT_const_value(0x00)
	.dwattr $C$DW$101, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x160)
	.dwattr $C$DW$101, DW_AT_decl_column(0x05)

$C$DW$102	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$102, DW_AT_name("SPI_FIFO_RX1")
	.dwattr $C$DW$102, DW_AT_const_value(0x01)
	.dwattr $C$DW$102, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0x161)
	.dwattr $C$DW$102, DW_AT_decl_column(0x05)

$C$DW$103	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$103, DW_AT_name("SPI_FIFO_RX2")
	.dwattr $C$DW$103, DW_AT_const_value(0x02)
	.dwattr $C$DW$103, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x162)
	.dwattr $C$DW$103, DW_AT_decl_column(0x05)

$C$DW$104	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$104, DW_AT_name("SPI_FIFO_RX3")
	.dwattr $C$DW$104, DW_AT_const_value(0x03)
	.dwattr $C$DW$104, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0x163)
	.dwattr $C$DW$104, DW_AT_decl_column(0x05)

$C$DW$105	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$105, DW_AT_name("SPI_FIFO_RX4")
	.dwattr $C$DW$105, DW_AT_const_value(0x04)
	.dwattr $C$DW$105, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0x164)
	.dwattr $C$DW$105, DW_AT_decl_column(0x05)

$C$DW$106	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$106, DW_AT_name("SPI_FIFO_RX5")
	.dwattr $C$DW$106, DW_AT_const_value(0x05)
	.dwattr $C$DW$106, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0x165)
	.dwattr $C$DW$106, DW_AT_decl_column(0x05)

$C$DW$107	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$107, DW_AT_name("SPI_FIFO_RX6")
	.dwattr $C$DW$107, DW_AT_const_value(0x06)
	.dwattr $C$DW$107, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0x166)
	.dwattr $C$DW$107, DW_AT_decl_column(0x05)

$C$DW$108	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$108, DW_AT_name("SPI_FIFO_RX7")
	.dwattr $C$DW$108, DW_AT_const_value(0x07)
	.dwattr $C$DW$108, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0x167)
	.dwattr $C$DW$108, DW_AT_decl_column(0x05)

$C$DW$109	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$109, DW_AT_name("SPI_FIFO_RX8")
	.dwattr $C$DW$109, DW_AT_const_value(0x08)
	.dwattr $C$DW$109, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0x168)
	.dwattr $C$DW$109, DW_AT_decl_column(0x05)

$C$DW$110	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$110, DW_AT_name("SPI_FIFO_RX9")
	.dwattr $C$DW$110, DW_AT_const_value(0x09)
	.dwattr $C$DW$110, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0x169)
	.dwattr $C$DW$110, DW_AT_decl_column(0x05)

$C$DW$111	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$111, DW_AT_name("SPI_FIFO_RX10")
	.dwattr $C$DW$111, DW_AT_const_value(0x0a)
	.dwattr $C$DW$111, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$111, DW_AT_decl_column(0x05)

$C$DW$112	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$112, DW_AT_name("SPI_FIFO_RX11")
	.dwattr $C$DW$112, DW_AT_const_value(0x0b)
	.dwattr $C$DW$112, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0x16b)
	.dwattr $C$DW$112, DW_AT_decl_column(0x05)

$C$DW$113	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$113, DW_AT_name("SPI_FIFO_RX12")
	.dwattr $C$DW$113, DW_AT_const_value(0x0c)
	.dwattr $C$DW$113, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0x16c)
	.dwattr $C$DW$113, DW_AT_decl_column(0x05)

$C$DW$114	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$114, DW_AT_name("SPI_FIFO_RX13")
	.dwattr $C$DW$114, DW_AT_const_value(0x0d)
	.dwattr $C$DW$114, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0x16d)
	.dwattr $C$DW$114, DW_AT_decl_column(0x05)

$C$DW$115	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$115, DW_AT_name("SPI_FIFO_RX14")
	.dwattr $C$DW$115, DW_AT_const_value(0x0e)
	.dwattr $C$DW$115, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0x16e)
	.dwattr $C$DW$115, DW_AT_decl_column(0x05)

$C$DW$116	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$116, DW_AT_name("SPI_FIFO_RX15")
	.dwattr $C$DW$116, DW_AT_const_value(0x0f)
	.dwattr $C$DW$116, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$116, DW_AT_decl_column(0x05)

$C$DW$117	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$117, DW_AT_name("SPI_FIFO_RX16")
	.dwattr $C$DW$117, DW_AT_const_value(0x10)
	.dwattr $C$DW$117, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0x170)
	.dwattr $C$DW$117, DW_AT_decl_column(0x05)

$C$DW$118	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$118, DW_AT_name("SPI_FIFO_RXFULL")
	.dwattr $C$DW$118, DW_AT_const_value(0x10)
	.dwattr $C$DW$118, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0x171)
	.dwattr $C$DW$118, DW_AT_decl_column(0x05)

$C$DW$119	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$119, DW_AT_name("SPI_FIFO_RXDEFAULT")
	.dwattr $C$DW$119, DW_AT_const_value(0x1f)
	.dwattr $C$DW$119, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0x172)
	.dwattr $C$DW$119, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$26, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x15e)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("SPI_RxFIFOLevel")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/spi.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x173)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x03)

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


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43
$C$DW$120	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$36)

$C$DW$T$43	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$120)

	.dwendtag $C$DW$TU$43


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$121	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$36)

$C$DW$T$44	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$121)

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


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$23, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$24


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


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55
$C$DW$T$55	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$55, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$55, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$55

