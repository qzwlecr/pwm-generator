;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _shift_base_time
	.globl _shift
	.globl _sin_wave
	.globl _DIG_CODE
	.globl _timer0
	.globl _decrease
	.globl _increase
	.globl _main
	.globl _delay
	.globl _timerInit
	.globl _OUT
	.globl _LSC
	.globl _LSB
	.globl _LSA
	.globl _K4
	.globl _K3
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _AUXR1
	.globl _ISP_TRIG
	.globl _ISP_CMD
	.globl _ISP_ADDL
	.globl _ISP_ADDH
	.globl _ISP_DATA
	.globl _XICON
	.globl _AUXR
	.globl _WDT_CONTR
	.globl _IAP_CONTR
	.globl _P4
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _local_next
	.globl _local_now
	.globl _update_times
	.globl _state
	.globl _level
	.globl _timer
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
_P4	=	0x00e8
_IAP_CONTR	=	0x00e7
_WDT_CONTR	=	0x00e1
_AUXR	=	0x008e
_XICON	=	0x00c0
_ISP_DATA	=	0x00e2
_ISP_ADDH	=	0x00e3
_ISP_ADDL	=	0x00e4
_ISP_CMD	=	0x00e5
_ISP_TRIG	=	0x00e6
_AUXR1	=	0x00a2
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_P4_0	=	0x00e8
_P4_1	=	0x00e9
_P4_2	=	0x00ea
_P4_3	=	0x00eb
_P4_4	=	0x00ec
_P4_5	=	0x00ed
_P4_6	=	0x00ee
_K3	=	0x00b2
_K4	=	0x00b3
_LSA	=	0x00a2
_LSB	=	0x00a3
_LSC	=	0x00a4
_OUT	=	0x00a0
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_timer::
	.ds 2
_level::
	.ds 2
_state::
	.ds 2
_update_times::
	.ds 2
_local_now::
	.ds 2
_local_next::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_decrease
	.ds	5
	ljmp	_timer0
	.ds	5
	ljmp	_increase
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'timerInit'
;------------------------------------------------------------
;	main.c:36: void timerInit(void)
;	-----------------------------------------
;	 function timerInit
;	-----------------------------------------
_timerInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:39: TMOD=0x01;
	mov	_TMOD,#0x01
;	main.c:40: TH0=0xff;
	mov	_TH0,#0xff
;	main.c:41: TL0=0xf6;
	mov	_TL0,#0xf6
;	main.c:42: TR0=1;
	setb	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;n                         Allocated to registers 
;a                         Allocated to registers r5 
;------------------------------------------------------------
;	main.c:46: void delay(unsigned int n)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
00106$:
;	main.c:49: for(;n>0;n--)
	mov	a,r6
	orl	a,r7
	jz	00108$
;	main.c:51: for(a=110;a>0;a--)
	mov	r5,#0x6e
00104$:
	mov	a,r5
	dec	a
	mov	r4,a
	mov	r5,a
	jnz	00104$
;	main.c:49: for(;n>0;n--)
	dec	r6
	cjne	r6,#0xff,00129$
	dec	r7
00129$:
	sjmp	00106$
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:56: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:59: timer=0;
	clr	a
	mov	_timer,a
	mov	(_timer + 1),a
;	main.c:60: level=6;
	mov	_level,#0x06
;	1-genFromRTrack replaced	mov	(_level + 1),#0x00
	mov	(_level + 1),a
;	main.c:61: state=0;
	mov	_state,a
	mov	(_state + 1),a
;	main.c:62: update_times=shift_base_time[level];
	mov	dptr,#(_shift_base_time + 0x000c)
;	genFromRTrack removed	clr	a
	movc	a,@a+dptr
	mov	_update_times,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_update_times + 1),a
;	main.c:65: IT0=1;EX0=1;
	setb	_IT0
	setb	_EX0
;	main.c:66: IT1=1;EX1=1;
	setb	_IT1
	setb	_EX1
;	main.c:67: EA=1;
	setb	_EA
;	main.c:70: ET0=1;
	setb	_ET0
;	main.c:71: P0=DIG_CODE[level];
	mov	dptr,#(_DIG_CODE + 0x0006)
	clr	a
	movc	a,@a+dptr
	mov	_P0,a
;	main.c:73: timerInit();
	lcall	_timerInit
;	main.c:75: while(1)
00102$:
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'increase'
;------------------------------------------------------------
;	main.c:80: void increase(void) __interrupt(2)
;	-----------------------------------------
;	 function increase
;	-----------------------------------------
_increase:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:82: TR0=0;
	clr	_TR0
;	main.c:83: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
;	main.c:84: if(K4==0)
	jb	_K4,00104$
;	main.c:86: ++level;
	inc	_level
	clr	a
	cjne	a,_level,00114$
	inc	(_level + 1)
00114$:
;	main.c:87: if(level>7)
	clr	c
	mov	a,#0x07
	subb	a,_level
	clr	a
	subb	a,(_level + 1)
	jnc	00102$
;	main.c:88: level=7;
	mov	_level,#0x07
	mov	(_level + 1),#0x00
00102$:
;	main.c:89: P0=DIG_CODE[level];
	mov	a,_level
	add	a,#_DIG_CODE
	mov	dpl,a
	mov	a,(_level + 1)
	addc	a,#(_DIG_CODE >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_P0,a
;	main.c:90: update_times=shift_base_time[level];
	mov	a,_level
	add	a,_level
	mov	r6,a
	mov	a,(_level + 1)
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_shift_base_time
	mov	dpl,a
	mov	a,r7
	addc	a,#(_shift_base_time >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_update_times,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_update_times + 1),a
;	main.c:91: state=0;
	clr	a
	mov	_state,a
	mov	(_state + 1),a
;	main.c:92: timer=0;
	mov	_timer,a
	mov	(_timer + 1),a
00104$:
;	main.c:94: TR0=1;
	setb	_TR0
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'decrease'
;------------------------------------------------------------
;	main.c:97: void decrease(void) __interrupt(0)
;	-----------------------------------------
;	 function decrease
;	-----------------------------------------
_decrease:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:99: TR0=0;
	clr	_TR0
;	main.c:100: delay(10);
	mov	dptr,#0x000a
	lcall	_delay
;	main.c:101: if(K3==0)
	jb	_K3,00104$
;	main.c:103: --level;
	dec	_level
	mov	a,#0xff
	cjne	a,_level,00114$
	dec	(_level + 1)
00114$:
;	main.c:104: if(level<1)
	clr	c
	mov	a,_level
	subb	a,#0x01
	mov	a,(_level + 1)
	subb	a,#0x00
	jnc	00102$
;	main.c:105: level=1;
	mov	_level,#0x01
	mov	(_level + 1),#0x00
00102$:
;	main.c:106: P0=DIG_CODE[level];
	mov	a,_level
	add	a,#_DIG_CODE
	mov	dpl,a
	mov	a,(_level + 1)
	addc	a,#(_DIG_CODE >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_P0,a
;	main.c:107: update_times=shift_base_time[level];
	mov	a,_level
	add	a,_level
	mov	r6,a
	mov	a,(_level + 1)
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_shift_base_time
	mov	dpl,a
	mov	a,r7
	addc	a,#(_shift_base_time >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	_update_times,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	(_update_times + 1),a
;	main.c:108: state=0;
	clr	a
	mov	_state,a
	mov	(_state + 1),a
;	main.c:109: timer=0;
	mov	_timer,a
	mov	(_timer + 1),a
00104$:
;	main.c:111: TR0=1;
	setb	_TR0
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0'
;------------------------------------------------------------
;	main.c:114: void timer0(void) __interrupt(1)
;	-----------------------------------------
;	 function timer0
;	-----------------------------------------
_timer0:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:116: TR0=0;
	clr	_TR0
;	main.c:118: TH0=0xff;
	mov	_TH0,#0xff
;	main.c:119: TL0=0xf6;
	mov	_TL0,#0xf6
;	main.c:121: local_now=update_times*state;
	mov	__mulint_PARM_2,_state
	mov	(__mulint_PARM_2 + 1),(_state + 1)
	mov	dpl,_update_times
	mov	dph,(_update_times + 1)
	lcall	__mulint
	mov	_local_now,dpl
	mov	(_local_now + 1),dph
;	main.c:122: local_next=local_now+update_times;
	mov	a,_update_times
	add	a,_local_now
	mov	_local_next,a
	mov	a,(_update_times + 1)
	addc	a,(_local_now + 1)
	mov	(_local_next + 1),a
;	main.c:123: ++timer;
	inc	_timer
	clr	a
	cjne	a,_timer,00119$
	inc	(_timer + 1)
00119$:
;	main.c:124: if(timer==shift[level])
	mov	r6,_level
	mov	a,(_level + 1)
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_shift
	mov	dpl,a
	mov	a,r7
	addc	a,#(_shift >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r0,_timer
	mov	r1,(_timer + 1)
	clr	a
	mov	r2,a
	mov	r3,a
	mov	a,r0
	cjne	a,ar4,00102$
	mov	a,r1
	cjne	a,ar5,00102$
	mov	a,r2
	cjne	a,ar6,00102$
	mov	a,r3
	cjne	a,ar7,00102$
;	main.c:125: timer=0,state=0;
	clr	a
	mov	_timer,a
	mov	(_timer + 1),a
	mov	_state,a
	mov	(_state + 1),a
00102$:
;	main.c:126: if(timer==local_next)
	mov	a,_local_next
	cjne	a,_timer,00104$
	mov	a,(_local_next + 1)
	cjne	a,(_timer + 1),00104$
;	main.c:127: ++state;
	inc	_state
	clr	a
	cjne	a,_state,00124$
	inc	(_state + 1)
00124$:
00104$:
;	main.c:128: if(timer>local_now+update_times*sin_wave[state]/255)
	mov	a,_state
	add	a,#_sin_wave
	mov	dpl,a
	mov	a,(_state + 1)
	addc	a,#(_sin_wave >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	__mulint_PARM_2,r7
	mov	(__mulint_PARM_2 + 1),#0x00
	mov	dpl,_update_times
	mov	dph,(_update_times + 1)
	lcall	__mulint
	mov	__divuint_PARM_2,#0xff
	mov	(__divuint_PARM_2 + 1),#0x00
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,_local_now
	mov	r6,a
	mov	a,r7
	addc	a,(_local_now + 1)
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,_timer
	mov	a,r7
	subb	a,(_timer + 1)
;	main.c:129: OUT=1;
;	main.c:131: OUT=0;
	mov	_OUT,c
;	main.c:132: TR0=1;
	setb	_TR0
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
_DIG_CODE:
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x5b	; 91
	.db #0x4f	; 79	'O'
	.db #0x66	; 102	'f'
	.db #0x6d	; 109	'm'
	.db #0x7d	; 125
	.db #0x07	; 7
	.db #0x7f	; 127
	.db #0x6f	; 111	'o'
_sin_wave:
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xa7	; 167
	.db #0xcb	; 203
	.db #0xe7	; 231
	.db #0xf9	; 249
	.db #0xff	; 255
	.db #0xf9	; 249
	.db #0xe7	; 231
	.db #0xcb	; 203
	.db #0xa7	; 167
	.db #0x80	; 128
	.db #0x58	; 88	'X'
	.db #0x34	; 52	'4'
	.db #0x18	; 24
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x18	; 24
	.db #0x34	; 52	'4'
	.db #0x58	; 88	'X'
_shift:
	.byte #0x00,#0x00,#0x00,#0x00	; 0
	.byte #0x14,#0x00,#0x00,#0x00	; 20
	.byte #0x3c,#0x00,#0x00,#0x00	; 60
	.byte #0x64,#0x00,#0x00,#0x00	; 100
	.byte #0xf4,#0x01,#0x00,#0x00	; 500
	.byte #0xd0,#0x07,#0x00,#0x00	; 2000
	.byte #0x20,#0x4e,#0x00,#0x00	; 20000
	.byte #0xa0,#0x86,#0x01,#0x00	; 100000
_shift_base_time:
	.byte #0x00,#0x00	; 0
	.byte #0x01,#0x00	; 1
	.byte #0x03,#0x00	; 3
	.byte #0x05,#0x00	; 5
	.byte #0x19,#0x00	; 25
	.byte #0x64,#0x00	; 100
	.byte #0xe8,#0x03	; 1000
	.byte #0x88,#0x13	; 5000
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
