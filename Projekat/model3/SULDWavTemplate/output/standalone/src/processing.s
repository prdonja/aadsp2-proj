	.public _degree
	.public _gain
	.public _invertEnable
	.public _inverter
	.extern _sampleBuffer
	.public _audio_invert_init
	.public _gst_audio_invert_transform
	.public _processing
	.xdata_ovly
__extractedConst_0_1
	.dw  (0x7ffcb924)
	.xdata_ovly
__extractedConst_1_1
	.dw  (0x346dc)
	.xdata_ovly
__extractedConst_2_5
	.dw  (0x3fffffff)
	.xdata_ovly
_degree
	.bss (0x1)
	.xdata_ovly
_gain
	.bss (0x1)
	.xdata_ovly
_invertEnable
	.bss (0x1)
	.xdata_ovly
_inverter
	.bss (0x2)
	.code_ovly



_audio_invert_init:			/* LN: 8 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 8 | 
	i7 += 1			# LN: 8 | 
cline_8_0:			/* LN: 10 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_degree + 0]			# LN: 10 | 
	xmem[_inverter + 0] = a0h			# LN: 10 | 
cline_10_0:			/* LN: 11 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_gain + 0]			# LN: 11 | 
	xmem[_inverter + 1] = a0h			# LN: 11 | 
cline_11_0:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_104)			# LN: 12 | 
__epilogue_104:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	i7 -= 1			# LN: 12 | 
	ret			# LN: 12 | 



_gst_audio_invert_transform:			/* LN: 14 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 14 | 
	i7 += 1			# LN: 14 | 
	i7 = i7 + (0x9)			# LN: 14 | 
	i4 = i7 - (0x1)			# LN: 14 | 
	xmem[i4] = i0			# LN: 14 | 
	i0 = i7 - (0x2)			# LN: 14 | 
	xmem[i0] = i1			# LN: 14 | 
cline_14_0:			/* LN: 17 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_inverter + 0]			# LN: 17 | 
	a1 = xmem[__extractedConst_0_1 + 0]			# LN: 17 | 
	a0 = a1 - a0			# LN: 17 | 
	i0 = i7 - (0x3)			# LN: 17 | 
	xmem[i0] = a0h			# LN: 17 | 
cline_17_0:			/* LN: 20 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 20 | 
	a0 = (0x4000)			# LN: 20 | 
	xmem[i0] = a0h			# LN: 20 | 
cline_20_0:			/* LN: 22 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 22 | 
	a0 = xmem[i0]			# LN: 22 | 
	a1 = xmem[__extractedConst_1_1 + 0]			# LN: 22 | 
	a0 = a0 + a1			# LN: 22 | 
	i0 = i7 - (0x3)			# LN: 22 | 
	xmem[i0] = a0h			# LN: 22 | 
cline_22_0:			/* LN: 24 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 24 | 
	a0 = 0			# LN: 24 | 
	xmem[i0] = a0h			# LN: 24 | 
	do (0x10), label_end_92			# LN: 24 | 
cline_24_0:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 24 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 26 | 
	i0 = xmem[i0]			# LN: 26 | 
	i1 = i7 - (0x4)			# LN: 26 | 
	a0 = xmem[i0]			# LN: 26 | 
	a1 = xmem[i1]; a0 = a0 >> 1			# LN: 26, 26 | 
	a0 = a1 + a0			# LN: 26 | 
	i0 = i7 - (0x6)			# LN: 26 | 
	xmem[i0] = a0h			# LN: 26 | 
cline_26_0:			/* LN: 27 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 27 | 
	i0 = xmem[i0]			# LN: 27 | 
	i1 = i7 - (0x3)			# LN: 27 | 
	a0 = xmem[i0]			# LN: 27 | 
	x0 = xmem[i1]; a0 = a0 >> 1			# LN: 27, 27 | 
	x1 = a0h			# LN: 27 | 
	y0 = xmem[_inverter + 0]			# LN: 27 | 
	i0 = i7 - (0x6)			# LN: 27 | 
	x0 = xmem[i0]; a0 = x1 * x0			# LN: 27, 27 | 
	a0 -= x0 * y0			# LN: 27 | 
	i0 = i7 - (0x9)			# LN: 27 | 
	xmem[i0] = a0g; i0 += 1			# LN: 27, 27 | 
	xmem[i0] = a0h; i0 += 1			# LN: 27, 27 | 
	xmem[i0] = a0l			# LN: 27 | 
cline_27_0:			/* LN: 28 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 28 | 
	i0 = xmem[i0]			# LN: 28 | 
	i1 = i7 - (0x1)			# LN: 28 | 
	i0 += 1			# LN: 28 | 
	xmem[i1] = i0			# LN: 28 | 
cline_28_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 29 | 
	a0g = xmem[i0]; i0 += 1			# LN: 29, 29 | 
	a0h = xmem[i0]; i0 += 1			# LN: 29, 29 | 
	a0l = xmem[i0]			# LN: 29 | 
	x0 = a0			# LN: 29 | 
	x1 = xmem[_inverter + 1]			# LN: 29 | 
	a0 = x0 * x1			# LN: 29 | 
	i0 = i7 - (0x2)			# LN: 29 | 
	i0 = xmem[i0]			# LN: 29 | 
	a0 = a0 << 1			# LN: 29 | 
	xmem[i0] = a0			# LN: 29 | 
cline_29_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 30 | 
	i0 = xmem[i0]			# LN: 30 | 
	i1 = i7 - (0x2)			# LN: 30 | 
	i0 += 1			# LN: 30 | 
	xmem[i1] = i0			# LN: 30 | 
cline_30_0:			/* LN: 24 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 24 | 
	a0 = xmem[i0]			# LN: 24 | 
	uhalfword(a1) = (0x1)			# LN: 24 | 
	a0 = a0 + a1			# LN: 24 | 
	i0 = i7 - (0x5)			# LN: 24 | 
label_end_92:			# LN: 24 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 24 | 
cline_24_1:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 24 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_106)			# LN: 32 | 
__epilogue_106:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x9)			# LN: 32 | 
	i7 -= 1			# LN: 32 | 
	ret			# LN: 32 | 



_processing:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 34 | 
	i7 += 1			# LN: 34 | 
	i7 = i7 + (0x26)			# LN: 34 | 
cline_34_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 36 | 
	a0 = 0			# LN: 36 | 
	xmem[i0] = a0h			# LN: 36 | 
cline_36_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 37 | 
	a0 = 0			# LN: 37 | 
	xmem[i0] = a0h			# LN: 37 | 
cline_37_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 38 | 
	a0 = 0			# LN: 38 | 
	xmem[i0] = a0h			# LN: 38 | 
cline_38_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x14)			# LN: 45 | 
	i1 = i7 - (19 - 0)			# LN: 45 | 
	a0 = i1			# LN: 45 | 
	xmem[i0] = a0			# LN: 45 | 
cline_45_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x25)			# LN: 46 | 
	i1 = i7 - (36 - 0)			# LN: 46 | 
	a0 = i1			# LN: 46 | 
	xmem[i0] = a0			# LN: 46 | 
cline_46_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	call (_audio_invert_init)			# LN: 48 | 
cline_48_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x26)			# LN: 50 | 
	uhalfword(a0) = (_sampleBuffer + 0)			# LN: 50 | 
	xmem[i0] = a0			# LN: 50 | 
cline_50_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 52 | 
	a0 = 0			# LN: 52 | 
	xmem[i0] = a0h			# LN: 52 | 
	do (0x10), label_end_93			# LN: 52 | 
cline_52_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x26)			# LN: 54 | 
	i0 = xmem[i0]			# LN: 54 | 
	i1 = i7 - (0x14)			# LN: 54 | 
	i1 = xmem[i1]			# LN: 54 | 
	a0 = xmem[i0]			# LN: 54 | 
	xmem[i1] = a0h			# LN: 54 | 
cline_54_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x26)			# LN: 55 | 
	i0 = xmem[i0]			# LN: 55 | 
	i1 = i7 - (0x25)			# LN: 55 | 
	i0 = i0 + (0x10)			# LN: 55 | 
	i1 = xmem[i1]			# LN: 55 | 
	a0 = xmem[i0]			# LN: 55 | 
	xmem[i1] = a0h			# LN: 55 | 
cline_55_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x14)			# LN: 57 | 
	i0 = xmem[i0]			# LN: 57 | 
	i1 = i7 - (0x14)			# LN: 57 | 
	i0 += 1			# LN: 57 | 
	xmem[i1] = i0			# LN: 57 | 
cline_57_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x25)			# LN: 58 | 
	i0 = xmem[i0]			# LN: 58 | 
	i1 = i7 - (0x25)			# LN: 58 | 
	i0 += 1			# LN: 58 | 
	xmem[i1] = i0			# LN: 58 | 
cline_58_0:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x26)			# LN: 60 | 
	i0 = xmem[i0]			# LN: 60 | 
	i1 = i7 - (0x26)			# LN: 60 | 
	i0 += 1			# LN: 60 | 
	xmem[i1] = i0			# LN: 60 | 
cline_60_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 52 | 
	a0 = xmem[i0]			# LN: 52 | 
	uhalfword(a1) = (0x1)			# LN: 52 | 
	a0 = a0 + a1			# LN: 52 | 
	i0 = i7 - (0x1)			# LN: 52 | 
label_end_93:			# LN: 52 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 52 | 
cline_52_1:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x14)			# LN: 63 | 
	i1 = i7 - (19 - 0)			# LN: 63 | 
	a0 = i1			# LN: 63 | 
	xmem[i0] = a0			# LN: 63 | 
cline_63_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x25)			# LN: 64 | 
	i1 = i7 - (36 - 0)			# LN: 64 | 
	a0 = i1			# LN: 64 | 
	xmem[i0] = a0			# LN: 64 | 
cline_64_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x26)			# LN: 66 | 
	uhalfword(a0) = (_sampleBuffer + 0)			# LN: 66 | 
	xmem[i0] = a0			# LN: 66 | 
cline_66_0:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 68 | 
	a0 = 0			# LN: 68 | 
	xmem[i0] = a0h			# LN: 68 | 
	do (0x10), label_end_94			# LN: 68 | 
cline_68_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x26)			# LN: 71 | 
	i0 = xmem[i0]			# LN: 71 | 
	x0 = (0x4000)			# LN: 71 | 
	x1 = xmem[i0]			# LN: 71 | 
	i0 = i7 - (0x26)			# LN: 71 | 
	i0 = xmem[i0]			# LN: 71 | 
	a0 = x1 * x0			# LN: 71 | 
	xmem[i0] = a0			# LN: 71 | 
cline_71_0:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x26)			# LN: 72 | 
	i0 = xmem[i0]			# LN: 72 | 
	i1 = i7 - (0x25)			# LN: 72 | 
	a0 = xmem[i0]			# LN: 72 | 
	i0 = xmem[i1]			# LN: 72 | 
	x0 = xmem[__extractedConst_2_5 + 0]			# LN: 72 | 
	x1 = xmem[i0]			# LN: 72 | 
	i0 = i7 - (0x26)			# LN: 72 | 
	i0 = xmem[i0]			# LN: 72 | 
	a0 += x1 * x0			# LN: 72 | 
	xmem[i0] = a0			# LN: 72 | 
cline_72_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x26)			# LN: 75 | 
	i0 = xmem[i0]			# LN: 75 | 
	i1 = i7 - (0x14)			# LN: 75 | 
	i1 = xmem[i1]			# LN: 75 | 
	i0 = i0 + (0x10)			# LN: 75 | 
	x0 = xmem[i1]			# LN: 75 | 
	x1 = (0x4000)			# LN: 75 | 
	a0 = x0 * x1			# LN: 75 | 
	xmem[i0] = a0			# LN: 75 | 
cline_75_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x26)			# LN: 76 | 
	i0 = xmem[i0]			# LN: 76 | 
	i1 = i7 - (0x26)			# LN: 76 | 
	i1 = xmem[i1]			# LN: 76 | 
	i0 = i0 + (0x10)			# LN: 76 | 
	i1 = i1 + (0x10)			# LN: 76 | 
	a0 = xmem[i1]			# LN: 76 | 
	i1 = i7 - (0x25)			# LN: 76 | 
	i1 = xmem[i1]			# LN: 76 | 
	x0 = xmem[__extractedConst_2_5 + 0]			# LN: 76 | 
	x1 = xmem[i1]			# LN: 76 | 
	a0 += x1 * x0			# LN: 76 | 
	xmem[i0] = a0			# LN: 76 | 
cline_76_0:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x26)			# LN: 79 | 
	i0 = xmem[i0]			# LN: 79 | 
	i1 = i7 - (0x14)			# LN: 79 | 
	i1 = xmem[i1]			# LN: 79 | 
	i0 = i0 + (0x20)			# LN: 79 | 
	x0 = xmem[i1]			# LN: 79 | 
	x1 = (0x4000)			# LN: 79 | 
	a0 = x0 * x1			# LN: 79 | 
	xmem[i0] = a0			# LN: 79 | 
cline_79_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x26)			# LN: 80 | 
	i0 = xmem[i0]			# LN: 80 | 
	i1 = i7 - (0x26)			# LN: 80 | 
	i1 = xmem[i1]			# LN: 80 | 
	i0 = i0 + (0x20)			# LN: 80 | 
	i1 = i1 + (0x20)			# LN: 80 | 
	a0 = xmem[i1]			# LN: 80 | 
	i1 = i7 - (0x25)			# LN: 80 | 
	i1 = xmem[i1]			# LN: 80 | 
	x0 = xmem[__extractedConst_2_5 + 0]			# LN: 80 | 
	x1 = xmem[i1]			# LN: 80 | 
	a0 += x1 * x0			# LN: 80 | 
	xmem[i0] = a0			# LN: 80 | 
cline_80_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x26)			# LN: 83 | 
	i0 = xmem[i0]			# LN: 83 | 
	i1 = i7 - (0x14)			# LN: 83 | 
	i1 = xmem[i1]			# LN: 83 | 
	i0 = i0 + (0x30)			# LN: 83 | 
	x0 = xmem[i1]			# LN: 83 | 
	x1 = (0x4000)			# LN: 83 | 
	a0 = x0 * x1			# LN: 83 | 
	xmem[i0] = a0			# LN: 83 | 
cline_83_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x26)			# LN: 84 | 
	i0 = xmem[i0]			# LN: 84 | 
	i1 = i7 - (0x26)			# LN: 84 | 
	i1 = xmem[i1]			# LN: 84 | 
	i0 = i0 + (0x30)			# LN: 84 | 
	i1 = i1 + (0x30)			# LN: 84 | 
	a0 = xmem[i1]			# LN: 84 | 
	i1 = i7 - (0x25)			# LN: 84 | 
	i1 = xmem[i1]			# LN: 84 | 
	x0 = xmem[__extractedConst_2_5 + 0]			# LN: 84 | 
	x1 = xmem[i1]			# LN: 84 | 
	a0 += x1 * x0			# LN: 84 | 
	xmem[i0] = a0			# LN: 84 | 
cline_84_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x26)			# LN: 87 | 
	i0 = xmem[i0]			# LN: 87 | 
	i1 = i7 - (0x14)			# LN: 87 | 
	i1 = xmem[i1]			# LN: 87 | 
	i0 = i0 + (0x40)			# LN: 87 | 
	x0 = xmem[i1]			# LN: 87 | 
	x1 = (0x4000)			# LN: 87 | 
	a0 = x0 * x1			# LN: 87 | 
	xmem[i0] = a0			# LN: 87 | 
cline_87_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x14)			# LN: 88 | 
	i0 = xmem[i0]			# LN: 88 | 
	i1 = i7 - (0x14)			# LN: 88 | 
	i0 += 1			# LN: 88 | 
	xmem[i1] = i0			# LN: 88 | 
cline_88_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x26)			# LN: 89 | 
	i0 = xmem[i0]			# LN: 89 | 
	i1 = i7 - (0x26)			# LN: 89 | 
	i1 = xmem[i1]			# LN: 89 | 
	i0 = i0 + (0x40)			# LN: 89 | 
	i1 = i1 + (0x40)			# LN: 89 | 
	a0 = xmem[i1]			# LN: 89 | 
	i1 = i7 - (0x25)			# LN: 89 | 
	i1 = xmem[i1]			# LN: 89 | 
	x0 = xmem[__extractedConst_2_5 + 0]			# LN: 89 | 
	x1 = xmem[i1]			# LN: 89 | 
	a0 += x1 * x0			# LN: 89 | 
	xmem[i0] = a0			# LN: 89 | 
cline_89_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x25)			# LN: 90 | 
	i0 = xmem[i0]			# LN: 90 | 
	i1 = i7 - (0x25)			# LN: 90 | 
	i0 += 1			# LN: 90 | 
	xmem[i1] = i0			# LN: 90 | 
cline_90_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x26)			# LN: 91 | 
	i0 = xmem[i0]			# LN: 91 | 
	i1 = i7 - (0x26)			# LN: 91 | 
	i0 += 1			# LN: 91 | 
	xmem[i1] = i0			# LN: 91 | 
cline_91_0:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 68 | 
	a0 = xmem[i0]			# LN: 68 | 
	uhalfword(a1) = (0x1)			# LN: 68 | 
	a0 = a0 + a1			# LN: 68 | 
	i0 = i7 - (0x1)			# LN: 68 | 
label_end_94:			# LN: 68 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 68 | 
cline_68_1:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_invertEnable + 0]			# LN: 94 | 
	a0 & a0			# LN: 94 | 
	if (a == 0) jmp (else_0)			# LN: 94 | 
cline_94_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 32)			# LN: 96 | 
	i1 = (0) + (_sampleBuffer + 32)			# LN: 96 | 
	call (_gst_audio_invert_transform)			# LN: 96 | 
	jmp (endif_0)			# LN: 96 | 
cline_96_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_invertEnable + 0]			# LN: 99 | 
	a0 & a0			# LN: 99 | 
	if (a == 0) jmp (else_1)			# LN: 99 | 
cline_99_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 48)			# LN: 101 | 
	i1 = (0) + (_sampleBuffer + 48)			# LN: 101 | 
	call (_gst_audio_invert_transform)			# LN: 101 | 
	jmp (endif_1)			# LN: 101 | 
cline_101_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_invertEnable + 0]			# LN: 104 | 
	a0 & a0			# LN: 104 | 
	if (a == 0) jmp (else_2)			# LN: 104 | 
cline_104_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer + 64)			# LN: 106 | 
	i1 = (0) + (_sampleBuffer + 64)			# LN: 106 | 
	call (_gst_audio_invert_transform)			# LN: 106 | 
	jmp (endif_2)			# LN: 106 | 
cline_106_0:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_108)			# LN: 110 | 
__epilogue_108:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x26)			# LN: 110 | 
	i7 -= 1			# LN: 110 | 
	ret			# LN: 110 | 
