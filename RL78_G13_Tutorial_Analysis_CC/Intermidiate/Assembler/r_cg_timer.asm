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
#@   -o CMakeFiles\CCRL_Project.dir\generate\r_cg_timer.c.obj
#@   -c
#@   C:\GitHub\SITH-YN\C_sample\RL78_G13_Tutorial_Analysis_CC\generate\r_cg_timer.c
#@  compiled at Fri Jan 12 19:03:44 2024

	.PUBLIC _R_TAU0_Create
	.PUBLIC _R_TAU0_Channel0_Start
	.PUBLIC _R_TAU0_Channel0_Stop
	.PUBLIC _R_TAU0_Channel1_Start
	.PUBLIC _R_TAU0_Channel1_Stop

	.SECTION .textf,TEXTF
	.TYPE _R_TAU0_Create,function,.LFE1-_R_TAU0_Create
_R_TAU0_Create:
	.STACK _R_TAU0_Create = 4
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
	;***       21 : * File Name    : r_cg_timer.c
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
	;***       51 : * Function Name: R_TAU0_Create
	;***       52 : * Description  : This function initializes the TAU0 module.
	;***       53 : * Arguments    : None
	;***       54 : * Return Value : None
	;***       55 : ***********************************************************************************************************************/
	;***       56 : void R_TAU0_Create(void)
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 56
	movw hl, #0x00F0
	;***       57 : {
	;***       58 :     TAU0EN = 1U;    /* supplies input clock */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 58
	set1 [hl].0
.BB@LABEL@1_1:	; entry.split
	movw ax, #0x0030
	;***       59 :     TPS0 = _0000_TAU_CKM0_FCLK_0 | _0030_TAU_CKM1_FCLK_3 | _0000_TAU_CKM2_FCLK_1 | _0000_TAU_CKM3_FCLK_8;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 59
	movw !0x01B6, ax
.BB@LABEL@1_2:	; entry.split1
	movw ax, #0x0AFF
	;***       60 :     /* Stop all channels */
	;***       61 :     TT0 = _0001_TAU_CH0_STOP_TRG_ON | _0002_TAU_CH1_STOP_TRG_ON | _0004_TAU_CH2_STOP_TRG_ON |
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 61
	movw !0x01B4, ax
.BB@LABEL@1_3:	; entry.split2
	;***       62 :           _0008_TAU_CH3_STOP_TRG_ON | _0010_TAU_CH4_STOP_TRG_ON | _0020_TAU_CH5_STOP_TRG_ON |
	;***       63 :           _0040_TAU_CH6_STOP_TRG_ON | _0080_TAU_CH7_STOP_TRG_ON | _0200_TAU_CH1_H8_STOP_TRG_ON |
	;***       64 :           _0800_TAU_CH3_H8_STOP_TRG_ON;
	;***       65 :     /* Mask channel 0 interrupt */
	;***       66 :     TMMK00 = 1U;    /* disable INTTM00 interrupt */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 66
	set1 0xFFFE6.4
.BB@LABEL@1_4:	; entry.split3
	;***       67 :     TMIF00 = 0U;    /* clear INTTM00 interrupt flag */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 67
	clr1 0xFFFE2.4
.BB@LABEL@1_5:	; entry.split4
	;***       68 :     /* Mask channel 1 interrupt */
	;***       69 :     TMMK01 = 1U;    /* disable INTTM01 interrupt */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 69
	set1 0xFFFE6.5
.BB@LABEL@1_6:	; entry.split5
	;***       70 :     TMIF01 = 0U;    /* clear INTTM01 interrupt flag */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 70
	clr1 0xFFFE2.5
.BB@LABEL@1_7:	; entry.split6
	;***       71 :     /* Mask channel 1 higher 8 bits interrupt */
	;***       72 :     TMMK01H = 1U;    /* disable INTTM01H interrupt */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 72
	set1 0xFFFE5.7
.BB@LABEL@1_8:	; entry.split7
	;***       73 :     TMIF01H = 0U;    /* clear INTTM01H interrupt flag */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 73
	clr1 0xFFFE1.7
.BB@LABEL@1_9:	; entry.split8
	;***       74 :     /* Mask channel 2 interrupt */
	;***       75 :     TMMK02 = 1U;    /* disable INTTM02 interrupt */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 75
	set1 0xFFFE6.6
.BB@LABEL@1_10:	; entry.split9
	;***       76 :     TMIF02 = 0U;    /* clear INTTM02 interrupt flag */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 76
	clr1 0xFFFE2.6
.BB@LABEL@1_11:	; entry.split10
	;***       77 :     /* Mask channel 3 interrupt */
	;***       78 :     TMMK03 = 1U;    /* disable INTTM03 interrupt */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 78
	set1 0xFFFE6.7
.BB@LABEL@1_12:	; entry.split11
	;***       79 :     TMIF03 = 0U;    /* clear INTTM03 interrupt flag */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 79
	clr1 0xFFFE2.7
.BB@LABEL@1_13:	; entry.split12
	;***       80 :     /* Mask channel 3 higher 8 bits interrupt */
	;***       81 :     TMMK03H = 1U;    /* disable INTTM03H interrupt */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 81
	set1 0xFFFE6.2
.BB@LABEL@1_14:	; entry.split13
	;***       82 :     TMIF03H = 0U;    /* clear INTTM03H interrupt flag */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 82
	clr1 0xFFFE2.2
.BB@LABEL@1_15:	; entry.split14
	;***       83 :     /* Mask channel 4 interrupt */
	;***       84 :     TMMK04 = 1U;    /* disable INTTM04 interrupt */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 84
	set1 0xFFFE7.7
.BB@LABEL@1_16:	; entry.split15
	;***       85 :     TMIF04 = 0U;    /* clear INTTM04 interrupt flag */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 85
	clr1 0xFFFE3.7
.BB@LABEL@1_17:	; entry.split16
	;***       86 :     /* Mask channel 5 interrupt */
	;***       87 :     TMMK05 = 1U;    /* disable INTTM05 interrupt */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 87
	set1 0xFFFD4.0
.BB@LABEL@1_18:	; entry.split17
	;***       88 :     TMIF05 = 0U;    /* clear INTTM05 interrupt flag */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 88
	clr1 0xFFFD0.0
.BB@LABEL@1_19:	; entry.split18
	;***       89 :     /* Mask channel 6 interrupt */
	;***       90 :     TMMK06 = 1U;    /* disable INTTM06 interrupt */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 90
	set1 0xFFFD4.1
.BB@LABEL@1_20:	; entry.split19
	;***       91 :     TMIF06 = 0U;    /* clear INTTM06 interrupt flag */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 91
	clr1 0xFFFD0.1
.BB@LABEL@1_21:	; entry.split20
	;***       92 :     /* Mask channel 7 interrupt */
	;***       93 :     TMMK07 = 1U;    /* disable INTTM07 interrupt */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 93
	set1 0xFFFD4.2
.BB@LABEL@1_22:	; entry.split21
	;***       94 :     TMIF07 = 0U;    /* clear INTTM07 interrupt flag */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 94
	clr1 0xFFFD0.2
.BB@LABEL@1_23:	; entry.split22
	;***       95 :     /* Set INTTM00 low priority */
	;***       96 :     TMPR100 = 1U;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 96
	set1 0xFFFEE.4
.BB@LABEL@1_24:	; entry.split23
	;***       97 :     TMPR000 = 1U;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 97
	set1 0xFFFEA.4
.BB@LABEL@1_25:	; entry.split24
	;***       98 :     /* Set INTTM01 low priority */
	;***       99 :     TMPR101 = 1U;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 99
	set1 0xFFFEE.5
.BB@LABEL@1_26:	; entry.split25
	;***      100 :     TMPR001 = 1U;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 100
	set1 0xFFFEA.5
.BB@LABEL@1_27:	; entry.split26
	clrw ax
	;***      101 :     /* Channel 0 used as interval timer */
	;***      102 :     TMR00 = _0000_TAU_CLOCK_SELECT_CKM0 | _0000_TAU_CLOCK_MODE_CKS | _0000_TAU_COMBINATION_SLAVE |
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 102
	movw !0x0190, ax
.BB@LABEL@1_28:	; entry.split27
	;***      103 :             _0000_TAU_TRIGGER_SOFTWARE | _0000_TAU_MODE_INTERVAL_TIMER | _0000_TAU_START_INT_UNUSED;
	;***      104 :     TDR00 = _7CFF_TAU_TDR00_VALUE;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 104
	movw 0xFFF18, #0x7CFF
.BB@LABEL@1_29:	; entry.split28
	movw de, #0x01B8
	;***      105 :     TO0 &= ~_0001_TAU_CH0_OUTPUT_VALUE_1;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 105
	movw ax, [de]
	xch a, x
	and a, #0xFE
	xch a, x
	movw [de], ax
.BB@LABEL@1_30:	; entry.split29
	movw de, #0x01BA
	;***      106 :     TOE0 &= ~_0001_TAU_CH0_OUTPUT_ENABLE;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 106
	movw ax, [de]
	xch a, x
	and a, #0xFE
	xch a, x
	movw [de], ax
.BB@LABEL@1_31:	; entry.split30
	movw ax, #0x8000
	;***      107 :     /* Channel 1 used as interval timer */
	;***      108 :     TMR01 = _8000_TAU_CLOCK_SELECT_CKM1 | _0000_TAU_CLOCK_MODE_CKS | _0000_TAU_16BITS_MODE |
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 108
	movw !0x0192, ax
.BB@LABEL@1_32:	; entry.split31
	;***      109 :             _0000_TAU_TRIGGER_SOFTWARE | _0000_TAU_MODE_INTERVAL_TIMER | _0000_TAU_START_INT_UNUSED;
	;***      110 :     TDR01 = _9C3F_TAU_TDR01_VALUE;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 110
	movw 0xFFF1A, #0x9C3F
.BB@LABEL@1_33:	; entry.split32
	movw de, #0x01BE
	;***      111 :     TOM0 &= ~_0002_TAU_CH1_OUTPUT_COMBIN;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 111
	movw ax, [de]
	xch a, x
	and a, #0xFD
	xch a, x
	movw [de], ax
.BB@LABEL@1_34:	; entry.split33
	movw de, #0x01BC
	;***      112 :     TOL0 &= ~_0002_TAU_CH1_OUTPUT_LEVEL_L;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 112
	movw ax, [de]
	xch a, x
	and a, #0xFD
	xch a, x
	movw [de], ax
.BB@LABEL@1_35:	; entry.split34
	movw de, #0x01B8
	;***      113 :     TO0 &= ~_0002_TAU_CH1_OUTPUT_VALUE_1;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 113
	movw ax, [de]
	xch a, x
	and a, #0xFD
	xch a, x
	movw [de], ax
.BB@LABEL@1_36:	; entry.split35
	movw de, #0x01BA
	;***      114 :     TOE0 &= ~_0002_TAU_CH1_OUTPUT_ENABLE;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 114
	movw ax, [de]
	xch a, x
	and a, #0xFD
	xch a, x
	movw [de], ax
	ret
.LFE1:
	.TYPE _R_TAU0_Channel0_Start,function,.LFE2-_R_TAU0_Channel0_Start
_R_TAU0_Channel0_Start:
	.STACK _R_TAU0_Channel0_Start = 4
	;***      115 : }
	;***      116 : 
	;***      117 : /***********************************************************************************************************************
	;***      118 : * Function Name: R_TAU0_Channel0_Start
	;***      119 : * Description  : This function starts TAU0 channel 0 counter.
	;***      120 : * Arguments    : None
	;***      121 : * Return Value : None
	;***      122 : ***********************************************************************************************************************/
	;***      123 : void R_TAU0_Channel0_Start(void)
	;***      124 : {
	;***      125 :     TMIF00 = 0U;    /* clear INTTM00 interrupt flag */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 125
	clr1 0xFFFE2.4
.BB@LABEL@2_1:	; entry.split
	;***      126 :     TMMK00 = 0U;    /* enable INTTM00 interrupt */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 126
	clr1 0xFFFE6.4
.BB@LABEL@2_2:	; entry.split1
	movw de, #0x01B2
	;***      127 :     TS0 |= _0001_TAU_CH0_START_TRG_ON;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 127
	movw ax, [de]
	xch a, x
	or a, #0x01
	xch a, x
	movw [de], ax
	ret
.LFE2:
	.TYPE _R_TAU0_Channel0_Stop,function,.LFE3-_R_TAU0_Channel0_Stop
_R_TAU0_Channel0_Stop:
	.STACK _R_TAU0_Channel0_Stop = 4
	;***      128 : }
	;***      129 : 
	;***      130 : /***********************************************************************************************************************
	;***      131 : * Function Name: R_TAU0_Channel0_Stop
	;***      132 : * Description  : This function stops TAU0 channel 0 counter.
	;***      133 : * Arguments    : None
	;***      134 : * Return Value : None
	;***      135 : ***********************************************************************************************************************/
	;***      136 : void R_TAU0_Channel0_Stop(void)
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 136
	movw de, #0x01B4
	;***      137 : {
	;***      138 :     TT0 |= _0001_TAU_CH0_STOP_TRG_ON;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 138
	movw ax, [de]
	xch a, x
	or a, #0x01
	xch a, x
	movw [de], ax
.BB@LABEL@3_1:	; entry.split
	;***      139 :     /* Mask channel 0 interrupt */
	;***      140 :     TMMK00 = 1U;    /* disable INTTM00 interrupt */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 140
	set1 0xFFFE6.4
.BB@LABEL@3_2:	; entry.split1
	;***      141 :     TMIF00 = 0U;    /* clear INTTM00 interrupt flag */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 141
	clr1 0xFFFE2.4
	ret
.LFE3:
	.TYPE _R_TAU0_Channel1_Start,function,.LFE4-_R_TAU0_Channel1_Start
_R_TAU0_Channel1_Start:
	.STACK _R_TAU0_Channel1_Start = 4
	;***      142 : }
	;***      143 : 
	;***      144 : /***********************************************************************************************************************
	;***      145 : * Function Name: R_TAU0_Channel1_Start
	;***      146 : * Description  : This function starts TAU0 channel 1 counter.
	;***      147 : * Arguments    : None
	;***      148 : * Return Value : None
	;***      149 : ***********************************************************************************************************************/
	;***      150 : void R_TAU0_Channel1_Start(void)
	;***      151 : {
	;***      152 :     TMIF01 = 0U;    /* clear INTTM01 interrupt flag */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 152
	clr1 0xFFFE2.5
.BB@LABEL@4_1:	; entry.split
	;***      153 :     TMMK01 = 0U;    /* enable INTTM01 interrupt */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 153
	clr1 0xFFFE6.5
.BB@LABEL@4_2:	; entry.split1
	movw de, #0x01B2
	;***      154 :     TS0 |= _0002_TAU_CH1_START_TRG_ON;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 154
	movw ax, [de]
	xch a, x
	or a, #0x02
	xch a, x
	movw [de], ax
	ret
.LFE4:
	.TYPE _R_TAU0_Channel1_Stop,function,.LFE5-_R_TAU0_Channel1_Stop
_R_TAU0_Channel1_Stop:
	.STACK _R_TAU0_Channel1_Stop = 4
	;***      155 : }
	;***      156 : 
	;***      157 : /***********************************************************************************************************************
	;***      158 : * Function Name: R_TAU0_Channel1_Stop
	;***      159 : * Description  : This function stops TAU0 channel 1 counter.
	;***      160 : * Arguments    : None
	;***      161 : * Return Value : None
	;***      162 : ***********************************************************************************************************************/
	;***      163 : void R_TAU0_Channel1_Stop(void)
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 163
	movw de, #0x01B4
	;***      164 : {
	;***      165 :     TT0 |= _0002_TAU_CH1_STOP_TRG_ON;
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 165
	movw ax, [de]
	xch a, x
	or a, #0x02
	xch a, x
	movw [de], ax
.BB@LABEL@5_1:	; entry.split
	;***      166 :     /* Mask channel 1 interrupt */
	;***      167 :     TMMK01 = 1U;    /* disable INTTM01 interrupt */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 167
	set1 0xFFFE6.5
.BB@LABEL@5_2:	; entry.split1
	;***      168 :     TMIF01 = 0U;    /* clear INTTM01 interrupt flag */
	.LINE "C:/GitHub/SITH-YN/C_sample/RL78_G13_Tutorial_Analysis_CC/generate/r_cg_timer.c", 168
	clr1 0xFFFE2.5
	ret
.LFE5:
	;***      169 : }
	;***      170 : 
	;***      171 : /* Start user code for adding. Do not edit comment generated here */
	;***      172 : /* End user code. Do not edit comment generated here */
