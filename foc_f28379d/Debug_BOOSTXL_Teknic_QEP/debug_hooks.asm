;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Sun May 31 21:09:06 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src/debug_hooks.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen Unix v25.11.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP")
	.global	||g_datalog_idx||
	.bss	||g_datalog_idx||,1,1,0
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("g_datalog_idx")
	.dwattr $C$DW$1, DW_AT_linkage_name("g_datalog_idx")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr ||g_datalog_idx||]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../src/debug_hooks.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$1, DW_AT_decl_column(0x13)

	.global	||g_datalog||
||g_datalog||:	.usect	".ebss",3584,0,1
$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("g_datalog")
	.dwattr $C$DW$2, DW_AT_linkage_name("g_datalog")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr ||g_datalog||]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("../src/debug_hooks.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$2, DW_AT_decl_column(0x10)

	.sblock	".bss"
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TIagtutZPNj /tmp/TIagtpo2Jc6 --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TIagtUoMcuX 
	.sect	".text:debug_isr_scope_low"
	.clink
	.global	||debug_isr_scope_low||

$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("debug_isr_scope_low")
	.dwattr $C$DW$3, DW_AT_low_pc(||debug_isr_scope_low||)
	.dwattr $C$DW$3, DW_AT_high_pc(0x00)
	.dwattr $C$DW$3, DW_AT_linkage_name("debug_isr_scope_low")
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("../src/debug_hooks.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$3, DW_AT_decl_column(0x06)
	.dwattr $C$DW$3, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/debug_hooks.c",line 46,column 33,is_stmt,address ||debug_isr_scope_low||,isa 0

	.dwfde $C$DW$CIE, ||debug_isr_scope_low||

;***************************************************************
;* FNAME: debug_isr_scope_low           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||debug_isr_scope_low||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |469| 
        MOV32     *(0:0x7f14),ACC       ; [CPU_FPU] |469| 
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$3, DW_AT_TI_end_file("../src/debug_hooks.c")
	.dwattr $C$DW$3, DW_AT_TI_end_line(0x2e)
	.dwattr $C$DW$3, DW_AT_TI_end_column(0x49)
	.dwendentry
	.dwendtag $C$DW$3

	.sect	".text:debug_isr_scope_high"
	.clink
	.global	||debug_isr_scope_high||

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("debug_isr_scope_high")
	.dwattr $C$DW$5, DW_AT_low_pc(||debug_isr_scope_high||)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_linkage_name("debug_isr_scope_high")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("../src/debug_hooks.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$5, DW_AT_decl_column(0x06)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/debug_hooks.c",line 45,column 33,is_stmt,address ||debug_isr_scope_high||,isa 0

	.dwfde $C$DW$CIE, ||debug_isr_scope_high||

;***************************************************************
;* FNAME: debug_isr_scope_high          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||debug_isr_scope_high||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 473,column 9,is_stmt,isa 0
        MOVB      ACC,#8                ; [CPU_ALU] |473| 
        MOV32     *(0:0x7f12),ACC       ; [CPU_FPU] |473| 
$C$DW$6	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$6, DW_AT_low_pc(0x00)
	.dwattr $C$DW$6, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$5, DW_AT_TI_end_file("../src/debug_hooks.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x2d)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x49)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text:debug_init"
	.clink
	.global	||debug_init||

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("debug_init")
	.dwattr $C$DW$7, DW_AT_low_pc(||debug_init||)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_linkage_name("debug_init")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("../src/debug_hooks.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$7, DW_AT_decl_column(0x06)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/debug_hooks.c",line 16,column 1,is_stmt,address ||debug_init||,isa 0

	.dwfde $C$DW$CIE, ||debug_init||

;***************************************************************
;* FNAME: debug_init                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||debug_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||g_datalog_idx|| ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_ALU] |469| 
        MOV       AH,#32768             ; [CPU_ALU] |469| 
	.dwpsn	file "../src/debug_hooks.c",line 17,column 5,is_stmt,isa 0
        MOV       @||g_datalog_idx||,#0 ; [CPU_ALU] |17| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/gpio.h",line 469,column 9,is_stmt,isa 0
        MOV32     *(0:0x7f04),ACC       ; [CPU_FPU] |469| 
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../src/debug_hooks.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x14)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text:debug_datalog_push"
	.clink
	.global	||debug_datalog_push||

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("debug_datalog_push")
	.dwattr $C$DW$9, DW_AT_low_pc(||debug_datalog_push||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_linkage_name("debug_datalog_push")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("../src/debug_hooks.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x16)
	.dwattr $C$DW$9, DW_AT_decl_column(0x06)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../src/debug_hooks.c",line 23,column 1,is_stmt,address ||debug_datalog_push||,isa 0

	.dwfde $C$DW$CIE, ||debug_datalog_push||
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("s")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg12]

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("state")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: debug_datalog_push            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

||debug_datalog_push||:
;* AR5   assigned to $O$C1
;* AR4   assigned to s
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("s")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg12]

;* T     assigned to i
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("i")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg22]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AL                ; [CPU_ALU] |23| 
        MOVW      DP,#||g_datalog_idx|| ; [CPU_ARAU] 
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../src/debug_hooks.c",line 26,column 5,is_stmt,isa 0
        MOVB      XAR0,#10              ; [CPU_ALU] |26| 
	.dwpsn	file "../src/debug_hooks.c",line 25,column 5,is_stmt,isa 0
        MOVB      AL,#14                ; [CPU_ALU] |25| 
	.dwpsn	file "../src/debug_hooks.c",line 24,column 16,is_stmt,isa 0
        MOV       T,@||g_datalog_idx||  ; [CPU_ALU] |24| 
	.dwpsn	file "../src/debug_hooks.c",line 25,column 5,is_stmt,isa 0
        MOVL      XAR5,#||g_datalog||   ; [CPU_ARAU] |25| 
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MPYU      ACC,T,AL              ; [CPU_ALU] |25| 
	.dwpsn	file "../src/debug_hooks.c",line 26,column 5,is_stmt,isa 0
        MOVL      P,*+XAR4[AR0]         ; [CPU_ALU] |26| 
	.dwpsn	file "../src/debug_hooks.c",line 29,column 5,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |29| 
        MOVL      XAR7,*+XAR4[AR0]      ; [CPU_ALU] |29| 
	.dwpsn	file "../src/debug_hooks.c",line 25,column 5,is_stmt,isa 0
        ADDL      XAR5,ACC              ; [CPU_ALU] |25| 
	.dwpsn	file "../src/debug_hooks.c",line 31,column 5,is_stmt,isa 0
        MOV32     R0H,XAR6              ; [CPU_FPU] |31| 
	.dwpsn	file "../src/debug_hooks.c",line 25,column 5,is_stmt,isa 0
        MOVB      XAR0,#28              ; [CPU_ALU] |25| 
        MOVL      XAR2,*+XAR4[AR0]      ; [CPU_ALU] |25| 
	.dwpsn	file "../src/debug_hooks.c",line 27,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |27| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_ALU] |27| 
	.dwpsn	file "../src/debug_hooks.c",line 28,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |28| 
	.dwpsn	file "../src/debug_hooks.c",line 25,column 5,is_stmt,isa 0
        MOVL      *+XAR5[0],XAR2        ; [CPU_ALU] |25| 
	.dwpsn	file "../src/debug_hooks.c",line 28,column 5,is_stmt,isa 0
        MOVL      XAR0,*+XAR4[AR0]      ; [CPU_ALU] |28| 
	.dwpsn	file "../src/debug_hooks.c",line 26,column 5,is_stmt,isa 0
        MOVL      *+XAR5[2],P           ; [CPU_ALU] |26| 
	.dwpsn	file "../src/debug_hooks.c",line 27,column 5,is_stmt,isa 0
        MOVL      *+XAR5[4],ACC         ; [CPU_ALU] |27| 
	.dwpsn	file "../src/debug_hooks.c",line 32,column 5,is_stmt,isa 0
        MOVB      AH,#1                 ; [CPU_ALU] |32| 
        ADD       AH,T                  ; [CPU_ALU] |32| 
        ANDB      AH,#0xff              ; [CPU_ALU] |32| 
	.dwpsn	file "../src/debug_hooks.c",line 28,column 5,is_stmt,isa 0
        MOVL      *+XAR5[6],XAR0        ; [CPU_ALU] |28| 
	.dwpsn	file "../src/debug_hooks.c",line 29,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_FPU] |29| 
        MOVL      *+XAR5[AR0],XAR7      ; [CPU_FPU] |29| 
	.dwpsn	file "../src/debug_hooks.c",line 30,column 5,is_stmt,isa 0
        MOVB      XAR0,#30              ; [CPU_FPU] |30| 
        MOVL      XAR7,*+XAR4[AR0]      ; [CPU_FPU] |30| 
	.dwpsn	file "../src/debug_hooks.c",line 31,column 5,is_stmt,isa 0
        UI32TOF32 R0H,R0H               ; [CPU_FPU] |31| 
	.dwpsn	file "../src/debug_hooks.c",line 30,column 5,is_stmt,isa 0
        MOVB      XAR1,#10              ; [CPU_ALU] |30| 
	.dwpsn	file "../src/debug_hooks.c",line 31,column 5,is_stmt,isa 0
        MOVB      XAR0,#12              ; [CPU_ALU] |31| 
	.dwpsn	file "../src/debug_hooks.c",line 30,column 5,is_stmt,isa 0
        MOVL      *+XAR5[AR1],XAR7      ; [CPU_FPU] |30| 
	.dwpsn	file "../src/debug_hooks.c",line 31,column 5,is_stmt,isa 0
        MOV32     *+XAR5[AR0],R0H       ; [CPU_FPU] |31| 
	.dwpsn	file "../src/debug_hooks.c",line 32,column 5,is_stmt,isa 0
        MOV       @||g_datalog_idx||,AH ; [CPU_ALU] |32| 
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../src/debug_hooks.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x21)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:debug_dac_set"
	.clink
	.global	||debug_dac_set||

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("debug_dac_set")
	.dwattr $C$DW$15, DW_AT_low_pc(||debug_dac_set||)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_linkage_name("debug_dac_set")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("../src/debug_hooks.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x23)
	.dwattr $C$DW$15, DW_AT_decl_column(0x06)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/debug_hooks.c",line 36,column 1,is_stmt,address ||debug_dac_set||,isa 0

	.dwfde $C$DW$CIE, ||debug_dac_set||
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("sig_a")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_regx 0x2b]

$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("sig_b")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_regx 0x2f]

$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("scale01")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_regx 0x33]


;***************************************************************
;* FNAME: debug_dac_set                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||debug_dac_set||:
;* AR6   assigned to $O$K8
;* R0    assigned to sig_a
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("sig_a")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to sig_b
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("sig_b")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to scale01
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("scale01")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_regx 0x33]

;* AR6   assigned to a
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("a")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg16]

;* AR4   assigned to b
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("b")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../src/debug_hooks.c",line 37,column 15,is_stmt,isa 0
        MOVIZ     R3H,#17791            ; [CPU_FPU] |37| 
        MPYF32    R0H,R2H,R0H           ; [CPU_FPU] |37| 
	.dwpsn	file "../src/debug_hooks.c",line 38,column 15,is_stmt,isa 0
        MPYF32    R1H,R2H,R1H           ; [CPU_FPU] |38| 
	.dwpsn	file "../src/debug_hooks.c",line 37,column 15,is_stmt,isa 0
        MOVXI     R3H,#61440            ; [CPU_FPU] |37| 
        ADDF32    R0H,R0H,#16128        ; [CPU_FPU] |37| 
	.dwpsn	file "../src/debug_hooks.c",line 38,column 15,is_stmt,isa 0
        ADDF32    R1H,R1H,#16128        ; [CPU_FPU] |38| 
	.dwpsn	file "../src/debug_hooks.c",line 37,column 15,is_stmt,isa 0
        MPYF32    R2H,R3H,R0H           ; [CPU_FPU] |37| 
	.dwpsn	file "../src/debug_hooks.c",line 38,column 15,is_stmt,isa 0
        MOVIZ     R0H,#17791            ; [CPU_FPU] |38| 
        MOVXI     R0H,#61440            ; [CPU_FPU] |38| 
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |38| 
	.dwpsn	file "../src/debug_hooks.c",line 37,column 15,is_stmt,isa 0
        F32TOI32  R1H,R2H               ; [CPU_FPU] |37| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     XAR6,R1H              ; [CPU_FPU] |37| 
	.dwpsn	file "../src/debug_hooks.c",line 38,column 15,is_stmt,isa 0
        F32TOI32  R0H,R0H               ; [CPU_FPU] |38| 
	.dwpsn	file "../src/debug_hooks.c",line 39,column 15,is_stmt,isa 0
        MOVB      XAR7,#0               ; [CPU_ALU] |39| 
        MOVL      ACC,XAR6              ; [CPU_ALU] |39| 
        MAXL      ACC,XAR7              ; [CPU_ALU] |39| 
        MOVL      XAR6,ACC              ; [CPU_ALU] |39| 
	.dwpsn	file "../src/debug_hooks.c",line 38,column 15,is_stmt,isa 0
        MOV32     XAR4,R0H              ; [CPU_FPU] |38| 
	.dwpsn	file "../src/debug_hooks.c",line 39,column 22,is_stmt,isa 0
        MOV       ACC,#4096             ; [CPU_ALU] |39| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |39| 
        B         ||$C$L1||,GT          ; [CPU_ALU] |39| 
        ; branchcc occurs ; [] |39| 
	.dwpsn	file "../src/debug_hooks.c",line 39,column 35,is_stmt,isa 0
        MOVL      XAR5,#4095            ; [CPU_ARAU] |39| 
        MOVL      XAR6,XAR5             ; [CPU_ALU] |39| 
||$C$L1||:    
	.dwpsn	file "../src/debug_hooks.c",line 40,column 15,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |40| 
        MAXL      ACC,XAR7              ; [CPU_ALU] |40| 
        MOVL      XAR4,ACC              ; [CPU_ALU] |40| 
        MOV       ACC,#4096             ; [CPU_ALU] |40| 
        CMPL      ACC,XAR4              ; [CPU_ALU] |40| 
        B         ||$C$L2||,GT          ; [CPU_ALU] |40| 
        ; branchcc occurs ; [] |40| 
	.dwpsn	file "../src/debug_hooks.c",line 40,column 35,is_stmt,isa 0
        MOVL      XAR4,#4095            ; [CPU_ARAU] |40| 
||$C$L2||:    
        MOV       AH,AR6                ; [CPU_ALU] 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/dac.h",line 330,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x5c03)        ; [CPU_ALU] |330| 
        AND       AH,#0x0fff            ; [CPU_ALU] |330| 
        AND       AL,#0xf000            ; [CPU_ALU] |330| 
        OR        AH,AL                 ; [CPU_ALU] |330| 
        MOV       AL,AR4                ; [CPU_FPU] |330| 
        MOV       *(0:0x5c03),AH        ; [CPU_ALU] |330| 
        AND       AL,#0x0fff            ; [CPU_ALU] |330| 
        MOV       AH,*(0:0x5c13)        ; [CPU_FPU] |330| 
        AND       AH,#0xf000            ; [CPU_ALU] |330| 
        OR        AL,AH                 ; [CPU_ALU] |330| 
        MOV       *(0:0x5c13),AL        ; [CPU_ALU] |330| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("../src/debug_hooks.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x2b)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15


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

$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x20)
$C$DW$25	.dwtag  DW_TAG_member
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$25, DW_AT_name("Iabc")
	.dwattr $C$DW$25, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$25, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$25, DW_AT_decl_column(0x11)

$C$DW$26	.dwtag  DW_TAG_member
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$26, DW_AT_name("Iab")
	.dwattr $C$DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$26, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$26, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$26, DW_AT_decl_column(0x11)

$C$DW$27	.dwtag  DW_TAG_member
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$27, DW_AT_name("Idq")
	.dwattr $C$DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$27, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$27, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$27, DW_AT_decl_column(0x11)

$C$DW$28	.dwtag  DW_TAG_member
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$28, DW_AT_name("Vdq")
	.dwattr $C$DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$28, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$28, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$28, DW_AT_decl_column(0x11)

$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$29, DW_AT_name("Vab")
	.dwattr $C$DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$29, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$29, DW_AT_decl_column(0x11)

$C$DW$30	.dwtag  DW_TAG_member
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$30, DW_AT_name("duty")
	.dwattr $C$DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$30, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x20)
	.dwattr $C$DW$30, DW_AT_decl_column(0x11)

$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$31, DW_AT_name("theta_elec")
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$31, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x21)
	.dwattr $C$DW$31, DW_AT_decl_column(0x11)

$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$32, DW_AT_name("omega_elec")
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$32, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0x22)
	.dwattr $C$DW$32, DW_AT_decl_column(0x11)

	.dwattr $C$DW$T$28, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$T$36	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$36, DW_AT_name("FOC_Signals_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$36, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x23)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37
$C$DW$33	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$36)

$C$DW$T$37	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$33)

	.dwendtag $C$DW$TU$37


$C$DW$TU$38	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$38
$C$DW$T$38	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$38, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$38


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$34	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$38)

$C$DW$T$39	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$34)

	.dwendtag $C$DW$TU$39


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("_MATH_Vec2_")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x04)
$C$DW$35	.dwtag  DW_TAG_member
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$35, DW_AT_name("value")
	.dwattr $C$DW$35, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$35, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$35, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$30, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$30

	.dwendtag $C$DW$TU$30


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21
$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("MATH_Vec2")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$21, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0xda)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$21


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22
$C$DW$T$22	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$22, DW_AT_name("FOC_Iab_t")
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x0d)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("FOC_Idq_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$23, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$23


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("FOC_Vab_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$25, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$25


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("FOC_Vdq_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$24, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x10)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$24


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("_MATH_Vec3_")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x06)
$C$DW$36	.dwtag  DW_TAG_member
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$36, DW_AT_name("value")
	.dwattr $C$DW$36, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$36, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$36, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$36, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$32, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$32

	.dwendtag $C$DW$TU$32


$C$DW$TU$19	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$19
$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("MATH_Vec3")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$19, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$19


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("FOC_Duty_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$26, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x11)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$26


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("FOC_Iabc_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x0c)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$20


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


$C$DW$TU$43	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$43
$C$DW$T$43	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$43, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$43, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$43


$C$DW$TU$44	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$44
$C$DW$T$44	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$44, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$44, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$44


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$37	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$44)

$C$DW$T$50	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$37)

	.dwendtag $C$DW$TU$50


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


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55
$C$DW$T$55	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$55, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$55, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$55


$C$DW$TU$56	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$56
$C$DW$T$56	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$56, DW_AT_name("int32_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$56, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$56


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$T$41	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$41, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$41, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42
$C$DW$T$42	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$42, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$42, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$42


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


$C$DW$TU$60	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$60
$C$DW$38	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$16)

$C$DW$T$60	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$38)

	.dwendtag $C$DW$TU$60


$C$DW$TU$61	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$61

$C$DW$T$61	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x0e)
$C$DW$39	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$39, DW_AT_upper_bound(0x06)

	.dwendtag $C$DW$T$61

	.dwendtag $C$DW$TU$61


$C$DW$TU$62	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$62

$C$DW$T$62	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$62, DW_AT_byte_size(0xe00)
$C$DW$40	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$40, DW_AT_upper_bound(0xff)

$C$DW$41	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$41, DW_AT_upper_bound(0x06)

	.dwendtag $C$DW$T$62

	.dwendtag $C$DW$TU$62


$C$DW$TU$65	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$65
$C$DW$42	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$16)

$C$DW$T$65	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$65, DW_AT_type(*$C$DW$42)

	.dwendtag $C$DW$TU$65


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("float32_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$27, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/inc/hw_types.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x17)

	.dwendtag $C$DW$TU$27


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29

$C$DW$T$29	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x04)
$C$DW$43	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$43, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$29

	.dwendtag $C$DW$TU$29


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31

$C$DW$T$31	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x06)
$C$DW$44	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$44, DW_AT_upper_bound(0x02)

	.dwendtag $C$DW$T$31

	.dwendtag $C$DW$TU$31


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

