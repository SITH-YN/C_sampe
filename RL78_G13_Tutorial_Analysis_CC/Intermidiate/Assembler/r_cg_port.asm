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
#@   -o CMakeFiles\CCRL_Project.dir\generate\r_cg_port.c.obj
#@   -c
#@   C:\GitHub\SITH-YN\C_sample\RL78_G13_Tutorial_Analysis_CC\generate\r_cg_port.c
#@  compiled at Fri Jan 12 19:03:44 2024

	.PUBLIC _R_PORT_Create

	.SECTION .textf,TEXTF
	.TYPE _R_PORT_Create,function,.LFE1-_R_PORT_Create
_R_PORT_Create:
	.STACK _R_PORT_Create = 4
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
	;***       21 : * File Name    : r_cg_port.c
	;***       22 : * Version      : CodeGenerator for RL78/G13 V2.03.01.03 [30 Jan 2015]
	;***       23 : * Device(s)    : R5F100LE
	;***       24 : * Tool-Chain   : CCRL
	;***       25 : * Description  : This file implements device driver for PORT module.
	;***       26 : * Creation Date: 2015/06/25
	;***       27 : ***********************************************************************************************************************/
	;***       28 : 
	;***       29 : /***********************************************************************************************************************
	;***       30 : Includes
	;***       31 : ***********************************************************************************************************************/
	;***       32 : #include "r_cg_macrodriver.h"
	;***       33 : #include "r_cg_port.h"
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
	;***       51 : * Function Name: R_PORT_Create
	;***       52 : * Description  : This function initializes the Port I/O.
	;***       53 : * Arguments    : None
	;***       54 : * Return Value : None
	;***       55 : ***********************************************************************************************************************/
	;***       56 : void R_PORT_Create(void)
	;***       57 : {
	;***       58 :     PU4 = _01_PUn0_PULLUP_ON;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_port.c", 58
	oneb !0x0034
	ret
.LFE1:
	;***       59 : }
	;***       60 : 
	;***       61 : /* Start user code for adding. Do not edit comment generated here */
	;***       62 : /* End user code. Do not edit comment generated here */
