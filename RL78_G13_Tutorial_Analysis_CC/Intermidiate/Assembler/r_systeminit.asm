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
#@   -o CMakeFiles\CCRL_Project.dir\generate\r_systeminit.c.obj
#@   -c
#@   C:\GitHub\SITH-YN\C_sample\RL78_G13_Tutorial_Analysis_CC\generate\r_systeminit.c
#@  compiled at Fri Jan 12 19:03:44 2024

	.PUBLIC _R_Systeminit
	.EXTERN _R_CGC_Get_ResetSource
	.EXTERN _R_CGC_Create
	.EXTERN _R_PORT_Create
	.EXTERN _R_TAU0_Create
	.PUBLIC _R_hdwinit

	.SECTION .textf,TEXTF
	.TYPE _R_Systeminit,function,.LFE1-_R_Systeminit
_R_Systeminit:
	.STACK _R_Systeminit = 4
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
	;***       21 : * File Name    : r_systeminit.c
	;***       22 : * Version      : CodeGenerator for RL78/G13 V2.03.01.03 [30 Jan 2015]
	;***       23 : * Device(s)    : R5F100LE
	;***       24 : * Tool-Chain   : CCRL
	;***       25 : * Description  : This file implements system initializing function.
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
	;***       50 : /* End user code. Do not edit comment generated here */
	;***       51 : 
	;***       52 : /***********************************************************************************************************************
	;***       53 : * Function Name: R_Systeminit
	;***       54 : * Description  : This function initializes every macro.
	;***       55 : * Arguments    : None
	;***       56 : * Return Value : None
	;***       57 : ***********************************************************************************************************************/
	;***       58 : void R_Systeminit(void)
	;***       59 : {
	;***       60 :     PIOR = 0x00U;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_systeminit.c", 60
	clrb !0x0077
.BB@LABEL@1_1:	; entry.split
	;***       61 :     R_CGC_Get_ResetSource();
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_systeminit.c", 61
	call !!_R_CGC_Get_ResetSource
.BB@LABEL@1_2:	; entry.split1
	;***       62 :     R_CGC_Create();
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_systeminit.c", 62
	call !!_R_CGC_Create
.BB@LABEL@1_3:	; entry.split2
	;***       63 :     R_PORT_Create();
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_systeminit.c", 63
	call !!_R_PORT_Create
.BB@LABEL@1_4:	; entry.split3
	;***       64 :     R_TAU0_Create();
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_systeminit.c", 64
	call !!_R_TAU0_Create
.BB@LABEL@1_5:	; entry.split4
	;***       65 : 
	;***       66 :     IAWCTL = 0x00U;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_systeminit.c", 66
	clrb !0x0078
	ret
.LFE1:
	.TYPE _R_hdwinit,function,.LFE2-_R_hdwinit
_R_hdwinit:
	.STACK _R_hdwinit = 4
	;***       67 : }
	;***       68 : 
	;***       69 : 
	;***       70 : /***********************************************************************************************************************
	;***       71 : * Function Name: hdwinit
	;***       72 : * Description  : This function initializes hardware setting.
	;***       73 : * Arguments    : None
	;***       74 : * Return Value : None
	;***       75 : ***********************************************************************************************************************/
	;***       76 : void R_hdwinit(void)
	;***       77 : {
	;***       78 :     DI();
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_systeminit.c", 78
	di
.BB@LABEL@2_1:	; entry.split
	;***       79 :     R_Systeminit();
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_systeminit.c", 79
	call $!_R_Systeminit
	ret
.LFE2:
	;***       80 : }
	;***       81 : 
	;***       82 : /* Start user code for adding. Do not edit comment generated here */
	;***       83 : /* End user code. Do not edit comment generated here */
