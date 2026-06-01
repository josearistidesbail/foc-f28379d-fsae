;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Sun May 31 21:09:06 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../src/pwm_iface.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen Unix v25.11.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP")
	.global	||g_pwm_period_count||
	.data
	.align	1
	.elfsym	||g_pwm_period_count||,SYM_SIZE(1),SYM_BLOCKED(1)
||g_pwm_period_count||:
	.bits		0x1388,16
			; g_pwm_period_count @ 0

$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("g_pwm_period_count")
	.dwattr $C$DW$1, DW_AT_linkage_name("g_pwm_period_count")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr ||g_pwm_period_count||]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../src/pwm_iface.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x13)
	.dwattr $C$DW$1, DW_AT_decl_column(0x0a)

	.sblock	".data"
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TIagZqOgmFo /tmp/TIagZSuy3DS --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TIagZa75RpX 
	.sect	".text:pwm_set_duty"
	.clink
	.global	||pwm_set_duty||

$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("pwm_set_duty")
	.dwattr $C$DW$2, DW_AT_low_pc(||pwm_set_duty||)
	.dwattr $C$DW$2, DW_AT_high_pc(0x00)
	.dwattr $C$DW$2, DW_AT_linkage_name("pwm_set_duty")
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("../src/pwm_iface.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x34)
	.dwattr $C$DW$2, DW_AT_decl_column(0x06)
	.dwattr $C$DW$2, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/pwm_iface.c",line 53,column 1,is_stmt,address ||pwm_set_duty||,isa 0

	.dwfde $C$DW$CIE, ||pwm_set_duty||
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("d")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: pwm_set_duty                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||pwm_set_duty||:
;* R1    assigned to $O$C1
;* R0    assigned to $O$C2
;* R2    assigned to $O$C3
;* R3    assigned to $O$C4
;* AR4   assigned to d
$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("d")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_reg12]

;* AR0   assigned to cu
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("cu")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg4]

;* PL    assigned to cv
$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("cv")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg2]

;* AR7   assigned to cw
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("cw")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg18]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||g_pwm_period_count|| ; [CPU_ARAU] 
	.dwpsn	file "../src/pwm_iface.c",line 56,column 16,is_stmt,isa 0
        MOV32     R3H,*+XAR4[0]         ; [CPU_FPU] |56| 
        UI16TOF32 R0H,@||g_pwm_period_count|| ; [CPU_FPU] |56| 

        ADDF32    R3H,R3H,R3H           ; [CPU_FPU] |56| 
||      MOV32     R2H,*+XAR4[2]         ; [CPU_FPU] |57| 

	.dwpsn	file "../src/pwm_iface.c",line 57,column 16,is_stmt,isa 0

        ADDF32    R2H,R2H,R2H           ; [CPU_FPU] |57| 
||      MOV32     R1H,*+XAR4[4]         ; [CPU_FPU] |58| 

	.dwpsn	file "../src/pwm_iface.c",line 58,column 16,is_stmt,isa 0
        ADDF32    R1H,R1H,R1H           ; [CPU_FPU] |58| 
	.dwpsn	file "../src/pwm_iface.c",line 56,column 16,is_stmt,isa 0
        MPYF32    R0H,R0H,#16128        ; [CPU_FPU] |56| 
        SUBF32    R3H,#16256,R3H        ; [CPU_FPU] |56| 
	.dwpsn	file "../src/pwm_iface.c",line 57,column 16,is_stmt,isa 0
        SUBF32    R2H,#16256,R2H        ; [CPU_FPU] |57| 
	.dwpsn	file "../src/pwm_iface.c",line 58,column 16,is_stmt,isa 0
        SUBF32    R1H,#16256,R1H        ; [CPU_FPU] |58| 
	.dwpsn	file "../src/pwm_iface.c",line 56,column 16,is_stmt,isa 0
        MPYF32    R3H,R0H,R3H           ; [CPU_FPU] |56| 
	.dwpsn	file "../src/pwm_iface.c",line 57,column 16,is_stmt,isa 0
        MPYF32    R2H,R0H,R2H           ; [CPU_FPU] |57| 
	.dwpsn	file "../src/pwm_iface.c",line 58,column 16,is_stmt,isa 0
        MPYF32    R0H,R0H,R1H           ; [CPU_FPU] |58| 
	.dwpsn	file "../src/pwm_iface.c",line 56,column 16,is_stmt,isa 0
        F32TOI32  R1H,R3H               ; [CPU_FPU] |56| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOV32     XAR0,R1H              ; [CPU_FPU] |56| 
	.dwpsn	file "../src/pwm_iface.c",line 58,column 16,is_stmt,isa 0
        F32TOI32  R0H,R0H               ; [CPU_FPU] |58| 
	.dwpsn	file "../src/pwm_iface.c",line 57,column 16,is_stmt,isa 0
        F32TOI32  R2H,R2H               ; [CPU_FPU] |57| 
	.dwpsn	file "../src/pwm_iface.c",line 60,column 16,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_ALU] |60| 
        MOVL      ACC,XAR0              ; [CPU_ALU] |60| 
        MAXL      ACC,XAR6              ; [CPU_ALU] |60| 
        MOVL      XAR0,ACC              ; [CPU_ALU] |60| 
	.dwpsn	file "../src/pwm_iface.c",line 58,column 16,is_stmt,isa 0
        MOV32     XAR7,R0H              ; [CPU_FPU] |58| 
	.dwpsn	file "../src/pwm_iface.c",line 57,column 16,is_stmt,isa 0
        MOV32     P,R2H                 ; [CPU_FPU] |57| 
	.dwpsn	file "../src/pwm_iface.c",line 60,column 24,is_stmt,isa 0
        MOVU      ACC,@||g_pwm_period_count|| ; [CPU_ALU] |60| 
        CMPL      ACC,XAR0              ; [CPU_ALU] |60| 
        B         ||$C$L1||,GEQ         ; [CPU_ALU] |60| 
        ; branchcc occurs ; [] |60| 
	.dwpsn	file "../src/pwm_iface.c",line 60,column 52,is_stmt,isa 0
        MOVZ      AR0,@||g_pwm_period_count|| ; [CPU_ALU] |60| 
||$C$L1||:    
	.dwpsn	file "../src/pwm_iface.c",line 61,column 16,is_stmt,isa 0
        MOVL      ACC,P                 ; [CPU_ALU] |61| 
        MAXL      ACC,XAR6              ; [CPU_ALU] |61| 
        MOVL      P,ACC                 ; [CPU_ALU] |61| 
	.dwpsn	file "../src/pwm_iface.c",line 61,column 24,is_stmt,isa 0
        MOVU      ACC,@||g_pwm_period_count|| ; [CPU_ALU] |61| 
        CMPL      ACC,P                 ; [CPU_ALU] |61| 
        B         ||$C$L2||,GEQ         ; [CPU_ALU] |61| 
        ; branchcc occurs ; [] |61| 
	.dwpsn	file "../src/pwm_iface.c",line 61,column 52,is_stmt,isa 0
        MOV       PL,@||g_pwm_period_count|| ; [CPU_ALU] |61| 
||$C$L2||:    
	.dwpsn	file "../src/pwm_iface.c",line 62,column 16,is_stmt,isa 0
        MOVL      ACC,XAR7              ; [CPU_ALU] |62| 
        MAXL      ACC,XAR6              ; [CPU_ALU] |62| 
        MOVL      XAR7,ACC              ; [CPU_ALU] |62| 
	.dwpsn	file "../src/pwm_iface.c",line 62,column 24,is_stmt,isa 0
        MOVU      ACC,@||g_pwm_period_count|| ; [CPU_ALU] |62| 
        CMPL      ACC,XAR7              ; [CPU_ALU] |62| 
        B         ||$C$L3||,GEQ         ; [CPU_ALU] |62| 
        ; branchcc occurs ; [] |62| 
	.dwpsn	file "../src/pwm_iface.c",line 62,column 52,is_stmt,isa 0
        MOVZ      AR7,@||g_pwm_period_count|| ; [CPU_ALU] |62| 
||$C$L3||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOVL      XAR6,#16491           ; [CPU_ARAU] |2446| 
        MOVL      XAR5,#16747           ; [CPU_ARAU] |2446| 
        MOVL      XAR4,#17003           ; [CPU_ARAU] |2446| 
        MOV       *+XAR6[0],AR0         ; [CPU_ALU] |2446| 
        MOV       *+XAR5[0],P           ; [CPU_ALU] |2446| 
        MOV       *+XAR4[0],AR7         ; [CPU_ALU] |2446| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3079,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4049)        ; [CPU_ALU] |3079| 
        AND       AL,#0xfffc            ; [CPU_ALU] |3079| 
        MOV       *(0:0x4049),AL        ; [CPU_ALU] |3079| 
        MOV       AL,*(0:0x4149)        ; [CPU_ALU] |3079| 
        AND       AL,#0xfffc            ; [CPU_ALU] |3079| 
        MOV       *(0:0x4149),AL        ; [CPU_ALU] |3079| 
        MOV       AL,*(0:0x4249)        ; [CPU_ALU] |3079| 
        AND       AL,#0xfffc            ; [CPU_ALU] |3079| 
        MOV       *(0:0x4249),AL        ; [CPU_ALU] |3079| 
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$2, DW_AT_TI_end_file("../src/pwm_iface.c")
	.dwattr $C$DW$2, DW_AT_TI_end_line(0x4d)
	.dwattr $C$DW$2, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$2

	.sect	".text:pwm_init"
	.clink
	.global	||pwm_init||

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("pwm_init")
	.dwattr $C$DW$9, DW_AT_low_pc(||pwm_init||)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_linkage_name("pwm_init")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("../src/pwm_iface.c")
	.dwattr $C$DW$9, DW_AT_decl_line(0x16)
	.dwattr $C$DW$9, DW_AT_decl_column(0x06)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/pwm_iface.c",line 23,column 1,is_stmt,address ||pwm_init||,isa 0

	.dwfde $C$DW$CIE, ||pwm_init||

;***************************************************************
;* FNAME: pwm_init                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||pwm_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../src/pwm_iface.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0x19)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text:pwm_force_safe"
	.clink
	.global	||pwm_force_safe||

$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("pwm_force_safe")
	.dwattr $C$DW$11, DW_AT_low_pc(||pwm_force_safe||)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_linkage_name("pwm_force_safe")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("../src/pwm_iface.c")
	.dwattr $C$DW$11, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$11, DW_AT_decl_column(0x06)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../src/pwm_iface.c",line 28,column 1,is_stmt,address ||pwm_force_safe||,isa 0

	.dwfde $C$DW$CIE, ||pwm_force_safe||

;***************************************************************
;* FNAME: pwm_force_safe                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||pwm_force_safe||:
;* AH    assigned to compCount
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("compCount")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg1]

;* AR6   assigned to compCount
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("compCount")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg16]

;* AR6   assigned to compCount
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("compCount")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3037,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4047)        ; [CPU_ALU] |3037| 
        MOVW      DP,#||g_pwm_period_count|| ; [CPU_ARAU] 
        ORB       AL,#0xc0              ; [CPU_ALU] |3037| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2424,column 1,is_stmt,isa 0
        MOV       AH,@||g_pwm_period_count|| ; [CPU_FPU] |2424| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3037,column 5,is_stmt,isa 0
        MOV       *(0:0x4047),AL        ; [CPU_ALU] |3037| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3079,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4049)        ; [CPU_ALU] |3079| 
        AND       AL,AL,#0xfffc         ; [CPU_ALU] |3079| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2424,column 1,is_stmt,isa 0
        MOVZ      AR6,AH                ; [CPU_ALU] |2424| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3079,column 9,is_stmt,isa 0
        ORB       AL,#0x01              ; [CPU_ALU] |3079| 
        MOV       *(0:0x4049),AL        ; [CPU_ALU] |3079| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3037,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4147)        ; [CPU_ALU] |3037| 
        ORB       AL,#0xc0              ; [CPU_ALU] |3037| 
        MOV       *(0:0x4147),AL        ; [CPU_ALU] |3037| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3079,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4149)        ; [CPU_ALU] |3079| 
        AND       AL,AL,#0xfffc         ; [CPU_ALU] |3079| 
        ORB       AL,#0x01              ; [CPU_ALU] |3079| 
        MOV       *(0:0x4149),AL        ; [CPU_ALU] |3079| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3037,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x4247)        ; [CPU_ALU] |3037| 
        ORB       AL,#0xc0              ; [CPU_ALU] |3037| 
        MOV       *(0:0x4247),AL        ; [CPU_ALU] |3037| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 3079,column 9,is_stmt,isa 0
        MOV       AL,*(0:0x4249)        ; [CPU_ALU] |3079| 
        AND       AL,AL,#0xfffc         ; [CPU_ALU] |3079| 
        ORB       AL,#0x01              ; [CPU_ALU] |3079| 
        MOV       *(0:0x4249),AL        ; [CPU_ALU] |3079| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h",line 2446,column 9,is_stmt,isa 0
        MOV       *(0:0x406b),AH        ; [CPU_ALU] |2446| 
        MOV       *(0:0x416b),AR6       ; [CPU_ALU] |2446| 
        MOV       *(0:0x426b),AR6       ; [CPU_ALU] |2446| 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("../src/pwm_iface.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x32)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11


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

$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$16	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$16, DW_AT_name("EPWM_COUNTER_COMPARE_A")
	.dwattr $C$DW$16, DW_AT_const_value(0x00)
	.dwattr $C$DW$16, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x111)
	.dwattr $C$DW$16, DW_AT_decl_column(0x05)

$C$DW$17	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$17, DW_AT_name("EPWM_COUNTER_COMPARE_B")
	.dwattr $C$DW$17, DW_AT_const_value(0x02)
	.dwattr $C$DW$17, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$17, DW_AT_decl_line(0x112)
	.dwattr $C$DW$17, DW_AT_decl_column(0x05)

$C$DW$18	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$18, DW_AT_name("EPWM_COUNTER_COMPARE_C")
	.dwattr $C$DW$18, DW_AT_const_value(0x05)
	.dwattr $C$DW$18, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$18, DW_AT_decl_line(0x113)
	.dwattr $C$DW$18, DW_AT_decl_column(0x05)

$C$DW$19	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$19, DW_AT_name("EPWM_COUNTER_COMPARE_D")
	.dwattr $C$DW$19, DW_AT_const_value(0x07)
	.dwattr $C$DW$19, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0x114)
	.dwattr $C$DW$19, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$22, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x110)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("EPWM_CounterCompareModule")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$23, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x115)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$23


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$20	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$20, DW_AT_name("EPWM_AQ_SW_SH_LOAD_ON_CNTR_ZERO")
	.dwattr $C$DW$20, DW_AT_const_value(0x00)
	.dwattr $C$DW$20, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0x220)
	.dwattr $C$DW$20, DW_AT_decl_column(0x05)

$C$DW$21	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$21, DW_AT_name("EPWM_AQ_SW_SH_LOAD_ON_CNTR_PERIOD")
	.dwattr $C$DW$21, DW_AT_const_value(0x01)
	.dwattr $C$DW$21, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0x222)
	.dwattr $C$DW$21, DW_AT_decl_column(0x05)

$C$DW$22	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$22, DW_AT_name("EPWM_AQ_SW_SH_LOAD_ON_CNTR_ZERO_PERIOD")
	.dwattr $C$DW$22, DW_AT_const_value(0x02)
	.dwattr $C$DW$22, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0x224)
	.dwattr $C$DW$22, DW_AT_decl_column(0x05)

$C$DW$23	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$23, DW_AT_name("EPWM_AQ_SW_IMMEDIATE_LOAD")
	.dwattr $C$DW$23, DW_AT_const_value(0x03)
	.dwattr $C$DW$23, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$23, DW_AT_decl_line(0x226)
	.dwattr $C$DW$23, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$24, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x21e)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("EPWM_ActionQualifierContForce")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x227)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$25


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26

$C$DW$T$26	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$24	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$24, DW_AT_name("EPWM_AQ_OUTPUT_A")
	.dwattr $C$DW$24, DW_AT_const_value(0x00)
	.dwattr $C$DW$24, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x213)
	.dwattr $C$DW$24, DW_AT_decl_column(0x05)

$C$DW$25	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$25, DW_AT_name("EPWM_AQ_OUTPUT_B")
	.dwattr $C$DW$25, DW_AT_const_value(0x02)
	.dwattr $C$DW$25, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0x214)
	.dwattr $C$DW$25, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$26, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x212)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$26

	.dwendtag $C$DW$TU$26


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("EPWM_ActionQualifierOutputModule")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x215)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$26	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$26, DW_AT_name("EPWM_AQ_SW_DISABLED")
	.dwattr $C$DW$26, DW_AT_const_value(0x00)
	.dwattr $C$DW$26, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0x1a0)
	.dwattr $C$DW$26, DW_AT_decl_column(0x05)

$C$DW$27	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$27, DW_AT_name("EPWM_AQ_SW_OUTPUT_LOW")
	.dwattr $C$DW$27, DW_AT_const_value(0x01)
	.dwattr $C$DW$27, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0x1a1)
	.dwattr $C$DW$27, DW_AT_decl_column(0x05)

$C$DW$28	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$28, DW_AT_name("EPWM_AQ_SW_OUTPUT_HIGH")
	.dwattr $C$DW$28, DW_AT_const_value(0x02)
	.dwattr $C$DW$28, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x1a2)
	.dwattr $C$DW$28, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$28, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x19f)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$29	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$29
$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("EPWM_ActionQualifierSWOutput")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$29, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/epwm.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x1a3)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$29


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_name("_MATH_Vec3_")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x06)
$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$29, DW_AT_name("value")
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$29, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$29, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$21, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$T$30	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$30, DW_AT_name("MATH_Vec3")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$30, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include/math.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$30


$C$DW$TU$31	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$31
$C$DW$T$31	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$31, DW_AT_name("FOC_Duty_t")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$31, DW_AT_decl_file("/home/jose/workspace_ccstheia/foc_f28379d/include/foc_types.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x11)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x13)

	.dwendtag $C$DW$TU$31


$C$DW$TU$32	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$32
$C$DW$30	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$31)

$C$DW$T$32	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$30)

	.dwendtag $C$DW$TU$32


$C$DW$TU$33	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$33
$C$DW$T$33	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$33


$C$DW$TU$34	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$34
$C$DW$31	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$33)

$C$DW$T$34	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$31)

	.dwendtag $C$DW$TU$34


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


$C$DW$TU$50	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$50
$C$DW$T$50	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$50, DW_AT_name("__int32_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$50, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x1d)

	.dwendtag $C$DW$TU$50


$C$DW$TU$51	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$51
$C$DW$T$51	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$51, DW_AT_name("int32_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x30)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x14)

	.dwendtag $C$DW$TU$51


$C$DW$TU$13	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$13
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

	.dwendtag $C$DW$TU$13


$C$DW$TU$39	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$39
$C$DW$T$39	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$39, DW_AT_name("__uint32_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$39, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$39


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$40, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$40


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
$C$DW$32	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$32, DW_AT_upper_bound(0x02)

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

