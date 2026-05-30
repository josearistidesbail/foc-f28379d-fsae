;***************************************************************
;* TMS320C2000 G3 C/C++ Codegen                         Unix v25.11.0.LTS *
;* Date/Time created: Sun May 24 12:42:00 2026                 *
;***************************************************************
	.compiler_opts --abi=eabi --cla_support=cla1 --diag_wrap=off --float_support=fpu32 --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=elf --quiet --silicon_errata_fpu1_workaround=off --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=4 --tmu_support=tmu0 --vcu_support=vcu2 
	.asg	XAR2, FP

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 G3 C/C++ Codegen Unix v25.11.0.LTS Copyright (c) 1996-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("SCI_clearInterruptStatus")
	.dwattr $C$DW$1, DW_AT_linkage_name("SCI_clearInterruptStatus")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x636)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$22)

$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$22)

	.dwendtag $C$DW$1

	.bss	||s_rx_head||,1,1,0
$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("s_rx_head")
	.dwattr $C$DW$4, DW_AT_linkage_name("s_rx_head")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$4, DW_AT_location[DW_OP_addr ||s_rx_head||]
	.dwattr $C$DW$4, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c")
	.dwattr $C$DW$4, DW_AT_decl_line(0x12)
	.dwattr $C$DW$4, DW_AT_decl_column(0x1a)

	.bss	||s_rx_tail||,1,1,0
$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("s_rx_tail")
	.dwattr $C$DW$5, DW_AT_linkage_name("s_rx_tail")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$5, DW_AT_location[DW_OP_addr ||s_rx_tail||]
	.dwattr $C$DW$5, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c")
	.dwattr $C$DW$5, DW_AT_decl_line(0x13)
	.dwattr $C$DW$5, DW_AT_decl_column(0x1a)

||s_rx_ring||:	.usect	".ebss",256,0,0
$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("s_rx_ring")
	.dwattr $C$DW$6, DW_AT_linkage_name("s_rx_ring")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr ||s_rx_ring||]
	.dwattr $C$DW$6, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c")
	.dwattr $C$DW$6, DW_AT_decl_line(0x11)
	.dwattr $C$DW$6, DW_AT_decl_column(0x1a)

	.sblock	".bss"
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/opt2000 /tmp/TIbxnzDErrF /tmp/TIbxnOD1hz4 --advice:performance=stdout 
;	/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/acia2000 -@/tmp/TIbxn0OzB0E 
	.sect	".text:sciA_rx_isr"
	.retain
	.retainrefs
	.global	||sciA_rx_isr||

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("sciA_rx_isr")
	.dwattr $C$DW$7, DW_AT_low_pc(||sciA_rx_isr||)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_linkage_name("sciA_rx_isr")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$7, DW_AT_decl_column(0x12)
	.dwattr $C$DW$7, DW_AT_TI_interrupt
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(-28)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 47,column 1,is_stmt,address ||sciA_rx_isr||,isa 0

	.dwfde $C$DW$CIE, ||sciA_rx_isr||

;***************************************************************
;* FNAME: sciA_rx_isr                   FR SIZE:  26           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto, 24 SOE     *
;***************************************************************

||sciA_rx_isr||:
;* AR7   assigned to b
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("b")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg18]

;* AR6   assigned to next
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("next")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ASP       ; [CPU_ALU] 
        PUSH      RB                    ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 74, 4
	.dwcfi	cfa_offset, -4
        PUSH      AR1H:AR0H             ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 5, 4
	.dwcfi	save_reg_to_mem, 7, 5
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XT              ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 21, 6
	.dwcfi	save_reg_to_mem, 22, 7
	.dwcfi	cfa_offset, -8
        MOVL      *SP++,XAR4            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 12, 8
	.dwcfi	save_reg_to_mem, 13, 9
	.dwcfi	cfa_offset, -10
        MOVL      *SP++,XAR5            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 14, 10
	.dwcfi	save_reg_to_mem, 15, 11
	.dwcfi	cfa_offset, -12
        MOVL      *SP++,XAR6            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 16, 12
	.dwcfi	save_reg_to_mem, 17, 13
	.dwcfi	cfa_offset, -14
        MOVL      *SP++,XAR7            ; [CPU_ALU] 
	.dwcfi	save_reg_to_mem, 18, 14
	.dwcfi	save_reg_to_mem, 19, 15
	.dwcfi	cfa_offset, -16
        MOV32     *SP++,STF             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 40, 18
	.dwcfi	cfa_offset, -18
        MOV32     *SP++,R0H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 43, 20
	.dwcfi	cfa_offset, -20
        MOV32     *SP++,R1H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 47, 22
	.dwcfi	cfa_offset, -22
        MOV32     *SP++,R2H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 51, 24
	.dwcfi	cfa_offset, -24
        MOV32     *SP++,R3H             ; [CPU_FPU] 
	.dwcfi	save_reg_to_mem, 55, 26
	.dwcfi	cfa_offset, -26
        SETFLG    RNDF32=1, RNDF64=1    ; [CPU_FPU] 
        ADDB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -28
        SPM       0                     ; [CPU_ALU] 
        CLRC      PAGE0,OVM             ; [CPU_ALU] 
        CLRC      AMODE                 ; [CPU_ALU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 56,column 13,is_stmt,isa 0
        MOVL      XAR4,#||s_rx_ring||   ; [CPU_ARAU] |56| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 54,column 9,is_stmt,isa 0
        MOV       PH,#0                 ; [CPU_ALU] |54| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 50,column 5,is_stmt,isa 0
        B         ||$C$L2||,UNC         ; [CPU_ALU] |50| 
        ; branch occurs ; [] |50| 
||$C$L1||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 1285,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x7207)        ; [CPU_ALU] |1285| 
        MOVW      DP,#||s_rx_head||     ; [CPU_ARAU] 
        ANDB      AL,#0xff              ; [CPU_ALU] |1285| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 52,column 20,is_stmt,isa 0
        ANDB      AL,#255               ; [CPU_ALU] |52| 
        MOVZ      AR7,AL                ; [CPU_ALU] |52| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 53,column 23,is_stmt,isa 0
        MOV       AL,@||s_rx_head||     ; [CPU_ALU] |53| 
        ADDB      AL,#1                 ; [CPU_ALU] |53| 
        ANDB      AL,#0xff              ; [CPU_ALU] |53| 
        MOVZ      AR6,AL                ; [CPU_ALU] |53| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 54,column 9,is_stmt,isa 0
        MOV       PL,AR6                ; [CPU_ALU] |54| 
        MOVU      ACC,@||s_rx_tail||    ; [CPU_ALU] |54| 
        CMPL      ACC,P                 ; [CPU_ALU] |54| 
        B         ||$C$L2||,EQ          ; [CPU_ALU] |54| 
        ; branchcc occurs ; [] |54| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 56,column 13,is_stmt,isa 0
        MOVZ      AR0,@||s_rx_head||    ; [CPU_ALU] |56| 
        MOV       *+XAR4[AR0],AR7       ; [CPU_ALU] |56| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 57,column 13,is_stmt,isa 0
        MOV       @||s_rx_head||,AR6    ; [CPU_ALU] |57| 
||$C$L2||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 986,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x720b)        ; [CPU_ALU] |986| 
        LSR       AL,8                  ; [CPU_ALU] |986| 
        ANDB      AL,#0x1f              ; [CPU_ALU] |986| 
        B         ||$C$L1||,NEQ         ; [CPU_ALU] |986| 
        ; branchcc occurs ; [] |986| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 1417,column 5,is_stmt,isa 0
        MOV       AR6,*(0:0x720b)       ; [CPU_ALU] |1417| 
        OR        AR6,#0x4000           ; [CPU_ALU] |1417| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 63,column 5,is_stmt,isa 0
        MOVB      ACC,#16               ; [CPU_ALU] |63| 
        MOVL      XAR4,#29184           ; [CPU_ARAU] |63| 
        MOVL      *-SP[2],ACC           ; [CPU_ALU] |63| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 1417,column 5,is_stmt,isa 0
        MOV       *(0:0x720b),AR6       ; [CPU_ALU] |1417| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 63,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_ALU] |63| 
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_name("SCI_clearInterruptStatus")
	.dwattr $C$DW$10, DW_AT_TI_call

        LCR       #||SCI_clearInterruptStatus|| ; [CPU_ALU] |63| 
        ; call occurs [#||SCI_clearInterruptStatus||] ; [] |63| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/interrupt.h",line 379,column 5,is_stmt,isa 0
        MOV       AL,#256               ; [CPU_ALU] |379| 
        MOV       *(0:0x0ce1),AL        ; [CPU_ALU] |379| 
        SUBB      SP,#2                 ; [CPU_ARAU] 
	.dwcfi	cfa_offset, -26
        MOV32     R3H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -24
	.dwcfi	restore_reg, 55
        MOV32     R2H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -22
	.dwcfi	restore_reg, 51
        MOV32     R1H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -20
	.dwcfi	restore_reg, 47
        MOV32     R0H,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -18
	.dwcfi	restore_reg, 43
        MOV32     STF,*--SP             ; [CPU_FPU] 
	.dwcfi	cfa_offset, -16
	.dwcfi	restore_reg, 40
        MOVL      XAR7,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -14
	.dwcfi	restore_reg, 18
        MOVL      XAR6,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -12
	.dwcfi	restore_reg, 16
        MOVL      XAR5,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 14
        MOVL      XAR4,*--SP            ; [CPU_ALU] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 12
        MOVL      XT,*--SP              ; [CPU_ALU] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 22
	.dwcfi	restore_reg, 21
        POP       AR1H:AR0H             ; [CPU_ALU] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 7
        SETC      INTM, DBGM            ; [CPU_ALU] 
        POP       RB                    ; [CPU_FPU] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 74
        NASP      ; [CPU_ALU] 
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return

        IRET      ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x41)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text:debug_iface_poll"
	.clink
	.global	||debug_iface_poll||

$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("debug_iface_poll")
	.dwattr $C$DW$12, DW_AT_low_pc(||debug_iface_poll||)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_linkage_name("debug_iface_poll")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c")
	.dwattr $C$DW$12, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$12, DW_AT_decl_column(0x06)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 32,column 1,is_stmt,address ||debug_iface_poll||,isa 0

	.dwfde $C$DW$CIE, ||debug_iface_poll||

;***************************************************************
;* FNAME: debug_iface_poll              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||debug_iface_poll||:
;* AR4   assigned to $O$K11
;* AH    assigned to b
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("b")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg1]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||s_rx_head||     ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 33,column 12,is_stmt,isa 0
        MOVU      ACC,@||s_rx_head||    ; [CPU_ALU] |33| 
        MOVZ      AR6,@||s_rx_tail||    ; [CPU_ALU] |33| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |33| 
        B         ||$C$L4||,EQ          ; [CPU_ALU] |33| 
        ; branchcc occurs ; [] |33| 
        MOVL      XAR4,#||s_rx_ring||   ; [CPU_ARAU] 
||$C$L3||:    
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 957,column 5,is_stmt,isa 0
        MOV       AL,*(0:0x720a)        ; [CPU_ALU] |957| 
        LSR       AL,8                  ; [CPU_ALU] |957| 
        ANDB      AL,#0x1f              ; [CPU_ALU] |957| 
        CMPB      AL,#15                ; [CPU_ALU] |957| 
        B         ||$C$L4||,HIS         ; [CPU_ALU] |957| 
        ; branchcc occurs ; [] |957| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 40,column 20,is_stmt,isa 0
        MOVZ      AR0,@||s_rx_tail||    ; [CPU_ALU] |40| 
        MOV       AH,*+XAR4[AR0]        ; [CPU_ALU] |40| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 41,column 9,is_stmt,isa 0
        MOV       AL,@||s_rx_tail||     ; [CPU_ALU] |41| 
        ADDB      AL,#1                 ; [CPU_ALU] |41| 
        ANDB      AL,#0xff              ; [CPU_ALU] |41| 
        MOV       @||s_rx_tail||,AL     ; [CPU_ALU] |41| 
	.dwpsn	file "/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h",line 1136,column 1,is_stmt,isa 0
        MOV       *(0:0x7209),AH        ; [CPU_ALU] |1136| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 33,column 12,is_stmt,isa 0
        MOVU      ACC,@||s_rx_head||    ; [CPU_ALU] |33| 
        MOVZ      AR6,@||s_rx_tail||    ; [CPU_ALU] |33| 
        CMPL      ACC,XAR6              ; [CPU_ALU] |33| 
        B         ||$C$L3||,NEQ         ; [CPU_ALU] |33| 
        ; branchcc occurs ; [] |33| 
||$C$L4||:    
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$12, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0x2c)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text:debug_iface_init"
	.clink
	.global	||debug_iface_init||

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("debug_iface_init")
	.dwattr $C$DW$15, DW_AT_low_pc(||debug_iface_init||)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_linkage_name("debug_iface_init")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c")
	.dwattr $C$DW$15, DW_AT_decl_line(0x15)
	.dwattr $C$DW$15, DW_AT_decl_column(0x06)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 22,column 1,is_stmt,address ||debug_iface_init||,isa 0

	.dwfde $C$DW$CIE, ||debug_iface_init||

;***************************************************************
;* FNAME: debug_iface_init              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

||debug_iface_init||:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#||s_rx_head||     ; [CPU_ARAU] 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 23,column 5,is_stmt,isa 0
        MOV       @||s_rx_head||,#0     ; [CPU_ALU] |23| 
	.dwpsn	file "/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c",line 24,column 5,is_stmt,isa 0
        MOV       @||s_rx_tail||,#0     ; [CPU_ALU] |24| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return

        LRETR     ; [CPU_ALU] 
        ; return occurs ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("/home/jose/Documents/source/foc-f28379d-fsae/src/debug_iface.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0x1d)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	||SCI_clearInterruptStatus||

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
$C$DW$17	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$17, DW_AT_name("SCI_FIFO_TX0")
	.dwattr $C$DW$17, DW_AT_const_value(0x00)
	.dwattr $C$DW$17, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$17, DW_AT_decl_line(0x84)
	.dwattr $C$DW$17, DW_AT_decl_column(0x05)

$C$DW$18	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$18, DW_AT_name("SCI_FIFO_TX1")
	.dwattr $C$DW$18, DW_AT_const_value(0x01)
	.dwattr $C$DW$18, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$18, DW_AT_decl_line(0x85)
	.dwattr $C$DW$18, DW_AT_decl_column(0x05)

$C$DW$19	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$19, DW_AT_name("SCI_FIFO_TX2")
	.dwattr $C$DW$19, DW_AT_const_value(0x02)
	.dwattr $C$DW$19, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0x86)
	.dwattr $C$DW$19, DW_AT_decl_column(0x05)

$C$DW$20	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$20, DW_AT_name("SCI_FIFO_TX3")
	.dwattr $C$DW$20, DW_AT_const_value(0x03)
	.dwattr $C$DW$20, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0x87)
	.dwattr $C$DW$20, DW_AT_decl_column(0x05)

$C$DW$21	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$21, DW_AT_name("SCI_FIFO_TX4")
	.dwattr $C$DW$21, DW_AT_const_value(0x04)
	.dwattr $C$DW$21, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0x88)
	.dwattr $C$DW$21, DW_AT_decl_column(0x05)

$C$DW$22	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$22, DW_AT_name("SCI_FIFO_TX5")
	.dwattr $C$DW$22, DW_AT_const_value(0x05)
	.dwattr $C$DW$22, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0x89)
	.dwattr $C$DW$22, DW_AT_decl_column(0x05)

$C$DW$23	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$23, DW_AT_name("SCI_FIFO_TX6")
	.dwattr $C$DW$23, DW_AT_const_value(0x06)
	.dwattr $C$DW$23, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$23, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$23, DW_AT_decl_column(0x05)

$C$DW$24	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$24, DW_AT_name("SCI_FIFO_TX7")
	.dwattr $C$DW$24, DW_AT_const_value(0x07)
	.dwattr $C$DW$24, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$24, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$24, DW_AT_decl_column(0x05)

$C$DW$25	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$25, DW_AT_name("SCI_FIFO_TX8")
	.dwattr $C$DW$25, DW_AT_const_value(0x08)
	.dwattr $C$DW$25, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$25, DW_AT_decl_column(0x05)

$C$DW$26	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$26, DW_AT_name("SCI_FIFO_TX9")
	.dwattr $C$DW$26, DW_AT_const_value(0x09)
	.dwattr $C$DW$26, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$26, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$26, DW_AT_decl_column(0x05)

$C$DW$27	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$27, DW_AT_name("SCI_FIFO_TX10")
	.dwattr $C$DW$27, DW_AT_const_value(0x0a)
	.dwattr $C$DW$27, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$27, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$27, DW_AT_decl_column(0x05)

$C$DW$28	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$28, DW_AT_name("SCI_FIFO_TX11")
	.dwattr $C$DW$28, DW_AT_const_value(0x0b)
	.dwattr $C$DW$28, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$28, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$28, DW_AT_decl_column(0x05)

$C$DW$29	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$29, DW_AT_name("SCI_FIFO_TX12")
	.dwattr $C$DW$29, DW_AT_const_value(0x0c)
	.dwattr $C$DW$29, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$29, DW_AT_decl_line(0x90)
	.dwattr $C$DW$29, DW_AT_decl_column(0x05)

$C$DW$30	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$30, DW_AT_name("SCI_FIFO_TX13")
	.dwattr $C$DW$30, DW_AT_const_value(0x0d)
	.dwattr $C$DW$30, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x91)
	.dwattr $C$DW$30, DW_AT_decl_column(0x05)

$C$DW$31	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$31, DW_AT_name("SCI_FIFO_TX14")
	.dwattr $C$DW$31, DW_AT_const_value(0x0e)
	.dwattr $C$DW$31, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x92)
	.dwattr $C$DW$31, DW_AT_decl_column(0x05)

$C$DW$32	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$32, DW_AT_name("SCI_FIFO_TX15")
	.dwattr $C$DW$32, DW_AT_const_value(0x0f)
	.dwattr $C$DW$32, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$32, DW_AT_decl_line(0x93)
	.dwattr $C$DW$32, DW_AT_decl_column(0x05)

$C$DW$33	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$33, DW_AT_name("SCI_FIFO_TX16")
	.dwattr $C$DW$33, DW_AT_const_value(0x10)
	.dwattr $C$DW$33, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$33, DW_AT_decl_line(0x94)
	.dwattr $C$DW$33, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$19, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x83)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$19

	.dwendtag $C$DW$TU$19


$C$DW$TU$20	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$20
$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("SCI_TxFIFOLevel")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$20, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x95)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$20


$C$DW$TU$24	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$24

$C$DW$T$24	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$34	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$34, DW_AT_name("SCI_FIFO_RX0")
	.dwattr $C$DW$34, DW_AT_const_value(0x00)
	.dwattr $C$DW$34, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$34, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$34, DW_AT_decl_column(0x05)

$C$DW$35	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$35, DW_AT_name("SCI_FIFO_RX1")
	.dwattr $C$DW$35, DW_AT_const_value(0x01)
	.dwattr $C$DW$35, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$35, DW_AT_decl_column(0x05)

$C$DW$36	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$36, DW_AT_name("SCI_FIFO_RX2")
	.dwattr $C$DW$36, DW_AT_const_value(0x02)
	.dwattr $C$DW$36, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$36, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$36, DW_AT_decl_column(0x05)

$C$DW$37	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$37, DW_AT_name("SCI_FIFO_RX3")
	.dwattr $C$DW$37, DW_AT_const_value(0x03)
	.dwattr $C$DW$37, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$37, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$37, DW_AT_decl_column(0x05)

$C$DW$38	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$38, DW_AT_name("SCI_FIFO_RX4")
	.dwattr $C$DW$38, DW_AT_const_value(0x04)
	.dwattr $C$DW$38, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$38, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$38, DW_AT_decl_column(0x05)

$C$DW$39	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$39, DW_AT_name("SCI_FIFO_RX5")
	.dwattr $C$DW$39, DW_AT_const_value(0x05)
	.dwattr $C$DW$39, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$39, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$39, DW_AT_decl_column(0x05)

$C$DW$40	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$40, DW_AT_name("SCI_FIFO_RX6")
	.dwattr $C$DW$40, DW_AT_const_value(0x06)
	.dwattr $C$DW$40, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$40, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$40, DW_AT_decl_column(0x05)

$C$DW$41	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$41, DW_AT_name("SCI_FIFO_RX7")
	.dwattr $C$DW$41, DW_AT_const_value(0x07)
	.dwattr $C$DW$41, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$41, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$41, DW_AT_decl_column(0x05)

$C$DW$42	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$42, DW_AT_name("SCI_FIFO_RX8")
	.dwattr $C$DW$42, DW_AT_const_value(0x08)
	.dwattr $C$DW$42, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$42, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$42, DW_AT_decl_column(0x05)

$C$DW$43	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$43, DW_AT_name("SCI_FIFO_RX9")
	.dwattr $C$DW$43, DW_AT_const_value(0x09)
	.dwattr $C$DW$43, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$43, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$43, DW_AT_decl_column(0x05)

$C$DW$44	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$44, DW_AT_name("SCI_FIFO_RX10")
	.dwattr $C$DW$44, DW_AT_const_value(0x0a)
	.dwattr $C$DW$44, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$44, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$44, DW_AT_decl_column(0x05)

$C$DW$45	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$45, DW_AT_name("SCI_FIFO_RX11")
	.dwattr $C$DW$45, DW_AT_const_value(0x0b)
	.dwattr $C$DW$45, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$45, DW_AT_decl_line(0xab)
	.dwattr $C$DW$45, DW_AT_decl_column(0x05)

$C$DW$46	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$46, DW_AT_name("SCI_FIFO_RX12")
	.dwattr $C$DW$46, DW_AT_const_value(0x0c)
	.dwattr $C$DW$46, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$46, DW_AT_decl_line(0xac)
	.dwattr $C$DW$46, DW_AT_decl_column(0x05)

$C$DW$47	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$47, DW_AT_name("SCI_FIFO_RX13")
	.dwattr $C$DW$47, DW_AT_const_value(0x0d)
	.dwattr $C$DW$47, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$47, DW_AT_decl_line(0xad)
	.dwattr $C$DW$47, DW_AT_decl_column(0x05)

$C$DW$48	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$48, DW_AT_name("SCI_FIFO_RX14")
	.dwattr $C$DW$48, DW_AT_const_value(0x0e)
	.dwattr $C$DW$48, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$48, DW_AT_decl_line(0xae)
	.dwattr $C$DW$48, DW_AT_decl_column(0x05)

$C$DW$49	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$49, DW_AT_name("SCI_FIFO_RX15")
	.dwattr $C$DW$49, DW_AT_const_value(0x0f)
	.dwattr $C$DW$49, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$49, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$49, DW_AT_decl_column(0x05)

$C$DW$50	.dwtag  DW_TAG_enumerator
	.dwattr $C$DW$50, DW_AT_name("SCI_FIFO_RX16")
	.dwattr $C$DW$50, DW_AT_const_value(0x10)
	.dwattr $C$DW$50, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$50, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$50, DW_AT_decl_column(0x05)

	.dwattr $C$DW$T$24, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x01)
	.dwendtag $C$DW$T$24

	.dwendtag $C$DW$TU$24


$C$DW$TU$25	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$25
$C$DW$T$25	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$25, DW_AT_name("SCI_RxFIFOLevel")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_decl_file("/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/sci.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x03)

	.dwendtag $C$DW$TU$25


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


$C$DW$TU$27	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$27
$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("__uint16_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$27, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/machine/_types.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x1c)

	.dwendtag $C$DW$TU$27


$C$DW$TU$28	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$28
$C$DW$T$28	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$28, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_decl_file("/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include/sys/_stdint.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x15)

	.dwendtag $C$DW$TU$28


$C$DW$TU$36	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$36
$C$DW$51	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$28)

$C$DW$T$36	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$51)

	.dwendtag $C$DW$TU$36


$C$DW$TU$37	.dwtag  DW_TAG_type_unit
	.dwmtype  $C$DW$T$37

$C$DW$T$37	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x100)
$C$DW$52	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$52, DW_AT_upper_bound(0xff)

	.dwendtag $C$DW$T$37

	.dwendtag $C$DW$TU$37


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

