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
#@   -o CMakeFiles\CCRL_Project.dir\generate\r_cg_timer_user.c.obj
#@   -c
#@   C:\GitHub\SITH-YN\C_sample\RL78_G13_Tutorial_Analysis_CC\generate\r_cg_timer_user.c
#@  compiled at Fri Jan 12 19:03:44 2024

	.EXTERN _g_count_1ms
	.EXTERN _flag_10ms
	.EXTERN _reg_1ms
	.EXTERN _data1
	.EXTERN _data2

	.SECTION .text,TEXT
_r_tau0_channel0_interrupt@1	.vector 0x002C
	.TYPE _r_tau0_channel0_interrupt@1,function,.LFE1-_r_tau0_channel0_interrupt@1
_r_tau0_channel0_interrupt@1:
	.STACK _r_tau0_channel0_interrupt@1 = 6
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
	;***       21 : * File Name    : r_cg_timer_user.c
	;***       22 : * Version      : CodeGenerator for RL78/G13 V2.03.01.03 [30 Jan 2015]
	;***       23 : * Device(s)    : R5F100LE
	;***       24 : * Tool-Chain   : CCRL
	;***       25 : * Description  : This file implements device driver for TAU module.
	;***       26 : * Creation Date: 2015/06/25
	;***       27 : ***********************************************************************************************************************/
	;***       28 : 
	;***       29 : /***********************************************************************************************************************
	;***       30 : Includes
	;***       31 : ***********************************************************************************************************************/
	;***       32 : #include "r_cg_macrodriver.h"
	;***       33 : #include "r_cg_timer.h"
	;***       34 : /* Start user code for include. Do not edit comment generated here */
	;***       35 : /* End user code. Do not edit comment generated here */
	;***       36 : #include "r_cg_userdefine.h"
	;***       37 : 
	;***       38 : /***********************************************************************************************************************
	;***       39 : Pragma directive
	;***       40 : ***********************************************************************************************************************/
	;***       41 : #pragma interrupt r_tau0_channel0_interrupt(vect=INTTM00)
	;***       42 : #pragma interrupt r_tau0_channel1_interrupt(vect=INTTM01)
	;***       43 : /* Start user code for pragma. Do not edit comment generated here */
	;***       44 : /* End user code. Do not edit comment generated here */
	;***       45 : 
	;***       46 : /***********************************************************************************************************************
	;***       47 : Global variables and functions
	;***       48 : ***********************************************************************************************************************/
	;***       49 : /* Start user code for global. Do not edit comment generated here */
	;***       50 : #define data2_H	20
	;***       51 : 
	;***       52 : extern 	uint16_t	g_count_1ms;
	;***       53 : extern 	uint16_t	flag_10ms;
	;***       54 : extern  uint16_t	reg_1ms;
	;***       55 : extern	uint16_t	data1;
	;***       56 : extern	uint16_t	data2;
	;***       57 : /* End user code. Do not edit comment generated here */
	;***       58 : 
	;***       59 : /***********************************************************************************************************************
	;***       60 : * Function Name: r_tau0_channel0_interrupt
	;***       61 : * Description  : This function is INTTM00 interrupt service routine.
	;***       62 : * Arguments    : None
	;***       63 : * Return Value : None
	;***       64 : ***********************************************************************************************************************/
	;***       65 : static void __near r_tau0_channel0_interrupt(void)
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer_user.c", 65
	push ax
	;***       66 : {
	;***       67 :     /* Start user code. Do not edit comment generated here */
	;***       68 :     g_count_1ms++;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer_user.c", 68
	incw !LOWW(_g_count_1ms)
.BB@LABEL@1_1:	; entry.split
	;***       69 :     reg_1ms = g_count_1ms;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer_user.c", 69
	movw ax, !LOWW(_g_count_1ms)
	movw !LOWW(_reg_1ms), ax
.BB@LABEL@1_2:	; entry.split1
	;***       70 :     if(flag_10ms){
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer_user.c", 70
	movw ax, !LOWW(_flag_10ms)
	or a, x
	bz $.BB@LABEL@1_8
.BB@LABEL@1_3:	; if_then_bb
	clrw ax
	;***       71 : 		flag_10ms = 0;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer_user.c", 71
	movw !LOWW(_flag_10ms), ax
.BB@LABEL@1_4:	; if_then_bb.split
	;***       72 : 		data2++; 		
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer_user.c", 72
	incw !LOWW(_data2)
.BB@LABEL@1_5:	; if_then_bb.split2
	;***       73 : 		g_count_1ms = 0;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer_user.c", 73
	movw !LOWW(_g_count_1ms), ax
.BB@LABEL@1_6:	; if_then_bb.split3
	;***       74 : 		if(data2 > data2_H){
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer_user.c", 74
	movw ax, !LOWW(_data2)
	cmpw ax, #0x0015
	bc $.BB@LABEL@1_8
.BB@LABEL@1_7:	; if_then_bb12
	clrw ax
	;***       75 : 			data2 = 0;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer_user.c", 75
	movw !LOWW(_data2), ax
.BB@LABEL@1_8:	; if_break_bb13
	;***       76 : 		}
	;***       77 :      }
	;***       78 :     data1 = reg_1ms + data2;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer_user.c", 78
	movw ax, !LOWW(_reg_1ms)
	addw ax, !LOWW(_data2)
	movw !LOWW(_data1), ax
	pop ax
	reti
.LFE1:
_r_tau0_channel1_interrupt@1	.vector 0x002E
	.TYPE _r_tau0_channel1_interrupt@1,function,.LFE2-_r_tau0_channel1_interrupt@1
_r_tau0_channel1_interrupt@1:
	.STACK _r_tau0_channel1_interrupt@1 = 6
	;***       79 :     /* End user code. Do not edit comment generated here */
	;***       80 : }
	;***       81 : 
	;***       82 : /***********************************************************************************************************************
	;***       83 : * Function Name: r_tau0_channel1_interrupt
	;***       84 : * Description  : This function is INTTM01 interrupt service routine.
	;***       85 : * Arguments    : None
	;***       86 : * Return Value : None
	;***       87 : ***********************************************************************************************************************/
	;***       88 : static void __near r_tau0_channel1_interrupt(void)
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer_user.c", 88
	push ax
	onew ax
	;***       89 : {
	;***       90 :     /* Start user code. Do not edit comment generated here */
	;***       91 :     flag_10ms = 1;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer_user.c", 91
	movw !LOWW(_flag_10ms), ax
	pop ax
	reti
.LFE2:
	;***       92 :     /* End user code. Do not edit comment generated here */
	;***       93 : }
	;***       94 : 
	;***       95 : /* Start user code for adding. Do not edit comment generated here */
	;***       96 : /* End user code. Do not edit comment generated here */
