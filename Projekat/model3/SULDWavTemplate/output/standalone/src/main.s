	.extern _degree
	.extern _gain
	.extern _invertEnable
	.public _sampleBuffer
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
	.xdata_ovly
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
cline_12_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 31 | 
	a0 = 0			# LN: 31 | 
	xmem[i0] = a0h			# LN: 31 | 
	do (0x8), label_end_93			# LN: 31 | 
cline_31_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 32 | 
	a0 = 0			# LN: 32 | 
	xmem[i0] = a0h			# LN: 32 | 
	do (0x10), label_end_92			# LN: 32 | 
cline_32_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
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
	xmem[i0] = a1h			# LN: 33 | 
cline_33_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 32 | 
	a0 = xmem[i0]			# LN: 32 | 
	uhalfword(a1) = (0x1)			# LN: 32 | 
	a0 = a0 + a1			# LN: 32 | 
	i0 = i7 - (0x4)			# LN: 32 | 
label_end_92:			# LN: 32 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 32 | 
cline_32_1:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 31 | 
	a0 = xmem[i0]			# LN: 31 | 
	uhalfword(a1) = (0x1)			# LN: 31 | 
	a0 = a0 + a1			# LN: 31 | 
	i0 = i7 - (0x3)			# LN: 31 | 
label_end_93:			# LN: 31 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 31 | 
cline_31_1:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 37 | 
	i1 = (0) + (_string_const_0)			# LN: 37 | 
	call (_strcpy)			# LN: 37 | 
cline_37_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (260 - 0)			# LN: 38 | 
	call (_cl_wavread_open)			# LN: 38 | 
	AnyReg(i0, a0h)			# LN: 38 | 
	i1 = i7 - (0x105)			# LN: 38 | 
	xmem[i1] = i0			# LN: 38 | 
cline_38_0:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 39 | 
	a0 = xmem[i0]			# LN: 39 | 
	a0 & a0			# LN: 39 | 
	if (a != 0) jmp (else_0)			# LN: 39 | 
cline_39_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 41 | 
	call (_printf)			# LN: 41 | 
cline_41_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 42 | 
	jmp (__epilogue_242)			# LN: 42 | 
cline_42_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 48 | 
	i0 = xmem[i0]			# LN: 48 | 
	call (_cl_wavread_getnchannels)			# LN: 48 | 
	i0 = i7 - (0x106)			# LN: 48 | 
	xmem[i0] = a0h			# LN: 48 | 
cline_48_0:			/* LN: 49 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 49 | 
	i0 = xmem[i0]			# LN: 49 | 
	call (_cl_wavread_bits_per_sample)			# LN: 49 | 
	i0 = i7 - (0x107)			# LN: 49 | 
	xmem[i0] = a0h			# LN: 49 | 
cline_49_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 50 | 
	i0 = xmem[i0]			# LN: 50 | 
	call (_cl_wavread_frame_rate)			# LN: 50 | 
	i0 = i7 - (0x108)			# LN: 50 | 
	xmem[i0] = a0h			# LN: 50 | 
cline_50_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 51 | 
	i0 = xmem[i0]			# LN: 51 | 
	call (_cl_wavread_number_of_frames)			# LN: 51 | 
	i0 = i7 - (0x109)			# LN: 51 | 
	xmem[i0] = a0h			# LN: 51 | 
cline_51_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (521 - 0)			# LN: 56 | 
	i1 = (0) + (_string_const_2)			# LN: 56 | 
	call (_strcpy)			# LN: 56 | 
cline_56_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (521 - 0)			# LN: 57 | 
	i1 = i7 - (0x106)			# LN: 57 | 
	a0 = xmem[i1]			# LN: 57 | 
	uhalfword(a1) = (0x3)			# LN: 57 | 
	i1 = i7 - (0x107)			# LN: 57 | 
	a0 = xmem[i1]; a1 = a0 + a1			# LN: 57, 57 | 
	i1 = i7 - (0x108)			# LN: 57 | 
	b0 = xmem[i1]			# LN: 57 | 
	call (_cl_wavwrite_open)			# LN: 57 | 
	AnyReg(i0, a0h)			# LN: 57 | 
	i1 = i7 - (0x20a)			# LN: 57 | 
	xmem[i1] = i0			# LN: 57 | 
cline_57_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 58 | 
	a0 = xmem[i0]			# LN: 58 | 
	a0 & a0			# LN: 58 | 
	if (a != 0) jmp (else_1)			# LN: 58 | 
cline_58_0:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_3)			# LN: 60 | 
	call (_printf)			# LN: 60 | 
cline_60_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 61 | 
	jmp (__epilogue_242)			# LN: 61 | 
cline_61_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 65 | 
	xmem[_degree + 0] = a0h			# LN: 65 | 
cline_65_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	a0 = (0x4000)			# LN: 66 | 
	xmem[_gain + 0] = a0h			# LN: 66 | 
cline_66_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 67 | 
	xmem[_invertEnable + 0] = a0h			# LN: 67 | 
cline_67_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 77 | 
	a0 = 0			# LN: 77 | 
	xmem[i0] = a0h			# LN: 77 | 
for_2:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 77 | 
	a0 = xmem[i0]			# LN: 77 | 
	uhalfword(a1) = (0x10)			# LN: 77 | 
	call (__div)			# LN: 77 | 
	i0 = i7 - (0x20b)			# LN: 77 | 
	a1 = xmem[i0]			# LN: 77 | 
	a1 - a0			# LN: 77 | 
	if (a >= 0) jmp (for_end_2)			# LN: 77 | 
cline_77_0:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 79 | 
	a0 = 0			# LN: 79 | 
	xmem[i0] = a0h			# LN: 79 | 
	do (0x10), label_end_94			# LN: 79 | 
cline_79_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 81 | 
	a0 = 0			# LN: 81 | 
	xmem[i0] = a0h			# LN: 81 | 
for_4:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 81 | 
	a0 = xmem[i0]			# LN: 81 | 
	i0 = i7 - (0x106)			# LN: 81 | 
	a1 = xmem[i0]			# LN: 81 | 
	a0 - a1			# LN: 81 | 
	if (a >= 0) jmp (for_end_4)			# LN: 81 | 
cline_81_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 83 | 
	i0 = xmem[i0]			# LN: 83 | 
	call (_cl_wavread_recvsample)			# LN: 83 | 
	i0 = i7 - (0x20e)			# LN: 83 | 
	xmem[i0] = a0h			# LN: 83 | 
cline_83_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 84 | 
	a0 = xmem[i0]			# LN: 84 | 
	a0 = a0 << 4			# LN: 84 | 
	i0 = a0			# LN: 84 | 
	i1 = i7 - (0x20c)			# LN: 84 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 84 | 
	a0 = xmem[i1]			# LN: 84 | 
	a1 = i0			# LN: 84 | 
	a0 = a1 + a0			# LN: 84 | 
	AnyReg(i0, a0h)			# LN: 84 | 
	i1 = i7 - (0x20e)			# LN: 84 | 
	a0 = xmem[i1]			# LN: 84 | 
	xmem[i0] = a0h			# LN: 84 | 
cline_84_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 81 | 
	a0 = xmem[i0]			# LN: 81 | 
	uhalfword(a1) = (0x1)			# LN: 81 | 
	a0 = a0 + a1			# LN: 81 | 
	i0 = i7 - (0x20d)			# LN: 81 | 
	xmem[i0] = a0h			# LN: 81 | 
	jmp (for_4)			# LN: 81 | 
cline_81_1:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 79 | 
	a0 = xmem[i0]			# LN: 79 | 
	uhalfword(a1) = (0x1)			# LN: 79 | 
	a0 = a0 + a1			# LN: 79 | 
	i0 = i7 - (0x20c)			# LN: 79 | 
label_end_94:			# LN: 79 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 79 | 
cline_79_1:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	call (_processing)			# LN: 88 | 
cline_88_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 90 | 
	a0 = 0			# LN: 90 | 
	xmem[i0] = a0h			# LN: 90 | 
	do (0x10), label_end_95			# LN: 90 | 
cline_90_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 92 | 
	a0 = 0			# LN: 92 | 
	xmem[i0] = a0h			# LN: 92 | 
for_6:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x106)			# LN: 92 | 
	a0 = xmem[i0]			# LN: 92 | 
	uhalfword(a1) = (0x3)			# LN: 92 | 
	a0 = a0 + a1			# LN: 92 | 
	i0 = i7 - (0x20d)			# LN: 92 | 
	a1 = xmem[i0]			# LN: 92 | 
	a1 - a0			# LN: 92 | 
	if (a >= 0) jmp (for_end_6)			# LN: 92 | 
cline_92_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 94 | 
	a0 = xmem[i0]			# LN: 94 | 
	a0 = a0 << 4			# LN: 94 | 
	i0 = a0			# LN: 94 | 
	i1 = i7 - (0x20c)			# LN: 94 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 94 | 
	a0 = xmem[i1]			# LN: 94 | 
	a1 = i0			# LN: 94 | 
	a0 = a1 + a0			# LN: 94 | 
	AnyReg(i0, a0h)			# LN: 94 | 
	i1 = i7 - (0x20e)			# LN: 94 | 
	a0 = xmem[i0]			# LN: 94 | 
	xmem[i1] = a0h			# LN: 94 | 
cline_94_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 95 | 
	i1 = i7 - (0x20e)			# LN: 95 | 
	a0 = xmem[i1]			# LN: 95 | 
	i0 = xmem[i0]			# LN: 95 | 
	call (_cl_wavwrite_sendsample)			# LN: 95 | 
cline_95_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20d)			# LN: 92 | 
	a0 = xmem[i0]			# LN: 92 | 
	uhalfword(a1) = (0x1)			# LN: 92 | 
	a0 = a0 + a1			# LN: 92 | 
	i0 = i7 - (0x20d)			# LN: 92 | 
	xmem[i0] = a0h			# LN: 92 | 
	jmp (for_6)			# LN: 92 | 
cline_92_1:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20c)			# LN: 90 | 
	a0 = xmem[i0]			# LN: 90 | 
	uhalfword(a1) = (0x1)			# LN: 90 | 
	a0 = a0 + a1			# LN: 90 | 
	i0 = i7 - (0x20c)			# LN: 90 | 
label_end_95:			# LN: 90 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 90 | 
cline_90_1:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20b)			# LN: 77 | 
	a0 = xmem[i0]			# LN: 77 | 
	uhalfword(a1) = (0x1)			# LN: 77 | 
	a0 = a0 + a1			# LN: 77 | 
	i0 = i7 - (0x20b)			# LN: 77 | 
	xmem[i0] = a0h			# LN: 77 | 
	jmp (for_2)			# LN: 77 | 
cline_77_1:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x105)			# LN: 103 | 
	i0 = xmem[i0]			# LN: 103 | 
	call (_cl_wavread_close)			# LN: 103 | 
cline_103_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20a)			# LN: 104 | 
	i0 = xmem[i0]			# LN: 104 | 
	call (_cl_wavwrite_close)			# LN: 104 | 
cline_104_0:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 107 | 
	jmp (__epilogue_242)			# LN: 107 | 
cline_107_0:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
__epilogue_242:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x20e)			# LN: 108 | 
	i7 -= 1			# LN: 108 | 
	ret			# LN: 108 | 
