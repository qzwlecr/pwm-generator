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
                                     11 	.globl _times
                                     12 	.globl _usart4
                                     13 	.globl _timer0
                                     14 	.globl _main
                                     15 	.globl _delay
                                     16 	.globl _sendString
                                     17 	.globl _sendData
                                     18 	.globl _P4_6
                                     19 	.globl _P4_5
                                     20 	.globl _P4_4
                                     21 	.globl _P4_3
                                     22 	.globl _P4_2
                                     23 	.globl _P4_1
                                     24 	.globl _P4_0
                                     25 	.globl _CY
                                     26 	.globl _AC
                                     27 	.globl _F0
                                     28 	.globl _RS1
                                     29 	.globl _RS0
                                     30 	.globl _OV
                                     31 	.globl _FL
                                     32 	.globl _P
                                     33 	.globl _TF2
                                     34 	.globl _EXF2
                                     35 	.globl _RCLK
                                     36 	.globl _TCLK
                                     37 	.globl _EXEN2
                                     38 	.globl _TR2
                                     39 	.globl _C_T2
                                     40 	.globl _CP_RL2
                                     41 	.globl _T2CON_7
                                     42 	.globl _T2CON_6
                                     43 	.globl _T2CON_5
                                     44 	.globl _T2CON_4
                                     45 	.globl _T2CON_3
                                     46 	.globl _T2CON_2
                                     47 	.globl _T2CON_1
                                     48 	.globl _T2CON_0
                                     49 	.globl _PT2
                                     50 	.globl _PS
                                     51 	.globl _PT1
                                     52 	.globl _PX1
                                     53 	.globl _PT0
                                     54 	.globl _PX0
                                     55 	.globl _RD
                                     56 	.globl _WR
                                     57 	.globl _T1
                                     58 	.globl _T0
                                     59 	.globl _INT1
                                     60 	.globl _INT0
                                     61 	.globl _TXD
                                     62 	.globl _RXD
                                     63 	.globl _P3_7
                                     64 	.globl _P3_6
                                     65 	.globl _P3_5
                                     66 	.globl _P3_4
                                     67 	.globl _P3_3
                                     68 	.globl _P3_2
                                     69 	.globl _P3_1
                                     70 	.globl _P3_0
                                     71 	.globl _EA
                                     72 	.globl _ET2
                                     73 	.globl _ES
                                     74 	.globl _ET1
                                     75 	.globl _EX1
                                     76 	.globl _ET0
                                     77 	.globl _EX0
                                     78 	.globl _P2_7
                                     79 	.globl _P2_6
                                     80 	.globl _P2_5
                                     81 	.globl _P2_4
                                     82 	.globl _P2_3
                                     83 	.globl _P2_2
                                     84 	.globl _P2_1
                                     85 	.globl _P2_0
                                     86 	.globl _SM0
                                     87 	.globl _SM1
                                     88 	.globl _SM2
                                     89 	.globl _REN
                                     90 	.globl _TB8
                                     91 	.globl _RB8
                                     92 	.globl _TI
                                     93 	.globl _RI
                                     94 	.globl _T2EX
                                     95 	.globl _T2
                                     96 	.globl _P1_7
                                     97 	.globl _P1_6
                                     98 	.globl _P1_5
                                     99 	.globl _P1_4
                                    100 	.globl _P1_3
                                    101 	.globl _P1_2
                                    102 	.globl _P1_1
                                    103 	.globl _P1_0
                                    104 	.globl _TF1
                                    105 	.globl _TR1
                                    106 	.globl _TF0
                                    107 	.globl _TR0
                                    108 	.globl _IE1
                                    109 	.globl _IT1
                                    110 	.globl _IE0
                                    111 	.globl _IT0
                                    112 	.globl _P0_7
                                    113 	.globl _P0_6
                                    114 	.globl _P0_5
                                    115 	.globl _P0_4
                                    116 	.globl _P0_3
                                    117 	.globl _P0_2
                                    118 	.globl _P0_1
                                    119 	.globl _P0_0
                                    120 	.globl _OUT2
                                    121 	.globl _OUT1
                                    122 	.globl _AUXR1
                                    123 	.globl _ISP_TRIG
                                    124 	.globl _ISP_CMD
                                    125 	.globl _ISP_ADDL
                                    126 	.globl _ISP_ADDH
                                    127 	.globl _ISP_DATA
                                    128 	.globl _XICON
                                    129 	.globl _AUXR
                                    130 	.globl _WDT_CONTR
                                    131 	.globl _IAP_CONTR
                                    132 	.globl _P4
                                    133 	.globl _B
                                    134 	.globl _A
                                    135 	.globl _ACC
                                    136 	.globl _PSW
                                    137 	.globl _TH2
                                    138 	.globl _TL2
                                    139 	.globl _RCAP2H
                                    140 	.globl _RCAP2L
                                    141 	.globl _T2MOD
                                    142 	.globl _T2CON
                                    143 	.globl _IP
                                    144 	.globl _P3
                                    145 	.globl _IE
                                    146 	.globl _P2
                                    147 	.globl _SBUF
                                    148 	.globl _SCON
                                    149 	.globl _P1
                                    150 	.globl _TH1
                                    151 	.globl _TH0
                                    152 	.globl _TL1
                                    153 	.globl _TL0
                                    154 	.globl _TMOD
                                    155 	.globl _TCON
                                    156 	.globl _PCON
                                    157 	.globl _DPH
                                    158 	.globl _DPL
                                    159 	.globl _SP
                                    160 	.globl _P0
                                    161 	.globl _i
                                    162 	.globl _ii
                                    163 	.globl _read_flag
                                    164 	.globl _timer
                                    165 	.globl _period
                                    166 ;--------------------------------------------------------
                                    167 ; special function registers
                                    168 ;--------------------------------------------------------
                                    169 	.area RSEG    (ABS,DATA)
      000000                        170 	.org 0x0000
                           000080   171 _P0	=	0x0080
                           000081   172 _SP	=	0x0081
                           000082   173 _DPL	=	0x0082
                           000083   174 _DPH	=	0x0083
                           000087   175 _PCON	=	0x0087
                           000088   176 _TCON	=	0x0088
                           000089   177 _TMOD	=	0x0089
                           00008A   178 _TL0	=	0x008a
                           00008B   179 _TL1	=	0x008b
                           00008C   180 _TH0	=	0x008c
                           00008D   181 _TH1	=	0x008d
                           000090   182 _P1	=	0x0090
                           000098   183 _SCON	=	0x0098
                           000099   184 _SBUF	=	0x0099
                           0000A0   185 _P2	=	0x00a0
                           0000A8   186 _IE	=	0x00a8
                           0000B0   187 _P3	=	0x00b0
                           0000B8   188 _IP	=	0x00b8
                           0000C8   189 _T2CON	=	0x00c8
                           0000C9   190 _T2MOD	=	0x00c9
                           0000CA   191 _RCAP2L	=	0x00ca
                           0000CB   192 _RCAP2H	=	0x00cb
                           0000CC   193 _TL2	=	0x00cc
                           0000CD   194 _TH2	=	0x00cd
                           0000D0   195 _PSW	=	0x00d0
                           0000E0   196 _ACC	=	0x00e0
                           0000E0   197 _A	=	0x00e0
                           0000F0   198 _B	=	0x00f0
                           0000E8   199 _P4	=	0x00e8
                           0000E7   200 _IAP_CONTR	=	0x00e7
                           0000E1   201 _WDT_CONTR	=	0x00e1
                           00008E   202 _AUXR	=	0x008e
                           0000C0   203 _XICON	=	0x00c0
                           0000E2   204 _ISP_DATA	=	0x00e2
                           0000E3   205 _ISP_ADDH	=	0x00e3
                           0000E4   206 _ISP_ADDL	=	0x00e4
                           0000E5   207 _ISP_CMD	=	0x00e5
                           0000E6   208 _ISP_TRIG	=	0x00e6
                           0000A2   209 _AUXR1	=	0x00a2
                           000090   210 _OUT1	=	0x0090
                           0000A0   211 _OUT2	=	0x00a0
                                    212 ;--------------------------------------------------------
                                    213 ; special function bits
                                    214 ;--------------------------------------------------------
                                    215 	.area RSEG    (ABS,DATA)
      000000                        216 	.org 0x0000
                           000080   217 _P0_0	=	0x0080
                           000081   218 _P0_1	=	0x0081
                           000082   219 _P0_2	=	0x0082
                           000083   220 _P0_3	=	0x0083
                           000084   221 _P0_4	=	0x0084
                           000085   222 _P0_5	=	0x0085
                           000086   223 _P0_6	=	0x0086
                           000087   224 _P0_7	=	0x0087
                           000088   225 _IT0	=	0x0088
                           000089   226 _IE0	=	0x0089
                           00008A   227 _IT1	=	0x008a
                           00008B   228 _IE1	=	0x008b
                           00008C   229 _TR0	=	0x008c
                           00008D   230 _TF0	=	0x008d
                           00008E   231 _TR1	=	0x008e
                           00008F   232 _TF1	=	0x008f
                           000090   233 _P1_0	=	0x0090
                           000091   234 _P1_1	=	0x0091
                           000092   235 _P1_2	=	0x0092
                           000093   236 _P1_3	=	0x0093
                           000094   237 _P1_4	=	0x0094
                           000095   238 _P1_5	=	0x0095
                           000096   239 _P1_6	=	0x0096
                           000097   240 _P1_7	=	0x0097
                           000090   241 _T2	=	0x0090
                           000091   242 _T2EX	=	0x0091
                           000098   243 _RI	=	0x0098
                           000099   244 _TI	=	0x0099
                           00009A   245 _RB8	=	0x009a
                           00009B   246 _TB8	=	0x009b
                           00009C   247 _REN	=	0x009c
                           00009D   248 _SM2	=	0x009d
                           00009E   249 _SM1	=	0x009e
                           00009F   250 _SM0	=	0x009f
                           0000A0   251 _P2_0	=	0x00a0
                           0000A1   252 _P2_1	=	0x00a1
                           0000A2   253 _P2_2	=	0x00a2
                           0000A3   254 _P2_3	=	0x00a3
                           0000A4   255 _P2_4	=	0x00a4
                           0000A5   256 _P2_5	=	0x00a5
                           0000A6   257 _P2_6	=	0x00a6
                           0000A7   258 _P2_7	=	0x00a7
                           0000A8   259 _EX0	=	0x00a8
                           0000A9   260 _ET0	=	0x00a9
                           0000AA   261 _EX1	=	0x00aa
                           0000AB   262 _ET1	=	0x00ab
                           0000AC   263 _ES	=	0x00ac
                           0000AD   264 _ET2	=	0x00ad
                           0000AF   265 _EA	=	0x00af
                           0000B0   266 _P3_0	=	0x00b0
                           0000B1   267 _P3_1	=	0x00b1
                           0000B2   268 _P3_2	=	0x00b2
                           0000B3   269 _P3_3	=	0x00b3
                           0000B4   270 _P3_4	=	0x00b4
                           0000B5   271 _P3_5	=	0x00b5
                           0000B6   272 _P3_6	=	0x00b6
                           0000B7   273 _P3_7	=	0x00b7
                           0000B0   274 _RXD	=	0x00b0
                           0000B1   275 _TXD	=	0x00b1
                           0000B2   276 _INT0	=	0x00b2
                           0000B3   277 _INT1	=	0x00b3
                           0000B4   278 _T0	=	0x00b4
                           0000B5   279 _T1	=	0x00b5
                           0000B6   280 _WR	=	0x00b6
                           0000B7   281 _RD	=	0x00b7
                           0000B8   282 _PX0	=	0x00b8
                           0000B9   283 _PT0	=	0x00b9
                           0000BA   284 _PX1	=	0x00ba
                           0000BB   285 _PT1	=	0x00bb
                           0000BC   286 _PS	=	0x00bc
                           0000BD   287 _PT2	=	0x00bd
                           0000C8   288 _T2CON_0	=	0x00c8
                           0000C9   289 _T2CON_1	=	0x00c9
                           0000CA   290 _T2CON_2	=	0x00ca
                           0000CB   291 _T2CON_3	=	0x00cb
                           0000CC   292 _T2CON_4	=	0x00cc
                           0000CD   293 _T2CON_5	=	0x00cd
                           0000CE   294 _T2CON_6	=	0x00ce
                           0000CF   295 _T2CON_7	=	0x00cf
                           0000C8   296 _CP_RL2	=	0x00c8
                           0000C9   297 _C_T2	=	0x00c9
                           0000CA   298 _TR2	=	0x00ca
                           0000CB   299 _EXEN2	=	0x00cb
                           0000CC   300 _TCLK	=	0x00cc
                           0000CD   301 _RCLK	=	0x00cd
                           0000CE   302 _EXF2	=	0x00ce
                           0000CF   303 _TF2	=	0x00cf
                           0000D0   304 _P	=	0x00d0
                           0000D1   305 _FL	=	0x00d1
                           0000D2   306 _OV	=	0x00d2
                           0000D3   307 _RS0	=	0x00d3
                           0000D4   308 _RS1	=	0x00d4
                           0000D5   309 _F0	=	0x00d5
                           0000D6   310 _AC	=	0x00d6
                           0000D7   311 _CY	=	0x00d7
                           0000E8   312 _P4_0	=	0x00e8
                           0000E9   313 _P4_1	=	0x00e9
                           0000EA   314 _P4_2	=	0x00ea
                           0000EB   315 _P4_3	=	0x00eb
                           0000EC   316 _P4_4	=	0x00ec
                           0000ED   317 _P4_5	=	0x00ed
                           0000EE   318 _P4_6	=	0x00ee
                                    319 ;--------------------------------------------------------
                                    320 ; overlayable register banks
                                    321 ;--------------------------------------------------------
                                    322 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        323 	.ds 8
                                    324 ;--------------------------------------------------------
                                    325 ; internal ram data
                                    326 ;--------------------------------------------------------
                                    327 	.area DSEG    (DATA)
      000008                        328 _period::
      000008                        329 	.ds 16
      000018                        330 _timer::
      000018                        331 	.ds 64
      000058                        332 _read_flag::
      000058                        333 	.ds 1
      000059                        334 _ii::
      000059                        335 	.ds 1
      00005A                        336 _i::
      00005A                        337 	.ds 1
      00005B                        338 _timer0_sloc0_1_0:
      00005B                        339 	.ds 4
                                    340 ;--------------------------------------------------------
                                    341 ; overlayable items in internal ram 
                                    342 ;--------------------------------------------------------
                                    343 	.area	OSEG    (OVR,DATA)
                                    344 	.area	OSEG    (OVR,DATA)
                                    345 ;--------------------------------------------------------
                                    346 ; Stack segment in internal ram 
                                    347 ;--------------------------------------------------------
                                    348 	.area	SSEG
      00005F                        349 __start__stack:
      00005F                        350 	.ds	1
                                    351 
                                    352 ;--------------------------------------------------------
                                    353 ; indirectly addressable internal ram data
                                    354 ;--------------------------------------------------------
                                    355 	.area ISEG    (DATA)
                                    356 ;--------------------------------------------------------
                                    357 ; absolute internal ram data
                                    358 ;--------------------------------------------------------
                                    359 	.area IABS    (ABS,DATA)
                                    360 	.area IABS    (ABS,DATA)
                                    361 ;--------------------------------------------------------
                                    362 ; bit data
                                    363 ;--------------------------------------------------------
                                    364 	.area BSEG    (BIT)
                                    365 ;--------------------------------------------------------
                                    366 ; paged external ram data
                                    367 ;--------------------------------------------------------
                                    368 	.area PSEG    (PAG,XDATA)
                                    369 ;--------------------------------------------------------
                                    370 ; external ram data
                                    371 ;--------------------------------------------------------
                                    372 	.area XSEG    (XDATA)
                                    373 ;--------------------------------------------------------
                                    374 ; absolute external ram data
                                    375 ;--------------------------------------------------------
                                    376 	.area XABS    (ABS,XDATA)
                                    377 ;--------------------------------------------------------
                                    378 ; external initialized ram data
                                    379 ;--------------------------------------------------------
                                    380 	.area XISEG   (XDATA)
                                    381 	.area HOME    (CODE)
                                    382 	.area GSINIT0 (CODE)
                                    383 	.area GSINIT1 (CODE)
                                    384 	.area GSINIT2 (CODE)
                                    385 	.area GSINIT3 (CODE)
                                    386 	.area GSINIT4 (CODE)
                                    387 	.area GSINIT5 (CODE)
                                    388 	.area GSINIT  (CODE)
                                    389 	.area GSFINAL (CODE)
                                    390 	.area CSEG    (CODE)
                                    391 ;--------------------------------------------------------
                                    392 ; interrupt vector 
                                    393 ;--------------------------------------------------------
                                    394 	.area HOME    (CODE)
      000000                        395 __interrupt_vect:
      000000 02 00 29         [24]  396 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  397 	reti
      000004                        398 	.ds	7
      00000B 02 01 8A         [24]  399 	ljmp	_timer0
      00000E                        400 	.ds	5
      000013 32               [24]  401 	reti
      000014                        402 	.ds	7
      00001B 32               [24]  403 	reti
      00001C                        404 	.ds	7
      000023 02 03 C9         [24]  405 	ljmp	_usart4
                                    406 ;--------------------------------------------------------
                                    407 ; global & static initialisations
                                    408 ;--------------------------------------------------------
                                    409 	.area HOME    (CODE)
                                    410 	.area GSINIT  (CODE)
                                    411 	.area GSFINAL (CODE)
                                    412 	.area GSINIT  (CODE)
                                    413 	.globl __sdcc_gsinit_startup
                                    414 	.globl __sdcc_program_startup
                                    415 	.globl __start__stack
                                    416 	.globl __mcs51_genXINIT
                                    417 	.globl __mcs51_genXRAMCLEAR
                                    418 	.globl __mcs51_genRAMCLEAR
                                    419 ;	main.c:15: unsigned char period[16]={1,2,3,4,5,6,7,1,2,3,4,5,6,7,1,2};
      000082 75 08 01         [24]  420 	mov	_period,#0x01
      000085 75 09 02         [24]  421 	mov	(_period + 0x0001),#0x02
      000088 75 0A 03         [24]  422 	mov	(_period + 0x0002),#0x03
      00008B 75 0B 04         [24]  423 	mov	(_period + 0x0003),#0x04
      00008E 75 0C 05         [24]  424 	mov	(_period + 0x0004),#0x05
      000091 75 0D 06         [24]  425 	mov	(_period + 0x0005),#0x06
      000094 75 0E 07         [24]  426 	mov	(_period + 0x0006),#0x07
      000097 75 0F 01         [24]  427 	mov	(_period + 0x0007),#0x01
      00009A 75 10 02         [24]  428 	mov	(_period + 0x0008),#0x02
      00009D 75 11 03         [24]  429 	mov	(_period + 0x0009),#0x03
      0000A0 75 12 04         [24]  430 	mov	(_period + 0x000a),#0x04
      0000A3 75 13 05         [24]  431 	mov	(_period + 0x000b),#0x05
      0000A6 75 14 06         [24]  432 	mov	(_period + 0x000c),#0x06
      0000A9 75 15 07         [24]  433 	mov	(_period + 0x000d),#0x07
      0000AC 75 16 01         [24]  434 	mov	(_period + 0x000e),#0x01
      0000AF 75 17 02         [24]  435 	mov	(_period + 0x000f),#0x02
                                    436 	.area GSFINAL (CODE)
      0000B2 02 00 26         [24]  437 	ljmp	__sdcc_program_startup
                                    438 ;--------------------------------------------------------
                                    439 ; Home
                                    440 ;--------------------------------------------------------
                                    441 	.area HOME    (CODE)
                                    442 	.area HOME    (CODE)
      000026                        443 __sdcc_program_startup:
      000026 02 01 01         [24]  444 	ljmp	_main
                                    445 ;	return from main will return to caller
                                    446 ;--------------------------------------------------------
                                    447 ; code
                                    448 ;--------------------------------------------------------
                                    449 	.area CSEG    (CODE)
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'sendData'
                                    452 ;------------------------------------------------------------
                                    453 ;data                      Allocated to registers 
                                    454 ;------------------------------------------------------------
                                    455 ;	main.c:25: void sendData(unsigned char data)
                                    456 ;	-----------------------------------------
                                    457 ;	 function sendData
                                    458 ;	-----------------------------------------
      0000B5                        459 _sendData:
                           000007   460 	ar7 = 0x07
                           000006   461 	ar6 = 0x06
                           000005   462 	ar5 = 0x05
                           000004   463 	ar4 = 0x04
                           000003   464 	ar3 = 0x03
                           000002   465 	ar2 = 0x02
                           000001   466 	ar1 = 0x01
                           000000   467 	ar0 = 0x00
      0000B5 85 82 99         [24]  468 	mov	_SBUF,dpl
                                    469 ;	main.c:28: while(TI==0);
      0000B8                        470 00101$:
                                    471 ;	main.c:29: TI=0;
      0000B8 10 99 02         [24]  472 	jbc	_TI,00112$
      0000BB 80 FB            [24]  473 	sjmp	00101$
      0000BD                        474 00112$:
      0000BD 22               [24]  475 	ret
                                    476 ;------------------------------------------------------------
                                    477 ;Allocation info for local variables in function 'sendString'
                                    478 ;------------------------------------------------------------
                                    479 ;data                      Allocated to registers 
                                    480 ;------------------------------------------------------------
                                    481 ;	main.c:32: void sendString(unsigned char * data)
                                    482 ;	-----------------------------------------
                                    483 ;	 function sendString
                                    484 ;	-----------------------------------------
      0000BE                        485 _sendString:
      0000BE AD 82            [24]  486 	mov	r5,dpl
      0000C0 AE 83            [24]  487 	mov	r6,dph
      0000C2 AF F0            [24]  488 	mov	r7,b
                                    489 ;	main.c:34: while(*data)
      0000C4                        490 00101$:
      0000C4 8D 82            [24]  491 	mov	dpl,r5
      0000C6 8E 83            [24]  492 	mov	dph,r6
      0000C8 8F F0            [24]  493 	mov	b,r7
      0000CA 12 03 F6         [24]  494 	lcall	__gptrget
      0000CD FC               [12]  495 	mov	r4,a
      0000CE 60 18            [24]  496 	jz	00104$
                                    497 ;	main.c:36: sendData(*data++);
      0000D0 8C 82            [24]  498 	mov	dpl,r4
      0000D2 0D               [12]  499 	inc	r5
      0000D3 BD 00 01         [24]  500 	cjne	r5,#0x00,00114$
      0000D6 0E               [12]  501 	inc	r6
      0000D7                        502 00114$:
      0000D7 C0 07            [24]  503 	push	ar7
      0000D9 C0 06            [24]  504 	push	ar6
      0000DB C0 05            [24]  505 	push	ar5
      0000DD 12 00 B5         [24]  506 	lcall	_sendData
      0000E0 D0 05            [24]  507 	pop	ar5
      0000E2 D0 06            [24]  508 	pop	ar6
      0000E4 D0 07            [24]  509 	pop	ar7
      0000E6 80 DC            [24]  510 	sjmp	00101$
      0000E8                        511 00104$:
      0000E8 22               [24]  512 	ret
                                    513 ;------------------------------------------------------------
                                    514 ;Allocation info for local variables in function 'delay'
                                    515 ;------------------------------------------------------------
                                    516 ;n                         Allocated to registers 
                                    517 ;a                         Allocated to registers r5 
                                    518 ;------------------------------------------------------------
                                    519 ;	main.c:40: void delay(unsigned int n)
                                    520 ;	-----------------------------------------
                                    521 ;	 function delay
                                    522 ;	-----------------------------------------
      0000E9                        523 _delay:
      0000E9 AE 82            [24]  524 	mov	r6,dpl
      0000EB AF 83            [24]  525 	mov	r7,dph
      0000ED                        526 00106$:
                                    527 ;	main.c:43: for(;n>0;n--)
      0000ED EE               [12]  528 	mov	a,r6
      0000EE 4F               [12]  529 	orl	a,r7
      0000EF 60 0F            [24]  530 	jz	00108$
                                    531 ;	main.c:45: for(a=110;a>0;a--)
      0000F1 7D 6E            [12]  532 	mov	r5,#0x6e
      0000F3                        533 00104$:
      0000F3 ED               [12]  534 	mov	a,r5
      0000F4 14               [12]  535 	dec	a
      0000F5 FC               [12]  536 	mov	r4,a
      0000F6 FD               [12]  537 	mov	r5,a
      0000F7 70 FA            [24]  538 	jnz	00104$
                                    539 ;	main.c:43: for(;n>0;n--)
      0000F9 1E               [12]  540 	dec	r6
      0000FA BE FF 01         [24]  541 	cjne	r6,#0xff,00129$
      0000FD 1F               [12]  542 	dec	r7
      0000FE                        543 00129$:
      0000FE 80 ED            [24]  544 	sjmp	00106$
      000100                        545 00108$:
      000100 22               [24]  546 	ret
                                    547 ;------------------------------------------------------------
                                    548 ;Allocation info for local variables in function 'main'
                                    549 ;------------------------------------------------------------
                                    550 ;	main.c:50: void main(void)
                                    551 ;	-----------------------------------------
                                    552 ;	 function main
                                    553 ;	-----------------------------------------
      000101                        554 _main:
                                    555 ;	main.c:52: IT0=1;EX0=1;
      000101 D2 88            [12]  556 	setb	_IT0
      000103 D2 A8            [12]  557 	setb	_EX0
                                    558 ;	main.c:53: IT1=1;EX1=1;
      000105 D2 8A            [12]  559 	setb	_IT1
      000107 D2 AA            [12]  560 	setb	_EX1
                                    561 ;	main.c:54: ET0=1;ET1=1;
      000109 D2 A9            [12]  562 	setb	_ET0
      00010B D2 AB            [12]  563 	setb	_ET1
                                    564 ;	main.c:55: EA=1;
      00010D D2 AF            [12]  565 	setb	_EA
                                    566 ;	main.c:57: TMOD=0x01;
      00010F 75 89 01         [24]  567 	mov	_TMOD,#0x01
                                    568 ;	main.c:58: SCON=0x50;
      000112 75 98 50         [24]  569 	mov	_SCON,#0x50
                                    570 ;	main.c:59: TMOD|=0x20;
      000115 43 89 20         [24]  571 	orl	_TMOD,#0x20
                                    572 ;	main.c:60: PCON|=0x80;
      000118 43 87 80         [24]  573 	orl	_PCON,#0x80
                                    574 ;	main.c:61: TH1=0xF3;
      00011B 75 8D F3         [24]  575 	mov	_TH1,#0xf3
                                    576 ;	main.c:62: TL1=0xF3;
      00011E 75 8B F3         [24]  577 	mov	_TL1,#0xf3
                                    578 ;	main.c:63: ES=1;
      000121 D2 AC            [12]  579 	setb	_ES
                                    580 ;	main.c:64: i=0;
      000123 75 5A 00         [24]  581 	mov	_i,#0x00
                                    582 ;	main.c:65: read_flag=0;
      000126 75 58 00         [24]  583 	mov	_read_flag,#0x00
                                    584 ;	main.c:67: TH0=0xFF;
      000129 75 8C FF         [24]  585 	mov	_TH0,#0xff
                                    586 ;	main.c:68: TL0=0xF6;
      00012C 75 8A F6         [24]  587 	mov	_TL0,#0xf6
                                    588 ;	main.c:69: TR0=1;
      00012F D2 8C            [12]  589 	setb	_TR0
                                    590 ;	main.c:70: TR1=1;
      000131 D2 8E            [12]  591 	setb	_TR1
                                    592 ;	main.c:72: delay(100);
      000133 90 00 64         [24]  593 	mov	dptr,#0x0064
      000136 12 00 E9         [24]  594 	lcall	_delay
                                    595 ;	main.c:74: sendString("HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello\r\n");
      000139 90 04 36         [24]  596 	mov	dptr,#___str_0
      00013C 75 F0 80         [24]  597 	mov	b,#0x80
      00013F 12 00 BE         [24]  598 	lcall	_sendString
                                    599 ;	main.c:75: sendString("Input 16 consecutive integers to set PWM\r\n");
      000142 90 04 93         [24]  600 	mov	dptr,#___str_1
      000145 75 F0 80         [24]  601 	mov	b,#0x80
      000148 12 00 BE         [24]  602 	lcall	_sendString
                                    603 ;	main.c:77: while(1)
      00014B                        604 00105$:
                                    605 ;	main.c:79: if(read_flag)
      00014B E5 58            [12]  606 	mov	a,_read_flag
      00014D 60 FC            [24]  607 	jz	00105$
                                    608 ;	main.c:81: read_flag=0;
      00014F 75 58 00         [24]  609 	mov	_read_flag,#0x00
                                    610 ;	main.c:82: TR0=0;
      000152 C2 8C            [12]  611 	clr	_TR0
                                    612 ;	main.c:83: for(i=0;i<16;++i)
      000154 75 5A 00         [24]  613 	mov	_i,#0x00
      000157                        614 00107$:
                                    615 ;	main.c:85: timer[i]=0;
      000157 E5 5A            [12]  616 	mov	a,_i
      000159 25 5A            [12]  617 	add	a,_i
      00015B 25 E0            [12]  618 	add	a,acc
      00015D 24 18            [12]  619 	add	a,#_timer
      00015F F8               [12]  620 	mov	r0,a
      000160 76 00            [12]  621 	mov	@r0,#0x00
      000162 08               [12]  622 	inc	r0
      000163 76 00            [12]  623 	mov	@r0,#0x00
      000165 08               [12]  624 	inc	r0
      000166 76 00            [12]  625 	mov	@r0,#0x00
      000168 08               [12]  626 	inc	r0
      000169 76 00            [12]  627 	mov	@r0,#0x00
                                    628 ;	main.c:86: period[i]-='0';
      00016B E5 5A            [12]  629 	mov	a,_i
      00016D 24 08            [12]  630 	add	a,#_period
      00016F F9               [12]  631 	mov	r1,a
      000170 E7               [12]  632 	mov	a,@r1
      000171 FF               [12]  633 	mov	r7,a
      000172 24 D0            [12]  634 	add	a,#0xd0
      000174 F7               [12]  635 	mov	@r1,a
                                    636 ;	main.c:83: for(i=0;i<16;++i)
      000175 05 5A            [12]  637 	inc	_i
      000177 74 F0            [12]  638 	mov	a,#0x100 - 0x10
      000179 25 5A            [12]  639 	add	a,_i
      00017B 50 DA            [24]  640 	jnc	00107$
                                    641 ;	main.c:89: sendString("PWM updated!\r\n");
      00017D 90 04 BE         [24]  642 	mov	dptr,#___str_2
      000180 75 F0 80         [24]  643 	mov	b,#0x80
      000183 12 00 BE         [24]  644 	lcall	_sendString
                                    645 ;	main.c:91: TR0=1;
      000186 D2 8C            [12]  646 	setb	_TR0
      000188 80 C1            [24]  647 	sjmp	00105$
                                    648 ;------------------------------------------------------------
                                    649 ;Allocation info for local variables in function 'timer0'
                                    650 ;------------------------------------------------------------
                                    651 ;sloc0                     Allocated with name '_timer0_sloc0_1_0'
                                    652 ;------------------------------------------------------------
                                    653 ;	main.c:96: void timer0(void) __interrupt(1)
                                    654 ;	-----------------------------------------
                                    655 ;	 function timer0
                                    656 ;	-----------------------------------------
      00018A                        657 _timer0:
      00018A C0 E0            [24]  658 	push	acc
      00018C C0 F0            [24]  659 	push	b
      00018E C0 82            [24]  660 	push	dpl
      000190 C0 83            [24]  661 	push	dph
      000192 C0 07            [24]  662 	push	ar7
      000194 C0 06            [24]  663 	push	ar6
      000196 C0 05            [24]  664 	push	ar5
      000198 C0 04            [24]  665 	push	ar4
      00019A C0 03            [24]  666 	push	ar3
      00019C C0 02            [24]  667 	push	ar2
      00019E C0 01            [24]  668 	push	ar1
      0001A0 C0 00            [24]  669 	push	ar0
      0001A2 C0 D0            [24]  670 	push	psw
      0001A4 75 D0 00         [24]  671 	mov	psw,#0x00
                                    672 ;	main.c:98: TH0=0xFF;
      0001A7 75 8C FF         [24]  673 	mov	_TH0,#0xff
                                    674 ;	main.c:99: TL0=0xF6;
      0001AA 75 8A F6         [24]  675 	mov	_TL0,#0xf6
                                    676 ;	main.c:100: OUT1=0;
      0001AD 75 90 00         [24]  677 	mov	_OUT1,#0x00
                                    678 ;	main.c:101: OUT2=0;
      0001B0 75 A0 00         [24]  679 	mov	_OUT2,#0x00
                                    680 ;	main.c:102: for(i=0;i<8;++i)
      0001B3 75 5A 00         [24]  681 	mov	_i,#0x00
      0001B6                        682 00111$:
                                    683 ;	main.c:104: ++timer[i];
      0001B6 E5 5A            [12]  684 	mov	a,_i
      0001B8 25 5A            [12]  685 	add	a,_i
      0001BA 25 E0            [12]  686 	add	a,acc
      0001BC 24 18            [12]  687 	add	a,#_timer
      0001BE F9               [12]  688 	mov	r1,a
      0001BF 87 04            [24]  689 	mov	ar4,@r1
      0001C1 09               [12]  690 	inc	r1
      0001C2 87 05            [24]  691 	mov	ar5,@r1
      0001C4 09               [12]  692 	inc	r1
      0001C5 87 06            [24]  693 	mov	ar6,@r1
      0001C7 09               [12]  694 	inc	r1
      0001C8 87 07            [24]  695 	mov	ar7,@r1
      0001CA 19               [12]  696 	dec	r1
      0001CB 19               [12]  697 	dec	r1
      0001CC 19               [12]  698 	dec	r1
      0001CD 0C               [12]  699 	inc	r4
      0001CE BC 00 09         [24]  700 	cjne	r4,#0x00,00138$
      0001D1 0D               [12]  701 	inc	r5
      0001D2 BD 00 05         [24]  702 	cjne	r5,#0x00,00138$
      0001D5 0E               [12]  703 	inc	r6
      0001D6 BE 00 01         [24]  704 	cjne	r6,#0x00,00138$
      0001D9 0F               [12]  705 	inc	r7
      0001DA                        706 00138$:
      0001DA A7 04            [24]  707 	mov	@r1,ar4
      0001DC 09               [12]  708 	inc	r1
      0001DD A7 05            [24]  709 	mov	@r1,ar5
      0001DF 09               [12]  710 	inc	r1
      0001E0 A7 06            [24]  711 	mov	@r1,ar6
      0001E2 09               [12]  712 	inc	r1
      0001E3 A7 07            [24]  713 	mov	@r1,ar7
      0001E5 19               [12]  714 	dec	r1
      0001E6 19               [12]  715 	dec	r1
      0001E7 19               [12]  716 	dec	r1
                                    717 ;	main.c:105: if(timer[i]==times[period[i]])
      0001E8 E5 5A            [12]  718 	mov	a,_i
      0001EA 25 5A            [12]  719 	add	a,_i
      0001EC 25 E0            [12]  720 	add	a,acc
      0001EE 24 18            [12]  721 	add	a,#_timer
      0001F0 F9               [12]  722 	mov	r1,a
      0001F1 87 5B            [24]  723 	mov	_timer0_sloc0_1_0,@r1
      0001F3 09               [12]  724 	inc	r1
      0001F4 87 5C            [24]  725 	mov	(_timer0_sloc0_1_0 + 1),@r1
      0001F6 09               [12]  726 	inc	r1
      0001F7 87 5D            [24]  727 	mov	(_timer0_sloc0_1_0 + 2),@r1
      0001F9 09               [12]  728 	inc	r1
      0001FA 87 5E            [24]  729 	mov	(_timer0_sloc0_1_0 + 3),@r1
      0001FC 19               [12]  730 	dec	r1
      0001FD 19               [12]  731 	dec	r1
      0001FE 19               [12]  732 	dec	r1
      0001FF E5 5A            [12]  733 	mov	a,_i
      000201 24 08            [12]  734 	add	a,#_period
      000203 F8               [12]  735 	mov	r0,a
      000204 E6               [12]  736 	mov	a,@r0
      000205 75 F0 04         [24]  737 	mov	b,#0x04
      000208 A4               [48]  738 	mul	ab
      000209 24 16            [12]  739 	add	a,#_times
      00020B F5 82            [12]  740 	mov	dpl,a
      00020D 74 04            [12]  741 	mov	a,#(_times >> 8)
      00020F 35 F0            [12]  742 	addc	a,b
      000211 F5 83            [12]  743 	mov	dph,a
      000213 E4               [12]  744 	clr	a
      000214 93               [24]  745 	movc	a,@a+dptr
      000215 FA               [12]  746 	mov	r2,a
      000216 A3               [24]  747 	inc	dptr
      000217 E4               [12]  748 	clr	a
      000218 93               [24]  749 	movc	a,@a+dptr
      000219 FB               [12]  750 	mov	r3,a
      00021A A3               [24]  751 	inc	dptr
      00021B E4               [12]  752 	clr	a
      00021C 93               [24]  753 	movc	a,@a+dptr
      00021D FE               [12]  754 	mov	r6,a
      00021E A3               [24]  755 	inc	dptr
      00021F E4               [12]  756 	clr	a
      000220 93               [24]  757 	movc	a,@a+dptr
      000221 FF               [12]  758 	mov	r7,a
      000222 EA               [12]  759 	mov	a,r2
      000223 B5 5B 1A         [24]  760 	cjne	a,_timer0_sloc0_1_0,00102$
      000226 EB               [12]  761 	mov	a,r3
      000227 B5 5C 16         [24]  762 	cjne	a,(_timer0_sloc0_1_0 + 1),00102$
      00022A EE               [12]  763 	mov	a,r6
      00022B B5 5D 12         [24]  764 	cjne	a,(_timer0_sloc0_1_0 + 2),00102$
      00022E EF               [12]  765 	mov	a,r7
      00022F B5 5E 0E         [24]  766 	cjne	a,(_timer0_sloc0_1_0 + 3),00102$
                                    767 ;	main.c:106: timer[i]=0;
      000232 77 00            [12]  768 	mov	@r1,#0x00
      000234 09               [12]  769 	inc	r1
      000235 77 00            [12]  770 	mov	@r1,#0x00
      000237 09               [12]  771 	inc	r1
      000238 77 00            [12]  772 	mov	@r1,#0x00
      00023A 09               [12]  773 	inc	r1
      00023B 77 00            [12]  774 	mov	@r1,#0x00
      00023D 19               [12]  775 	dec	r1
      00023E 19               [12]  776 	dec	r1
      00023F 19               [12]  777 	dec	r1
      000240                        778 00102$:
                                    779 ;	main.c:107: if(timer[i]>(times[period[i]]>>1))
      000240 E5 5A            [12]  780 	mov	a,_i
      000242 25 5A            [12]  781 	add	a,_i
      000244 25 E0            [12]  782 	add	a,acc
      000246 24 18            [12]  783 	add	a,#_timer
      000248 F9               [12]  784 	mov	r1,a
      000249 87 5B            [24]  785 	mov	_timer0_sloc0_1_0,@r1
      00024B 09               [12]  786 	inc	r1
      00024C 87 5C            [24]  787 	mov	(_timer0_sloc0_1_0 + 1),@r1
      00024E 09               [12]  788 	inc	r1
      00024F 87 5D            [24]  789 	mov	(_timer0_sloc0_1_0 + 2),@r1
      000251 09               [12]  790 	inc	r1
      000252 87 5E            [24]  791 	mov	(_timer0_sloc0_1_0 + 3),@r1
      000254 19               [12]  792 	dec	r1
      000255 19               [12]  793 	dec	r1
      000256 19               [12]  794 	dec	r1
      000257 E5 5A            [12]  795 	mov	a,_i
      000259 24 08            [12]  796 	add	a,#_period
      00025B F9               [12]  797 	mov	r1,a
      00025C E7               [12]  798 	mov	a,@r1
      00025D 75 F0 04         [24]  799 	mov	b,#0x04
      000260 A4               [48]  800 	mul	ab
      000261 24 16            [12]  801 	add	a,#_times
      000263 F5 82            [12]  802 	mov	dpl,a
      000265 74 04            [12]  803 	mov	a,#(_times >> 8)
      000267 35 F0            [12]  804 	addc	a,b
      000269 F5 83            [12]  805 	mov	dph,a
      00026B E4               [12]  806 	clr	a
      00026C 93               [24]  807 	movc	a,@a+dptr
      00026D FA               [12]  808 	mov	r2,a
      00026E A3               [24]  809 	inc	dptr
      00026F E4               [12]  810 	clr	a
      000270 93               [24]  811 	movc	a,@a+dptr
      000271 FB               [12]  812 	mov	r3,a
      000272 A3               [24]  813 	inc	dptr
      000273 E4               [12]  814 	clr	a
      000274 93               [24]  815 	movc	a,@a+dptr
      000275 FE               [12]  816 	mov	r6,a
      000276 A3               [24]  817 	inc	dptr
      000277 E4               [12]  818 	clr	a
      000278 93               [24]  819 	movc	a,@a+dptr
      000279 C3               [12]  820 	clr	c
      00027A 13               [12]  821 	rrc	a
      00027B FF               [12]  822 	mov	r7,a
      00027C EE               [12]  823 	mov	a,r6
      00027D 13               [12]  824 	rrc	a
      00027E FE               [12]  825 	mov	r6,a
      00027F EB               [12]  826 	mov	a,r3
      000280 13               [12]  827 	rrc	a
      000281 FB               [12]  828 	mov	r3,a
      000282 EA               [12]  829 	mov	a,r2
      000283 13               [12]  830 	rrc	a
      000284 FA               [12]  831 	mov	r2,a
      000285 C3               [12]  832 	clr	c
      000286 95 5B            [12]  833 	subb	a,_timer0_sloc0_1_0
      000288 EB               [12]  834 	mov	a,r3
      000289 95 5C            [12]  835 	subb	a,(_timer0_sloc0_1_0 + 1)
      00028B EE               [12]  836 	mov	a,r6
      00028C 95 5D            [12]  837 	subb	a,(_timer0_sloc0_1_0 + 2)
      00028E EF               [12]  838 	mov	a,r7
      00028F 95 5E            [12]  839 	subb	a,(_timer0_sloc0_1_0 + 3)
      000291 50 11            [24]  840 	jnc	00112$
                                    841 ;	main.c:108: OUT1|=(1<<i);
      000293 85 5A F0         [24]  842 	mov	b,_i
      000296 05 F0            [12]  843 	inc	b
      000298 74 01            [12]  844 	mov	a,#0x01
      00029A 80 02            [24]  845 	sjmp	00144$
      00029C                        846 00142$:
      00029C 25 E0            [12]  847 	add	a,acc
      00029E                        848 00144$:
      00029E D5 F0 FB         [24]  849 	djnz	b,00142$
      0002A1 FF               [12]  850 	mov	r7,a
      0002A2 42 90            [12]  851 	orl	_OUT1,a
      0002A4                        852 00112$:
                                    853 ;	main.c:102: for(i=0;i<8;++i)
      0002A4 05 5A            [12]  854 	inc	_i
      0002A6 74 F8            [12]  855 	mov	a,#0x100 - 0x08
      0002A8 25 5A            [12]  856 	add	a,_i
      0002AA 40 03            [24]  857 	jc	00145$
      0002AC 02 01 B6         [24]  858 	ljmp	00111$
      0002AF                        859 00145$:
                                    860 ;	main.c:111: for(i=8;i<16;++i)
      0002AF 75 5A 08         [24]  861 	mov	_i,#0x08
      0002B2                        862 00113$:
                                    863 ;	main.c:113: ++timer[i];
      0002B2 E5 5A            [12]  864 	mov	a,_i
      0002B4 25 5A            [12]  865 	add	a,_i
      0002B6 25 E0            [12]  866 	add	a,acc
      0002B8 24 18            [12]  867 	add	a,#_timer
      0002BA F9               [12]  868 	mov	r1,a
      0002BB 87 04            [24]  869 	mov	ar4,@r1
      0002BD 09               [12]  870 	inc	r1
      0002BE 87 05            [24]  871 	mov	ar5,@r1
      0002C0 09               [12]  872 	inc	r1
      0002C1 87 06            [24]  873 	mov	ar6,@r1
      0002C3 09               [12]  874 	inc	r1
      0002C4 87 07            [24]  875 	mov	ar7,@r1
      0002C6 19               [12]  876 	dec	r1
      0002C7 19               [12]  877 	dec	r1
      0002C8 19               [12]  878 	dec	r1
      0002C9 0C               [12]  879 	inc	r4
      0002CA BC 00 09         [24]  880 	cjne	r4,#0x00,00146$
      0002CD 0D               [12]  881 	inc	r5
      0002CE BD 00 05         [24]  882 	cjne	r5,#0x00,00146$
      0002D1 0E               [12]  883 	inc	r6
      0002D2 BE 00 01         [24]  884 	cjne	r6,#0x00,00146$
      0002D5 0F               [12]  885 	inc	r7
      0002D6                        886 00146$:
      0002D6 A7 04            [24]  887 	mov	@r1,ar4
      0002D8 09               [12]  888 	inc	r1
      0002D9 A7 05            [24]  889 	mov	@r1,ar5
      0002DB 09               [12]  890 	inc	r1
      0002DC A7 06            [24]  891 	mov	@r1,ar6
      0002DE 09               [12]  892 	inc	r1
      0002DF A7 07            [24]  893 	mov	@r1,ar7
      0002E1 19               [12]  894 	dec	r1
      0002E2 19               [12]  895 	dec	r1
      0002E3 19               [12]  896 	dec	r1
                                    897 ;	main.c:114: if(timer[i]==times[period[i]])
      0002E4 E5 5A            [12]  898 	mov	a,_i
      0002E6 25 5A            [12]  899 	add	a,_i
      0002E8 25 E0            [12]  900 	add	a,acc
      0002EA 24 18            [12]  901 	add	a,#_timer
      0002EC F9               [12]  902 	mov	r1,a
      0002ED 87 5B            [24]  903 	mov	_timer0_sloc0_1_0,@r1
      0002EF 09               [12]  904 	inc	r1
      0002F0 87 5C            [24]  905 	mov	(_timer0_sloc0_1_0 + 1),@r1
      0002F2 09               [12]  906 	inc	r1
      0002F3 87 5D            [24]  907 	mov	(_timer0_sloc0_1_0 + 2),@r1
      0002F5 09               [12]  908 	inc	r1
      0002F6 87 5E            [24]  909 	mov	(_timer0_sloc0_1_0 + 3),@r1
      0002F8 19               [12]  910 	dec	r1
      0002F9 19               [12]  911 	dec	r1
      0002FA 19               [12]  912 	dec	r1
      0002FB E5 5A            [12]  913 	mov	a,_i
      0002FD 24 08            [12]  914 	add	a,#_period
      0002FF F8               [12]  915 	mov	r0,a
      000300 E6               [12]  916 	mov	a,@r0
      000301 75 F0 04         [24]  917 	mov	b,#0x04
      000304 A4               [48]  918 	mul	ab
      000305 24 16            [12]  919 	add	a,#_times
      000307 F5 82            [12]  920 	mov	dpl,a
      000309 74 04            [12]  921 	mov	a,#(_times >> 8)
      00030B 35 F0            [12]  922 	addc	a,b
      00030D F5 83            [12]  923 	mov	dph,a
      00030F E4               [12]  924 	clr	a
      000310 93               [24]  925 	movc	a,@a+dptr
      000311 FA               [12]  926 	mov	r2,a
      000312 A3               [24]  927 	inc	dptr
      000313 E4               [12]  928 	clr	a
      000314 93               [24]  929 	movc	a,@a+dptr
      000315 FB               [12]  930 	mov	r3,a
      000316 A3               [24]  931 	inc	dptr
      000317 E4               [12]  932 	clr	a
      000318 93               [24]  933 	movc	a,@a+dptr
      000319 FE               [12]  934 	mov	r6,a
      00031A A3               [24]  935 	inc	dptr
      00031B E4               [12]  936 	clr	a
      00031C 93               [24]  937 	movc	a,@a+dptr
      00031D FF               [12]  938 	mov	r7,a
      00031E EA               [12]  939 	mov	a,r2
      00031F B5 5B 1A         [24]  940 	cjne	a,_timer0_sloc0_1_0,00107$
      000322 EB               [12]  941 	mov	a,r3
      000323 B5 5C 16         [24]  942 	cjne	a,(_timer0_sloc0_1_0 + 1),00107$
      000326 EE               [12]  943 	mov	a,r6
      000327 B5 5D 12         [24]  944 	cjne	a,(_timer0_sloc0_1_0 + 2),00107$
      00032A EF               [12]  945 	mov	a,r7
      00032B B5 5E 0E         [24]  946 	cjne	a,(_timer0_sloc0_1_0 + 3),00107$
                                    947 ;	main.c:115: timer[i]=0;
      00032E 77 00            [12]  948 	mov	@r1,#0x00
      000330 09               [12]  949 	inc	r1
      000331 77 00            [12]  950 	mov	@r1,#0x00
      000333 09               [12]  951 	inc	r1
      000334 77 00            [12]  952 	mov	@r1,#0x00
      000336 09               [12]  953 	inc	r1
      000337 77 00            [12]  954 	mov	@r1,#0x00
      000339 19               [12]  955 	dec	r1
      00033A 19               [12]  956 	dec	r1
      00033B 19               [12]  957 	dec	r1
      00033C                        958 00107$:
                                    959 ;	main.c:116: if(timer[i]>(times[period[i]]>>1))
      00033C E5 5A            [12]  960 	mov	a,_i
      00033E 25 5A            [12]  961 	add	a,_i
      000340 25 E0            [12]  962 	add	a,acc
      000342 24 18            [12]  963 	add	a,#_timer
      000344 F9               [12]  964 	mov	r1,a
      000345 87 5B            [24]  965 	mov	_timer0_sloc0_1_0,@r1
      000347 09               [12]  966 	inc	r1
      000348 87 5C            [24]  967 	mov	(_timer0_sloc0_1_0 + 1),@r1
      00034A 09               [12]  968 	inc	r1
      00034B 87 5D            [24]  969 	mov	(_timer0_sloc0_1_0 + 2),@r1
      00034D 09               [12]  970 	inc	r1
      00034E 87 5E            [24]  971 	mov	(_timer0_sloc0_1_0 + 3),@r1
      000350 19               [12]  972 	dec	r1
      000351 19               [12]  973 	dec	r1
      000352 19               [12]  974 	dec	r1
      000353 E5 5A            [12]  975 	mov	a,_i
      000355 24 08            [12]  976 	add	a,#_period
      000357 F9               [12]  977 	mov	r1,a
      000358 E7               [12]  978 	mov	a,@r1
      000359 75 F0 04         [24]  979 	mov	b,#0x04
      00035C A4               [48]  980 	mul	ab
      00035D 24 16            [12]  981 	add	a,#_times
      00035F F5 82            [12]  982 	mov	dpl,a
      000361 74 04            [12]  983 	mov	a,#(_times >> 8)
      000363 35 F0            [12]  984 	addc	a,b
      000365 F5 83            [12]  985 	mov	dph,a
      000367 E4               [12]  986 	clr	a
      000368 93               [24]  987 	movc	a,@a+dptr
      000369 FA               [12]  988 	mov	r2,a
      00036A A3               [24]  989 	inc	dptr
      00036B E4               [12]  990 	clr	a
      00036C 93               [24]  991 	movc	a,@a+dptr
      00036D FB               [12]  992 	mov	r3,a
      00036E A3               [24]  993 	inc	dptr
      00036F E4               [12]  994 	clr	a
      000370 93               [24]  995 	movc	a,@a+dptr
      000371 FE               [12]  996 	mov	r6,a
      000372 A3               [24]  997 	inc	dptr
      000373 E4               [12]  998 	clr	a
      000374 93               [24]  999 	movc	a,@a+dptr
      000375 C3               [12] 1000 	clr	c
      000376 13               [12] 1001 	rrc	a
      000377 FF               [12] 1002 	mov	r7,a
      000378 EE               [12] 1003 	mov	a,r6
      000379 13               [12] 1004 	rrc	a
      00037A FE               [12] 1005 	mov	r6,a
      00037B EB               [12] 1006 	mov	a,r3
      00037C 13               [12] 1007 	rrc	a
      00037D FB               [12] 1008 	mov	r3,a
      00037E EA               [12] 1009 	mov	a,r2
      00037F 13               [12] 1010 	rrc	a
      000380 FA               [12] 1011 	mov	r2,a
      000381 C3               [12] 1012 	clr	c
      000382 95 5B            [12] 1013 	subb	a,_timer0_sloc0_1_0
      000384 EB               [12] 1014 	mov	a,r3
      000385 95 5C            [12] 1015 	subb	a,(_timer0_sloc0_1_0 + 1)
      000387 EE               [12] 1016 	mov	a,r6
      000388 95 5D            [12] 1017 	subb	a,(_timer0_sloc0_1_0 + 2)
      00038A EF               [12] 1018 	mov	a,r7
      00038B 95 5E            [12] 1019 	subb	a,(_timer0_sloc0_1_0 + 3)
      00038D 50 14            [24] 1020 	jnc	00114$
                                   1021 ;	main.c:117: OUT2|=(1<<(i-8));
      00038F E5 5A            [12] 1022 	mov	a,_i
      000391 24 F8            [12] 1023 	add	a,#0xf8
      000393 F5 F0            [12] 1024 	mov	b,a
      000395 05 F0            [12] 1025 	inc	b
      000397 74 01            [12] 1026 	mov	a,#0x01
      000399 80 02            [24] 1027 	sjmp	00152$
      00039B                       1028 00150$:
      00039B 25 E0            [12] 1029 	add	a,acc
      00039D                       1030 00152$:
      00039D D5 F0 FB         [24] 1031 	djnz	b,00150$
      0003A0 FF               [12] 1032 	mov	r7,a
      0003A1 42 A0            [12] 1033 	orl	_OUT2,a
      0003A3                       1034 00114$:
                                   1035 ;	main.c:111: for(i=8;i<16;++i)
      0003A3 05 5A            [12] 1036 	inc	_i
      0003A5 74 F0            [12] 1037 	mov	a,#0x100 - 0x10
      0003A7 25 5A            [12] 1038 	add	a,_i
      0003A9 40 03            [24] 1039 	jc	00153$
      0003AB 02 02 B2         [24] 1040 	ljmp	00113$
      0003AE                       1041 00153$:
      0003AE D0 D0            [24] 1042 	pop	psw
      0003B0 D0 00            [24] 1043 	pop	ar0
      0003B2 D0 01            [24] 1044 	pop	ar1
      0003B4 D0 02            [24] 1045 	pop	ar2
      0003B6 D0 03            [24] 1046 	pop	ar3
      0003B8 D0 04            [24] 1047 	pop	ar4
      0003BA D0 05            [24] 1048 	pop	ar5
      0003BC D0 06            [24] 1049 	pop	ar6
      0003BE D0 07            [24] 1050 	pop	ar7
      0003C0 D0 83            [24] 1051 	pop	dph
      0003C2 D0 82            [24] 1052 	pop	dpl
      0003C4 D0 F0            [24] 1053 	pop	b
      0003C6 D0 E0            [24] 1054 	pop	acc
      0003C8 32               [24] 1055 	reti
                                   1056 ;------------------------------------------------------------
                                   1057 ;Allocation info for local variables in function 'usart4'
                                   1058 ;------------------------------------------------------------
                                   1059 ;	main.c:124: void usart4(void) __interrupt(4)
                                   1060 ;	-----------------------------------------
                                   1061 ;	 function usart4
                                   1062 ;	-----------------------------------------
      0003C9                       1063 _usart4:
      0003C9 C0 E0            [24] 1064 	push	acc
      0003CB C0 00            [24] 1065 	push	ar0
      0003CD C0 D0            [24] 1066 	push	psw
      0003CF 75 D0 00         [24] 1067 	mov	psw,#0x00
                                   1068 ;	main.c:126: ES=0;
      0003D2 C2 AC            [12] 1069 	clr	_ES
                                   1070 ;	main.c:127: if(RI)
                                   1071 ;	main.c:129: RI=0;
      0003D4 10 98 02         [24] 1072 	jbc	_RI,00113$
      0003D7 80 14            [24] 1073 	sjmp	00104$
      0003D9                       1074 00113$:
                                   1075 ;	main.c:130: period[ii]=SBUF;
      0003D9 E5 59            [12] 1076 	mov	a,_ii
      0003DB 24 08            [12] 1077 	add	a,#_period
      0003DD F8               [12] 1078 	mov	r0,a
      0003DE A6 99            [24] 1079 	mov	@r0,_SBUF
                                   1080 ;	main.c:131: ++ii;
      0003E0 05 59            [12] 1081 	inc	_ii
                                   1082 ;	main.c:132: if(ii==16)
      0003E2 74 10            [12] 1083 	mov	a,#0x10
      0003E4 B5 59 06         [24] 1084 	cjne	a,_ii,00104$
                                   1085 ;	main.c:134: ii=0;
      0003E7 75 59 00         [24] 1086 	mov	_ii,#0x00
                                   1087 ;	main.c:135: read_flag=1;
      0003EA 75 58 01         [24] 1088 	mov	_read_flag,#0x01
      0003ED                       1089 00104$:
                                   1090 ;	main.c:138: ES=1;
      0003ED D2 AC            [12] 1091 	setb	_ES
      0003EF D0 D0            [24] 1092 	pop	psw
      0003F1 D0 00            [24] 1093 	pop	ar0
      0003F3 D0 E0            [24] 1094 	pop	acc
      0003F5 32               [24] 1095 	reti
                                   1096 ;	eliminated unneeded push/pop ar1
                                   1097 ;	eliminated unneeded push/pop dpl
                                   1098 ;	eliminated unneeded push/pop dph
                                   1099 ;	eliminated unneeded push/pop b
                                   1100 	.area CSEG    (CODE)
                                   1101 	.area CONST   (CODE)
      000416                       1102 _times:
      000416 00 00 00 00           1103 	.byte #0x00,#0x00,#0x00,#0x00	; 0
      00041A 14 00 00 00           1104 	.byte #0x14,#0x00,#0x00,#0x00	; 20
      00041E 32 00 00 00           1105 	.byte #0x32,#0x00,#0x00,#0x00	; 50
      000422 64 00 00 00           1106 	.byte #0x64,#0x00,#0x00,#0x00	; 100
      000426 F4 01 00 00           1107 	.byte #0xf4,#0x01,#0x00,#0x00	; 500
      00042A D0 07 00 00           1108 	.byte #0xd0,#0x07,#0x00,#0x00	; 2000
      00042E 20 4E 00 00           1109 	.byte #0x20,#0x4e,#0x00,#0x00	; 20000
      000432 A0 86 01 00           1110 	.byte #0xa0,#0x86,#0x01,#0x00	; 100000
      000436                       1111 ___str_0:
      000436 48 65 6C 6C 6F 48 65  1112 	.ascii "HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello"
             6C 6C 6F 48 65 6C 6C
             6F 48 65 6C 6C 6F 48
             65 6C 6C 6F 48 65 6C
             6C 6F 48 65 6C 6C 6F
             48 65 6C 6C 6F 48 65
             6C 6C 6F 48 65 6C 6C
             6F 48 65 6C 6C 6F 48
             65 6C 6C 6F
      000472 48 65 6C 6C 6F 48 65  1113 	.ascii "HelloHelloHelloHelloHelloHello"
             6C 6C 6F 48 65 6C 6C
             6F 48 65 6C 6C 6F 48
             65 6C 6C 6F 48 65 6C
             6C 6F
      000490 0D                    1114 	.db 0x0d
      000491 0A                    1115 	.db 0x0a
      000492 00                    1116 	.db 0x00
      000493                       1117 ___str_1:
      000493 49 6E 70 75 74 20 31  1118 	.ascii "Input 16 consecutive integers to set PWM"
             36 20 63 6F 6E 73 65
             63 75 74 69 76 65 20
             69 6E 74 65 67 65 72
             73 20 74 6F 20 73 65
             74 20 50 57 4D
      0004BB 0D                    1119 	.db 0x0d
      0004BC 0A                    1120 	.db 0x0a
      0004BD 00                    1121 	.db 0x00
      0004BE                       1122 ___str_2:
      0004BE 50 57 4D 20 75 70 64  1123 	.ascii "PWM updated!"
             61 74 65 64 21
      0004CA 0D                    1124 	.db 0x0d
      0004CB 0A                    1125 	.db 0x0a
      0004CC 00                    1126 	.db 0x00
                                   1127 	.area XINIT   (CODE)
                                   1128 	.area CABS    (ABS,CODE)
