;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _times
	.globl _usart4
	.globl _timer0
	.globl _main
	.globl _delay
	.globl _sendString
	.globl _sendData
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
	.globl _OUT2
	.globl _OUT1
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
	.globl _i
	.globl _ii
	.globl _read_flag
	.globl _timer
	.globl _period
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
_OUT1	=	0x0090
_OUT2	=	0x00a0
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_period::
	.ds 16
_timer::
	.ds 64
_read_flag::
	.ds 1
_ii::
	.ds 1
_i::
	.ds 1
_timer0_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
	reti
	.ds	7
	ljmp	_timer0
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_usart4
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
;	main.c:15: unsigned char period[16]={1,2,3,4,5,6,7,1,2,3,4,5,6,7,1,2};
	mov	_period,#0x01
	mov	(_period + 0x0001),#0x02
	mov	(_period + 0x0002),#0x03
	mov	(_period + 0x0003),#0x04
	mov	(_period + 0x0004),#0x05
	mov	(_period + 0x0005),#0x06
	mov	(_period + 0x0006),#0x07
	mov	(_period + 0x0007),#0x01
	mov	(_period + 0x0008),#0x02
	mov	(_period + 0x0009),#0x03
	mov	(_period + 0x000a),#0x04
	mov	(_period + 0x000b),#0x05
	mov	(_period + 0x000c),#0x06
	mov	(_period + 0x000d),#0x07
	mov	(_period + 0x000e),#0x01
	mov	(_period + 0x000f),#0x02
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
;Allocation info for local variables in function 'sendData'
;------------------------------------------------------------
;data                      Allocated to registers 
;------------------------------------------------------------
;	main.c:25: void sendData(unsigned char data)
;	-----------------------------------------
;	 function sendData
;	-----------------------------------------
_sendData:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	_SBUF,dpl
;	main.c:28: while(TI==0);
00101$:
;	main.c:29: TI=0;
	jbc	_TI,00112$
	sjmp	00101$
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendString'
;------------------------------------------------------------
;data                      Allocated to registers 
;------------------------------------------------------------
;	main.c:32: void sendString(unsigned char * data)
;	-----------------------------------------
;	 function sendString
;	-----------------------------------------
_sendString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:34: while(*data)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	main.c:36: sendData(*data++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00114$
	inc	r6
00114$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_sendData
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;n                         Allocated to registers 
;a                         Allocated to registers r5 
;------------------------------------------------------------
;	main.c:40: void delay(unsigned int n)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
00106$:
;	main.c:43: for(;n>0;n--)
	mov	a,r6
	orl	a,r7
	jz	00108$
;	main.c:45: for(a=110;a>0;a--)
	mov	r5,#0x6e
00104$:
	mov	a,r5
	dec	a
	mov	r4,a
	mov	r5,a
	jnz	00104$
;	main.c:43: for(;n>0;n--)
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
;	main.c:50: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:52: IT0=1;EX0=1;
	setb	_IT0
	setb	_EX0
;	main.c:53: IT1=1;EX1=1;
	setb	_IT1
	setb	_EX1
;	main.c:54: ET0=1;ET1=1;
	setb	_ET0
	setb	_ET1
;	main.c:55: EA=1;
	setb	_EA
;	main.c:57: TMOD=0x01;
	mov	_TMOD,#0x01
;	main.c:58: SCON=0x50;
	mov	_SCON,#0x50
;	main.c:59: TMOD|=0x20;
	orl	_TMOD,#0x20
;	main.c:60: PCON|=0x80;
	orl	_PCON,#0x80
;	main.c:61: TH1=0xF3;
	mov	_TH1,#0xf3
;	main.c:62: TL1=0xF3;
	mov	_TL1,#0xf3
;	main.c:63: ES=1;
	setb	_ES
;	main.c:64: i=0;
	mov	_i,#0x00
;	main.c:65: read_flag=0;
	mov	_read_flag,#0x00
;	main.c:67: TH0=0xFF;
	mov	_TH0,#0xff
;	main.c:68: TL0=0xF6;
	mov	_TL0,#0xf6
;	main.c:69: TR0=1;
	setb	_TR0
;	main.c:70: TR1=1;
	setb	_TR1
;	main.c:72: delay(100);
	mov	dptr,#0x0064
	lcall	_delay
;	main.c:74: sendString("HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello\r\n");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_sendString
;	main.c:75: sendString("Input 16 consecutive integers to set PWM\r\n");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_sendString
;	main.c:77: while(1)
00105$:
;	main.c:79: if(read_flag)
	mov	a,_read_flag
	jz	00105$
;	main.c:81: read_flag=0;
	mov	_read_flag,#0x00
;	main.c:82: TR0=0;
	clr	_TR0
;	main.c:83: for(i=0;i<16;++i)
	mov	_i,#0x00
00107$:
;	main.c:85: timer[i]=0;
	mov	a,_i
	add	a,_i
	add	a,acc
	add	a,#_timer
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
;	main.c:86: period[i]-='0';
	mov	a,_i
	add	a,#_period
	mov	r1,a
	mov	a,@r1
	mov	r7,a
	add	a,#0xd0
	mov	@r1,a
;	main.c:83: for(i=0;i<16;++i)
	inc	_i
	mov	a,#0x100 - 0x10
	add	a,_i
	jnc	00107$
;	main.c:89: sendString("PWM updated!\r\n");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_sendString
;	main.c:91: TR0=1;
	setb	_TR0
	sjmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0'
;------------------------------------------------------------
;sloc0                     Allocated with name '_timer0_sloc0_1_0'
;------------------------------------------------------------
;	main.c:96: void timer0(void) __interrupt(1)
;	-----------------------------------------
;	 function timer0
;	-----------------------------------------
_timer0:
	push	acc
	push	b
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	psw
	mov	psw,#0x00
;	main.c:98: TH0=0xFF;
	mov	_TH0,#0xff
;	main.c:99: TL0=0xF6;
	mov	_TL0,#0xf6
;	main.c:100: OUT1=0;
	mov	_OUT1,#0x00
;	main.c:101: OUT2=0;
	mov	_OUT2,#0x00
;	main.c:102: for(i=0;i<8;++i)
	mov	_i,#0x00
00111$:
;	main.c:104: ++timer[i];
	mov	a,_i
	add	a,_i
	add	a,acc
	add	a,#_timer
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	inc	r4
	cjne	r4,#0x00,00138$
	inc	r5
	cjne	r5,#0x00,00138$
	inc	r6
	cjne	r6,#0x00,00138$
	inc	r7
00138$:
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
	dec	r1
;	main.c:105: if(timer[i]==times[period[i]])
	mov	a,_i
	add	a,_i
	add	a,acc
	add	a,#_timer
	mov	r1,a
	mov	_timer0_sloc0_1_0,@r1
	inc	r1
	mov	(_timer0_sloc0_1_0 + 1),@r1
	inc	r1
	mov	(_timer0_sloc0_1_0 + 2),@r1
	inc	r1
	mov	(_timer0_sloc0_1_0 + 3),@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_i
	add	a,#_period
	mov	r0,a
	mov	a,@r0
	mov	b,#0x04
	mul	ab
	add	a,#_times
	mov	dpl,a
	mov	a,#(_times >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r2
	cjne	a,_timer0_sloc0_1_0,00102$
	mov	a,r3
	cjne	a,(_timer0_sloc0_1_0 + 1),00102$
	mov	a,r6
	cjne	a,(_timer0_sloc0_1_0 + 2),00102$
	mov	a,r7
	cjne	a,(_timer0_sloc0_1_0 + 3),00102$
;	main.c:106: timer[i]=0;
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	dec	r1
	dec	r1
	dec	r1
00102$:
;	main.c:107: if(timer[i]>(times[period[i]]>>1))
	mov	a,_i
	add	a,_i
	add	a,acc
	add	a,#_timer
	mov	r1,a
	mov	_timer0_sloc0_1_0,@r1
	inc	r1
	mov	(_timer0_sloc0_1_0 + 1),@r1
	inc	r1
	mov	(_timer0_sloc0_1_0 + 2),@r1
	inc	r1
	mov	(_timer0_sloc0_1_0 + 3),@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_i
	add	a,#_period
	mov	r1,a
	mov	a,@r1
	mov	b,#0x04
	mul	ab
	add	a,#_times
	mov	dpl,a
	mov	a,#(_times >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
	clr	c
	subb	a,_timer0_sloc0_1_0
	mov	a,r3
	subb	a,(_timer0_sloc0_1_0 + 1)
	mov	a,r6
	subb	a,(_timer0_sloc0_1_0 + 2)
	mov	a,r7
	subb	a,(_timer0_sloc0_1_0 + 3)
	jnc	00112$
;	main.c:108: OUT1|=(1<<i);
	mov	b,_i
	inc	b
	mov	a,#0x01
	sjmp	00144$
00142$:
	add	a,acc
00144$:
	djnz	b,00142$
	mov	r7,a
	orl	_OUT1,a
00112$:
;	main.c:102: for(i=0;i<8;++i)
	inc	_i
	mov	a,#0x100 - 0x08
	add	a,_i
	jc	00145$
	ljmp	00111$
00145$:
;	main.c:111: for(i=8;i<16;++i)
	mov	_i,#0x08
00113$:
;	main.c:113: ++timer[i];
	mov	a,_i
	add	a,_i
	add	a,acc
	add	a,#_timer
	mov	r1,a
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
	inc	r4
	cjne	r4,#0x00,00146$
	inc	r5
	cjne	r5,#0x00,00146$
	inc	r6
	cjne	r6,#0x00,00146$
	inc	r7
00146$:
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	inc	r1
	mov	@r1,ar6
	inc	r1
	mov	@r1,ar7
	dec	r1
	dec	r1
	dec	r1
;	main.c:114: if(timer[i]==times[period[i]])
	mov	a,_i
	add	a,_i
	add	a,acc
	add	a,#_timer
	mov	r1,a
	mov	_timer0_sloc0_1_0,@r1
	inc	r1
	mov	(_timer0_sloc0_1_0 + 1),@r1
	inc	r1
	mov	(_timer0_sloc0_1_0 + 2),@r1
	inc	r1
	mov	(_timer0_sloc0_1_0 + 3),@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_i
	add	a,#_period
	mov	r0,a
	mov	a,@r0
	mov	b,#0x04
	mul	ab
	add	a,#_times
	mov	dpl,a
	mov	a,#(_times >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r2
	cjne	a,_timer0_sloc0_1_0,00107$
	mov	a,r3
	cjne	a,(_timer0_sloc0_1_0 + 1),00107$
	mov	a,r6
	cjne	a,(_timer0_sloc0_1_0 + 2),00107$
	mov	a,r7
	cjne	a,(_timer0_sloc0_1_0 + 3),00107$
;	main.c:115: timer[i]=0;
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	inc	r1
	mov	@r1,#0x00
	dec	r1
	dec	r1
	dec	r1
00107$:
;	main.c:116: if(timer[i]>(times[period[i]]>>1))
	mov	a,_i
	add	a,_i
	add	a,acc
	add	a,#_timer
	mov	r1,a
	mov	_timer0_sloc0_1_0,@r1
	inc	r1
	mov	(_timer0_sloc0_1_0 + 1),@r1
	inc	r1
	mov	(_timer0_sloc0_1_0 + 2),@r1
	inc	r1
	mov	(_timer0_sloc0_1_0 + 3),@r1
	dec	r1
	dec	r1
	dec	r1
	mov	a,_i
	add	a,#_period
	mov	r1,a
	mov	a,@r1
	mov	b,#0x04
	mul	ab
	add	a,#_times
	mov	dpl,a
	mov	a,#(_times >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
	clr	c
	subb	a,_timer0_sloc0_1_0
	mov	a,r3
	subb	a,(_timer0_sloc0_1_0 + 1)
	mov	a,r6
	subb	a,(_timer0_sloc0_1_0 + 2)
	mov	a,r7
	subb	a,(_timer0_sloc0_1_0 + 3)
	jnc	00114$
;	main.c:117: OUT2|=(1<<(i-8));
	mov	a,_i
	add	a,#0xf8
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00152$
00150$:
	add	a,acc
00152$:
	djnz	b,00150$
	mov	r7,a
	orl	_OUT2,a
00114$:
;	main.c:111: for(i=8;i<16;++i)
	inc	_i
	mov	a,#0x100 - 0x10
	add	a,_i
	jc	00153$
	ljmp	00113$
00153$:
	pop	psw
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'usart4'
;------------------------------------------------------------
;	main.c:124: void usart4(void) __interrupt(4)
;	-----------------------------------------
;	 function usart4
;	-----------------------------------------
_usart4:
	push	acc
	push	ar0
	push	psw
	mov	psw,#0x00
;	main.c:126: ES=0;
	clr	_ES
;	main.c:127: if(RI)
;	main.c:129: RI=0;
	jbc	_RI,00113$
	sjmp	00104$
00113$:
;	main.c:130: period[ii]=SBUF;
	mov	a,_ii
	add	a,#_period
	mov	r0,a
	mov	@r0,_SBUF
;	main.c:131: ++ii;
	inc	_ii
;	main.c:132: if(ii==16)
	mov	a,#0x10
	cjne	a,_ii,00104$
;	main.c:134: ii=0;
	mov	_ii,#0x00
;	main.c:135: read_flag=1;
	mov	_read_flag,#0x01
00104$:
;	main.c:138: ES=1;
	setb	_ES
	pop	psw
	pop	ar0
	pop	acc
	reti
;	eliminated unneeded push/pop ar1
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area CONST   (CODE)
_times:
	.byte #0x00,#0x00,#0x00,#0x00	; 0
	.byte #0x14,#0x00,#0x00,#0x00	; 20
	.byte #0x32,#0x00,#0x00,#0x00	; 50
	.byte #0x64,#0x00,#0x00,#0x00	; 100
	.byte #0xf4,#0x01,#0x00,#0x00	; 500
	.byte #0xd0,#0x07,#0x00,#0x00	; 2000
	.byte #0x20,#0x4e,#0x00,#0x00	; 20000
	.byte #0xa0,#0x86,#0x01,#0x00	; 100000
___str_0:
	.ascii "HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello"
	.ascii "HelloHelloHelloHelloHelloHello"
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_1:
	.ascii "Input 16 consecutive integers to set PWM"
	.db 0x0d
	.db 0x0a
	.db 0x00
___str_2:
	.ascii "PWM updated!"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
