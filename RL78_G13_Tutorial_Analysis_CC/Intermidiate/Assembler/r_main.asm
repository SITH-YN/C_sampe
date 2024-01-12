#CC-RL Compiler RL78 Assembler Source
#@  CC-RL Version : V1.12.01  [12 Jun 2023]
#@  Commmand :
#@   -IC:\RENESAS\CC\CC-RL\V1.12.01\inc
#@   -IC:\GitHub\SITH-YN\C_sample\RL78_G13_Tutorial_Analysis_CC\src
#@   -IC:\GitHub\SITH-YN\C_sample\RL78_G13_Tutorial_Analysis_CC\generate
#@   -cpu=S2
#@   -g
#@   -dev=c:/Users/9921349-Z100/AppData/Roaming/Code/User/globalStorage/renesaselectronicscorporation.renesas-debug/DebugComp/RL78/RL78/COMMON/DR5F100LE.DVF
#@   -preprocess=comment,line
#@   -P
#@   -prep_path=C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/Intermidiate/Preprocess
#@   -cref=C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/Intermidiate/Crossreference
#@   -pass_source
#@   -asm_path=C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/Intermidiate/Assembler
#@   -refs_without_declaration
#@   -Onothing
#@   -IC:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC
#@   -IC:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/src
#@   -IC:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate
#@   -character_set=utf8
#@   -o CMakeFiles\CCRL_Project.dir\generate\r_main.c.obj
#@   -c
#@   C:\GitHub\SITH-YN\C_sample\RL78_G13_Tutorial_Analysis_CC\generate\r_main.c
#@  compiled at Fri Jan 12 19:03:44 2024

	.PUBLIC _flag_10ms
	.PUBLIC _data1
	.PUBLIC _data2
	.PUBLIC _g_count_1ms
	.PUBLIC _reg_1ms
	.PUBLIC _r_main
	.PUBLIC _R_MAIN_UserInit
	.PUBLIC _func1
	.PUBLIC _func1a
	.PUBLIC _func2
	.PUBLIC _func2a
	.EXTERN _R_TAU0_Channel0_Start
	.EXTERN _R_TAU0_Channel1_Start

	.SECTION .textf,TEXTF
	.TYPE _r_main,function,.LFE1-_r_main
_r_main:
	.STACK _r_main = 4
	;***        1 : /***********************************************************************************************************************
	;***        2 : * DISCLAIMER
	;***        3 : * This software is supplied by Renesas Electronics Corporation and is only intended for use with Renesas products.
	;***        4 : * No other uses are authorized. This software is owned by Renesas Electronics Corporation and is protected under all
	;***        5 : * applicable laws, including copyright laws. 
	;***        6 : * THIS SOFTWARE IS PROVIDED "AS IS" AND RENESAS MAKES NO WARRANTIESREGARDING THIS SOFTWARE, WHETHER EXPRESS, IMPLIED
	;***        7 : * OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
	;***        8 : * NON-INFRINGEMENT.  ALL SUCH WARRANTIES ARE EXPRESSLY DISCLAIMED.TO THE MAXIMUM EXTENT PERMITTED NOT PROHIBITED BY
	;***        9 : * LAW, NEITHER RENESAS ELECTRONICS CORPORATION NOR ANY OF ITS AFFILIATED COMPANIES SHALL BE LIABLE FOR ANY DIRECT,
	;***       10 : * INDIRECT, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES FOR ANY REASON RELATED TO THIS SOFTWARE, EVEN IF RENESAS OR
	;***       11 : * ITS AFFILIATES HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
	;***       12 : * Renesas reserves the right, without notice, to make changes to this software and to discontinue the availability 
	;***       13 : * of this software. By using this software, you agree to the additional terms and conditions found by accessing the 
	;***       14 : * following link:
	;***       15 : * http://www.renesas.com/disclaimer
	;***       16 : *
	;***       17 : * Copyright (C) 2011, 2015 Renesas Electronics Corporation. All rights reserved.
	;***       18 : ***********************************************************************************************************************/
	;***       19 : 
	;***       20 : /***********************************************************************************************************************
	;***       21 : * File Name    : r_main.c
	;***       22 : * Version      : CodeGenerator for RL78/G13 V2.03.01.03 [30 Jan 2015]
	;***       23 : * Device(s)    : R5F100LE
	;***       24 : * Tool-Chain   : CCRL
	;***       25 : * Description  : This file implements main function.
	;***       26 : * Creation Date: 2015/06/25
	;***       27 : ***********************************************************************************************************************/
	;***       28 : 
	;***       29 : /***********************************************************************************************************************
	;***       30 : Includes
	;***       31 : ***********************************************************************************************************************/
	;***       32 : #include "r_cg_macrodriver.h"
	;***       33 : #include "r_cg_cgc.h"
	;***       34 : #include "r_cg_port.h"
	;***       35 : #include "r_cg_timer.h"
	;***       36 : /* Start user code for include. Do not edit comment generated here */
	;***       37 : /* End user code. Do not edit comment generated here */
	;***       38 : #include "r_cg_userdefine.h"
	;***       39 : 
	;***       40 : /***********************************************************************************************************************
	;***       41 : Pragma directive
	;***       42 : ***********************************************************************************************************************/
	;***       43 : /* Start user code for pragma. Do not edit comment generated here */
	;***       44 : /* End user code. Do not edit comment generated here */
	;***       45 : 
	;***       46 : /***********************************************************************************************************************
	;***       47 : Global variables and functions
	;***       48 : ***********************************************************************************************************************/
	;***       49 : /* Start user code for global. Do not edit comment generated here */
	;***       50 : #define WAIT_F 10
	;***       51 : 
	;***       52 : uint16_t	flag_10ms;
	;***       53 : uint16_t	data1;
	;***       54 : uint16_t	data2;
	;***       55 : uint16_t	g_count_1ms;
	;***       56 : uint16_t	reg_1ms;
	;***       57 : 
	;***       58 : void	func1( void );
	;***       59 : void	func1a( void );
	;***       60 : void	func2( void );
	;***       61 : void	func2a( void );
	;***       62 : /* End user code. Do not edit comment generated here */
	;***       63 : void R_MAIN_UserInit(void);
	;***       64 : 
	;***       65 : /***********************************************************************************************************************
	;***       66 : * Function Name: main
	;***       67 : * Description  : This function implements main function.
	;***       68 : * Arguments    : None
	;***       69 : * Return Value : None
	;***       70 : ***********************************************************************************************************************/
	;***       71 : void r_main(void)
	;***       72 : {
	;***       73 :     R_MAIN_UserInit();
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 73
	call $!_R_MAIN_UserInit
.BB@LABEL@1_1:	; entry.split
	;***       74 :     /* Start user code. Do not edit comment generated here */
	;***       75 :     R_TAU0_Channel0_Start();
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 75
	call !!_R_TAU0_Channel0_Start
.BB@LABEL@1_2:	; entry.split1
	;***       76 :     R_TAU0_Channel1_Start();
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 76
	call !!_R_TAU0_Channel1_Start
.BB@LABEL@1_3:	; bb1.split
	;***       77 :     while (1U)
	;***       78 :     {
	;***       79 : 	func1();
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 79
	call $!_func1
.BB@LABEL@1_4:	; bb1.split2
	;***       80 : 	func2();
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 80
	call $!_func2
.BB@LABEL@1_5:	; bb1.split3
	;***       81 : 	__nop();
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 81
	nop
	br $.BB@LABEL@1_3
.LFE1:
	.TYPE _R_MAIN_UserInit,function,.LFE2-_R_MAIN_UserInit
_R_MAIN_UserInit:
	.STACK _R_MAIN_UserInit = 4
	;***       82 :     }
	;***       83 :     /* End user code. Do not edit comment generated here */
	;***       84 : }
	;***       85 : 
	;***       86 : /***********************************************************************************************************************
	;***       87 : * Function Name: R_MAIN_UserInit
	;***       88 : * Description  : This function adds user code before implementing main function.
	;***       89 : * Arguments    : None
	;***       90 : * Return Value : None
	;***       91 : ***********************************************************************************************************************/
	;***       92 : void R_MAIN_UserInit(void)
	;***       93 : {
	;***       94 :     /* Start user code. Do not edit comment generated here */
	;***       95 :     EI();
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 95
	ei
	ret
.LFE2:
	.TYPE _func1,function,.LFE3-_func1
_func1:
	.STACK _func1 = 6
	;***       96 :     /* End user code. Do not edit comment generated here */
	;***       97 : }
	;***       98 : 
	;***       99 : /* Start user code for adding. Do not edit comment generated here */
	;***      100 : void	func1(void)
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 100
	push hl
	clrw ax
	;***      101 : {
	;***      102 : 	uint16_t i;
	;***      103 : 
	;***      104 : 	for (i = 0; i < 40; i++){
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 104
	movw [sp+0x00], ax
	br $.BB@LABEL@3_2
.BB@LABEL@3_1:	; bb
	;***      105 : 		func1a();
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 105
	call $!_func1a
	movw ax, [sp+0x00]
	incw ax
	movw [sp+0x00], ax
.BB@LABEL@3_2:	; bb3
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 104
	movw ax, [sp+0x00]
	cmpw ax, #0x0028
	bc $.BB@LABEL@3_1
.BB@LABEL@3_3:	; return
	;***      106 : 	}
	;***      107 : }
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 107
	pop ax
	ret
.LFE3:
	.TYPE _func1a,function,.LFE4-_func1a
_func1a:
	.STACK _func1a = 6
	;***      108 : 
	;***      109 : void	func1a(void)
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 109
	push hl
	clrw ax
	;***      110 : {
	;***      111 : 	uint16_t i;
	;***      112 : 
	;***      113 : 	for (i = 0; i < WAIT_F; i++){
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 113
	movw [sp+0x00], ax
	br $.BB@LABEL@4_2
.BB@LABEL@4_1:	; bb
	movw ax, [sp+0x00]
	incw ax
	movw [sp+0x00], ax
.BB@LABEL@4_2:	; bb3
	movw ax, [sp+0x00]
	cmpw ax, #0x000A
	bc $.BB@LABEL@4_1
.BB@LABEL@4_3:	; return
	;***      114 : 	}
	;***      115 : }
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 115
	pop ax
	ret
.LFE4:
	.TYPE _func2,function,.LFE5-_func2
_func2:
	.STACK _func2 = 6
	;***      116 : 
	;***      117 : void	func2(void)
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 117
	push hl
	clrw ax
	;***      118 : {
	;***      119 : 	uint16_t i;
	;***      120 : 
	;***      121 : 	for (i = 0; i < 20; i++){
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 121
	movw [sp+0x00], ax
	br $.BB@LABEL@5_2
.BB@LABEL@5_1:	; bb
	;***      122 : 		func2a();
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 122
	call $!_func2a
	movw ax, [sp+0x00]
	incw ax
	movw [sp+0x00], ax
.BB@LABEL@5_2:	; bb3
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 121
	movw ax, [sp+0x00]
	cmpw ax, #0x0014
	bc $.BB@LABEL@5_1
.BB@LABEL@5_3:	; return
	;***      123 : 	}
	;***      124 : 
	;***      125 : 
	;***      126 : }
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 126
	pop ax
	ret
.LFE5:
	.TYPE _func2a,function,.LFE6-_func2a
_func2a:
	.STACK _func2a = 6
	;***      127 : void	func2a(void)
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 127
	push hl
	clrw ax
	;***      128 : {
	;***      129 : 	uint16_t i;
	;***      130 : 
	;***      131 : 	for (i = 0; i < WAIT_F; i++){
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 131
	movw [sp+0x00], ax
	br $.BB@LABEL@6_2
.BB@LABEL@6_1:	; bb
	movw ax, [sp+0x00]
	incw ax
	movw [sp+0x00], ax
.BB@LABEL@6_2:	; bb3
	movw ax, [sp+0x00]
	cmpw ax, #0x000A
	bc $.BB@LABEL@6_1
.BB@LABEL@6_3:	; return
	;***      132 : 	}
	;***      133 : }
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_main.c", 133
	pop ax
	ret
.LFE6:
	;***      134 : /* End user code. Do not edit comment generated here */
	.SECTION .bss,BSS
	.ALIGN 2
	.TYPE _flag_10ms,object,2
_flag_10ms:
	.DS (2)
	.ALIGN 2
	.TYPE _data1,object,2
_data1:
	.DS (2)
	.ALIGN 2
	.TYPE _data2,object,2
_data2:
	.DS (2)
	.ALIGN 2
	.TYPE _g_count_1ms,object,2
_g_count_1ms:
	.DS (2)
	.ALIGN 2
	.TYPE _reg_1ms,object,2
_reg_1ms:
	.DS (2)
