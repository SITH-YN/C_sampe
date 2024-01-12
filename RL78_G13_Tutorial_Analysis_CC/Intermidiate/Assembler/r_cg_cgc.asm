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
#@   -o CMakeFiles\CCRL_Project.dir\generate\r_cg_cgc.c.obj
#@   -c
#@   C:\GitHub\SITH-YN\C_sample\RL78_G13_Tutorial_Analysis_CC\generate\r_cg_cgc.c
#@  compiled at Fri Jan 12 19:03:44 2024

	.PUBLIC _R_CGC_Create

	.SECTION .textf,TEXTF
	.TYPE _R_CGC_Create,function,.LFE1-_R_CGC_Create
_R_CGC_Create:
	.STACK _R_CGC_Create = 4
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
	;***       21 : * File Name    : r_cg_cgc.c
	;***       22 : * Version      : CodeGenerator for RL78/G13 V2.03.01.03 [30 Jan 2015]
	;***       23 : * Device(s)    : R5F100LE
	;***       24 : * Tool-Chain   : CCRL
	;***       25 : * Description  : This file implements device driver for CGC module.
	;***       26 : * Creation Date: 2015/06/25
	;***       27 : ***********************************************************************************************************************/
	;***       28 : 
	;***       29 : /***********************************************************************************************************************
	;***       30 : Includes
	;***       31 : ***********************************************************************************************************************/
	;***       32 : #include "r_cg_macrodriver.h"
	;***       33 : #include "r_cg_cgc.h"
	;***       34 : /* Start user code for include. Do not edit comment generated here */
	;***       35 : /* End user code. Do not edit comment generated here */
	;***       36 : #include "r_cg_userdefine.h"
	;***       37 : 
	;***       38 : /***********************************************************************************************************************
	;***       39 : Pragma directive
	;***       40 : ***********************************************************************************************************************/
	;***       41 : /* Start user code for pragma. Do not edit comment generated here */
	;***       42 : /* End user code. Do not edit comment generated here */
	;***       43 : 
	;***       44 : /***********************************************************************************************************************
	;***       45 : Global variables and functions
	;***       46 : ***********************************************************************************************************************/
	;***       47 : /* Start user code for global. Do not edit comment generated here */
	;***       48 : /* End user code. Do not edit comment generated here */
	;***       49 : 
	;***       50 : /***********************************************************************************************************************
	;***       51 : * Function Name: R_CGC_Create
	;***       52 : * Description  : This function initializes the clock generator.
	;***       53 : * Arguments    : None
	;***       54 : * Return Value : None
	;***       55 : ***********************************************************************************************************************/
	;***       56 : void R_CGC_Create(void)
	;***       57 : {
	;***       58 :     /* Set fMX */
	;***       59 :     CMC = _00_CGC_HISYS_PORT | _00_CGC_SUB_PORT | _00_CGC_SYSOSC_DEFAULT | _00_CGC_SUBMODE_DEFAULT;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_cgc.c", 59
	mov 0xFFFA0, #0x00
.BB@LABEL@1_1:	; entry.split
	;***       60 :     MSTOP = 1U;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_cgc.c", 60
	set1 0xFFFA1.7
.BB@LABEL@1_2:	; entry.split1
	;***       61 :     /* Set fMAIN */
	;***       62 :     MCM0 = 0U;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_cgc.c", 62
	clr1 0xFFFA4.4
.BB@LABEL@1_3:	; entry.split2
	;***       63 :     /* Set fSUB */
	;***       64 :     XTSTOP = 1U;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_cgc.c", 64
	set1 0xFFFA1.6
.BB@LABEL@1_4:	; entry.split3
	;***       65 :     OSMC = _10_CGC_RTC_CLK_FIL;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_cgc.c", 65
	mov !0x00F3, #0x10
.BB@LABEL@1_5:	; entry.split4
	;***       66 :     /* Set fCLK */
	;***       67 :     CSS = 0U;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_cgc.c", 67
	clr1 0xFFFA4.6
.BB@LABEL@1_6:	; entry.split5
	;***       68 :     /* Set fIH */
	;***       69 :     HIOSTOP = 0U;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_cgc.c", 69
	clr1 0xFFFA1.0
	ret
.LFE1:
	;***       70 : }
	;***       71 : 
	;***       72 : /* Start user code for adding. Do not edit comment generated here */
	;***       73 : /* End user code. Do not edit comment generated here */
