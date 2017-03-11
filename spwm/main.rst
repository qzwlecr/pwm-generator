                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _shift_base_time
                                     12 	.globl _shift
                                     13 	.globl _sin_wave
                                     14 	.globl _DIG_CODE
                                     15 	.globl _timer0
                                     16 	.globl _decrease
                                     17 	.globl _increase
                                     18 	.globl _main
                                     19 	.globl _delay
                                     20 	.globl _timerInit
                                     21 	.globl _OUT
                                     22 	.globl _LSC
                                     23 	.globl _LSB
                                     24 	.globl _LSA
                                     25 	.globl _K4
                                     26 	.globl _K3
                                     27 	.globl _P4_6
                                     28 	.globl _P4_5
                                     29 	.globl _P4_4
                                     30 	.globl _P4_3
                                     31 	.globl _P4_2
                                     32 	.globl _P4_1
                                     33 	.globl _P4_0
                                     34 	.globl _CY
                                     35 	.globl _AC
                                     36 	.globl _F0
                                     37 	.globl _RS1
                                     38 	.globl _RS0
                                     39 	.globl _OV
                                     40 	.globl _FL
                                     41 	.globl _P
                                     42 	.globl _TF2
                                     43 	.globl _EXF2
                                     44 	.globl _RCLK
                                     45 	.globl _TCLK
                                     46 	.globl _EXEN2
                                     47 	.globl _TR2
                                     48 	.globl _C_T2
                                     49 	.globl _CP_RL2
                                     50 	.globl _T2CON_7
                                     51 	.globl _T2CON_6
                                     52 	.globl _T2CON_5
                                     53 	.globl _T2CON_4
                                     54 	.globl _T2CON_3
                                     55 	.globl _T2CON_2
                                     56 	.globl _T2CON_1
                                     57 	.globl _T2CON_0
                                     58 	.globl _PT2
                                     59 	.globl _PS
                                     60 	.globl _PT1
                                     61 	.globl _PX1
                                     62 	.globl _PT0
                                     63 	.globl _PX0
                                     64 	.globl _RD
                                     65 	.globl _WR
                                     66 	.globl _T1
                                     67 	.globl _T0
                                     68 	.globl _INT1
                                     69 	.globl _INT0
                                     70 	.globl _TXD
                                     71 	.globl _RXD
                                     72 	.globl _P3_7
                                     73 	.globl _P3_6
                                     74 	.globl _P3_5
                                     75 	.globl _P3_4
                                     76 	.globl _P3_3
                                     77 	.globl _P3_2
                                     78 	.globl _P3_1
                                     79 	.globl _P3_0
                                     80 	.globl _EA
                                     81 	.globl _ET2
                                     82 	.globl _ES
                                     83 	.globl _ET1
                                     84 	.globl _EX1
                                     85 	.globl _ET0
                                     86 	.globl _EX0
                                     87 	.globl _P2_7
                                     88 	.globl _P2_6
                                     89 	.globl _P2_5
                                     90 	.globl _P2_4
                                     91 	.globl _P2_3
                                     92 	.globl _P2_2
                                     93 	.globl _P2_1
                                     94 	.globl _P2_0
                                     95 	.globl _SM0
                                     96 	.globl _SM1
                                     97 	.globl _SM2
                                     98 	.globl _REN
                                     99 	.globl _TB8
                                    100 	.globl _RB8
                                    101 	.globl _TI
                                    102 	.globl _RI
                                    103 	.globl _T2EX
                                    104 	.globl _T2
                                    105 	.globl _P1_7
                                    106 	.globl _P1_6
                                    107 	.globl _P1_5
                                    108 	.globl _P1_4
                                    109 	.globl _P1_3
                                    110 	.globl _P1_2
                                    111 	.globl _P1_1
                                    112 	.globl _P1_0
                                    113 	.globl _TF1
                                    114 	.globl _TR1
                                    115 	.globl _TF0
                                    116 	.globl _TR0
                                    117 	.globl _IE1
                                    118 	.globl _IT1
                                    119 	.globl _IE0
                                    120 	.globl _IT0
                                    121 	.globl _P0_7
                                    122 	.globl _P0_6
                                    123 	.globl _P0_5
                                    124 	.globl _P0_4
                                    125 	.globl _P0_3
                                    126 	.globl _P0_2
                                    127 	.globl _P0_1
                                    128 	.globl _P0_0
                                    129 	.globl _AUXR1
                                    130 	.globl _ISP_TRIG
                                    131 	.globl _ISP_CMD
                                    132 	.globl _ISP_ADDL
                                    133 	.globl _ISP_ADDH
                                    134 	.globl _ISP_DATA
                                    135 	.globl _XICON
                                    136 	.globl _AUXR
                                    137 	.globl _WDT_CONTR
                                    138 	.globl _IAP_CONTR
                                    139 	.globl _P4
                                    140 	.globl _B
                                    141 	.globl _A
                                    142 	.globl _ACC
                                    143 	.globl _PSW
                                    144 	.globl _TH2
                                    145 	.globl _TL2
                                    146 	.globl _RCAP2H
                                    147 	.globl _RCAP2L
                                    148 	.globl _T2MOD
                                    149 	.globl _T2CON
                                    150 	.globl _IP
                                    151 	.globl _P3
                                    152 	.globl _IE
                                    153 	.globl _P2
                                    154 	.globl _SBUF
                                    155 	.globl _SCON
                                    156 	.globl _P1
                                    157 	.globl _TH1
                                    158 	.globl _TH0
                                    159 	.globl _TL1
                                    160 	.globl _TL0
                                    161 	.globl _TMOD
                                    162 	.globl _TCON
                                    163 	.globl _PCON
                                    164 	.globl _DPH
                                    165 	.globl _DPL
                                    166 	.globl _SP
                                    167 	.globl _P0
                                    168 	.globl _local_next
                                    169 	.globl _local_now
                                    170 	.globl _update_times
                                    171 	.globl _state
                                    172 	.globl _level
                                    173 	.globl _timer
                                    174 ;--------------------------------------------------------
                                    175 ; special function registers
                                    176 ;--------------------------------------------------------
                                    177 	.area RSEG    (ABS,DATA)
      000000                        178 	.org 0x0000
                           000080   179 _P0	=	0x0080
                           000081   180 _SP	=	0x0081
                           000082   181 _DPL	=	0x0082
                           000083   182 _DPH	=	0x0083
                           000087   183 _PCON	=	0x0087
                           000088   184 _TCON	=	0x0088
                           000089   185 _TMOD	=	0x0089
                           00008A   186 _TL0	=	0x008a
                           00008B   187 _TL1	=	0x008b
                           00008C   188 _TH0	=	0x008c
                           00008D   189 _TH1	=	0x008d
                           000090   190 _P1	=	0x0090
                           000098   191 _SCON	=	0x0098
                           000099   192 _SBUF	=	0x0099
                           0000A0   193 _P2	=	0x00a0
                           0000A8   194 _IE	=	0x00a8
                           0000B0   195 _P3	=	0x00b0
                           0000B8   196 _IP	=	0x00b8
                           0000C8   197 _T2CON	=	0x00c8
                           0000C9   198 _T2MOD	=	0x00c9
                           0000CA   199 _RCAP2L	=	0x00ca
                           0000CB   200 _RCAP2H	=	0x00cb
                           0000CC   201 _TL2	=	0x00cc
                           0000CD   202 _TH2	=	0x00cd
                           0000D0   203 _PSW	=	0x00d0
                           0000E0   204 _ACC	=	0x00e0
                           0000E0   205 _A	=	0x00e0
                           0000F0   206 _B	=	0x00f0
                           0000E8   207 _P4	=	0x00e8
                           0000E7   208 _IAP_CONTR	=	0x00e7
                           0000E1   209 _WDT_CONTR	=	0x00e1
                           00008E   210 _AUXR	=	0x008e
                           0000C0   211 _XICON	=	0x00c0
                           0000E2   212 _ISP_DATA	=	0x00e2
                           0000E3   213 _ISP_ADDH	=	0x00e3
                           0000E4   214 _ISP_ADDL	=	0x00e4
                           0000E5   215 _ISP_CMD	=	0x00e5
                           0000E6   216 _ISP_TRIG	=	0x00e6
                           0000A2   217 _AUXR1	=	0x00a2
                                    218 ;--------------------------------------------------------
                                    219 ; special function bits
                                    220 ;--------------------------------------------------------
                                    221 	.area RSEG    (ABS,DATA)
      000000                        222 	.org 0x0000
                           000080   223 _P0_0	=	0x0080
                           000081   224 _P0_1	=	0x0081
                           000082   225 _P0_2	=	0x0082
                           000083   226 _P0_3	=	0x0083
                           000084   227 _P0_4	=	0x0084
                           000085   228 _P0_5	=	0x0085
                           000086   229 _P0_6	=	0x0086
                           000087   230 _P0_7	=	0x0087
                           000088   231 _IT0	=	0x0088
                           000089   232 _IE0	=	0x0089
                           00008A   233 _IT1	=	0x008a
                           00008B   234 _IE1	=	0x008b
                           00008C   235 _TR0	=	0x008c
                           00008D   236 _TF0	=	0x008d
                           00008E   237 _TR1	=	0x008e
                           00008F   238 _TF1	=	0x008f
                           000090   239 _P1_0	=	0x0090
                           000091   240 _P1_1	=	0x0091
                           000092   241 _P1_2	=	0x0092
                           000093   242 _P1_3	=	0x0093
                           000094   243 _P1_4	=	0x0094
                           000095   244 _P1_5	=	0x0095
                           000096   245 _P1_6	=	0x0096
                           000097   246 _P1_7	=	0x0097
                           000090   247 _T2	=	0x0090
                           000091   248 _T2EX	=	0x0091
                           000098   249 _RI	=	0x0098
                           000099   250 _TI	=	0x0099
                           00009A   251 _RB8	=	0x009a
                           00009B   252 _TB8	=	0x009b
                           00009C   253 _REN	=	0x009c
                           00009D   254 _SM2	=	0x009d
                           00009E   255 _SM1	=	0x009e
                           00009F   256 _SM0	=	0x009f
                           0000A0   257 _P2_0	=	0x00a0
                           0000A1   258 _P2_1	=	0x00a1
                           0000A2   259 _P2_2	=	0x00a2
                           0000A3   260 _P2_3	=	0x00a3
                           0000A4   261 _P2_4	=	0x00a4
                           0000A5   262 _P2_5	=	0x00a5
                           0000A6   263 _P2_6	=	0x00a6
                           0000A7   264 _P2_7	=	0x00a7
                           0000A8   265 _EX0	=	0x00a8
                           0000A9   266 _ET0	=	0x00a9
                           0000AA   267 _EX1	=	0x00aa
                           0000AB   268 _ET1	=	0x00ab
                           0000AC   269 _ES	=	0x00ac
                           0000AD   270 _ET2	=	0x00ad
                           0000AF   271 _EA	=	0x00af
                           0000B0   272 _P3_0	=	0x00b0
                           0000B1   273 _P3_1	=	0x00b1
                           0000B2   274 _P3_2	=	0x00b2
                           0000B3   275 _P3_3	=	0x00b3
                           0000B4   276 _P3_4	=	0x00b4
                           0000B5   277 _P3_5	=	0x00b5
                           0000B6   278 _P3_6	=	0x00b6
                           0000B7   279 _P3_7	=	0x00b7
                           0000B0   280 _RXD	=	0x00b0
                           0000B1   281 _TXD	=	0x00b1
                           0000B2   282 _INT0	=	0x00b2
                           0000B3   283 _INT1	=	0x00b3
                           0000B4   284 _T0	=	0x00b4
                           0000B5   285 _T1	=	0x00b5
                           0000B6   286 _WR	=	0x00b6
                           0000B7   287 _RD	=	0x00b7
                           0000B8   288 _PX0	=	0x00b8
                           0000B9   289 _PT0	=	0x00b9
                           0000BA   290 _PX1	=	0x00ba
                           0000BB   291 _PT1	=	0x00bb
                           0000BC   292 _PS	=	0x00bc
                           0000BD   293 _PT2	=	0x00bd
                           0000C8   294 _T2CON_0	=	0x00c8
                           0000C9   295 _T2CON_1	=	0x00c9
                           0000CA   296 _T2CON_2	=	0x00ca
                           0000CB   297 _T2CON_3	=	0x00cb
                           0000CC   298 _T2CON_4	=	0x00cc
                           0000CD   299 _T2CON_5	=	0x00cd
                           0000CE   300 _T2CON_6	=	0x00ce
                           0000CF   301 _T2CON_7	=	0x00cf
                           0000C8   302 _CP_RL2	=	0x00c8
                           0000C9   303 _C_T2	=	0x00c9
                           0000CA   304 _TR2	=	0x00ca
                           0000CB   305 _EXEN2	=	0x00cb
                           0000CC   306 _TCLK	=	0x00cc
                           0000CD   307 _RCLK	=	0x00cd
                           0000CE   308 _EXF2	=	0x00ce
                           0000CF   309 _TF2	=	0x00cf
                           0000D0   310 _P	=	0x00d0
                           0000D1   311 _FL	=	0x00d1
                           0000D2   312 _OV	=	0x00d2
                           0000D3   313 _RS0	=	0x00d3
                           0000D4   314 _RS1	=	0x00d4
                           0000D5   315 _F0	=	0x00d5
                           0000D6   316 _AC	=	0x00d6
                           0000D7   317 _CY	=	0x00d7
                           0000E8   318 _P4_0	=	0x00e8
                           0000E9   319 _P4_1	=	0x00e9
                           0000EA   320 _P4_2	=	0x00ea
                           0000EB   321 _P4_3	=	0x00eb
                           0000EC   322 _P4_4	=	0x00ec
                           0000ED   323 _P4_5	=	0x00ed
                           0000EE   324 _P4_6	=	0x00ee
                           0000B2   325 _K3	=	0x00b2
                           0000B3   326 _K4	=	0x00b3
                           0000A2   327 _LSA	=	0x00a2
                           0000A3   328 _LSB	=	0x00a3
                           0000A4   329 _LSC	=	0x00a4
                           0000A0   330 _OUT	=	0x00a0
                                    331 ;--------------------------------------------------------
                                    332 ; overlayable register banks
                                    333 ;--------------------------------------------------------
                                    334 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        335 	.ds 8
                                    336 ;--------------------------------------------------------
                                    337 ; overlayable bit register bank
                                    338 ;--------------------------------------------------------
                                    339 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        340 bits:
      000020                        341 	.ds 1
                           008000   342 	b0 = bits[0]
                           008100   343 	b1 = bits[1]
                           008200   344 	b2 = bits[2]
                           008300   345 	b3 = bits[3]
                           008400   346 	b4 = bits[4]
                           008500   347 	b5 = bits[5]
                           008600   348 	b6 = bits[6]
                           008700   349 	b7 = bits[7]
                                    350 ;--------------------------------------------------------
                                    351 ; internal ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area DSEG    (DATA)
      000008                        354 _timer::
      000008                        355 	.ds 2
      00000A                        356 _level::
      00000A                        357 	.ds 2
      00000C                        358 _state::
      00000C                        359 	.ds 2
      00000E                        360 _update_times::
      00000E                        361 	.ds 2
      000010                        362 _local_now::
      000010                        363 	.ds 2
      000012                        364 _local_next::
      000012                        365 	.ds 2
                                    366 ;--------------------------------------------------------
                                    367 ; overlayable items in internal ram 
                                    368 ;--------------------------------------------------------
                                    369 	.area	OSEG    (OVR,DATA)
                                    370 ;--------------------------------------------------------
                                    371 ; Stack segment in internal ram 
                                    372 ;--------------------------------------------------------
                                    373 	.area	SSEG
      000021                        374 __start__stack:
      000021                        375 	.ds	1
                                    376 
                                    377 ;--------------------------------------------------------
                                    378 ; indirectly addressable internal ram data
                                    379 ;--------------------------------------------------------
                                    380 	.area ISEG    (DATA)
                                    381 ;--------------------------------------------------------
                                    382 ; absolute internal ram data
                                    383 ;--------------------------------------------------------
                                    384 	.area IABS    (ABS,DATA)
                                    385 	.area IABS    (ABS,DATA)
                                    386 ;--------------------------------------------------------
                                    387 ; bit data
                                    388 ;--------------------------------------------------------
                                    389 	.area BSEG    (BIT)
                                    390 ;--------------------------------------------------------
                                    391 ; paged external ram data
                                    392 ;--------------------------------------------------------
                                    393 	.area PSEG    (PAG,XDATA)
                                    394 ;--------------------------------------------------------
                                    395 ; external ram data
                                    396 ;--------------------------------------------------------
                                    397 	.area XSEG    (XDATA)
                                    398 ;--------------------------------------------------------
                                    399 ; absolute external ram data
                                    400 ;--------------------------------------------------------
                                    401 	.area XABS    (ABS,XDATA)
                                    402 ;--------------------------------------------------------
                                    403 ; external initialized ram data
                                    404 ;--------------------------------------------------------
                                    405 	.area XISEG   (XDATA)
                                    406 	.area HOME    (CODE)
                                    407 	.area GSINIT0 (CODE)
                                    408 	.area GSINIT1 (CODE)
                                    409 	.area GSINIT2 (CODE)
                                    410 	.area GSINIT3 (CODE)
                                    411 	.area GSINIT4 (CODE)
                                    412 	.area GSINIT5 (CODE)
                                    413 	.area GSINIT  (CODE)
                                    414 	.area GSFINAL (CODE)
                                    415 	.area CSEG    (CODE)
                                    416 ;--------------------------------------------------------
                                    417 ; interrupt vector 
                                    418 ;--------------------------------------------------------
                                    419 	.area HOME    (CODE)
      000000                        420 __interrupt_vect:
      000000 02 00 19         [24]  421 	ljmp	__sdcc_gsinit_startup
      000003 02 01 60         [24]  422 	ljmp	_decrease
      000006                        423 	.ds	5
      00000B 02 01 F8         [24]  424 	ljmp	_timer0
      00000E                        425 	.ds	5
      000013 02 00 CA         [24]  426 	ljmp	_increase
                                    427 ;--------------------------------------------------------
                                    428 ; global & static initialisations
                                    429 ;--------------------------------------------------------
                                    430 	.area HOME    (CODE)
                                    431 	.area GSINIT  (CODE)
                                    432 	.area GSFINAL (CODE)
                                    433 	.area GSINIT  (CODE)
                                    434 	.globl __sdcc_gsinit_startup
                                    435 	.globl __sdcc_program_startup
                                    436 	.globl __start__stack
                                    437 	.globl __mcs51_genXINIT
                                    438 	.globl __mcs51_genXRAMCLEAR
                                    439 	.globl __mcs51_genRAMCLEAR
                                    440 	.area GSFINAL (CODE)
      000072 02 00 16         [24]  441 	ljmp	__sdcc_program_startup
                                    442 ;--------------------------------------------------------
                                    443 ; Home
                                    444 ;--------------------------------------------------------
                                    445 	.area HOME    (CODE)
                                    446 	.area HOME    (CODE)
      000016                        447 __sdcc_program_startup:
      000016 02 00 99         [24]  448 	ljmp	_main
                                    449 ;	return from main will return to caller
                                    450 ;--------------------------------------------------------
                                    451 ; code
                                    452 ;--------------------------------------------------------
                                    453 	.area CSEG    (CODE)
                                    454 ;------------------------------------------------------------
                                    455 ;Allocation info for local variables in function 'timerInit'
                                    456 ;------------------------------------------------------------
                                    457 ;	main.c:36: void timerInit(void)
                                    458 ;	-----------------------------------------
                                    459 ;	 function timerInit
                                    460 ;	-----------------------------------------
      000075                        461 _timerInit:
                           000007   462 	ar7 = 0x07
                           000006   463 	ar6 = 0x06
                           000005   464 	ar5 = 0x05
                           000004   465 	ar4 = 0x04
                           000003   466 	ar3 = 0x03
                           000002   467 	ar2 = 0x02
                           000001   468 	ar1 = 0x01
                           000000   469 	ar0 = 0x00
                                    470 ;	main.c:39: TMOD=0x01;
      000075 75 89 01         [24]  471 	mov	_TMOD,#0x01
                                    472 ;	main.c:40: TH0=0xff;
      000078 75 8C FF         [24]  473 	mov	_TH0,#0xff
                                    474 ;	main.c:41: TL0=0xf6;
      00007B 75 8A F6         [24]  475 	mov	_TL0,#0xf6
                                    476 ;	main.c:42: TR0=1;
      00007E D2 8C            [12]  477 	setb	_TR0
      000080 22               [24]  478 	ret
                                    479 ;------------------------------------------------------------
                                    480 ;Allocation info for local variables in function 'delay'
                                    481 ;------------------------------------------------------------
                                    482 ;n                         Allocated to registers 
                                    483 ;a                         Allocated to registers r5 
                                    484 ;------------------------------------------------------------
                                    485 ;	main.c:46: void delay(unsigned int n)
                                    486 ;	-----------------------------------------
                                    487 ;	 function delay
                                    488 ;	-----------------------------------------
      000081                        489 _delay:
      000081 AE 82            [24]  490 	mov	r6,dpl
      000083 AF 83            [24]  491 	mov	r7,dph
      000085                        492 00106$:
                                    493 ;	main.c:49: for(;n>0;n--)
      000085 EE               [12]  494 	mov	a,r6
      000086 4F               [12]  495 	orl	a,r7
      000087 60 0F            [24]  496 	jz	00108$
                                    497 ;	main.c:51: for(a=110;a>0;a--)
      000089 7D 6E            [12]  498 	mov	r5,#0x6e
      00008B                        499 00104$:
      00008B ED               [12]  500 	mov	a,r5
      00008C 14               [12]  501 	dec	a
      00008D FC               [12]  502 	mov	r4,a
      00008E FD               [12]  503 	mov	r5,a
      00008F 70 FA            [24]  504 	jnz	00104$
                                    505 ;	main.c:49: for(;n>0;n--)
      000091 1E               [12]  506 	dec	r6
      000092 BE FF 01         [24]  507 	cjne	r6,#0xff,00129$
      000095 1F               [12]  508 	dec	r7
      000096                        509 00129$:
      000096 80 ED            [24]  510 	sjmp	00106$
      000098                        511 00108$:
      000098 22               [24]  512 	ret
                                    513 ;------------------------------------------------------------
                                    514 ;Allocation info for local variables in function 'main'
                                    515 ;------------------------------------------------------------
                                    516 ;	main.c:56: void main()
                                    517 ;	-----------------------------------------
                                    518 ;	 function main
                                    519 ;	-----------------------------------------
      000099                        520 _main:
                                    521 ;	main.c:59: timer=0;
      000099 E4               [12]  522 	clr	a
      00009A F5 08            [12]  523 	mov	_timer,a
      00009C F5 09            [12]  524 	mov	(_timer + 1),a
                                    525 ;	main.c:60: level=6;
      00009E 75 0A 06         [24]  526 	mov	_level,#0x06
                                    527 ;	1-genFromRTrack replaced	mov	(_level + 1),#0x00
      0000A1 F5 0B            [12]  528 	mov	(_level + 1),a
                                    529 ;	main.c:61: state=0;
      0000A3 F5 0C            [12]  530 	mov	_state,a
      0000A5 F5 0D            [12]  531 	mov	(_state + 1),a
                                    532 ;	main.c:62: update_times=shift_base_time[level];
      0000A7 90 03 91         [24]  533 	mov	dptr,#(_shift_base_time + 0x000c)
                                    534 ;	genFromRTrack removed	clr	a
      0000AA 93               [24]  535 	movc	a,@a+dptr
      0000AB F5 0E            [12]  536 	mov	_update_times,a
      0000AD A3               [24]  537 	inc	dptr
      0000AE E4               [12]  538 	clr	a
      0000AF 93               [24]  539 	movc	a,@a+dptr
      0000B0 F5 0F            [12]  540 	mov	(_update_times + 1),a
                                    541 ;	main.c:65: IT0=1;EX0=1;
      0000B2 D2 88            [12]  542 	setb	_IT0
      0000B4 D2 A8            [12]  543 	setb	_EX0
                                    544 ;	main.c:66: IT1=1;EX1=1;
      0000B6 D2 8A            [12]  545 	setb	_IT1
      0000B8 D2 AA            [12]  546 	setb	_EX1
                                    547 ;	main.c:67: EA=1;
      0000BA D2 AF            [12]  548 	setb	_EA
                                    549 ;	main.c:70: ET0=1;
      0000BC D2 A9            [12]  550 	setb	_ET0
                                    551 ;	main.c:71: P0=DIG_CODE[level];
      0000BE 90 03 4C         [24]  552 	mov	dptr,#(_DIG_CODE + 0x0006)
      0000C1 E4               [12]  553 	clr	a
      0000C2 93               [24]  554 	movc	a,@a+dptr
      0000C3 F5 80            [12]  555 	mov	_P0,a
                                    556 ;	main.c:73: timerInit();
      0000C5 12 00 75         [24]  557 	lcall	_timerInit
                                    558 ;	main.c:75: while(1)
      0000C8                        559 00102$:
      0000C8 80 FE            [24]  560 	sjmp	00102$
                                    561 ;------------------------------------------------------------
                                    562 ;Allocation info for local variables in function 'increase'
                                    563 ;------------------------------------------------------------
                                    564 ;	main.c:80: void increase(void) __interrupt(2)
                                    565 ;	-----------------------------------------
                                    566 ;	 function increase
                                    567 ;	-----------------------------------------
      0000CA                        568 _increase:
      0000CA C0 20            [24]  569 	push	bits
      0000CC C0 E0            [24]  570 	push	acc
      0000CE C0 F0            [24]  571 	push	b
      0000D0 C0 82            [24]  572 	push	dpl
      0000D2 C0 83            [24]  573 	push	dph
      0000D4 C0 07            [24]  574 	push	(0+7)
      0000D6 C0 06            [24]  575 	push	(0+6)
      0000D8 C0 05            [24]  576 	push	(0+5)
      0000DA C0 04            [24]  577 	push	(0+4)
      0000DC C0 03            [24]  578 	push	(0+3)
      0000DE C0 02            [24]  579 	push	(0+2)
      0000E0 C0 01            [24]  580 	push	(0+1)
      0000E2 C0 00            [24]  581 	push	(0+0)
      0000E4 C0 D0            [24]  582 	push	psw
      0000E6 75 D0 00         [24]  583 	mov	psw,#0x00
                                    584 ;	main.c:82: TR0=0;
      0000E9 C2 8C            [12]  585 	clr	_TR0
                                    586 ;	main.c:83: delay(10);
      0000EB 90 00 0A         [24]  587 	mov	dptr,#0x000a
      0000EE 12 00 81         [24]  588 	lcall	_delay
                                    589 ;	main.c:84: if(K4==0)
      0000F1 20 B3 4D         [24]  590 	jb	_K4,00104$
                                    591 ;	main.c:86: ++level;
      0000F4 05 0A            [12]  592 	inc	_level
      0000F6 E4               [12]  593 	clr	a
      0000F7 B5 0A 02         [24]  594 	cjne	a,_level,00114$
      0000FA 05 0B            [12]  595 	inc	(_level + 1)
      0000FC                        596 00114$:
                                    597 ;	main.c:87: if(level>7)
      0000FC C3               [12]  598 	clr	c
      0000FD 74 07            [12]  599 	mov	a,#0x07
      0000FF 95 0A            [12]  600 	subb	a,_level
      000101 E4               [12]  601 	clr	a
      000102 95 0B            [12]  602 	subb	a,(_level + 1)
      000104 50 06            [24]  603 	jnc	00102$
                                    604 ;	main.c:88: level=7;
      000106 75 0A 07         [24]  605 	mov	_level,#0x07
      000109 75 0B 00         [24]  606 	mov	(_level + 1),#0x00
      00010C                        607 00102$:
                                    608 ;	main.c:89: P0=DIG_CODE[level];
      00010C E5 0A            [12]  609 	mov	a,_level
      00010E 24 46            [12]  610 	add	a,#_DIG_CODE
      000110 F5 82            [12]  611 	mov	dpl,a
      000112 E5 0B            [12]  612 	mov	a,(_level + 1)
      000114 34 03            [12]  613 	addc	a,#(_DIG_CODE >> 8)
      000116 F5 83            [12]  614 	mov	dph,a
      000118 E4               [12]  615 	clr	a
      000119 93               [24]  616 	movc	a,@a+dptr
      00011A F5 80            [12]  617 	mov	_P0,a
                                    618 ;	main.c:90: update_times=shift_base_time[level];
      00011C E5 0A            [12]  619 	mov	a,_level
      00011E 25 0A            [12]  620 	add	a,_level
      000120 FE               [12]  621 	mov	r6,a
      000121 E5 0B            [12]  622 	mov	a,(_level + 1)
      000123 33               [12]  623 	rlc	a
      000124 FF               [12]  624 	mov	r7,a
      000125 EE               [12]  625 	mov	a,r6
      000126 24 85            [12]  626 	add	a,#_shift_base_time
      000128 F5 82            [12]  627 	mov	dpl,a
      00012A EF               [12]  628 	mov	a,r7
      00012B 34 03            [12]  629 	addc	a,#(_shift_base_time >> 8)
      00012D F5 83            [12]  630 	mov	dph,a
      00012F E4               [12]  631 	clr	a
      000130 93               [24]  632 	movc	a,@a+dptr
      000131 F5 0E            [12]  633 	mov	_update_times,a
      000133 A3               [24]  634 	inc	dptr
      000134 E4               [12]  635 	clr	a
      000135 93               [24]  636 	movc	a,@a+dptr
      000136 F5 0F            [12]  637 	mov	(_update_times + 1),a
                                    638 ;	main.c:91: state=0;
      000138 E4               [12]  639 	clr	a
      000139 F5 0C            [12]  640 	mov	_state,a
      00013B F5 0D            [12]  641 	mov	(_state + 1),a
                                    642 ;	main.c:92: timer=0;
      00013D F5 08            [12]  643 	mov	_timer,a
      00013F F5 09            [12]  644 	mov	(_timer + 1),a
      000141                        645 00104$:
                                    646 ;	main.c:94: TR0=1;
      000141 D2 8C            [12]  647 	setb	_TR0
      000143 D0 D0            [24]  648 	pop	psw
      000145 D0 00            [24]  649 	pop	(0+0)
      000147 D0 01            [24]  650 	pop	(0+1)
      000149 D0 02            [24]  651 	pop	(0+2)
      00014B D0 03            [24]  652 	pop	(0+3)
      00014D D0 04            [24]  653 	pop	(0+4)
      00014F D0 05            [24]  654 	pop	(0+5)
      000151 D0 06            [24]  655 	pop	(0+6)
      000153 D0 07            [24]  656 	pop	(0+7)
      000155 D0 83            [24]  657 	pop	dph
      000157 D0 82            [24]  658 	pop	dpl
      000159 D0 F0            [24]  659 	pop	b
      00015B D0 E0            [24]  660 	pop	acc
      00015D D0 20            [24]  661 	pop	bits
      00015F 32               [24]  662 	reti
                                    663 ;------------------------------------------------------------
                                    664 ;Allocation info for local variables in function 'decrease'
                                    665 ;------------------------------------------------------------
                                    666 ;	main.c:97: void decrease(void) __interrupt(0)
                                    667 ;	-----------------------------------------
                                    668 ;	 function decrease
                                    669 ;	-----------------------------------------
      000160                        670 _decrease:
      000160 C0 20            [24]  671 	push	bits
      000162 C0 E0            [24]  672 	push	acc
      000164 C0 F0            [24]  673 	push	b
      000166 C0 82            [24]  674 	push	dpl
      000168 C0 83            [24]  675 	push	dph
      00016A C0 07            [24]  676 	push	(0+7)
      00016C C0 06            [24]  677 	push	(0+6)
      00016E C0 05            [24]  678 	push	(0+5)
      000170 C0 04            [24]  679 	push	(0+4)
      000172 C0 03            [24]  680 	push	(0+3)
      000174 C0 02            [24]  681 	push	(0+2)
      000176 C0 01            [24]  682 	push	(0+1)
      000178 C0 00            [24]  683 	push	(0+0)
      00017A C0 D0            [24]  684 	push	psw
      00017C 75 D0 00         [24]  685 	mov	psw,#0x00
                                    686 ;	main.c:99: TR0=0;
      00017F C2 8C            [12]  687 	clr	_TR0
                                    688 ;	main.c:100: delay(10);
      000181 90 00 0A         [24]  689 	mov	dptr,#0x000a
      000184 12 00 81         [24]  690 	lcall	_delay
                                    691 ;	main.c:101: if(K3==0)
      000187 20 B2 4F         [24]  692 	jb	_K3,00104$
                                    693 ;	main.c:103: --level;
      00018A 15 0A            [12]  694 	dec	_level
      00018C 74 FF            [12]  695 	mov	a,#0xff
      00018E B5 0A 02         [24]  696 	cjne	a,_level,00114$
      000191 15 0B            [12]  697 	dec	(_level + 1)
      000193                        698 00114$:
                                    699 ;	main.c:104: if(level<1)
      000193 C3               [12]  700 	clr	c
      000194 E5 0A            [12]  701 	mov	a,_level
      000196 94 01            [12]  702 	subb	a,#0x01
      000198 E5 0B            [12]  703 	mov	a,(_level + 1)
      00019A 94 00            [12]  704 	subb	a,#0x00
      00019C 50 06            [24]  705 	jnc	00102$
                                    706 ;	main.c:105: level=1;
      00019E 75 0A 01         [24]  707 	mov	_level,#0x01
      0001A1 75 0B 00         [24]  708 	mov	(_level + 1),#0x00
      0001A4                        709 00102$:
                                    710 ;	main.c:106: P0=DIG_CODE[level];
      0001A4 E5 0A            [12]  711 	mov	a,_level
      0001A6 24 46            [12]  712 	add	a,#_DIG_CODE
      0001A8 F5 82            [12]  713 	mov	dpl,a
      0001AA E5 0B            [12]  714 	mov	a,(_level + 1)
      0001AC 34 03            [12]  715 	addc	a,#(_DIG_CODE >> 8)
      0001AE F5 83            [12]  716 	mov	dph,a
      0001B0 E4               [12]  717 	clr	a
      0001B1 93               [24]  718 	movc	a,@a+dptr
      0001B2 F5 80            [12]  719 	mov	_P0,a
                                    720 ;	main.c:107: update_times=shift_base_time[level];
      0001B4 E5 0A            [12]  721 	mov	a,_level
      0001B6 25 0A            [12]  722 	add	a,_level
      0001B8 FE               [12]  723 	mov	r6,a
      0001B9 E5 0B            [12]  724 	mov	a,(_level + 1)
      0001BB 33               [12]  725 	rlc	a
      0001BC FF               [12]  726 	mov	r7,a
      0001BD EE               [12]  727 	mov	a,r6
      0001BE 24 85            [12]  728 	add	a,#_shift_base_time
      0001C0 F5 82            [12]  729 	mov	dpl,a
      0001C2 EF               [12]  730 	mov	a,r7
      0001C3 34 03            [12]  731 	addc	a,#(_shift_base_time >> 8)
      0001C5 F5 83            [12]  732 	mov	dph,a
      0001C7 E4               [12]  733 	clr	a
      0001C8 93               [24]  734 	movc	a,@a+dptr
      0001C9 F5 0E            [12]  735 	mov	_update_times,a
      0001CB A3               [24]  736 	inc	dptr
      0001CC E4               [12]  737 	clr	a
      0001CD 93               [24]  738 	movc	a,@a+dptr
      0001CE F5 0F            [12]  739 	mov	(_update_times + 1),a
                                    740 ;	main.c:108: state=0;
      0001D0 E4               [12]  741 	clr	a
      0001D1 F5 0C            [12]  742 	mov	_state,a
      0001D3 F5 0D            [12]  743 	mov	(_state + 1),a
                                    744 ;	main.c:109: timer=0;
      0001D5 F5 08            [12]  745 	mov	_timer,a
      0001D7 F5 09            [12]  746 	mov	(_timer + 1),a
      0001D9                        747 00104$:
                                    748 ;	main.c:111: TR0=1;
      0001D9 D2 8C            [12]  749 	setb	_TR0
      0001DB D0 D0            [24]  750 	pop	psw
      0001DD D0 00            [24]  751 	pop	(0+0)
      0001DF D0 01            [24]  752 	pop	(0+1)
      0001E1 D0 02            [24]  753 	pop	(0+2)
      0001E3 D0 03            [24]  754 	pop	(0+3)
      0001E5 D0 04            [24]  755 	pop	(0+4)
      0001E7 D0 05            [24]  756 	pop	(0+5)
      0001E9 D0 06            [24]  757 	pop	(0+6)
      0001EB D0 07            [24]  758 	pop	(0+7)
      0001ED D0 83            [24]  759 	pop	dph
      0001EF D0 82            [24]  760 	pop	dpl
      0001F1 D0 F0            [24]  761 	pop	b
      0001F3 D0 E0            [24]  762 	pop	acc
      0001F5 D0 20            [24]  763 	pop	bits
      0001F7 32               [24]  764 	reti
                                    765 ;------------------------------------------------------------
                                    766 ;Allocation info for local variables in function 'timer0'
                                    767 ;------------------------------------------------------------
                                    768 ;	main.c:114: void timer0(void) __interrupt(1)
                                    769 ;	-----------------------------------------
                                    770 ;	 function timer0
                                    771 ;	-----------------------------------------
      0001F8                        772 _timer0:
      0001F8 C0 20            [24]  773 	push	bits
      0001FA C0 E0            [24]  774 	push	acc
      0001FC C0 F0            [24]  775 	push	b
      0001FE C0 82            [24]  776 	push	dpl
      000200 C0 83            [24]  777 	push	dph
      000202 C0 07            [24]  778 	push	(0+7)
      000204 C0 06            [24]  779 	push	(0+6)
      000206 C0 05            [24]  780 	push	(0+5)
      000208 C0 04            [24]  781 	push	(0+4)
      00020A C0 03            [24]  782 	push	(0+3)
      00020C C0 02            [24]  783 	push	(0+2)
      00020E C0 01            [24]  784 	push	(0+1)
      000210 C0 00            [24]  785 	push	(0+0)
      000212 C0 D0            [24]  786 	push	psw
      000214 75 D0 00         [24]  787 	mov	psw,#0x00
                                    788 ;	main.c:116: TR0=0;
      000217 C2 8C            [12]  789 	clr	_TR0
                                    790 ;	main.c:118: TH0=0xff;
      000219 75 8C FF         [24]  791 	mov	_TH0,#0xff
                                    792 ;	main.c:119: TL0=0xf6;
      00021C 75 8A F6         [24]  793 	mov	_TL0,#0xf6
                                    794 ;	main.c:121: local_now=update_times*state;
      00021F 85 0C 14         [24]  795 	mov	__mulint_PARM_2,_state
      000222 85 0D 15         [24]  796 	mov	(__mulint_PARM_2 + 1),(_state + 1)
      000225 85 0E 82         [24]  797 	mov	dpl,_update_times
      000228 85 0F 83         [24]  798 	mov	dph,(_update_times + 1)
      00022B 12 03 25         [24]  799 	lcall	__mulint
      00022E 85 82 10         [24]  800 	mov	_local_now,dpl
      000231 85 83 11         [24]  801 	mov	(_local_now + 1),dph
                                    802 ;	main.c:122: local_next=local_now+update_times;
      000234 E5 0E            [12]  803 	mov	a,_update_times
      000236 25 10            [12]  804 	add	a,_local_now
      000238 F5 12            [12]  805 	mov	_local_next,a
      00023A E5 0F            [12]  806 	mov	a,(_update_times + 1)
      00023C 35 11            [12]  807 	addc	a,(_local_now + 1)
      00023E F5 13            [12]  808 	mov	(_local_next + 1),a
                                    809 ;	main.c:123: ++timer;
      000240 05 08            [12]  810 	inc	_timer
      000242 E4               [12]  811 	clr	a
      000243 B5 08 02         [24]  812 	cjne	a,_timer,00119$
      000246 05 09            [12]  813 	inc	(_timer + 1)
      000248                        814 00119$:
                                    815 ;	main.c:124: if(timer==shift[level])
      000248 AE 0A            [24]  816 	mov	r6,_level
      00024A E5 0B            [12]  817 	mov	a,(_level + 1)
      00024C CE               [12]  818 	xch	a,r6
      00024D 25 E0            [12]  819 	add	a,acc
      00024F CE               [12]  820 	xch	a,r6
      000250 33               [12]  821 	rlc	a
      000251 CE               [12]  822 	xch	a,r6
      000252 25 E0            [12]  823 	add	a,acc
      000254 CE               [12]  824 	xch	a,r6
      000255 33               [12]  825 	rlc	a
      000256 FF               [12]  826 	mov	r7,a
      000257 EE               [12]  827 	mov	a,r6
      000258 24 65            [12]  828 	add	a,#_shift
      00025A F5 82            [12]  829 	mov	dpl,a
      00025C EF               [12]  830 	mov	a,r7
      00025D 34 03            [12]  831 	addc	a,#(_shift >> 8)
      00025F F5 83            [12]  832 	mov	dph,a
      000261 E4               [12]  833 	clr	a
      000262 93               [24]  834 	movc	a,@a+dptr
      000263 FC               [12]  835 	mov	r4,a
      000264 A3               [24]  836 	inc	dptr
      000265 E4               [12]  837 	clr	a
      000266 93               [24]  838 	movc	a,@a+dptr
      000267 FD               [12]  839 	mov	r5,a
      000268 A3               [24]  840 	inc	dptr
      000269 E4               [12]  841 	clr	a
      00026A 93               [24]  842 	movc	a,@a+dptr
      00026B FE               [12]  843 	mov	r6,a
      00026C A3               [24]  844 	inc	dptr
      00026D E4               [12]  845 	clr	a
      00026E 93               [24]  846 	movc	a,@a+dptr
      00026F FF               [12]  847 	mov	r7,a
      000270 A8 08            [24]  848 	mov	r0,_timer
      000272 A9 09            [24]  849 	mov	r1,(_timer + 1)
      000274 E4               [12]  850 	clr	a
      000275 FA               [12]  851 	mov	r2,a
      000276 FB               [12]  852 	mov	r3,a
      000277 E8               [12]  853 	mov	a,r0
      000278 B5 04 15         [24]  854 	cjne	a,ar4,00102$
      00027B E9               [12]  855 	mov	a,r1
      00027C B5 05 11         [24]  856 	cjne	a,ar5,00102$
      00027F EA               [12]  857 	mov	a,r2
      000280 B5 06 0D         [24]  858 	cjne	a,ar6,00102$
      000283 EB               [12]  859 	mov	a,r3
      000284 B5 07 09         [24]  860 	cjne	a,ar7,00102$
                                    861 ;	main.c:125: timer=0,state=0;
      000287 E4               [12]  862 	clr	a
      000288 F5 08            [12]  863 	mov	_timer,a
      00028A F5 09            [12]  864 	mov	(_timer + 1),a
      00028C F5 0C            [12]  865 	mov	_state,a
      00028E F5 0D            [12]  866 	mov	(_state + 1),a
      000290                        867 00102$:
                                    868 ;	main.c:126: if(timer==local_next)
      000290 E5 12            [12]  869 	mov	a,_local_next
      000292 B5 08 0D         [24]  870 	cjne	a,_timer,00104$
      000295 E5 13            [12]  871 	mov	a,(_local_next + 1)
      000297 B5 09 08         [24]  872 	cjne	a,(_timer + 1),00104$
                                    873 ;	main.c:127: ++state;
      00029A 05 0C            [12]  874 	inc	_state
      00029C E4               [12]  875 	clr	a
      00029D B5 0C 02         [24]  876 	cjne	a,_state,00124$
      0002A0 05 0D            [12]  877 	inc	(_state + 1)
      0002A2                        878 00124$:
      0002A2                        879 00104$:
                                    880 ;	main.c:128: if(timer>local_now+update_times*sin_wave[state]/255)
      0002A2 E5 0C            [12]  881 	mov	a,_state
      0002A4 24 50            [12]  882 	add	a,#_sin_wave
      0002A6 F5 82            [12]  883 	mov	dpl,a
      0002A8 E5 0D            [12]  884 	mov	a,(_state + 1)
      0002AA 34 03            [12]  885 	addc	a,#(_sin_wave >> 8)
      0002AC F5 83            [12]  886 	mov	dph,a
      0002AE E4               [12]  887 	clr	a
      0002AF 93               [24]  888 	movc	a,@a+dptr
      0002B0 FF               [12]  889 	mov	r7,a
      0002B1 8F 14            [24]  890 	mov	__mulint_PARM_2,r7
      0002B3 75 15 00         [24]  891 	mov	(__mulint_PARM_2 + 1),#0x00
      0002B6 85 0E 82         [24]  892 	mov	dpl,_update_times
      0002B9 85 0F 83         [24]  893 	mov	dph,(_update_times + 1)
      0002BC 12 03 25         [24]  894 	lcall	__mulint
      0002BF 75 14 FF         [24]  895 	mov	__divuint_PARM_2,#0xff
      0002C2 75 15 00         [24]  896 	mov	(__divuint_PARM_2 + 1),#0x00
      0002C5 12 02 FC         [24]  897 	lcall	__divuint
      0002C8 AE 82            [24]  898 	mov	r6,dpl
      0002CA AF 83            [24]  899 	mov	r7,dph
      0002CC EE               [12]  900 	mov	a,r6
      0002CD 25 10            [12]  901 	add	a,_local_now
      0002CF FE               [12]  902 	mov	r6,a
      0002D0 EF               [12]  903 	mov	a,r7
      0002D1 35 11            [12]  904 	addc	a,(_local_now + 1)
      0002D3 FF               [12]  905 	mov	r7,a
      0002D4 C3               [12]  906 	clr	c
      0002D5 EE               [12]  907 	mov	a,r6
      0002D6 95 08            [12]  908 	subb	a,_timer
      0002D8 EF               [12]  909 	mov	a,r7
      0002D9 95 09            [12]  910 	subb	a,(_timer + 1)
                                    911 ;	main.c:129: OUT=1;
                                    912 ;	main.c:131: OUT=0;
      0002DB 92 A0            [24]  913 	mov	_OUT,c
                                    914 ;	main.c:132: TR0=1;
      0002DD D2 8C            [12]  915 	setb	_TR0
      0002DF D0 D0            [24]  916 	pop	psw
      0002E1 D0 00            [24]  917 	pop	(0+0)
      0002E3 D0 01            [24]  918 	pop	(0+1)
      0002E5 D0 02            [24]  919 	pop	(0+2)
      0002E7 D0 03            [24]  920 	pop	(0+3)
      0002E9 D0 04            [24]  921 	pop	(0+4)
      0002EB D0 05            [24]  922 	pop	(0+5)
      0002ED D0 06            [24]  923 	pop	(0+6)
      0002EF D0 07            [24]  924 	pop	(0+7)
      0002F1 D0 83            [24]  925 	pop	dph
      0002F3 D0 82            [24]  926 	pop	dpl
      0002F5 D0 F0            [24]  927 	pop	b
      0002F7 D0 E0            [24]  928 	pop	acc
      0002F9 D0 20            [24]  929 	pop	bits
      0002FB 32               [24]  930 	reti
                                    931 	.area CSEG    (CODE)
                                    932 	.area CONST   (CODE)
      000346                        933 _DIG_CODE:
      000346 3F                     934 	.db #0x3f	; 63
      000347 06                     935 	.db #0x06	; 6
      000348 5B                     936 	.db #0x5b	; 91
      000349 4F                     937 	.db #0x4f	; 79	'O'
      00034A 66                     938 	.db #0x66	; 102	'f'
      00034B 6D                     939 	.db #0x6d	; 109	'm'
      00034C 7D                     940 	.db #0x7d	; 125
      00034D 07                     941 	.db #0x07	; 7
      00034E 7F                     942 	.db #0x7f	; 127
      00034F 6F                     943 	.db #0x6f	; 111	'o'
      000350                        944 _sin_wave:
      000350 00                     945 	.db #0x00	; 0
      000351 80                     946 	.db #0x80	; 128
      000352 A7                     947 	.db #0xa7	; 167
      000353 CB                     948 	.db #0xcb	; 203
      000354 E7                     949 	.db #0xe7	; 231
      000355 F9                     950 	.db #0xf9	; 249
      000356 FF                     951 	.db #0xff	; 255
      000357 F9                     952 	.db #0xf9	; 249
      000358 E7                     953 	.db #0xe7	; 231
      000359 CB                     954 	.db #0xcb	; 203
      00035A A7                     955 	.db #0xa7	; 167
      00035B 80                     956 	.db #0x80	; 128
      00035C 58                     957 	.db #0x58	; 88	'X'
      00035D 34                     958 	.db #0x34	; 52	'4'
      00035E 18                     959 	.db #0x18	; 24
      00035F 06                     960 	.db #0x06	; 6
      000360 00                     961 	.db #0x00	; 0
      000361 06                     962 	.db #0x06	; 6
      000362 18                     963 	.db #0x18	; 24
      000363 34                     964 	.db #0x34	; 52	'4'
      000364 58                     965 	.db #0x58	; 88	'X'
      000365                        966 _shift:
      000365 00 00 00 00            967 	.byte #0x00,#0x00,#0x00,#0x00	; 0
      000369 14 00 00 00            968 	.byte #0x14,#0x00,#0x00,#0x00	; 20
      00036D 3C 00 00 00            969 	.byte #0x3c,#0x00,#0x00,#0x00	; 60
      000371 64 00 00 00            970 	.byte #0x64,#0x00,#0x00,#0x00	; 100
      000375 F4 01 00 00            971 	.byte #0xf4,#0x01,#0x00,#0x00	; 500
      000379 D0 07 00 00            972 	.byte #0xd0,#0x07,#0x00,#0x00	; 2000
      00037D 20 4E 00 00            973 	.byte #0x20,#0x4e,#0x00,#0x00	; 20000
      000381 A0 86 01 00            974 	.byte #0xa0,#0x86,#0x01,#0x00	; 100000
      000385                        975 _shift_base_time:
      000385 00 00                  976 	.byte #0x00,#0x00	; 0
      000387 01 00                  977 	.byte #0x01,#0x00	; 1
      000389 03 00                  978 	.byte #0x03,#0x00	; 3
      00038B 05 00                  979 	.byte #0x05,#0x00	; 5
      00038D 19 00                  980 	.byte #0x19,#0x00	; 25
      00038F 64 00                  981 	.byte #0x64,#0x00	; 100
      000391 E8 03                  982 	.byte #0xe8,#0x03	; 1000
      000393 88 13                  983 	.byte #0x88,#0x13	; 5000
                                    984 	.area XINIT   (CODE)
                                    985 	.area CABS    (ABS,CODE)
