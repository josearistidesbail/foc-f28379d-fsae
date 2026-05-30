;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Sat May 30 20:22:51 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../imported/hal/hal_qep.c")
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
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$20)

$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$1


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("GPIO_SetupPinOptions")
	.dwattr $C$DW$5, DW_AT_linkage_name("GPIO_SetupPinOptions")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/common/include/F2837xD_GlobalPrototypes.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x103)
	.dwattr $C$DW$5, DW_AT_decl_column(0x0d)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$20)

$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$20)

$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$5

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("EQep1Regs")
	.dwattr $C$DW$9, DW_AT_linkage_name("EQep1Regs")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$9, DW_AT_decl_column(0x22)

;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TI6X9K1n0lf /tmp/TI6X9FtyL7w --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TI6X9vVOt4o 
	.sect	".text:hal_qep_zero_count"
	.clink
	.global	||hal_qep_zero_count||

$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("hal_qep_zero_count")
	.dwattr $C$DW$10, DW_AT_low_pc(||hal_qep_zero_count||)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_linkage_name("hal_qep_zero_count")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("../imported/hal/hal_qep.c")
	.dwattr $C$DW$10, DW_AT_decl_line(0x28)
	.dwattr $C$DW$10, DW_AT_decl_column(0x06)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/hal_qep.c",line 40,column 31,is_stmt,address ||hal_qep_zero_count||,isa 0

	.dwfde $C$DW$CIE, ||hal_qep_zero_count||

;***************************************************************
;* FNAME: hal_qep_zero_count            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||hal_qep_zero_count||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../imported/hal/hal_qep.c",line 40,column 33,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_ALU] |40| 
        MOVW      DP,#||EQep1Regs||     ; [CPU_ARAU] 
        MOVL      @$BLOCKED(||EQep1Regs||),ACC ; [CPU_ALU] |40| 
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("../imported/hal/hal_qep.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x28)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x38)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text:hal_qep_read_count"
	.clink
	.global	||hal_qep_read_count||

$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("hal_qep_read_count")
	.dwattr $C$DW$12, DW_AT_low_pc(||hal_qep_read_count||)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_linkage_name("hal_qep_read_count")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$12, DW_AT_decl_file("../imported/hal/hal_qep.c")
	.dwattr $C$DW$12, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$12, DW_AT_decl_column(0x09)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/hal_qep.c",line 29,column 34,is_stmt,address ||hal_qep_read_count||,isa 0

	.dwfde $C$DW$CIE, ||hal_qep_read_count||

;***************************************************************
;* FNAME: hal_qep_read_count            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||hal_qep_read_count||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||EQep1Regs||     ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/hal_qep.c",line 29,column 36,is_stmt,isa 0
        MOVL      ACC,@$BLOCKED(||EQep1Regs||) ; [CPU_ALU] |29| 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$12, DW_AT_TI_end_file("../imported/hal/hal_qep.c")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0x1d)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x47)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text:hal_qep_init"
	.clink
	.global	||hal_qep_init||

$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("hal_qep_init")
	.dwattr $C$DW$14, DW_AT_low_pc(||hal_qep_init||)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_linkage_name("hal_qep_init")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("../imported/hal/hal_qep.c")
	.dwattr $C$DW$14, DW_AT_decl_line(0x05)
	.dwattr $C$DW$14, DW_AT_decl_column(0x06)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/hal_qep.c",line 6,column 1,is_stmt,address ||hal_qep_init||,isa 0

	.dwfde $C$DW$CIE, ||hal_qep_init||

;***************************************************************
;* FNAME: hal_qep_init                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||hal_qep_init||:
;* AR4   assigned to $O$C1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
 EALLOW
	.dwpsn	file "../imported/hal/hal_qep.c",line 8,column 5,is_stmt,isa 0
        MOVB      AL,#20                ; [CPU_ALU] |8| 
        MOVB      XAR4,#1               ; [CPU_ALU] |8| 
        MOVB      AH,#0                 ; [CPU_ALU] |8| 
        SPM       #0                    ; [CPU_ALU] 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_name("GPIO_SetupPinMux")
	.dwattr $C$DW$15, DW_AT_TI_call

        LCR       #||GPIO_SetupPinMux|| ; [CPU_ALU] |8| 
        ; call occurs [#||GPIO_SetupPinMux||] ; [] |8| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 9,column 5,is_stmt,isa 0
        MOVB      AL,#21                ; [CPU_ALU] |9| 
        MOVB      XAR4,#1               ; [CPU_ALU] |9| 
        MOVB      AH,#0                 ; [CPU_ALU] |9| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("GPIO_SetupPinMux")
	.dwattr $C$DW$16, DW_AT_TI_call

        LCR       #||GPIO_SetupPinMux|| ; [CPU_ALU] |9| 
        ; call occurs [#||GPIO_SetupPinMux||] ; [] |9| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 10,column 5,is_stmt,isa 0
        MOVB      AL,#99                ; [CPU_ALU] |10| 
        MOVB      XAR4,#5               ; [CPU_ALU] |10| 
        MOVB      AH,#0                 ; [CPU_ALU] |10| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("GPIO_SetupPinMux")
	.dwattr $C$DW$17, DW_AT_TI_call

        LCR       #||GPIO_SetupPinMux|| ; [CPU_ALU] |10| 
        ; call occurs [#||GPIO_SetupPinMux||] ; [] |10| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 11,column 5,is_stmt,isa 0
        MOVB      AL,#20                ; [CPU_ALU] |11| 
        MOVB      XAR4,#48              ; [CPU_ALU] |11| 
        MOVB      AH,#0                 ; [CPU_ALU] |11| 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("GPIO_SetupPinOptions")
	.dwattr $C$DW$18, DW_AT_TI_call

        LCR       #||GPIO_SetupPinOptions|| ; [CPU_ALU] |11| 
        ; call occurs [#||GPIO_SetupPinOptions||] ; [] |11| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 12,column 5,is_stmt,isa 0
        MOVB      AL,#21                ; [CPU_ALU] |12| 
        MOVB      XAR4,#48              ; [CPU_ALU] |12| 
        MOVB      AH,#0                 ; [CPU_ALU] |12| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("GPIO_SetupPinOptions")
	.dwattr $C$DW$19, DW_AT_TI_call

        LCR       #||GPIO_SetupPinOptions|| ; [CPU_ALU] |12| 
        ; call occurs [#||GPIO_SetupPinOptions||] ; [] |12| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 13,column 5,is_stmt,isa 0
        MOVB      AL,#99                ; [CPU_ALU] |13| 
        MOVB      XAR4,#48              ; [CPU_ALU] |13| 
        MOVB      AH,#0                 ; [CPU_ALU] |13| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("GPIO_SetupPinOptions")
	.dwattr $C$DW$20, DW_AT_TI_call

        LCR       #||GPIO_SetupPinOptions|| ; [CPU_ALU] |13| 
        ; call occurs [#||GPIO_SetupPinOptions||] ; [] |13| 
        MOVW      DP,#||EQep1Regs||+20  ; [CPU_ARAU] 
	.dwpsn	file "../imported/hal/hal_qep.c",line 16,column 5,is_stmt,isa 0
        MOVB      XAR0,#21              ; [CPU_ALU] |16| 
        MOVL      XAR4,#||EQep1Regs||   ; [CPU_ARAU] |16| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 15,column 5,is_stmt,isa 0
        MOV       @$BLOCKED(||EQep1Regs||)+20,#0 ; [CPU_ALU] |15| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 21,column 5,is_stmt,isa 0
        MOVL      XAR5,#3999            ; [CPU_ARAU] |21| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 22,column 5,is_stmt,isa 0
        MOVB      XAR7,#0               ; [CPU_ALU] |22| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 23,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |23| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 16,column 5,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xdfff ; [CPU_ALU] |16| 
        OR        AL,#0x1000            ; [CPU_ALU] |16| 
        MOV       @$BLOCKED(||EQep1Regs||)+21,AL ; [CPU_ALU] |16| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 25,column 5,is_stmt,isa 0
        ADDB      XAR4,#24              ; [CPU_ALU] |25| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 17,column 5,is_stmt,isa 0
        OR        @$BLOCKED(||EQep1Regs||)+21,#0x0080 ; [CPU_ALU] |17| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 18,column 5,is_stmt,isa 0
        AND       AL,@$BLOCKED(||EQep1Regs||)+21,#0xffdf ; [CPU_ALU] |18| 
        ORB       AL,#0x10              ; [CPU_ALU] |18| 
        MOV       @$BLOCKED(||EQep1Regs||)+21,AL ; [CPU_ALU] |18| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 19,column 5,is_stmt,isa 0
        OR        @$BLOCKED(||EQep1Regs||)+21,#0x0008 ; [CPU_ALU] |19| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 21,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||EQep1Regs||)+4,XAR5 ; [CPU_FPU] |21| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 22,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||EQep1Regs||)+2,XAR7 ; [CPU_FPU] |22| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 23,column 5,is_stmt,isa 0
        MOVL      @$BLOCKED(||EQep1Regs||),XAR6 ; [CPU_FPU] |23| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 25,column 5,is_stmt,isa 0
        OR        *+XAR4[0],#0x0400     ; [CPU_ALU] |25| 
 EDIS
        SPM       #0                    ; [CPU_ALU] 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$14, DW_AT_TI_end_file("../imported/hal/hal_qep.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0x1b)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text:hal_qep_index_event"
	.clink
	.global	||hal_qep_index_event||

$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("hal_qep_index_event")
	.dwattr $C$DW$22, DW_AT_low_pc(||hal_qep_index_event||)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_linkage_name("hal_qep_index_event")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$22, DW_AT_decl_file("../imported/hal/hal_qep.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$22, DW_AT_decl_column(0x06)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/hal/hal_qep.c",line 32,column 1,is_stmt,address ||hal_qep_index_event||,isa 0

	.dwfde $C$DW$CIE, ||hal_qep_index_event||

;***************************************************************
;* FNAME: hal_qep_index_event           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||hal_qep_index_event||:
;* AR4   assigned to $O$C1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../imported/hal/hal_qep.c",line 33,column 5,is_stmt,isa 0
        MOVB      XAR0,#25              ; [CPU_ALU] |33| 
        MOVL      XAR4,#||EQep1Regs||   ; [CPU_ARAU] |33| 
        TBIT      *+XAR4[AR0],#10       ; [CPU_ALU] |33| 
        B         ||$C$L1||,NTC         ; [CPU_ALU] |33| 
        ; branchcc occurs ; [] |33| 
	.dwcfi	remember_state
	.dwpsn	file "../imported/hal/hal_qep.c",line 34,column 9,is_stmt,isa 0
        ADDB      XAR4,#26              ; [CPU_ALU] |34| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 35,column 9,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_FPU] |35| 
	.dwpsn	file "../imported/hal/hal_qep.c",line 34,column 9,is_stmt,isa 0
        OR        *+XAR4[0],#0x0400     ; [CPU_ALU] |34| 
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwcfi	restore_state
||$C$L1||:    
	.dwpsn	file "../imported/hal/hal_qep.c",line 37,column 5,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |37| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$22, DW_AT_TI_end_file("../imported/hal/hal_qep.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x26)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||GPIO_SetupPinMux||
	.global	||GPIO_SetupPinOptions||
	.global	||EQep1Regs||

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

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_name("EQEP_REGS")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x22)
$C$DW$25	.dwtag  DW_TAG_member
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$25, DW_AT_name("QPOSCNT")
	.dwattr $C$DW$25, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$25, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$25, DW_AT_decl_column(0x2e)

$C$DW$26	.dwtag  DW_TAG_member
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$26, DW_AT_name("QPOSINIT")
	.dwattr $C$DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$26, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$26, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$26, DW_AT_decl_column(0x2e)

$C$DW$27	.dwtag  DW_TAG_member
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_name("QPOSMAX")
	.dwattr $C$DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$27, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$27, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$27, DW_AT_decl_column(0x2e)

$C$DW$28	.dwtag  DW_TAG_member
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$28, DW_AT_name("QPOSCMP")
	.dwattr $C$DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$28, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$28, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0xde)
	.dwattr $C$DW$28, DW_AT_decl_column(0x2e)

$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$29, DW_AT_name("QPOSILAT")
	.dwattr $C$DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$29, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$29, DW_AT_decl_column(0x2e)

$C$DW$30	.dwtag  DW_TAG_member
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$30, DW_AT_name("QPOSSLAT")
	.dwattr $C$DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$30, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$30, DW_AT_decl_column(0x2e)

$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$31, DW_AT_name("QPOSLAT")
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$31, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$31, DW_AT_decl_column(0x2e)

$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$32, DW_AT_name("QUTMR")
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$32, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$32, DW_AT_decl_column(0x2e)

$C$DW$33	.dwtag  DW_TAG_member
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$33, DW_AT_name("QUPRD")
	.dwattr $C$DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$33, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$33, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$33, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$33, DW_AT_decl_column(0x2e)

$C$DW$34	.dwtag  DW_TAG_member
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$34, DW_AT_name("QWDTMR")
	.dwattr $C$DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$34, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$34, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$34, DW_AT_decl_column(0x2e)

$C$DW$35	.dwtag  DW_TAG_member
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$35, DW_AT_name("QWDPRD")
	.dwattr $C$DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$35, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$35, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$35, DW_AT_decl_column(0x2e)

$C$DW$36	.dwtag  DW_TAG_member
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$36, DW_AT_name("QDECCTL")
	.dwattr $C$DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$36, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$36, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$36, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$36, DW_AT_decl_column(0x2e)

$C$DW$37	.dwtag  DW_TAG_member
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$37, DW_AT_name("QEPCTL")
	.dwattr $C$DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$37, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$37, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$37, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$37, DW_AT_decl_column(0x2e)

$C$DW$38	.dwtag  DW_TAG_member
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$38, DW_AT_name("QCAPCTL")
	.dwattr $C$DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$38, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$38, DW_AT_decl_line(0xe8)
	.dwattr $C$DW$38, DW_AT_decl_column(0x2e)

$C$DW$39	.dwtag  DW_TAG_member
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$39, DW_AT_name("QPOSCTL")
	.dwattr $C$DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$39, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$39, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$39, DW_AT_decl_column(0x2e)

$C$DW$40	.dwtag  DW_TAG_member
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$40, DW_AT_name("QEINT")
	.dwattr $C$DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$40, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$40, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0xea)
	.dwattr $C$DW$40, DW_AT_decl_column(0x2e)

$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$41, DW_AT_name("QFLG")
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$41, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$41, DW_AT_decl_column(0x2e)

$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$42, DW_AT_name("QCLR")
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$42, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0xec)
	.dwattr $C$DW$42, DW_AT_decl_column(0x2e)

$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$43, DW_AT_name("QFRC")
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$43, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0xed)
	.dwattr $C$DW$43, DW_AT_decl_column(0x2e)

$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$44, DW_AT_name("QEPSTS")
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$44, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0xee)
	.dwattr $C$DW$44, DW_AT_decl_column(0x2e)

$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$45, DW_AT_name("QCTMR")
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$45, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0xef)
	.dwattr $C$DW$45, DW_AT_decl_column(0x2e)

$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$46, DW_AT_name("QCPRD")
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$46, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0xf0)
	.dwattr $C$DW$46, DW_AT_decl_column(0x2e)

$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$47, DW_AT_name("QCTMRLAT")
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x1f]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$47, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$47, DW_AT_decl_column(0x2e)

$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$48, DW_AT_name("QCPRDLAT")
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$48, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$48, DW_AT_decl_column(0x2e)

	.dwattr $C$DW$T$21, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0xda)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$49	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$21)

$C$DW$T$40	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$49)

	.dwendtag $C$DW$TU$40


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("QCAPCTL_BITS")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$50, DW_AT_name("UPPS")
	.dwattr $C$DW$50, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$50, DW_AT_bit_size(0x04)
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$50, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$50, DW_AT_decl_column(0x0c)

$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$51, DW_AT_name("CCPS")
	.dwattr $C$DW$51, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$51, DW_AT_bit_size(0x03)
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$51, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$51, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$51, DW_AT_decl_column(0x0c)

$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$52, DW_AT_name("rsvd1")
	.dwattr $C$DW$52, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$52, DW_AT_bit_size(0x08)
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$52, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$52, DW_AT_decl_column(0x0c)

$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$53, DW_AT_name("CEN")
	.dwattr $C$DW$53, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$53, DW_AT_bit_size(0x01)
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$53, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0x60)
	.dwattr $C$DW$53, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$22, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23

$C$DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$23, DW_AT_name("QCAPCTL_REG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$54, DW_AT_name("all")
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$54, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0x64)
	.dwattr $C$DW$54, DW_AT_decl_column(0x0d)

$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$55, DW_AT_name("bit")
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$55, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0x65)
	.dwattr $C$DW$55, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$23, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x63)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$23

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("QCLR_BITS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$56, DW_AT_name("INT")
	.dwattr $C$DW$56, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$56, DW_AT_bit_size(0x01)
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$56, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$56, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$56, DW_AT_decl_column(0x0c)

$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$57, DW_AT_name("PCE")
	.dwattr $C$DW$57, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$57, DW_AT_bit_size(0x01)
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$57, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$57, DW_AT_decl_column(0x0c)

$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$58, DW_AT_name("PHE")
	.dwattr $C$DW$58, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$58, DW_AT_bit_size(0x01)
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$58, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$58, DW_AT_decl_column(0x0c)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$59, DW_AT_name("QDC")
	.dwattr $C$DW$59, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$59, DW_AT_bit_size(0x01)
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$59, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$59, DW_AT_decl_column(0x0c)

$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$60, DW_AT_name("WTO")
	.dwattr $C$DW$60, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$60, DW_AT_bit_size(0x01)
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$60, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$60, DW_AT_decl_column(0x0c)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$61, DW_AT_name("PCU")
	.dwattr $C$DW$61, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$61, DW_AT_bit_size(0x01)
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$61, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$61, DW_AT_decl_column(0x0c)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$62, DW_AT_name("PCO")
	.dwattr $C$DW$62, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$62, DW_AT_bit_size(0x01)
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$62, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$62, DW_AT_decl_column(0x0c)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$63, DW_AT_name("PCR")
	.dwattr $C$DW$63, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$63, DW_AT_bit_size(0x01)
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$63, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$63, DW_AT_decl_column(0x0c)

$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$64, DW_AT_name("PCM")
	.dwattr $C$DW$64, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$64, DW_AT_bit_size(0x01)
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$64, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$64, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$64, DW_AT_decl_column(0x0c)

$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$65, DW_AT_name("SEL")
	.dwattr $C$DW$65, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$65, DW_AT_bit_size(0x01)
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$65, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$65, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$65, DW_AT_decl_column(0x0c)

$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$66, DW_AT_name("IEL")
	.dwattr $C$DW$66, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$66, DW_AT_bit_size(0x01)
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$66, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$66, DW_AT_decl_column(0x0c)

$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$67, DW_AT_name("UTO")
	.dwattr $C$DW$67, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$67, DW_AT_bit_size(0x01)
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$67, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0xab)
	.dwattr $C$DW$67, DW_AT_decl_column(0x0c)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$68, DW_AT_name("rsvd1")
	.dwattr $C$DW$68, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$68, DW_AT_bit_size(0x04)
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$68, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0xac)
	.dwattr $C$DW$68, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$24, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25

$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_name("QCLR_REG")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$69, DW_AT_name("all")
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$69, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$69, DW_AT_decl_column(0x0d)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$70, DW_AT_name("bit")
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$70, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$70, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$25, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$25

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("QDECCTL_BITS")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$71, DW_AT_name("rsvd1")
	.dwattr $C$DW$71, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$71, DW_AT_bit_size(0x05)
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$71, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0x37)
	.dwattr $C$DW$71, DW_AT_decl_column(0x0c)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$72, DW_AT_name("QSP")
	.dwattr $C$DW$72, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$72, DW_AT_bit_size(0x01)
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$72, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x38)
	.dwattr $C$DW$72, DW_AT_decl_column(0x0c)

$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$73, DW_AT_name("QIP")
	.dwattr $C$DW$73, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$73, DW_AT_bit_size(0x01)
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$73, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0x39)
	.dwattr $C$DW$73, DW_AT_decl_column(0x0c)

$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$74, DW_AT_name("QBP")
	.dwattr $C$DW$74, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$74, DW_AT_bit_size(0x01)
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$74, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$74, DW_AT_decl_column(0x0c)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$75, DW_AT_name("QAP")
	.dwattr $C$DW$75, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$75, DW_AT_bit_size(0x01)
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$75, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$75, DW_AT_decl_column(0x0c)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$76, DW_AT_name("IGATE")
	.dwattr $C$DW$76, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$76, DW_AT_bit_size(0x01)
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$76, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$76, DW_AT_decl_column(0x0c)

$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$77, DW_AT_name("SWAP")
	.dwattr $C$DW$77, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$77, DW_AT_bit_size(0x01)
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$77, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$77, DW_AT_decl_column(0x0c)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$78, DW_AT_name("XCR")
	.dwattr $C$DW$78, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$78, DW_AT_bit_size(0x01)
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$78, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$78, DW_AT_decl_column(0x0c)

$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$79, DW_AT_name("SPSEL")
	.dwattr $C$DW$79, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$79, DW_AT_bit_size(0x01)
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$79, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$79, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$79, DW_AT_decl_column(0x0c)

$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$80, DW_AT_name("SOEN")
	.dwattr $C$DW$80, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$80, DW_AT_bit_size(0x01)
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$80, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$80, DW_AT_decl_line(0x40)
	.dwattr $C$DW$80, DW_AT_decl_column(0x0c)

$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$81, DW_AT_name("QSRC")
	.dwattr $C$DW$81, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$81, DW_AT_bit_size(0x02)
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$81, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$81, DW_AT_decl_line(0x41)
	.dwattr $C$DW$81, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$26, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x36)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27

$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("QDECCTL_REG")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$82, DW_AT_name("all")
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$82, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$82, DW_AT_decl_line(0x45)
	.dwattr $C$DW$82, DW_AT_decl_column(0x0d)

$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$83, DW_AT_name("bit")
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$83, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$83, DW_AT_decl_line(0x46)
	.dwattr $C$DW$83, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$27, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$27

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("QEINT_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$84, DW_AT_name("rsvd1")
	.dwattr $C$DW$84, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$84, DW_AT_bit_size(0x01)
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$84, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$84, DW_AT_decl_line(0x76)
	.dwattr $C$DW$84, DW_AT_decl_column(0x0c)

$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$85, DW_AT_name("PCE")
	.dwattr $C$DW$85, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$85, DW_AT_bit_size(0x01)
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$85, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$85, DW_AT_decl_line(0x77)
	.dwattr $C$DW$85, DW_AT_decl_column(0x0c)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$86, DW_AT_name("QPE")
	.dwattr $C$DW$86, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$86, DW_AT_bit_size(0x01)
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$86, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$86, DW_AT_decl_line(0x78)
	.dwattr $C$DW$86, DW_AT_decl_column(0x0c)

$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$87, DW_AT_name("QDC")
	.dwattr $C$DW$87, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$87, DW_AT_bit_size(0x01)
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$87, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$87, DW_AT_decl_line(0x79)
	.dwattr $C$DW$87, DW_AT_decl_column(0x0c)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$88, DW_AT_name("WTO")
	.dwattr $C$DW$88, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$88, DW_AT_bit_size(0x01)
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$88, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$88, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$88, DW_AT_decl_column(0x0c)

$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$89, DW_AT_name("PCU")
	.dwattr $C$DW$89, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$89, DW_AT_bit_size(0x01)
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$89, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$89, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$89, DW_AT_decl_column(0x0c)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$90, DW_AT_name("PCO")
	.dwattr $C$DW$90, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$90, DW_AT_bit_size(0x01)
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$90, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$90, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$90, DW_AT_decl_column(0x0c)

$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$91, DW_AT_name("PCR")
	.dwattr $C$DW$91, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$91, DW_AT_bit_size(0x01)
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$91, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$91, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$91, DW_AT_decl_column(0x0c)

$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$92, DW_AT_name("PCM")
	.dwattr $C$DW$92, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$92, DW_AT_bit_size(0x01)
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$92, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$92, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$92, DW_AT_decl_column(0x0c)

$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$93, DW_AT_name("SEL")
	.dwattr $C$DW$93, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$93, DW_AT_bit_size(0x01)
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$93, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$93, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$93, DW_AT_decl_column(0x0c)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$94, DW_AT_name("IEL")
	.dwattr $C$DW$94, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$94, DW_AT_bit_size(0x01)
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$94, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$94, DW_AT_decl_line(0x80)
	.dwattr $C$DW$94, DW_AT_decl_column(0x0c)

$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$95, DW_AT_name("UTO")
	.dwattr $C$DW$95, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$95, DW_AT_bit_size(0x01)
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$95, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$95, DW_AT_decl_line(0x81)
	.dwattr $C$DW$95, DW_AT_decl_column(0x0c)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$96, DW_AT_name("rsvd2")
	.dwattr $C$DW$96, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$96, DW_AT_bit_size(0x04)
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$96, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$96, DW_AT_decl_line(0x82)
	.dwattr $C$DW$96, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$28, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("QEINT_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$97, DW_AT_name("all")
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$97, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$97, DW_AT_decl_line(0x86)
	.dwattr $C$DW$97, DW_AT_decl_column(0x0d)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$98, DW_AT_name("bit")
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$98, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$98, DW_AT_decl_line(0x87)
	.dwattr $C$DW$98, DW_AT_decl_column(0x19)

	.dwattr $C$DW$T$29, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("QEPCTL_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$99, DW_AT_name("WDE")
	.dwattr $C$DW$99, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$99, DW_AT_bit_size(0x01)
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$99, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$99, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$99, DW_AT_decl_column(0x0c)

$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$100, DW_AT_name("UTE")
	.dwattr $C$DW$100, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$100, DW_AT_bit_size(0x01)
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$100, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$100, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$100, DW_AT_decl_column(0x0c)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$101, DW_AT_name("QCLM")
	.dwattr $C$DW$101, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$101, DW_AT_bit_size(0x01)
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$101, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$101, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$101, DW_AT_decl_column(0x0c)

$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$102, DW_AT_name("QPEN")
	.dwattr $C$DW$102, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$102, DW_AT_bit_size(0x01)
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$102, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$102, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$102, DW_AT_decl_column(0x0c)

$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$103, DW_AT_name("IEL")
	.dwattr $C$DW$103, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$103, DW_AT_bit_size(0x02)
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$103, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$103, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$103, DW_AT_decl_column(0x0c)

$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$104, DW_AT_name("SEL")
	.dwattr $C$DW$104, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$104, DW_AT_bit_size(0x01)
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$104, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$104, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$104, DW_AT_decl_column(0x0c)

$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$105, DW_AT_name("SWI")
	.dwattr $C$DW$105, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$105, DW_AT_bit_size(0x01)
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$105, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$105, DW_AT_decl_line(0x50)
	.dwattr $C$DW$105, DW_AT_decl_column(0x0c)

$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$106, DW_AT_name("IEI")
	.dwattr $C$DW$106, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$106, DW_AT_bit_size(0x02)
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$106, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$106, DW_AT_decl_line(0x51)
	.dwattr $C$DW$106, DW_AT_decl_column(0x0c)

$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$107, DW_AT_name("SEI")
	.dwattr $C$DW$107, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$107, DW_AT_bit_size(0x02)
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$107, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$107, DW_AT_decl_line(0x52)
	.dwattr $C$DW$107, DW_AT_decl_column(0x0c)

$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$108, DW_AT_name("PCRM")
	.dwattr $C$DW$108, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$108, DW_AT_bit_size(0x02)
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$108, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$108, DW_AT_decl_line(0x53)
	.dwattr $C$DW$108, DW_AT_decl_column(0x0c)

$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$109, DW_AT_name("FREE_SOFT")
	.dwattr $C$DW$109, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$109, DW_AT_bit_size(0x02)
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$109, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$109, DW_AT_decl_line(0x54)
	.dwattr $C$DW$109, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$30, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("QEPCTL_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$110, DW_AT_name("all")
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$110, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$110, DW_AT_decl_line(0x58)
	.dwattr $C$DW$110, DW_AT_decl_column(0x0d)

$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$111, DW_AT_name("bit")
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$111, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$111, DW_AT_decl_line(0x59)
	.dwattr $C$DW$111, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$31, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("QEPSTS_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$112, DW_AT_name("PCEF")
	.dwattr $C$DW$112, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$112, DW_AT_bit_size(0x01)
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$112, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$112, DW_AT_decl_line(0xca)
	.dwattr $C$DW$112, DW_AT_decl_column(0x0c)

$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$113, DW_AT_name("FIMF")
	.dwattr $C$DW$113, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$113, DW_AT_bit_size(0x01)
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$113, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$113, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$113, DW_AT_decl_column(0x0c)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$114, DW_AT_name("CDEF")
	.dwattr $C$DW$114, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$114, DW_AT_bit_size(0x01)
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$114, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$114, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$114, DW_AT_decl_column(0x0c)

$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$115, DW_AT_name("COEF")
	.dwattr $C$DW$115, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$115, DW_AT_bit_size(0x01)
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$115, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$115, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$115, DW_AT_decl_column(0x0c)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$116, DW_AT_name("QDLF")
	.dwattr $C$DW$116, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$116, DW_AT_bit_size(0x01)
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$116, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$116, DW_AT_decl_line(0xce)
	.dwattr $C$DW$116, DW_AT_decl_column(0x0c)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$117, DW_AT_name("QDF")
	.dwattr $C$DW$117, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$117, DW_AT_bit_size(0x01)
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$117, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$117, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$117, DW_AT_decl_column(0x0c)

$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$118, DW_AT_name("FIDF")
	.dwattr $C$DW$118, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$118, DW_AT_bit_size(0x01)
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$118, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$118, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$118, DW_AT_decl_column(0x0c)

$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$119, DW_AT_name("UPEVNT")
	.dwattr $C$DW$119, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$119, DW_AT_bit_size(0x01)
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$119, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$119, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$119, DW_AT_decl_column(0x0c)

$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$120, DW_AT_name("rsvd1")
	.dwattr $C$DW$120, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$120, DW_AT_bit_size(0x08)
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$120, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$120, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$120, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$32, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0xc9)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33

$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("QEPSTS_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$121, DW_AT_name("all")
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$121, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$121, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$121, DW_AT_decl_column(0x0d)

$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$122, DW_AT_name("bit")
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$122, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$122, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$122, DW_AT_decl_column(0x1a)

	.dwattr $C$DW$T$33, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$33

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("QFLG_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$123, DW_AT_name("INT")
	.dwattr $C$DW$123, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$123, DW_AT_bit_size(0x01)
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$123, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$123, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$123, DW_AT_decl_column(0x0c)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$124, DW_AT_name("PCE")
	.dwattr $C$DW$124, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$124, DW_AT_bit_size(0x01)
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$124, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$124, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$124, DW_AT_decl_column(0x0c)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$125, DW_AT_name("PHE")
	.dwattr $C$DW$125, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$125, DW_AT_bit_size(0x01)
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$125, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$125, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$125, DW_AT_decl_column(0x0c)

$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$126, DW_AT_name("QDC")
	.dwattr $C$DW$126, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$126, DW_AT_bit_size(0x01)
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$126, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$126, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$126, DW_AT_decl_column(0x0c)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$127, DW_AT_name("WTO")
	.dwattr $C$DW$127, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$127, DW_AT_bit_size(0x01)
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$127, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$127, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$127, DW_AT_decl_column(0x0c)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$128, DW_AT_name("PCU")
	.dwattr $C$DW$128, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$128, DW_AT_bit_size(0x01)
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$128, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$128, DW_AT_decl_line(0x90)
	.dwattr $C$DW$128, DW_AT_decl_column(0x0c)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$129, DW_AT_name("PCO")
	.dwattr $C$DW$129, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$129, DW_AT_bit_size(0x01)
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$129, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$129, DW_AT_decl_line(0x91)
	.dwattr $C$DW$129, DW_AT_decl_column(0x0c)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$130, DW_AT_name("PCR")
	.dwattr $C$DW$130, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$130, DW_AT_bit_size(0x01)
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$130, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$130, DW_AT_decl_line(0x92)
	.dwattr $C$DW$130, DW_AT_decl_column(0x0c)

$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$131, DW_AT_name("PCM")
	.dwattr $C$DW$131, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$131, DW_AT_bit_size(0x01)
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$131, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$131, DW_AT_decl_line(0x93)
	.dwattr $C$DW$131, DW_AT_decl_column(0x0c)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$132, DW_AT_name("SEL")
	.dwattr $C$DW$132, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$132, DW_AT_bit_size(0x01)
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$132, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$132, DW_AT_decl_line(0x94)
	.dwattr $C$DW$132, DW_AT_decl_column(0x0c)

$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$133, DW_AT_name("IEL")
	.dwattr $C$DW$133, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$133, DW_AT_bit_size(0x01)
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$133, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$133, DW_AT_decl_line(0x95)
	.dwattr $C$DW$133, DW_AT_decl_column(0x0c)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$134, DW_AT_name("UTO")
	.dwattr $C$DW$134, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$134, DW_AT_bit_size(0x01)
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$134, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$134, DW_AT_decl_line(0x96)
	.dwattr $C$DW$134, DW_AT_decl_column(0x0c)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$135, DW_AT_name("rsvd1")
	.dwattr $C$DW$135, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$135, DW_AT_bit_size(0x04)
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$135, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$135, DW_AT_decl_line(0x97)
	.dwattr $C$DW$135, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$34, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$34

	.dwendtag $C$DW$TU$34


$C$DW$TU$35	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$35

$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("QFLG_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$136, DW_AT_name("all")
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$136, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$136, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$136, DW_AT_decl_column(0x0d)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$137, DW_AT_name("bit")
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$137, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$137, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$137, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$35, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$35

	.dwendtag $C$DW$TU$35


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("QFRC_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$138, DW_AT_name("rsvd1")
	.dwattr $C$DW$138, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$138, DW_AT_bit_size(0x01)
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$138, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$138, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$138, DW_AT_decl_column(0x0c)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$139, DW_AT_name("PCE")
	.dwattr $C$DW$139, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$139, DW_AT_bit_size(0x01)
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$139, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$139, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$139, DW_AT_decl_column(0x0c)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$140, DW_AT_name("PHE")
	.dwattr $C$DW$140, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$140, DW_AT_bit_size(0x01)
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$140, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$140, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$140, DW_AT_decl_column(0x0c)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$141, DW_AT_name("QDC")
	.dwattr $C$DW$141, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$141, DW_AT_bit_size(0x01)
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$141, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$141, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$141, DW_AT_decl_column(0x0c)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$142, DW_AT_name("WTO")
	.dwattr $C$DW$142, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$142, DW_AT_bit_size(0x01)
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$142, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$142, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$142, DW_AT_decl_column(0x0c)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$143, DW_AT_name("PCU")
	.dwattr $C$DW$143, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$143, DW_AT_bit_size(0x01)
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$143, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$143, DW_AT_decl_line(0xba)
	.dwattr $C$DW$143, DW_AT_decl_column(0x0c)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$144, DW_AT_name("PCO")
	.dwattr $C$DW$144, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$144, DW_AT_bit_size(0x01)
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$144, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$144, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$144, DW_AT_decl_column(0x0c)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$145, DW_AT_name("PCR")
	.dwattr $C$DW$145, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$145, DW_AT_bit_size(0x01)
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$145, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$145, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$145, DW_AT_decl_column(0x0c)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$146, DW_AT_name("PCM")
	.dwattr $C$DW$146, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$146, DW_AT_bit_size(0x01)
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$146, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$146, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$146, DW_AT_decl_column(0x0c)

$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$147, DW_AT_name("SEL")
	.dwattr $C$DW$147, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$147, DW_AT_bit_size(0x01)
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$147, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$147, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$147, DW_AT_decl_column(0x0c)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$148, DW_AT_name("IEL")
	.dwattr $C$DW$148, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$148, DW_AT_bit_size(0x01)
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$148, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$148, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$148, DW_AT_decl_column(0x0c)

$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$149, DW_AT_name("UTO")
	.dwattr $C$DW$149, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$149, DW_AT_bit_size(0x01)
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$149, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$149, DW_AT_decl_line(0xc0)
	.dwattr $C$DW$149, DW_AT_decl_column(0x0c)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$150, DW_AT_name("rsvd2")
	.dwattr $C$DW$150, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$150, DW_AT_bit_size(0x04)
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$150, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$150, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$150, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$36, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$36

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("QFRC_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$151, DW_AT_name("all")
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$151, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$151, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$151, DW_AT_decl_column(0x0d)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$152, DW_AT_name("bit")
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$152, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$152, DW_AT_decl_line(0xc6)
	.dwattr $C$DW$152, DW_AT_decl_column(0x18)

	.dwattr $C$DW$T$37, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("QPOSCTL_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$153, DW_AT_name("PCSPW")
	.dwattr $C$DW$153, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$153, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$153, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$153, DW_AT_decl_line(0x69)
	.dwattr $C$DW$153, DW_AT_decl_column(0x0c)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$154, DW_AT_name("PCE")
	.dwattr $C$DW$154, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$154, DW_AT_bit_size(0x01)
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$154, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$154, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$154, DW_AT_decl_column(0x0c)

$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$155, DW_AT_name("PCPOL")
	.dwattr $C$DW$155, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$155, DW_AT_bit_size(0x01)
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$155, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$155, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$155, DW_AT_decl_column(0x0c)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$156, DW_AT_name("PCLOAD")
	.dwattr $C$DW$156, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$156, DW_AT_bit_size(0x01)
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$156, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$156, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$156, DW_AT_decl_column(0x0c)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$157, DW_AT_name("PCSHDW")
	.dwattr $C$DW$157, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$157, DW_AT_bit_size(0x01)
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$157, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$157, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$157, DW_AT_decl_column(0x0c)

	.dwattr $C$DW$T$38, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$38

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39

$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("QPOSCTL_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$158, DW_AT_name("all")
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$158, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$158, DW_AT_decl_line(0x71)
	.dwattr $C$DW$158, DW_AT_decl_column(0x0d)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$159, DW_AT_name("bit")
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$159, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$159, DW_AT_decl_line(0x72)
	.dwattr $C$DW$159, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$39, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_eqep.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x07)
	.dwendtag $C$DW$T$39

	.dwendtag $C$DW$TU$39


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


$C$DW$TU$12	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$12
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$12


$C$DW$TU$58	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$58
$C$DW$T$58	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$58, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$58, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$58


$C$DW$TU$59	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$59
$C$DW$T$59	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$59, DW_AT_name("int32_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$59, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$59


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
	.dwattr $C$DW$T$19, DW_AT_name("Uint32")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$19, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include/F2837xD_device.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x125)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x31)

	.dwendtag $C$DW$TU$19


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


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62
$C$DW$T$62	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$62, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$62, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$62

