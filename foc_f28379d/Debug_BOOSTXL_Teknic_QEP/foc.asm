;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Sat May 30 20:22:51 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../imported/foc/foc.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen Unix v25.11.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("sinf")
	.dwattr $C$DW$1, DW_AT_linkage_name("sinf")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("../imported/foc/foc.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$1, DW_AT_decl_column(0x0f)
	.dwendtag $C$DW$1


$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("cosf")
	.dwattr $C$DW$2, DW_AT_linkage_name("cosf")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("../imported/foc/foc.c")
	.dwattr $C$DW$2, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$2, DW_AT_decl_column(0x0f)
	.dwendtag $C$DW$2


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("sqrtf")
	.dwattr $C$DW$3, DW_AT_linkage_name("sqrtf")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("../imported/foc/foc.c")
	.dwattr $C$DW$3, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$3, DW_AT_decl_column(0x13)
	.dwendtag $C$DW$3

;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TI6WQkhRyrt /tmp/TI6WQjBp6qp --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TI6WQpC8oEx 
	.sect	".text:foc_step"
	.clink
	.global	||foc_step||

$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("foc_step")
	.dwattr $C$DW$4, DW_AT_low_pc(||foc_step||)
	.dwattr $C$DW$4, DW_AT_high_pc(0x00)
	.dwattr $C$DW$4, DW_AT_linkage_name("foc_step")
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("../imported/foc/foc.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x27)
	.dwattr $C$DW$4, DW_AT_decl_column(0x06)
	.dwattr $C$DW$4, DW_AT_TI_max_frame_size(-32)
	.dwpsn	file "../imported/foc/foc.c",line 40,column 1,is_stmt,address ||foc_step||,isa 0

	.dwfde $C$DW$CIE, ||foc_step||
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_name("f")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_reg12]

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("i_abc_pu")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_regx 0x29]

$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_name("theta_e")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_regx 0x37]


;***************************************************************
;* FNAME: foc_step                      FR SIZE:  30           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 16 Auto, 12 SOE     *
;***************************************************************

||foc_step||:
;* R1    assigned to $O$C77
;* R4    assigned to $O$C78
;* R1    assigned to $O$C79
;* R5    assigned to $O$C80
;* R6    assigned to $O$C81
;* R0    assigned to $O$C82
;* R0    assigned to $O$C83
;* R0    assigned to $O$C84
;* R5    assigned to $O$C85
;* R1    assigned to $O$C86
;* R4    assigned to $O$C87
;* R2    assigned to $O$T75
;* R1    assigned to $O$T76
;* R0    assigned to $O$v9
;* R3    assigned to $O$v6
;* R0    assigned to $O$v5
;* R2    assigned to $O$v4
;* R1    assigned to $O$v3
;* R0    assigned to $O$CSU$v$a
;* R7    assigned to $O$CSU$v$b
;* R5    assigned to $O$CSU$v$c
;* AR2   assigned to f
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("f")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg8]

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("s")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_breg20 -16]

;* R4    assigned to c
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("c")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_regx 0x3b]

;* R3    assigned to id_ref
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("id_ref")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_regx 0x37]

;* AR4   assigned to c
$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("c")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg12]

;* R0    assigned to error
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("error")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to u_raw
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("u_raw")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_regx 0x2f]

;* R2    assigned to u
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("u")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_regx 0x33]

;* AR4   assigned to c
$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("c")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg12]

;* R0    assigned to error
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("error")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_regx 0x2b]

;* R7    assigned to u_raw
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("u_raw")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_regx 0x47]

;* R3    assigned to u
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("u")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_regx 0x37]

;* AR5   assigned to c
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("c")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg14]

;* R5    assigned to error
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("error")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_regx 0x3f]

;* R0    assigned to u_raw
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("u_raw")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_regx 0x2b]

;* R1    assigned to u
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("u")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_regx 0x2f]

;* R3    assigned to vmax
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("vmax")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_regx 0x37]

;* R2    assigned to vmin
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("vmin")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_regx 0x33]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOV32     *SP++,R4H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 59, 6
	.dwcfi	cfa_offset, -8
        MOV32     *SP++,R5H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 63, 8
	.dwcfi	cfa_offset, -10
        MOV32     *SP++,R6H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 67, 10
	.dwcfi	cfa_offset, -12
        MOV32     *SP++,R7H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 71, 12
	.dwcfi	cfa_offset, -14
        ADDB      SP,#18                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -32
        MOVL      XAR2,XAR4             ; [CPU_ALU] |40| 
        MOV32     R5H,R0H               ; [CPU_FPU] |40| 
	.dwpsn	file "../imported/foc/foc.c",line 44,column 13,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |44| 
	.dwpsn	file "../imported/foc/foc.c",line 41,column 5,is_stmt,isa 0
        MOVB      XAR0,#8               ; [CPU_ALU] |41| 
        MOVB      XAR1,#10              ; [CPU_ALU] |41| 
	.dwpsn	file "../imported/foc/foc.c",line 40,column 1,is_stmt,isa 0
        MOV32     R4H,R1H               ; [CPU_FPU] |40| 
	.dwpsn	file "../imported/foc/foc.c",line 44,column 13,is_stmt,isa 0
        SUBB      XAR4,#6               ; [CPU_ARAU] |44| 
	.dwpsn	file "../imported/foc/foc.c",line 41,column 5,is_stmt,isa 0
        MOV32     *+XAR2[6],R0H         ; [CPU_FPU] |41| 
	.dwpsn	file "../imported/foc/foc.c",line 44,column 13,is_stmt,isa 0
        MOVZ      AR6,AR4               ; [CPU_ALU] |44| 
	.dwpsn	file "../imported/foc/foc.c",line 40,column 1,is_stmt,isa 0
        MOV32     R0H,R3H               ; [CPU_FPU] |40| 
	.dwpsn	file "../imported/foc/foc.c",line 41,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |41| 
	.dwpsn	file "../imported/foc/foc.c",line 42,column 5,is_stmt,isa 0
        MOVB      XAR0,#34              ; [CPU_ALU] |42| 
	.dwpsn	file "../imported/foc/foc.c",line 41,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR1],R2H       ; [CPU_FPU] |41| 
	.dwpsn	file "../imported/foc/foc.c",line 42,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |42| 
	.dwpsn	file "../imported/foc/foc.c",line 44,column 13,is_stmt,isa 0
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("__c28xabi_ftod")
	.dwattr $C$DW$26, DW_AT_TI_call

        LCR       #||__c28xabi_ftod||   ; [CPU_ALU] |44| 
        ; call occurs [#||__c28xabi_ftod||] ; [] |44| 
        MOVZ      AR4,SP                ; [CPU_ALU] |44| 
        MOVL      XAR6,*-SP[6]          ; [CPU_ALU] |44| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |44| 
        SUBB      XAR4,#10              ; [CPU_ARAU] |44| 
        MOVL      *-SP[10],XAR6         ; [CPU_ALU] |44| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |44| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |44| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("sinf")
	.dwattr $C$DW$27, DW_AT_TI_call

        LCR       #||sinf||             ; [CPU_ALU] |44| 
        ; call occurs [#||sinf||] ; [] |44| 
        SETC      SXM                   ; [CPU_ALU] 
	.dwpsn	file "../imported/foc/foc.c",line 45,column 13,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_ALU] |45| 
        MOVL      XAR6,*-SP[6]          ; [CPU_ALU] |45| 
	.dwpsn	file "../imported/foc/foc.c",line 44,column 13,is_stmt,isa 0
        MOV       ACC,AL                ; [CPU_ALU] |44| 
        MOV32     R0H,ACC               ; [CPU_FPU] |44| 
	.dwpsn	file "../imported/foc/foc.c",line 45,column 13,is_stmt,isa 0
        SUBB      XAR4,#10              ; [CPU_ARAU] |45| 
        MOVL      *-SP[10],XAR6         ; [CPU_ALU] |45| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |45| 
        MOVL      ACC,*-SP[4]           ; [CPU_ALU] |45| 
	.dwpsn	file "../imported/foc/foc.c",line 44,column 13,is_stmt,isa 0
        I32TOF32  R6H,R0H               ; [CPU_FPU] |44| 
	.dwpsn	file "../imported/foc/foc.c",line 45,column 13,is_stmt,isa 0
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |45| 
	.dwpsn	file "../imported/foc/foc.c",line 44,column 13,is_stmt,isa 0
        MOV32     *-SP[16],R6H          ; [CPU_FPU] |44| 
	.dwpsn	file "../imported/foc/foc.c",line 45,column 13,is_stmt,isa 0
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("cosf")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #||cosf||             ; [CPU_ALU] |45| 
        ; call occurs [#||cosf||] ; [] |45| 
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,AL                ; [CPU_ALU] |45| 
        MOV32     R0H,ACC               ; [CPU_FPU] |45| 
	.dwpsn	file "../imported/foc/foc.c",line 47,column 5,is_stmt,isa 0
        MOVIZ     R1H,#16147            ; [CPU_FPU] |47| 
        ADDF32    R2H,R4H,R4H           ; [CPU_FPU] |47| 
        MOVXI     R1H,#52538            ; [CPU_FPU] |47| 
        ADDF32    R2H,R2H,R5H           ; [CPU_FPU] |47| 
	.dwpsn	file "../imported/foc/foc.c",line 45,column 13,is_stmt,isa 0
        I32TOF32  R4H,R0H               ; [CPU_FPU] |45| 
	.dwpsn	file "../imported/foc/foc.c",line 47,column 5,is_stmt,isa 0
        MPYF32    R1H,R1H,R2H           ; [CPU_FPU] |47| 
	.dwpsn	file "../imported/foc/foc.c",line 48,column 5,is_stmt,isa 0
        MPYF32    R2H,R4H,R5H           ; [CPU_FPU] |48| 
        MPYF32    R0H,R6H,R1H           ; [CPU_FPU] |48| 
        NOP       ; [CPU_ALU] 
        ADDF32    R0H,R0H,R2H           ; [CPU_FPU] |48| 
        MOVB      XAR0,#16              ; [CPU_ALU] |48| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |48| 
	.dwpsn	file "../imported/foc/foc.c",line 47,column 5,is_stmt,isa 0
        MOVB      XAR0,#14              ; [CPU_ALU] |47| 
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |47| 
        MOVB      XAR0,#12              ; [CPU_ALU] |47| 

        MOV32     *+XAR2[AR0],R5H       ; [CPU_FPU] |47| 
||      MPYF32    R1H,R4H,R1H           ; [CPU_FPU] |48| 

	.dwpsn	file "../imported/foc/foc.c",line 54,column 5,is_stmt,isa 0
        MOVB      XAR0,#68              ; [CPU_ALU] |54| 
	.dwpsn	file "../imported/foc/foc.c",line 48,column 5,is_stmt,isa 0
        NEGF32    R5H,R5H               ; [CPU_FPU] |48| 
        MPYF32    R2H,R6H,R5H           ; [CPU_FPU] |48| 
	.dwpsn	file "../imported/foc/foc.c",line 54,column 5,is_stmt,isa 0
        MOV       AL,*+XAR2[AR0]        ; [CPU_ALU] |54| 
	.dwpsn	file "../imported/foc/foc.c",line 48,column 5,is_stmt,isa 0

        ADDF32    R1H,R1H,R2H           ; [CPU_FPU] |48| 
||      MOV32     R3H,*+XAR2[0]         ; [CPU_FPU] |53| 

        MOVB      XAR0,#18              ; [CPU_ALU] |48| 
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |48| 
	.dwpsn	file "../imported/foc/foc.c",line 54,column 5,is_stmt,isa 0
        B         ||$C$L1||,EQ          ; [CPU_ALU] |54| 
        ; branchcc occurs ; [] |54| 
	.dwpsn	file "../imported/foc/pi.h",line 36,column 1,is_stmt,isa 0
        MOVB      XAR0,#36              ; [CPU_ALU] |36| 
        MOV32     R0H,*+XAR2[4]         ; [CPU_FPU] |36| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |36| 
        MOVL      XAR4,XAR2             ; [CPU_ALU] |36| 
	.dwpsn	file "../imported/foc/pi.h",line 37,column 17,is_stmt,isa 0
        MOVB      XAR1,#66              ; [CPU_ALU] |37| 
        MOVB      XAR0,#58              ; [CPU_ALU] |37| 
	.dwpsn	file "../imported/foc/pi.h",line 36,column 1,is_stmt,isa 0

        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |37| 
||      SUBF32    R0H,R1H,R0H           ; [CPU_FPU] |36| 

        ADDB      XAR4,#58              ; [CPU_ALU] |36| 
	.dwpsn	file "../imported/foc/pi.h",line 37,column 17,is_stmt,isa 0

        MPYF32    R1H,R0H,R1H           ; [CPU_FPU] |37| 
||      MOV32     R2H,*+XAR2[AR1]       ; [CPU_FPU] |37| 

	.dwpsn	file "../imported/foc/pi.h",line 42,column 5,is_stmt,isa 0
        MOV32     R5H,*+XAR4[2]         ; [CPU_FPU] |42| 
	.dwpsn	file "../imported/foc/pi.h",line 37,column 17,is_stmt,isa 0

        ADDF32    R1H,R1H,R2H           ; [CPU_FPU] |37| 
||      MOV32     R7H,*+XAR4[6]         ; [CPU_FPU] |39| 

	.dwpsn	file "../imported/foc/pi.h",line 40,column 30,is_stmt,isa 0

        MPYF32    R0H,R0H,R5H           ; [CPU_FPU] |42| 
||      MOV32     R6H,*+XAR4[4]         ; [CPU_FPU] |40| 

	.dwpsn	file "../imported/foc/pi.h",line 38,column 17,is_stmt,isa 0
        MOV32     R2H,R1H               ; [CPU_FPU] |38| 
	.dwpsn	file "../imported/foc/pi.h",line 39,column 30,is_stmt,isa 0
        MINF32    R2H,R7H               ; [CPU_FPU] |39| 
	.dwpsn	file "../imported/foc/pi.h",line 40,column 30,is_stmt,isa 0
        MAXF32    R2H,R6H               ; [CPU_FPU] |40| 
	.dwpsn	file "../imported/foc/pi.h",line 42,column 5,is_stmt,isa 0
        SUBF32    R1H,R2H,R1H           ; [CPU_FPU] |42| 
        ADDB      XAR4,#8               ; [CPU_ALU] |42| 
        ADDF32    R1H,R1H,R0H           ; [CPU_FPU] |42| 
        MOV32     R5H,*+XAR4[0]         ; [CPU_FPU] |42| 
        ADDF32    R0H,R1H,R5H           ; [CPU_FPU] |42| 
	.dwpsn	file "../imported/foc/foc.c",line 56,column 9,is_stmt,isa 0
        MOVB      XAR0,#16              ; [CPU_ALU] |56| 
	.dwpsn	file "../imported/foc/pi.h",line 42,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |42| 
	.dwpsn	file "../imported/foc/foc.c",line 56,column 9,is_stmt,isa 0

        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |56| 
||      ADDF32    R3H,R3H,R2H           ; [CPU_FPU] |56| 

||$C$L1||:    
	.dwpsn	file "../imported/foc/pi.h",line 37,column 17,is_stmt,isa 0
        MOVB      XAR0,#38              ; [CPU_ALU] |37| 
	.dwpsn	file "../imported/foc/pi.h",line 36,column 1,is_stmt,isa 0

        SUBF32    R0H,R3H,R0H           ; [CPU_FPU] |36| 
||      MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |37| 

	.dwpsn	file "../imported/foc/foc.c",line 63,column 5,is_stmt,isa 0
        MOVZ      AR6,SP                ; [CPU_ALU] |63| 
	.dwpsn	file "../imported/foc/pi.h",line 36,column 1,is_stmt,isa 0
        MOVL      XAR4,XAR2             ; [CPU_ALU] |36| 
        MOVL      XAR5,XAR2             ; [CPU_ALU] |36| 
	.dwpsn	file "../imported/foc/pi.h",line 37,column 17,is_stmt,isa 0
        MOVB      XAR0,#46              ; [CPU_ALU] |37| 
	.dwpsn	file "../imported/foc/foc.c",line 59,column 5,is_stmt,isa 0
        MOVB      XAR1,#20              ; [CPU_ALU] |59| 
	.dwpsn	file "../imported/foc/pi.h",line 37,column 17,is_stmt,isa 0

        MPYF32    R6H,R0H,R1H           ; [CPU_FPU] |37| 
||      MOV32     R5H,*+XAR2[AR0]       ; [CPU_FPU] |37| 

	.dwpsn	file "../imported/foc/foc.c",line 63,column 5,is_stmt,isa 0
        SUBB      XAR6,#14              ; [CPU_ARAU] |63| 
	.dwpsn	file "../imported/foc/pi.h",line 36,column 1,is_stmt,isa 0
        MOVB      XAR0,#18              ; [CPU_ALU] |36| 
        ADDB      XAR4,#38              ; [CPU_ALU] |36| 
	.dwpsn	file "../imported/foc/pi.h",line 37,column 17,is_stmt,isa 0

        MOV32     R2H,*+XAR4[2]         ; [CPU_FPU] |42| 
||      ADDF32    R7H,R5H,R6H           ; [CPU_FPU] |37| 

	.dwpsn	file "../imported/foc/pi.h",line 36,column 1,is_stmt,isa 0
        ADDB      XAR5,#48              ; [CPU_ALU] |36| 
	.dwpsn	file "../imported/foc/pi.h",line 38,column 17,is_stmt,isa 0
        MOV32     R3H,R7H               ; [CPU_FPU] |38| 
	.dwpsn	file "../imported/foc/pi.h",line 39,column 30,is_stmt,isa 0
        MOV32     R6H,*+XAR4[6]         ; [CPU_FPU] |39| 
	.dwpsn	file "../imported/foc/pi.h",line 40,column 30,is_stmt,isa 0
        MOV32     R5H,*+XAR4[4]         ; [CPU_FPU] |40| 
	.dwpsn	file "../imported/foc/foc.c",line 63,column 5,is_stmt,isa 0
        MOVZ      AR6,AR6               ; [CPU_ALU] |63| 
	.dwpsn	file "../imported/foc/pi.h",line 39,column 30,is_stmt,isa 0
        MINF32    R3H,R6H               ; [CPU_FPU] |39| 
	.dwpsn	file "../imported/foc/pi.h",line 36,column 1,is_stmt,isa 0

        MOV32     R0H,*+XAR2[2]         ; [CPU_FPU] |36| 
||      MPYF32    R2H,R0H,R2H           ; [CPU_FPU] |42| 

        MOV32     R6H,*+XAR2[AR0]       ; [CPU_FPU] |36| 
	.dwpsn	file "../imported/foc/pi.h",line 37,column 17,is_stmt,isa 0
        MOVB      XAR0,#48              ; [CPU_ALU] |37| 
	.dwpsn	file "../imported/foc/pi.h",line 40,column 30,is_stmt,isa 0
        MAXF32    R3H,R5H               ; [CPU_FPU] |40| 
	.dwpsn	file "../imported/foc/pi.h",line 42,column 5,is_stmt,isa 0
        ADDB      XAR4,#8               ; [CPU_ALU] |42| 
	.dwpsn	file "../imported/foc/foc.c",line 59,column 5,is_stmt,isa 0
        MOV32     *+XAR2[AR1],R3H       ; [CPU_FPU] |59| 
	.dwpsn	file "../imported/foc/pi.h",line 36,column 1,is_stmt,isa 0

        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |37| 
||      SUBF32    R5H,R0H,R6H           ; [CPU_FPU] |36| 

	.dwpsn	file "../imported/foc/pi.h",line 37,column 17,is_stmt,isa 0
        MOVB      XAR0,#56              ; [CPU_ALU] |37| 
	.dwpsn	file "../imported/foc/pi.h",line 39,column 30,is_stmt,isa 0

        MOV32     R6H,*+XAR5[6]         ; [CPU_FPU] |39| 
||      SUBF32    R3H,R3H,R7H           ; [CPU_FPU] |42| 

	.dwpsn	file "../imported/foc/pi.h",line 37,column 17,is_stmt,isa 0

        MPYF32    R0H,R5H,R0H           ; [CPU_FPU] |37| 
||      MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |37| 

	.dwpsn	file "../imported/foc/foc.c",line 63,column 5,is_stmt,isa 0
        MOVB      XAR0,#20              ; [CPU_ALU] |63| 
	.dwpsn	file "../imported/foc/pi.h",line 37,column 17,is_stmt,isa 0

        ADDF32    R0H,R0H,R1H           ; [CPU_FPU] |37| 
||      MOV32     R7H,*+XAR5[4]         ; [CPU_FPU] |40| 

	.dwpsn	file "../imported/foc/pi.h",line 42,column 5,is_stmt,isa 0

        MOV32     R3H,*+XAR5[2]         ; [CPU_FPU] |42| 
||      ADDF32    R2H,R2H,R3H           ; [CPU_FPU] |42| 

	.dwpsn	file "../imported/foc/pi.h",line 38,column 17,is_stmt,isa 0
        MOV32     R1H,R0H               ; [CPU_FPU] |38| 
	.dwpsn	file "../imported/foc/pi.h",line 42,column 5,is_stmt,isa 0
        ADDB      XAR5,#8               ; [CPU_ALU] |42| 
        MPYF32    R5H,R5H,R3H           ; [CPU_FPU] |42| 
	.dwpsn	file "../imported/foc/pi.h",line 39,column 30,is_stmt,isa 0
        MINF32    R1H,R6H               ; [CPU_FPU] |39| 
	.dwpsn	file "../imported/foc/pi.h",line 40,column 30,is_stmt,isa 0
        MAXF32    R1H,R7H               ; [CPU_FPU] |40| 
	.dwpsn	file "../imported/foc/foc.c",line 63,column 5,is_stmt,isa 0

        MPYF32    R2H,R1H,R1H           ; [CPU_FPU] |63| 
||      MOV32     *-SP[18],R2H          ; [CPU_FPU] |42| 

        MOV32     R0H,*+XAR2[AR0]       ; [CPU_FPU] |63| 
||      SUBF32    R6H,R1H,R0H           ; [CPU_FPU] |42| 

	.dwpsn	file "../imported/foc/foc.c",line 60,column 5,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |60| 
	.dwpsn	file "../imported/foc/pi.h",line 42,column 5,is_stmt,isa 0

        ADDF32    R5H,R5H,R6H           ; [CPU_FPU] |42| 
||      MOV32     R3H,*+XAR5[0]         ; [CPU_FPU] |42| 

	.dwpsn	file "../imported/foc/foc.c",line 63,column 5,is_stmt,isa 0

        MPYF32    R0H,R0H,R0H           ; [CPU_FPU] |63| 
||      MOV32     R7H,*+XAR4[0]         ; [CPU_FPU] |42| 

        ADDF32    R3H,R3H,R5H           ; [CPU_FPU] |42| 
||      MOV32     R6H,*-SP[18]          ; [CPU_FPU] |63| 

	.dwpsn	file "../imported/foc/foc.c",line 60,column 5,is_stmt,isa 0

        ADDF32    R6H,R6H,R7H           ; [CPU_FPU] |42| 
||      MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |60| 

	.dwpsn	file "../imported/foc/pi.h",line 42,column 5,is_stmt,isa 0
        MOV32     *+XAR5[0],R3H         ; [CPU_FPU] |42| 
	.dwpsn	file "../imported/foc/foc.c",line 63,column 5,is_stmt,isa 0

        MOV32     *+XAR4[0],R6H         ; [CPU_FPU] |42| 
||      ADDF32    R0H,R0H,R2H           ; [CPU_FPU] |63| 

$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("__c28xabi_ftod")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #||__c28xabi_ftod||   ; [CPU_ALU] |63| 
        ; call occurs [#||__c28xabi_ftod||] ; [] |63| 
        MOVZ      AR4,SP                ; [CPU_ALU] |63| 
        MOVL      XAR6,*-SP[14]         ; [CPU_ALU] |63| 
        MOVL      ACC,*-SP[12]          ; [CPU_ALU] |63| 
        SUBB      XAR4,#10              ; [CPU_ARAU] |63| 
        MOVL      *-SP[10],XAR6         ; [CPU_ALU] |63| 
        MOVZ      AR4,AR4               ; [CPU_ALU] |63| 
        MOVL      *-SP[8],ACC           ; [CPU_ALU] |63| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("sqrtf")
	.dwattr $C$DW$30, DW_AT_TI_call

        LCR       #||sqrtf||            ; [CPU_ALU] |63| 
        ; call occurs [#||sqrtf||] ; [] |63| 
        SETC      SXM                   ; [CPU_ALU] 
        MOV       ACC,AL                ; [CPU_ALU] |63| 
        MOV32     R0H,ACC               ; [CPU_FPU] |63| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        I32TOF32  R0H,R0H               ; [CPU_FPU] |63| 
	.dwpsn	file "../imported/foc/foc.c",line 64,column 5,is_stmt,isa 0
        MOV32     R3H,*+XAR2[4]         ; [CPU_FPU] |64| 
        CMPF32    R0H,R3H               ; [CPU_FPU] |64| 
        MOVST0    ZF, NF                ; [CPU_FPU] |64| 
        B         ||$C$L2||,GT          ; [CPU_ALU] |64| 
        ; branchcc occurs ; [] |64| 
        MOVB      XAR0,#36              ; [CPU_ALU] 
        MOVB      XAR1,#20              ; [CPU_ALU] 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] 
        MOVB      XAR0,#22              ; [CPU_ALU] 
        MOV32     R1H,*+XAR2[AR1]       ; [CPU_FPU] 
        MOV32     R2H,*+XAR2[AR0]       ; [CPU_FPU] 
        B         ||$C$L3||,UNC         ; [CPU_ALU] 
        ; branch occurs ; [] 
||$C$L2||:    
	.dwpsn	file "../imported/foc/foc.c",line 66,column 9,is_stmt,isa 0
        DIVF32    R0H,R3H,R0H           ; [CPU_FPU] |66| 
        NOP       ; [CPU_ALU] 
        NOP       ; [CPU_ALU] 
        MOVB      XAR0,#20              ; [CPU_ALU] |66| 
        MOV32     R1H,*+XAR2[AR0]       ; [CPU_FPU] |66| 
        MPYF32    R1H,R0H,R1H           ; [CPU_FPU] |66| 
        MOVB      XAR0,#20              ; [CPU_ALU] |66| 
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |66| 
	.dwpsn	file "../imported/foc/foc.c",line 67,column 9,is_stmt,isa 0
        MOVB      XAR0,#22              ; [CPU_ALU] |67| 
        MOV32     R2H,*+XAR2[AR0]       ; [CPU_FPU] |67| 
	.dwpsn	file "../imported/foc/foc.c",line 68,column 9,is_stmt,isa 0
        MOVB      XAR0,#36              ; [CPU_ALU] |68| 
	.dwpsn	file "../imported/foc/foc.c",line 67,column 9,is_stmt,isa 0

        MPYF32    R2H,R0H,R2H           ; [CPU_FPU] |67| 
||      MOV32     *+XAR2[AR0],R3H       ; [CPU_FPU] |68| 

        MOVB      XAR0,#22              ; [CPU_ALU] |67| 
        MOV32     *+XAR2[AR0],R2H       ; [CPU_FPU] |67| 
||$C$L3||:    
	.dwpsn	file "../imported/foc/foc.c",line 71,column 5,is_stmt,isa 0
        MPYF32    R5H,R4H,R1H           ; [CPU_FPU] |71| 

        MPYF32    R7H,R4H,R2H           ; [CPU_FPU] |71| 
||      MOV32     R3H,*-SP[16]          ; [CPU_FPU] 

        MPYF32    R0H,R3H,R2H           ; [CPU_FPU] |71| 
        MPYF32    R1H,R3H,R1H           ; [CPU_FPU] |71| 
        MOVB      XAR0,#26              ; [CPU_ALU] |71| 
        MOVB      XAR1,#24              ; [CPU_ALU] |71| 
        ADDF32    R6H,R7H,R1H           ; [CPU_FPU] |71| 
        SUBF32    R0H,R5H,R0H           ; [CPU_FPU] |71| 
	.dwpsn	file "../imported/foc/transforms.h",line 41,column 5,is_stmt,isa 0
        MOVIZ     R7H,#16221            ; [CPU_FPU] |41| 
	.dwpsn	file "../imported/foc/svpwm.h",line 18,column 16,is_stmt,isa 0
        MOV32     R2H,R0H               ; [CPU_FPU] |18| 
	.dwpsn	file "../imported/foc/transforms.h",line 41,column 5,is_stmt,isa 0
        MOVXI     R7H,#46039            ; [CPU_FPU] |41| 
        MPYF32    R5H,R0H,#48896        ; [CPU_FPU] |41| 
	.dwpsn	file "../imported/foc/svpwm.h",line 18,column 16,is_stmt,isa 0
        MOV32     R3H,R0H               ; [CPU_FPU] |18| 
	.dwpsn	file "../imported/foc/transforms.h",line 41,column 5,is_stmt,isa 0
        MPYF32    R4H,R7H,R6H           ; [CPU_FPU] |41| 
	.dwpsn	file "../imported/foc/svpwm.h",line 19,column 5,is_stmt,isa 0
        MPYF32    R1H,R2H,#48896        ; [CPU_FPU] |19| 
	.dwpsn	file "../imported/foc/transforms.h",line 41,column 5,is_stmt,isa 0
        ADDF32    R7H,R4H,R5H           ; [CPU_FPU] |41| 
	.dwpsn	file "../imported/foc/foc.c",line 71,column 5,is_stmt,isa 0

        ADDF32    R1H,R1H,R4H           ; [CPU_FPU] |19| 
||      MOV32     *+XAR2[AR0],R6H       ; [CPU_FPU] |71| 

        SUBF32    R5H,R5H,R4H           ; [CPU_FPU] |41| 
||      MOV32     *+XAR2[AR1],R0H       ; [CPU_FPU] |71| 

	.dwpsn	file "../imported/foc/svpwm.h",line 19,column 5,is_stmt,isa 0
        CMPF32    R1H,R2H               ; [CPU_FPU] |19| 
        MOVST0    ZF, NF                ; [CPU_FPU] |19| 
        B         ||$C$L4||,GT          ; [CPU_ALU] |19| 
        ; branchcc occurs ; [] |19| 
	.dwpsn	file "../imported/foc/svpwm.h",line 20,column 5,is_stmt,isa 0
        MPYF32    R6H,R3H,#48896        ; [CPU_FPU] |20| 
        NOP       ; [CPU_ALU] 
        SUBF32    R4H,R6H,R4H           ; [CPU_FPU] |20| 
	.dwpsn	file "../imported/foc/svpwm.h",line 19,column 54,is_stmt,isa 0
        MINF32    R2H,R1H               ; [CPU_FPU] |19| 
	.dwpsn	file "../imported/foc/svpwm.h",line 20,column 5,is_stmt,isa 0
        CMPF32    R4H,R3H               ; [CPU_FPU] |20| 
        MOVST0    ZF, NF                ; [CPU_FPU] |20| 
        B         ||$C$L5||,LEQ         ; [CPU_ALU] |20| 
        ; branchcc occurs ; [] |20| 
        B         ||$C$L6||,UNC         ; [CPU_ALU] |20| 
        ; branch occurs ; [] |20| 
||$C$L4||:    
	.dwpsn	file "../imported/foc/svpwm.h",line 19,column 21,is_stmt,isa 0
        MOV32     R3H,R7H               ; [CPU_FPU] |19| 
	.dwpsn	file "../imported/foc/svpwm.h",line 20,column 5,is_stmt,isa 0
        CMPF32    R5H,R3H               ; [CPU_FPU] |20| 
        MOVST0    ZF, NF                ; [CPU_FPU] |20| 
        B         ||$C$L6||,GT          ; [CPU_ALU] |20| 
        ; branchcc occurs ; [] |20| 
||$C$L5||:    
	.dwpsn	file "../imported/foc/svpwm.h",line 20,column 54,is_stmt,isa 0
        MOV32     R1H,R5H               ; [CPU_FPU] |20| 
        MINF32    R2H,R1H               ; [CPU_FPU] |20| 
        B         ||$C$L7||,UNC         ; [CPU_ALU] |20| 
        ; branch occurs ; [] |20| 
||$C$L6||:    
	.dwpsn	file "../imported/foc/svpwm.h",line 20,column 21,is_stmt,isa 0
        MOV32     R3H,R5H               ; [CPU_FPU] |20| 
||$C$L7||:    
	.dwpsn	file "../imported/foc/foc.c",line 72,column 5,is_stmt,isa 0
        ADDF32    R1H,R2H,R3H           ; [CPU_FPU] |72| 
        MOVB      XAR0,#28              ; [CPU_ALU] |72| 
        MPYF32    R1H,R1H,#16128        ; [CPU_FPU] |72| 
        MOVB      XAR1,#30              ; [CPU_ALU] |72| 
        SUBF32    R0H,R0H,R1H           ; [CPU_FPU] |72| 
        SUBF32    R6H,R7H,R1H           ; [CPU_FPU] |72| 
        SUBF32    R4H,R5H,R1H           ; [CPU_FPU] |72| 
        ADDF32    R0H,R0H,#16128        ; [CPU_FPU] |72| 
        ADDF32    R1H,R4H,#16128        ; [CPU_FPU] |72| 
        MOV32     *+XAR2[AR0],R0H       ; [CPU_FPU] |72| 
        MOVB      XAR0,#32              ; [CPU_ALU] |72| 
        SUBB      SP,#18                ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -14
        ADDF32    R0H,R6H,#16128        ; [CPU_FPU] |72| 
        MOV32     *+XAR2[AR0],R1H       ; [CPU_FPU] |72| 
        MOV32     *+XAR2[AR1],R0H       ; [CPU_FPU] |72| 
        MOV32     R7H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -12
	.dwcfi	restore_reg, 71
        MOV32     R6H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 67
        MOV32     R5H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 63
        MOV32     R4H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 59
        MOVL      XAR2,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$4, DW_AT_TI_end_file("../imported/foc/foc.c")
	.dwattr $C$DW$4, DW_AT_TI_end_line(0x49)
	.dwattr $C$DW$4, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$4

	.sect	".text:foc_set_iq_ref"
	.clink
	.global	||foc_set_iq_ref||

$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("foc_set_iq_ref")
	.dwattr $C$DW$32, DW_AT_low_pc(||foc_set_iq_ref||)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_linkage_name("foc_set_iq_ref")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("../imported/foc/foc.c")
	.dwattr $C$DW$32, DW_AT_decl_line(0x20)
	.dwattr $C$DW$32, DW_AT_decl_column(0x06)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/foc/foc.c",line 32,column 47,is_stmt,address ||foc_set_iq_ref||,isa 0

	.dwfde $C$DW$CIE, ||foc_set_iq_ref||
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_name("f")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg12]

$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_name("iq_pu")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_regx 0x2b]


;***************************************************************
;* FNAME: foc_set_iq_ref                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||foc_set_iq_ref||:
;* AR4   assigned to f
$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("f")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg12]

;* R0    assigned to iq_pu
$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("iq_pu")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_regx 0x2b]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../imported/foc/foc.c",line 32,column 49,is_stmt,isa 0
        MOV32     *+XAR4[2],R0H         ; [CPU_FPU] |32| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$32, DW_AT_TI_end_file("../imported/foc/foc.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x20)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x47)
	.dwendentry
	.dwendtag $C$DW$32

	.sect	".text:foc_reset"
	.clink
	.global	||foc_reset||

$C$DW$38	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$38, DW_AT_name("foc_reset")
	.dwattr $C$DW$38, DW_AT_low_pc(||foc_reset||)
	.dwattr $C$DW$38, DW_AT_high_pc(0x00)
	.dwattr $C$DW$38, DW_AT_linkage_name("foc_reset")
	.dwattr $C$DW$38, DW_AT_external
	.dwattr $C$DW$38, DW_AT_decl_file("../imported/foc/foc.c")
	.dwattr $C$DW$38, DW_AT_decl_line(0x17)
	.dwattr $C$DW$38, DW_AT_decl_column(0x06)
	.dwattr $C$DW$38, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../imported/foc/foc.c",line 24,column 1,is_stmt,address ||foc_reset||,isa 0

	.dwfde $C$DW$CIE, ||foc_reset||
$C$DW$39	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$39, DW_AT_name("f")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: foc_reset                     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

||foc_reset||:
;* AR4   assigned to f
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("f")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../imported/foc/pi.h",line 33,column 45,is_stmt,isa 0
        MOVB      XAR0,#46              ; [CPU_ALU] |33| 
        ZERO      R0H                   ; [CPU_FPU] |33| 
        ZERO      R1H                   ; [CPU_FPU] |33| 
        MOVB      XAR1,#56              ; [CPU_ALU] |33| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |33| 
	.dwpsn	file "../imported/foc/foc.c",line 28,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |28| 
	.dwpsn	file "../imported/foc/foc.c",line 29,column 5,is_stmt,isa 0
        MOV32     *+XAR4[2],R0H         ; [CPU_FPU] |29| 
	.dwpsn	file "../imported/foc/pi.h",line 33,column 45,is_stmt,isa 0
        MOV32     *+XAR4[AR1],R1H       ; [CPU_FPU] |33| 
        MOVB      XAR0,#66              ; [CPU_ALU] |33| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |33| 
        MOVL      XAR1,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$38, DW_AT_TI_end_file("../imported/foc/foc.c")
	.dwattr $C$DW$38, DW_AT_TI_end_line(0x1e)
	.dwattr $C$DW$38, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$38

	.sect	".text:foc_init"
	.clink
	.global	||foc_init||

$C$DW$42	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$42, DW_AT_name("foc_init")
	.dwattr $C$DW$42, DW_AT_low_pc(||foc_init||)
	.dwattr $C$DW$42, DW_AT_high_pc(0x00)
	.dwattr $C$DW$42, DW_AT_linkage_name("foc_init")
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_decl_file("../imported/foc/foc.c")
	.dwattr $C$DW$42, DW_AT_decl_line(0x08)
	.dwattr $C$DW$42, DW_AT_decl_column(0x06)
	.dwattr $C$DW$42, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/foc/foc.c",line 9,column 1,is_stmt,address ||foc_init||,isa 0

	.dwfde $C$DW$CIE, ||foc_init||
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_name("f")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: foc_init                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||foc_init||:
;* AR4   assigned to f
$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("f")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../imported/foc/pi.h",line 30,column 5,is_stmt,isa 0
        MOVB      XAR0,#46              ; [CPU_ALU] |30| 
        ZERO      R0H                   ; [CPU_FPU] |30| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |30| 
        MOVB      XAR0,#56              ; [CPU_ALU] |30| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |30| 
	.dwpsn	file "../imported/foc/pi.h",line 28,column 5,is_stmt,isa 0
        MOVB      XAR0,#62              ; [CPU_ALU] |28| 
        MOVIZ     R0H,#49024            ; [CPU_FPU] |28| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |28| 
	.dwpsn	file "../imported/foc/pi.h",line 29,column 5,is_stmt,isa 0
        MOVB      XAR0,#64              ; [CPU_ALU] |29| 
        ZERO      R0H                   ; [CPU_FPU] |29| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |29| 
	.dwpsn	file "../imported/foc/pi.h",line 30,column 5,is_stmt,isa 0
        MOVB      XAR0,#66              ; [CPU_ALU] |30| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |30| 
	.dwpsn	file "../imported/foc/foc.c",line 18,column 5,is_stmt,isa 0
        MOVB      XAR0,#34              ; [CPU_ALU] |18| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |18| 
	.dwpsn	file "../imported/foc/foc.c",line 19,column 5,is_stmt,isa 0
        MOVB      XAR0,#36              ; [CPU_ALU] |19| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |19| 
	.dwpsn	file "../imported/foc/pi.h",line 26,column 5,is_stmt,isa 0
        MOVB      XAR0,#38              ; [CPU_ALU] |26| 
        MOVIZ     R0H,#16081            ; [CPU_FPU] |26| 
        MOVXI     R0H,#57575            ; [CPU_FPU] |26| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |26| 
	.dwpsn	file "../imported/foc/pi.h",line 27,column 5,is_stmt,isa 0
        MOVB      XAR0,#40              ; [CPU_ALU] |27| 
        MOVIZ     R0H,#15466            ; [CPU_FPU] |27| 
        MOVXI     R0H,#55591            ; [CPU_FPU] |27| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |27| 
	.dwpsn	file "../imported/foc/pi.h",line 28,column 5,is_stmt,isa 0
        MOVB      XAR0,#42              ; [CPU_ALU] |28| 
        MOVIZ     R0H,#49011            ; [CPU_FPU] |28| 
        MOVXI     R0H,#13107            ; [CPU_FPU] |28| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |28| 
	.dwpsn	file "../imported/foc/pi.h",line 29,column 5,is_stmt,isa 0
        MOVB      XAR0,#44              ; [CPU_ALU] |29| 
        MOVIZ     R0H,#16243            ; [CPU_FPU] |29| 
        MOVXI     R0H,#13107            ; [CPU_FPU] |29| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |29| 
	.dwpsn	file "../imported/foc/pi.h",line 26,column 5,is_stmt,isa 0
        MOVB      XAR0,#48              ; [CPU_ALU] |26| 
        MOVIZ     R0H,#16081            ; [CPU_FPU] |26| 
        MOVXI     R0H,#57575            ; [CPU_FPU] |26| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |26| 
	.dwpsn	file "../imported/foc/pi.h",line 27,column 5,is_stmt,isa 0
        MOVB      XAR0,#50              ; [CPU_ALU] |27| 
        MOVIZ     R0H,#15466            ; [CPU_FPU] |27| 
        MOVXI     R0H,#55591            ; [CPU_FPU] |27| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |27| 
	.dwpsn	file "../imported/foc/pi.h",line 28,column 5,is_stmt,isa 0
        MOVB      XAR0,#52              ; [CPU_ALU] |28| 
        MOVIZ     R0H,#49011            ; [CPU_FPU] |28| 
        MOVXI     R0H,#13107            ; [CPU_FPU] |28| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |28| 
	.dwpsn	file "../imported/foc/pi.h",line 29,column 5,is_stmt,isa 0
        MOVB      XAR0,#54              ; [CPU_ALU] |29| 
        MOVIZ     R0H,#16243            ; [CPU_FPU] |29| 
        MOVXI     R0H,#13107            ; [CPU_FPU] |29| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |29| 
	.dwpsn	file "../imported/foc/pi.h",line 26,column 5,is_stmt,isa 0
        MOVB      XAR0,#58              ; [CPU_ALU] |26| 
        MOVIZ     R0H,#16096            ; [CPU_FPU] |26| 
        MOVXI     R0H,#54593            ; [CPU_FPU] |26| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |26| 
	.dwpsn	file "../imported/foc/foc.c",line 20,column 5,is_stmt,isa 0
        MOVB      XAR0,#68              ; [CPU_ALU] |20| 
	.dwpsn	file "../imported/foc/foc.c",line 15,column 5,is_stmt,isa 0
        ZERO      R0H                   ; [CPU_FPU] |15| 
	.dwpsn	file "../imported/foc/foc.c",line 20,column 5,is_stmt,isa 0
        MOV       *+XAR4[AR0],#0        ; [CPU_ALU] |20| 
	.dwpsn	file "../imported/foc/foc.c",line 15,column 5,is_stmt,isa 0
        MOV32     *+XAR4[0],R0H         ; [CPU_FPU] |15| 
	.dwpsn	file "../imported/foc/foc.c",line 16,column 5,is_stmt,isa 0
        MOV32     *+XAR4[2],R0H         ; [CPU_FPU] |16| 
	.dwpsn	file "../imported/foc/pi.h",line 27,column 5,is_stmt,isa 0
        MOVB      XAR0,#60              ; [CPU_ALU] |27| 
	.dwpsn	file "../imported/foc/foc.c",line 17,column 5,is_stmt,isa 0
        MOVIZ     R0H,#16243            ; [CPU_FPU] |17| 
        MOVXI     R0H,#13107            ; [CPU_FPU] |17| 
        MOV32     *+XAR4[4],R0H         ; [CPU_FPU] |17| 
	.dwpsn	file "../imported/foc/pi.h",line 27,column 5,is_stmt,isa 0
        MOVIZ     R0H,#15679            ; [CPU_FPU] |27| 
        MOVXI     R0H,#9701             ; [CPU_FPU] |27| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |27| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$42, DW_AT_TI_end_file("../imported/foc/foc.c")
	.dwattr $C$DW$42, DW_AT_TI_end_line(0x15)
	.dwattr $C$DW$42, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$42

	.sect	".text:foc_enable_fwc"
	.clink
	.global	||foc_enable_fwc||

$C$DW$46	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$46, DW_AT_name("foc_enable_fwc")
	.dwattr $C$DW$46, DW_AT_low_pc(||foc_enable_fwc||)
	.dwattr $C$DW$46, DW_AT_high_pc(0x00)
	.dwattr $C$DW$46, DW_AT_linkage_name("foc_enable_fwc")
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_decl_file("../imported/foc/foc.c")
	.dwattr $C$DW$46, DW_AT_decl_line(0x21)
	.dwattr $C$DW$46, DW_AT_decl_column(0x06)
	.dwattr $C$DW$46, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../imported/foc/foc.c",line 34,column 1,is_stmt,address ||foc_enable_fwc||,isa 0

	.dwfde $C$DW$CIE, ||foc_enable_fwc||
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_name("f")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg12]

$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_name("enabled")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: foc_enable_fwc                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||foc_enable_fwc||:
;* AR4   assigned to f
$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("f")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg12]

;* AL    assigned to enabled
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("enabled")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../imported/foc/foc.c",line 35,column 5,is_stmt,isa 0
        MOVB      XAR0,#68              ; [CPU_ALU] |35| 
	.dwpsn	file "../imported/foc/foc.c",line 36,column 5,is_stmt,isa 0
        CMPB      AL,#1                 ; [CPU_ALU] |36| 
	.dwpsn	file "../imported/foc/foc.c",line 35,column 5,is_stmt,isa 0
        MOV       *+XAR4[AR0],AL        ; [CPU_FPU] |35| 
	.dwpsn	file "../imported/foc/foc.c",line 36,column 5,is_stmt,isa 0
        B         ||$C$L8||,EQ          ; [CPU_ALU] |36| 
        ; branchcc occurs ; [] |36| 
	.dwpsn	file "../imported/foc/pi.h",line 33,column 45,is_stmt,isa 0
        MOVB      XAR0,#66              ; [CPU_ALU] |33| 
        ZERO      R0H                   ; [CPU_FPU] |33| 
        MOV32     *+XAR4[AR0],R0H       ; [CPU_FPU] |33| 
||$C$L8||:    
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$46, DW_AT_TI_end_file("../imported/foc/foc.c")
	.dwattr $C$DW$46, DW_AT_TI_end_line(0x25)
	.dwattr $C$DW$46, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$46

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||sinf||
	.global	||cosf||
	.global	||sqrtf||
	.global	||__c28xabi_ftod||

;***************************************************************
;* BUILD ATTRIBUTES                                            *
;***************************************************************
	.battr "c28xabi", Tag_File, 1, Tag_float_args(1)
	.battr "c28xabi", Tag_File, 1, Tag_double_args(1)
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
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x0a)
$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$52, DW_AT_name("kp")
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$52, DW_AT_decl_file("../imported/foc/pi.h")
	.dwattr $C$DW$52, DW_AT_decl_line(0x11)
	.dwattr $C$DW$52, DW_AT_decl_column(0x0b)

$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$53, DW_AT_name("ki")
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$53, DW_AT_decl_file("../imported/foc/pi.h")
	.dwattr $C$DW$53, DW_AT_decl_line(0x12)
	.dwattr $C$DW$53, DW_AT_decl_column(0x0b)

$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$54, DW_AT_name("u_min")
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$54, DW_AT_decl_file("../imported/foc/pi.h")
	.dwattr $C$DW$54, DW_AT_decl_line(0x13)
	.dwattr $C$DW$54, DW_AT_decl_column(0x0b)

$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$55, DW_AT_name("u_max")
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$55, DW_AT_decl_file("../imported/foc/pi.h")
	.dwattr $C$DW$55, DW_AT_decl_line(0x14)
	.dwattr $C$DW$55, DW_AT_decl_column(0x0b)

$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$56, DW_AT_name("integ")
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$56, DW_AT_decl_file("../imported/foc/pi.h")
	.dwattr $C$DW$56, DW_AT_decl_line(0x15)
	.dwattr $C$DW$56, DW_AT_decl_column(0x0b)

	.dwattr $C$DW$T$19, DW_AT_decl_file("../imported/foc/pi.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x10)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$26	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$26
$C$DW$T$26	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$26, DW_AT_name("pi_ctrl_t")
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$26, DW_AT_decl_file("../imported/foc/pi.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x16)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$26


$C$DW$TU$30	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$30
$C$DW$T$30	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$30, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$30


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x04)
$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$57, DW_AT_name("alpha")
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$57, DW_AT_decl_file("../imported/foc/pmsm_types.h")
	.dwattr $C$DW$57, DW_AT_decl_line(0x08)
	.dwattr $C$DW$57, DW_AT_decl_column(0x18)

$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$58, DW_AT_name("beta")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$58, DW_AT_decl_file("../imported/foc/pmsm_types.h")
	.dwattr $C$DW$58, DW_AT_decl_line(0x08)
	.dwattr $C$DW$58, DW_AT_decl_column(0x1f)

	.dwattr $C$DW$T$20, DW_AT_decl_file("../imported/foc/pmsm_types.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x08)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$20

	.dwendtag $C$DW$TU$20


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24
$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("vec_ab_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$24, DW_AT_decl_file("../imported/foc/pmsm_types.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x08)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x27)

	.dwendtag $C$DW$TU$24


$C$DW$TU$21	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$21

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x06)
$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$59, DW_AT_name("a")
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$59, DW_AT_decl_file("../imported/foc/pmsm_types.h")
	.dwattr $C$DW$59, DW_AT_decl_line(0x07)
	.dwattr $C$DW$59, DW_AT_decl_column(0x18)

$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$60, DW_AT_name("b")
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$60, DW_AT_decl_file("../imported/foc/pmsm_types.h")
	.dwattr $C$DW$60, DW_AT_decl_line(0x07)
	.dwattr $C$DW$60, DW_AT_decl_column(0x1b)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$61, DW_AT_name("c")
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$61, DW_AT_decl_file("../imported/foc/pmsm_types.h")
	.dwattr $C$DW$61, DW_AT_decl_line(0x07)
	.dwattr $C$DW$61, DW_AT_decl_column(0x1e)

	.dwattr $C$DW$T$21, DW_AT_decl_file("../imported/foc/pmsm_types.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x07)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$21

	.dwendtag $C$DW$TU$21


$C$DW$TU$23	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$23
$C$DW$T$23	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$23, DW_AT_name("vec_abc_t")
	.dwattr $C$DW$T$23, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$23, DW_AT_decl_file("../imported/foc/pmsm_types.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x07)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x23)

	.dwendtag $C$DW$TU$23


$C$DW$TU$22	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$22

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x04)
$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$62, DW_AT_name("d")
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$62, DW_AT_decl_file("../imported/foc/pmsm_types.h")
	.dwattr $C$DW$62, DW_AT_decl_line(0x09)
	.dwattr $C$DW$62, DW_AT_decl_column(0x18)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$63, DW_AT_name("q")
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$63, DW_AT_decl_file("../imported/foc/pmsm_types.h")
	.dwattr $C$DW$63, DW_AT_decl_line(0x09)
	.dwattr $C$DW$63, DW_AT_decl_column(0x1b)

	.dwattr $C$DW$T$22, DW_AT_decl_file("../imported/foc/pmsm_types.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x09)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$22

	.dwendtag $C$DW$TU$22


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("vec_dq_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$25, DW_AT_decl_file("../imported/foc/pmsm_types.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x09)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x20)

	.dwendtag $C$DW$TU$25


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x46)
$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$64, DW_AT_name("id_ref_pu")
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$64, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$64, DW_AT_decl_line(0x09)
	.dwattr $C$DW$64, DW_AT_decl_column(0x0b)

$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$65, DW_AT_name("iq_ref_pu")
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$65, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$65, DW_AT_decl_line(0x0a)
	.dwattr $C$DW$65, DW_AT_decl_column(0x0b)

$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$66, DW_AT_name("v_max_pu")
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$66, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$66, DW_AT_decl_line(0x0b)
	.dwattr $C$DW$66, DW_AT_decl_column(0x0b)

$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$67, DW_AT_name("i_abc_pu")
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$67, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$67, DW_AT_decl_line(0x0e)
	.dwattr $C$DW$67, DW_AT_decl_column(0x0f)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$68, DW_AT_name("i_ab_pu")
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$68, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$68, DW_AT_decl_line(0x0f)
	.dwattr $C$DW$68, DW_AT_decl_column(0x0f)

$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$69, DW_AT_name("i_dq_pu")
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$69, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$69, DW_AT_decl_line(0x10)
	.dwattr $C$DW$69, DW_AT_decl_column(0x0f)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$70, DW_AT_name("v_dq_pu")
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$70, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$70, DW_AT_decl_line(0x11)
	.dwattr $C$DW$70, DW_AT_decl_column(0x0f)

$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$71, DW_AT_name("v_ab_pu")
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$71, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$71, DW_AT_decl_line(0x12)
	.dwattr $C$DW$71, DW_AT_decl_column(0x0f)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$72, DW_AT_name("duty")
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$72, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$72, DW_AT_decl_line(0x13)
	.dwattr $C$DW$72, DW_AT_decl_column(0x0f)

$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$73, DW_AT_name("theta_e")
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$73, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$73, DW_AT_decl_line(0x15)
	.dwattr $C$DW$73, DW_AT_decl_column(0x0b)

$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$74, DW_AT_name("v_mag_pu")
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$74, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$74, DW_AT_decl_line(0x16)
	.dwattr $C$DW$74, DW_AT_decl_column(0x0b)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$75, DW_AT_name("pi_id")
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$75, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$75, DW_AT_decl_line(0x19)
	.dwattr $C$DW$75, DW_AT_decl_column(0x0f)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$76, DW_AT_name("pi_iq")
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$76, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$76, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$76, DW_AT_decl_column(0x0f)

$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$77, DW_AT_name("pi_fwc")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$77, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$77, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$77, DW_AT_decl_column(0x0f)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$78, DW_AT_name("fwc_enabled")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$78, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$78, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$78, DW_AT_decl_column(0x0f)

	.dwattr $C$DW$T$28, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x07)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$28

	.dwendtag $C$DW$TU$28


$C$DW$TU$40	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$40
$C$DW$T$40	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$40, DW_AT_name("foc_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$40, DW_AT_decl_file("../imported/foc/foc.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$40


$C$DW$TU$41	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$41
$C$DW$T$41	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$41, DW_AT_address_class(0x20)

	.dwendtag $C$DW$TU$41


$C$DW$TU$42	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$42
$C$DW$79	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$41)

$C$DW$T$42	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$79)

	.dwendtag $C$DW$TU$42


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


$C$DW$TU$55	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$55
$C$DW$80	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$16)

$C$DW$T$55	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$80)

	.dwendtag $C$DW$TU$55


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


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$27, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$27, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)

	.dwendtag $C$DW$TU$27


$C$DW$TU$57	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$57
$C$DW$81	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$27)

$C$DW$T$57	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$81)

	.dwendtag $C$DW$TU$57

