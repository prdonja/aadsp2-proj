	.extern _degree
	.extern _gain
	.extern _invertEnable
	.public _sampleBuffer
	.extern _audio_invert_init
	.extern _cl_wavread_bits_per_sample
	.extern _cl_wavread_close
	.extern _cl_wavread_frame_rate
	.extern _cl_wavread_getnchannels
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.public _main
	.extern _printf
	.extern _processing
	.extern _strcpy
	.extern __div
	.xdata_ovly
__extractedConst_0_1
	.dw  (0x7fffffff)
	.ydata_ovly
_sampleBuffer
	.bss (0x80)
	.xdata_ovly
_string_const_0
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x54)
	.dw  (0x6f)
	.dw  (0x6e)
	.dw  (0x65)
	.dw  (0x5f)
	.dw  (0x4c)
	.dw  (0x31)
	.dw  (0x6b)
	.dw  (0x5f)
	.dw  (0x52)
	.dw  (0x33)
	.dw  (0x6b)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_2
	.dw  (0x2e)
	.dw  (0x2e)
	.dw  (0x2f)
	.dw  (0x54)
	.dw  (0x6f)
	.dw  (0x6e)
	.dw  (0x65)
	.dw  (0x5f)
	.dw  (0x4c)
	.dw  (0x31)
	.dw  (0x6b)
	.dw  (0x5f)
	.dw  (0x52)
	.dw  (0x33)
	.dw  (0x6b)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x74)
	.dw  (0x2e)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x0)
	.xdata_ovly
_string_const_3
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.code_ovly



	# This construction should ensure linking of crt0 in case when target is a standalone program without the OS
	.if defined(_OVLY_)
		.if .strcmp('standalone',_OVLY_)=0
		.if .strcmp('crystal32',_TARGET_FAMILY_)=0
			.extern __start         # dummy use of __start to force linkage of crt0
dummy		.equ(__start)
		.else
			.extern __intvec         # dummy use of __intvec to force linkage of intvec
dummy		.equ(__intvec)
		.endif
		.endif
	.endif

_main:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 12 | 
	i7 += 1			# LN: 12 | 
	i7 = i7 + (0x20e)			# LN: 12 | 
	i1 = i7 - (0x1)			# LN: 12 | 
	xmem[i1] = a0h			# LN: 12 | 
	i1 = i7 - (0x2)			# LN: 12 | 
	xmem[i1] = i0			# LN: 12 | 
cline_12_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 29 | 
	a0 = 0			# LN: 29 | 
	xmem[i0] = a0h			# LN: 29 | 
	do (0x8), label_end_93			# LN: 29 | 
cline_29_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 31 | 
	a0 = 0			# LN: 31 | 
	xmem[i0] = a0h			# LN: 31 | 
	do (0x10), label_end_92			# LN: 31 | 
cline_31_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 33 | 
	a0 = xmem[i0]; a1 = 0			# LN: 33, 33 | 
	a0 = a0 << 4			# LN: 33 | 
	i0 = a0			# LN: 33 | 
	i1 = i7 - (0x4)			# LN: 33 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 33 | 
	a0 = xmem[i1]			# LN: 33 | 
	b0 = i0			# LN: 33 | 
	a0 = a0 + b0			# LN: 33 | 
	AnyReg(i0, a0h)			# LN: 33 | 
	nop #empty cycle
	ymem[i0] = a1h			# LN: 33 | 
cline_33_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 31 | 
	a0 = xmem[i0]			# LN: 31 | 
	uhalfword(a1) = (0x1)			# LN: 31 | 
	a0 = a0 + a1			# LN: 31 | 
	i0 = i7 - (0x4)			# LN: 31 | 
label_end_92:			# LN: 31 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 31 | 
cline_31_1:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 29 | 
	a0 = xmem[i0]			# LN: 29 | 
	uhalfword(a1) = (0x1)			# LN: 29 | 
	a0 = a0 + a1			# LN: 29 | 
	i0 = i7 - (0x3)			# LN: 29 | 
label_end_93:			# LN: 29 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 29 | 
cline_29_1:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 39 | 
	i1 = (0) + (_string_const_0)			# LN: 39 | 
	call (_strcpy)			# LN: 39 | 
cline_39_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 40 | 
	call (_cl_wavread_open)			# LN: 40 | 
	AnyReg(i0, a0h)			# LN: 40 | 
	i1 = i7 - (0x105)			# LN: 40 | 
	xmem[i1] = i0			# LN: 40 | 
cline_40_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 41 | 
	a0 = xmem[i0]			# LN: 41 | 
	a0 & a0			# LN: 41 | 
	if (a != 0) jmp (else_0)			# LN: 41 | 
cline_41_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 43 | 
	call (_printf)			# LN: 43 | 
cline_43_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 44 | 
	jmp (__epilogue_242)			# LN: 44 | 
cline_44_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 50 | 
	i0 = xmem[i0]			# LN: 50 | 
	call (_cl_wavread_getnchannels)			# LN: 50 | 
	i0 = i7 - (0x106)			# LN: 50 | 
	xmem[i0] = a0h			# LN: 50 | 
cline_50_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 51 | 
	i0 = xmem[i0]			# LN: 51 | 
	call (_cl_wavread_bits_per_sample)			# LN: 51 | 
	i0 = i7 - (0x107)			# LN: 51 | 
	xmem[i0] = a0h			# LN: 51 | 
cline_51_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 52 | 
	i0 = xmem[i0]			# LN: 52 | 
	call (_cl_wavread_frame_rate)			# LN: 52 | 
	i0 = i7 - (0x108)			# LN: 52 | 
	xmem[i0] = a0h			# LN: 52 | 
cline_52_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 53 | 
	i0 = xmem[i0]			# LN: 53 | 
	call (_cl_wavread_number_of_frames)			# LN: 53 | 
	i0 = i7 - (0x109)			# LN: 53 | 
	xmem[i0] = a0h			# LN: 53 | 
cline_53_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (521 - 0)			# LN: 58 | 
	i1 = (0) + (_string_const_2)			# LN: 58 | 
	call (_strcpy)			# LN: 58 | 
cline_58_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (521 - 0)			# LN: 59 | 
	i1 = i7 - (0x106)			# LN: 59 | 
	a0 = xmem[i1]			# LN: 59 | 
	uhalfword(a1) = (0x3)			# LN: 59 | 
	i1 = i7 - (0x107)			# LN: 59 | 
	a0 = xmem[i1]; a1 = a0 + a1			# LN: 59, 59 | 
	i1 = i7 - (0x108)			# LN: 59 | 
	b0 = xmem[i1]			# LN: 59 | 
	call (_cl_wavwrite_open)			# LN: 59 | 
	AnyReg(i0, a0h)			# LN: 59 | 
	i1 = i7 - (0x20a)			# LN: 59 | 
	xmem[i1] = i0			# LN: 59 | 
cline_59_0:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 60 | 
	a0 = xmem[i0]			# LN: 60 | 
	a0 & a0			# LN: 60 | 
	if (a != 0) jmp (else_1)			# LN: 60 | 
cline_60_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_3)			# LN: 62 | 
	call (_printf)			# LN: 62 | 
cline_62_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 63 | 
	jmp (__epilogue_242)			# LN: 63 | 
cline_63_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 67 | 
	xmem[_degree + 0] = a0h			# LN: 67 | 
cline_67_0:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	a0 = (0x4000)			# LN: 68 | 
	xmem[_gain + 0] = a0h			# LN: 68 | 
cline_68_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 69 | 
	xmem[_invertEnable + 0] = a0h			# LN: 69 | 
cline_69_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	call (_audio_invert_init)			# LN: 71 | 
cline_71_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 80 | 
	a0 = 0			# LN: 80 | 
	xmem[i0] = a0h			# LN: 80 | 
for_2:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 80 | 
	a0 = xmem[i0]			# LN: 80 | 
	uhalfword(a1) = (0x10)			# LN: 80 | 
	call (__div)			# LN: 80 | 
	i0 = i7 - (0x20b)			# LN: 80 | 
	a1 = xmem[i0]			# LN: 80 | 
	a1 - a0			# LN: 80 | 
	if (a >= 0) jmp (for_end_2)			# LN: 80 | 
cline_80_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 82 | 
	a0 = 0			# LN: 82 | 
	xmem[i0] = a0h			# LN: 82 | 
	do (0x10), label_end_94			# LN: 82 | 
cline_82_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 84 | 
	a0 = 0			# LN: 84 | 
	xmem[i0] = a0h			# LN: 84 | 
for_4:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 84 | 
	a0 = xmem[i0]			# LN: 84 | 
	i0 = i7 - (0x106)			# LN: 84 | 
	a1 = xmem[i0]			# LN: 84 | 
	a0 - a1			# LN: 84 | 
	if (a >= 0) jmp (for_end_4)			# LN: 84 | 
cline_84_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 86 | 
	i0 = xmem[i0]			# LN: 86 | 
	call (_cl_wavread_recvsample)			# LN: 86 | 
	i0 = i7 - (0x20e)			# LN: 86 | 
	xmem[i0] = a0h			# LN: 86 | 
cline_86_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 87 | 
	a0 = xmem[i0]			# LN: 87 | 
	a0 = a0 << 4			# LN: 87 | 
	i0 = a0			# LN: 87 | 
	i1 = i7 - (0x20c)			# LN: 87 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 87 | 
	a0 = xmem[i1]			# LN: 87 | 
	a1 = i0			# LN: 87 | 
	a0 = a1 + a0			# LN: 87 | 
	AnyReg(i0, a0h)			# LN: 87 | 
	i1 = i7 - (0x20e)			# LN: 87 | 
	a0 = xmem[i1]			# LN: 87 | 
	ymem[i0] = a0h			# LN: 87 | 
cline_87_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 84 | 
	a0 = xmem[i0]			# LN: 84 | 
	uhalfword(a1) = (0x1)			# LN: 84 | 
	a0 = a0 + a1			# LN: 84 | 
	i0 = i7 - (0x20d)			# LN: 84 | 
	xmem[i0] = a0h			# LN: 84 | 
	jmp (for_4)			# LN: 84 | 
cline_84_1:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 82 | 
	a0 = xmem[i0]			# LN: 82 | 
	uhalfword(a1) = (0x1)			# LN: 82 | 
	a0 = a0 + a1			# LN: 82 | 
	i0 = i7 - (0x20c)			# LN: 82 | 
label_end_94:			# LN: 82 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 82 | 
cline_82_1:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 91 | 
cline_91_0:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 93 | 
	a0 = 0			# LN: 93 | 
	xmem[i0] = a0h			# LN: 93 | 
	do (0x10), label_end_95			# LN: 93 | 
cline_93_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 95 | 
	a0 = 0			# LN: 95 | 
	xmem[i0] = a0h			# LN: 95 | 
for_6:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 95 | 
	a0 = xmem[i0]			# LN: 95 | 
	uhalfword(a1) = (0x3)			# LN: 95 | 
	a0 = a0 + a1			# LN: 95 | 
	i0 = i7 - (0x20d)			# LN: 95 | 
	a1 = xmem[i0]			# LN: 95 | 
	a1 - a0			# LN: 95 | 
	if (a >= 0) jmp (for_end_6)			# LN: 95 | 
cline_95_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 97 | 
	a0 = xmem[i0]			# LN: 97 | 
	a0 = a0 << 4			# LN: 97 | 
	i0 = a0			# LN: 97 | 
	i1 = i7 - (0x20c)			# LN: 97 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 97 | 
	a0 = xmem[i1]			# LN: 97 | 
	a1 = i0			# LN: 97 | 
	a0 = a1 + a0			# LN: 97 | 
	AnyReg(i0, a0h)			# LN: 97 | 
	i1 = i7 - (0x20e)			# LN: 97 | 
	a0 = ymem[i0]			# LN: 97 | 
	xmem[i1] = a0h			# LN: 97 | 
cline_97_0:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 98 | 
	i1 = i7 - (0x20e)			# LN: 98 | 
	a0 = xmem[i1]			# LN: 98 | 
	i0 = xmem[i0]			# LN: 98 | 
	call (_cl_wavwrite_sendsample)			# LN: 98 | 
cline_98_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 95 | 
	a0 = xmem[i0]			# LN: 95 | 
	uhalfword(a1) = (0x1)			# LN: 95 | 
	a0 = a0 + a1			# LN: 95 | 
	i0 = i7 - (0x20d)			# LN: 95 | 
	xmem[i0] = a0h			# LN: 95 | 
	jmp (for_6)			# LN: 95 | 
cline_95_1:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 93 | 
	a0 = xmem[i0]			# LN: 93 | 
	uhalfword(a1) = (0x1)			# LN: 93 | 
	a0 = a0 + a1			# LN: 93 | 
	i0 = i7 - (0x20c)			# LN: 93 | 
label_end_95:			# LN: 93 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 93 | 
cline_93_1:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 80 | 
	a0 = xmem[i0]			# LN: 80 | 
	uhalfword(a1) = (0x1)			# LN: 80 | 
	a0 = a0 + a1			# LN: 80 | 
	i0 = i7 - (0x20b)			# LN: 80 | 
	xmem[i0] = a0h			# LN: 80 | 
	jmp (for_2)			# LN: 80 | 
cline_80_1:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 106 | 
	i0 = xmem[i0]			# LN: 106 | 
	call (_cl_wavread_close)			# LN: 106 | 
cline_106_0:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 107 | 
	i0 = xmem[i0]			# LN: 107 | 
	call (_cl_wavwrite_close)			# LN: 107 | 
cline_107_0:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 110 | 
	jmp (__epilogue_242)			# LN: 110 | 
cline_110_0:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
__epilogue_242:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20e)			# LN: 111 | 
	i7 -= 1			# LN: 111 | 
	ret			# LN: 111 | 
