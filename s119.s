	.file	"s119.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	s119
	.type	s119, @function
s119:
.LFB0:
	.file 1 "/home/sbansal/superopt-project/superopt-tests/TSVC_new/s119.c"
	.loc 1 42 1 view -0
	.cfi_startproc
	.loc 1 47 3 view .LVU1
.LBB2:
	.loc 1 47 8 view .LVU2
.LVL0:
	.loc 1 47 19 view .LVU3
.LBE2:
	.loc 1 42 1 is_stmt 0 view .LVU4
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$aa, %edx
	movl	$bb+1028, %ecx
.LVL1:
	.p2align 4,,10
	.p2align 3
.L2:
.LBB5:
.LBB3:
	.loc 1 48 20 is_stmt 1 view .LVU5
	leal	1028(%edx), %ebx
.LBE3:
.LBE5:
	.loc 1 42 1 is_stmt 0 view .LVU6
	xorl	%eax, %eax
.LVL2:
	.p2align 4,,10
	.p2align 3
.L4:
.LBB6:
.LBB4:
	.loc 1 49 5 is_stmt 1 discriminator 3 view .LVU7
	.loc 1 49 29 is_stmt 0 discriminator 3 view .LVU8
	movdqu	(%ecx,%eax), %xmm0
	paddd	(%edx,%eax), %xmm0
	.loc 1 49 14 discriminator 3 view .LVU9
	movups	%xmm0, (%ebx,%eax)
	.loc 1 48 30 is_stmt 1 discriminator 3 view .LVU10
	.loc 1 48 20 discriminator 3 view .LVU11
	addl	$16, %eax
	cmpl	$1008, %eax
	jne	.L4
.LVL3:
	.loc 1 49 5 view .LVU12
	.loc 1 49 29 is_stmt 0 view .LVU13
	movl	1008(%ecx), %eax
	addl	1008(%edx), %eax
	addl	$1024, %edx
	addl	$1024, %ecx
	.loc 1 49 14 view .LVU14
	movl	%eax, 1012(%edx)
	.loc 1 48 30 is_stmt 1 view .LVU15
.LVL4:
	.loc 1 48 20 view .LVU16
	.loc 1 49 5 view .LVU17
	.loc 1 49 29 is_stmt 0 view .LVU18
	movl	-12(%ecx), %eax
	addl	-12(%edx), %eax
	.loc 1 49 14 view .LVU19
	movl	%eax, 1016(%edx)
	.loc 1 48 30 is_stmt 1 view .LVU20
.LVL5:
	.loc 1 48 20 view .LVU21
	.loc 1 49 5 view .LVU22
	.loc 1 49 29 is_stmt 0 view .LVU23
	movl	-8(%ecx), %eax
	addl	-8(%edx), %eax
	.loc 1 49 14 view .LVU24
	movl	%eax, 1020(%edx)
	.loc 1 48 30 is_stmt 1 view .LVU25
.LVL6:
	.loc 1 48 20 view .LVU26
.LBE4:
	.loc 1 47 29 view .LVU27
	.loc 1 47 19 view .LVU28
	.loc 1 47 3 is_stmt 0 view .LVU29
	cmpl	$aa+261120, %edx
	jne	.L2
.LBE6:
	.loc 1 52 2 is_stmt 1 view .LVU30
	.loc 1 53 1 is_stmt 0 view .LVU31
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	s119, .-s119
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/8/include/stddef.h"
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/bits/types/struct_FILE.h"
	.file 5 "/usr/include/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/time.h"
	.file 8 "/usr/include/malloc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x591
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF66
	.byte	0xc
	.long	.LASF67
	.long	.LASF68
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF8
	.byte	0x2
	.byte	0xd8
	.byte	0x17
	.long	0x31
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF1
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x5
	.byte	0x4
	.long	0x53
	.uleb128 0x6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x2f
	.byte	0x2c
	.long	0x46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x38
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x77
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.long	0xaa
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x3
	.byte	0xc
	.byte	0x4
	.long	.LASF14
	.uleb128 0x8
	.long	.LASF69
	.byte	0x94
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x23f
	.uleb128 0x9
	.long	.LASF15
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x3f
	.byte	0
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0xa4
	.byte	0x4
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0xa4
	.byte	0x8
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0xa4
	.byte	0xc
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0xa4
	.byte	0x10
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0xa4
	.byte	0x14
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0xa4
	.byte	0x18
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0xa4
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0xa4
	.byte	0x20
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0xa4
	.byte	0x24
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0xa4
	.byte	0x28
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0xa4
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x258
	.byte	0x30
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x25e
	.byte	0x34
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x3f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x3f
	.byte	0x3c
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x8a
	.byte	0x40
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x5b
	.byte	0x44
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x69
	.byte	0x46
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x264
	.byte	0x47
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x274
	.byte	0x48
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x96
	.byte	0x4c
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x27f
	.byte	0x54
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x28a
	.byte	0x58
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x25e
	.byte	0x5c
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0xa2
	.byte	0x60
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x25
	.byte	0x64
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x3f
	.byte	0x68
	.uleb128 0x9
	.long	.LASF43
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x290
	.byte	0x6c
	.byte	0
	.uleb128 0x2
	.long	.LASF44
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xb8
	.uleb128 0xa
	.long	.LASF70
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.long	.LASF45
	.uleb128 0x5
	.byte	0x4
	.long	0x253
	.uleb128 0x5
	.byte	0x4
	.long	0xb8
	.uleb128 0xc
	.long	0xaa
	.long	0x274
	.uleb128 0xd
	.long	0x31
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x24b
	.uleb128 0xb
	.long	.LASF46
	.uleb128 0x5
	.byte	0x4
	.long	0x27a
	.uleb128 0xb
	.long	.LASF47
	.uleb128 0x5
	.byte	0x4
	.long	0x285
	.uleb128 0xc
	.long	0xaa
	.long	0x2a0
	.uleb128 0xd
	.long	0x31
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.long	.LASF48
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x2ac
	.uleb128 0x5
	.byte	0x4
	.long	0x23f
	.uleb128 0xe
	.long	.LASF49
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x2ac
	.uleb128 0xe
	.long	.LASF50
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x2ac
	.uleb128 0xc
	.long	0xa4
	.long	0x2da
	.uleb128 0xd
	.long	0x31
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	.LASF51
	.byte	0x7
	.byte	0x9f
	.byte	0xe
	.long	0x2ca
	.uleb128 0xe
	.long	.LASF52
	.byte	0x7
	.byte	0xa0
	.byte	0xc
	.long	0x3f
	.uleb128 0xe
	.long	.LASF53
	.byte	0x7
	.byte	0xa1
	.byte	0x11
	.long	0x38
	.uleb128 0x2
	.long	.LASF54
	.byte	0x2
	.byte	0x95
	.byte	0x1a
	.long	0x3f
	.uleb128 0x3
	.byte	0x10
	.byte	0x4
	.long	.LASF55
	.uleb128 0xf
	.long	0xa2
	.long	0x320
	.uleb128 0x10
	.long	0x2fe
	.byte	0
	.uleb128 0xe
	.long	.LASF56
	.byte	0x8
	.byte	0x4e
	.byte	0x10
	.long	0x32c
	.uleb128 0x5
	.byte	0x4
	.long	0x311
	.uleb128 0x11
	.long	0x342
	.uleb128 0x10
	.long	0xa2
	.uleb128 0x10
	.long	0x4d
	.byte	0
	.uleb128 0xe
	.long	.LASF57
	.byte	0x8
	.byte	0x91
	.byte	0x26
	.long	0x354
	.uleb128 0x5
	.byte	0x4
	.long	0x332
	.uleb128 0x12
	.long	0x34e
	.uleb128 0xf
	.long	0xa2
	.long	0x36d
	.uleb128 0x10
	.long	0x25
	.uleb128 0x10
	.long	0x4d
	.byte	0
	.uleb128 0xe
	.long	.LASF58
	.byte	0x8
	.byte	0x94
	.byte	0x27
	.long	0x37f
	.uleb128 0x5
	.byte	0x4
	.long	0x359
	.uleb128 0x12
	.long	0x379
	.uleb128 0xf
	.long	0xa2
	.long	0x39d
	.uleb128 0x10
	.long	0xa2
	.uleb128 0x10
	.long	0x25
	.uleb128 0x10
	.long	0x4d
	.byte	0
	.uleb128 0xe
	.long	.LASF59
	.byte	0x8
	.byte	0x97
	.byte	0x27
	.long	0x3af
	.uleb128 0x5
	.byte	0x4
	.long	0x384
	.uleb128 0x12
	.long	0x3a9
	.uleb128 0xf
	.long	0xa2
	.long	0x3cd
	.uleb128 0x10
	.long	0x25
	.uleb128 0x10
	.long	0x25
	.uleb128 0x10
	.long	0x4d
	.byte	0
	.uleb128 0xe
	.long	.LASF60
	.byte	0x8
	.byte	0x9b
	.byte	0x27
	.long	0x3df
	.uleb128 0x5
	.byte	0x4
	.long	0x3b4
	.uleb128 0x12
	.long	0x3d9
	.uleb128 0x13
	.uleb128 0xe
	.long	.LASF61
	.byte	0x8
	.byte	0x9f
	.byte	0x26
	.long	0x3f7
	.uleb128 0x5
	.byte	0x4
	.long	0x3e4
	.uleb128 0x12
	.long	0x3f1
	.uleb128 0x14
	.string	"val"
	.byte	0x1
	.byte	0x15
	.byte	0xd
	.long	0x3f
	.uleb128 0xc
	.long	0x3f
	.long	0x419
	.uleb128 0x15
	.long	0x31
	.value	0x7cff
	.byte	0
	.uleb128 0x16
	.string	"X"
	.byte	0x1
	.byte	0x16
	.byte	0x2b
	.long	0x408
	.byte	0x10
	.uleb128 0x16
	.string	"Y"
	.byte	0x1
	.byte	0x16
	.byte	0x32
	.long	0x408
	.byte	0x10
	.uleb128 0x16
	.string	"Z"
	.byte	0x1
	.byte	0x16
	.byte	0x39
	.long	0x408
	.byte	0x10
	.uleb128 0x16
	.string	"U"
	.byte	0x1
	.byte	0x16
	.byte	0x40
	.long	0x408
	.byte	0x10
	.uleb128 0x16
	.string	"V"
	.byte	0x1
	.byte	0x16
	.byte	0x47
	.long	0x408
	.byte	0x10
	.uleb128 0xc
	.long	0x3f
	.long	0x461
	.uleb128 0x15
	.long	0x31
	.value	0xffff
	.byte	0
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.byte	0x18
	.byte	0xd
	.long	0x450
	.byte	0x10
	.uleb128 0x16
	.string	"x"
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.long	0x408
	.byte	0x10
	.uleb128 0xe
	.long	.LASF63
	.byte	0x1
	.byte	0x1b
	.byte	0xd
	.long	0x3f
	.uleb128 0x14
	.string	"s"
	.byte	0x1
	.byte	0x1b
	.byte	0x13
	.long	0x3f
	.uleb128 0x16
	.string	"a"
	.byte	0x1
	.byte	0x1d
	.byte	0x2a
	.long	0x408
	.byte	0x10
	.uleb128 0x16
	.string	"b"
	.byte	0x1
	.byte	0x1d
	.byte	0x31
	.long	0x408
	.byte	0x10
	.uleb128 0x16
	.string	"c"
	.byte	0x1
	.byte	0x1d
	.byte	0x38
	.long	0x408
	.byte	0x10
	.uleb128 0x16
	.string	"d"
	.byte	0x1
	.byte	0x1d
	.byte	0x3f
	.long	0x408
	.byte	0x10
	.uleb128 0x16
	.string	"e"
	.byte	0x1
	.byte	0x1d
	.byte	0x46
	.long	0x408
	.byte	0x10
	.uleb128 0xc
	.long	0x3f
	.long	0x4dc
	.uleb128 0xd
	.long	0x31
	.byte	0xff
	.uleb128 0xd
	.long	0x31
	.byte	0xff
	.byte	0
	.uleb128 0x16
	.string	"aa"
	.byte	0x1
	.byte	0x1e
	.byte	0x24
	.long	0x4c6
	.byte	0x10
	.uleb128 0x16
	.string	"bb"
	.byte	0x1
	.byte	0x1e
	.byte	0x33
	.long	0x4c6
	.byte	0x10
	.uleb128 0x16
	.string	"cc"
	.byte	0x1
	.byte	0x1e
	.byte	0x42
	.long	0x4c6
	.byte	0x10
	.uleb128 0x16
	.string	"tt"
	.byte	0x1
	.byte	0x1e
	.byte	0x51
	.long	0x4c6
	.byte	0x10
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.byte	0x21
	.byte	0xd
	.long	0x408
	.byte	0x10
	.uleb128 0x14
	.string	"xx"
	.byte	0x1
	.byte	0x24
	.byte	0x1f
	.long	0x524
	.uleb128 0x5
	.byte	0x4
	.long	0x3f
	.uleb128 0x14
	.string	"yy"
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.long	0x524
	.uleb128 0x14
	.string	"arr"
	.byte	0x1
	.byte	0x26
	.byte	0xd
	.long	0x408
	.uleb128 0xe
	.long	.LASF65
	.byte	0x1
	.byte	0x27
	.byte	0xc
	.long	0x3f
	.uleb128 0x18
	.long	.LASF71
	.byte	0x1
	.byte	0x29
	.byte	0x5
	.long	0x3f
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x19
	.long	.Ldebug_ranges0+0
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x2f
	.byte	0xc
	.long	0x3f
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x20
	.uleb128 0x1a
	.string	"j"
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.long	0x3f
	.long	.LLST1
	.long	.LVUS1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 .LVU3
	.uleb128 .LVU5
.LLST0:
	.long	.LVL0-.Ltext0
	.long	.LVL1-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LVUS1:
	.uleb128 .LVU5
	.uleb128 .LVU7
	.uleb128 .LVU12
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST1:
	.long	.LVL1-.Ltext0
	.long	.LVL2-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL3-.Ltext0
	.long	.LVL4-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0xfd
	.byte	0x9f
	.long	.LVL4-.Ltext0
	.long	.LVL5-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0xfe
	.byte	0x9f
	.long	.LVL5-.Ltext0
	.long	.LVL6-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.long	.LVL6-.Ltext0
	.long	.LFE0-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB2-.Ltext0
	.long	.LBE2-.Ltext0
	.long	.LBB5-.Ltext0
	.long	.LBE5-.Ltext0
	.long	.LBB6-.Ltext0
	.long	.LBE6-.Ltext0
	.long	0
	.long	0
	.long	.LBB3-.Ltext0
	.long	.LBE3-.Ltext0
	.long	.LBB4-.Ltext0
	.long	.LBE4-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"__off_t"
.LASF16:
	.string	"_IO_read_ptr"
.LASF28:
	.string	"_chain"
.LASF8:
	.string	"size_t"
.LASF66:
	.ascii	"GNU C11 8.4.0 -m32 -msse4.2 -mtune=generic -march=i686 -g -g"
	.ascii	" -O3 -std=c11 -fdata-sections -fno-pie -fno-strict-overflow "
	.ascii	"-fno-unit-at-a-time -fno-strict-aliasing -fno-optimize-sibli"
	.ascii	"ng-calls -fkeep-inline-functions -fwrapv -fno-reorder-blocks"
	.ascii	" -fno-jump-tables -fno-caller-saves -fno-inline -fno-inline-"
	.ascii	"functions -fno-inline-small-functions -fno-indirect-inlining"
	.ascii	" -fno-partial-inlining -fno-inline-functions-called-once -fn"
	.ascii	"o-early-inlining -fno-whole-program -fno-ipa-sra -fno-ipa-cp"
	.ascii	" -fcf-protection=none -fno-stack-protector -fno-stack-clash-"
	.ascii	"protection -fno-builtin-printf -fno-builtin-malloc -fno-buil"
	.ascii	"tin-abort -fno-builtin-exit -fno-builtin-fscanf -fno-builtin"
	.ascii	"-abs -fno-builtin-acos -fno-builtin-asin -fno-builtin-atan2 "
	.ascii	"-fno-builtin-atan -fno-builtin-calloc -fno-builtin-ceil -fno"
	.ascii	"-builtin-cosh -fno-builtin-cos -fno-builtin-exp -fno-builtin"
	.ascii	"-fabs -fno-builtin-floor -fno-builtin-fmod -fno-builtin-fpri"
	.ascii	"ntf -fno-builtin-fputs -fno-builtin-frexp -fno-builtin-isaln"
	.ascii	"um -fno-builtin-isalpha -fno-builtin-iscntrl -fno-builtin-is"
	.ascii	"digit -fno-builtin-isgraph -fno-builtin-islower -fno-builtin"
	.ascii	"-isprint -fno-builtin-ispunct -fno-builtin-isspace -fno-buil"
	.ascii	"tin-isupper -fno-builtin-isxdigit -fno-builtin-tolower -fno-"
	.ascii	"builtin-toupper -fno-builtin-labs -fno-builtin-ldexp -fno-bu"
	.ascii	"iltin-log10 -fno-builtin-log -fno-builtin-memchr -fno-builti"
	.ascii	"n-memcmp -fno-builtin-memcpy -fno-builtin-memset -fno-builti"
	.ascii	"n-modf -fno-builtin-pow -fno-builtin-putchar -fno-builtin-pu"
	.ascii	"ts -fno-builtin-scanf -fno-builtin-sinh -fno-builtin-sin -fn"
	.ascii	"o-builtin-snprintf -fno-builtin-sprintf -fno-builtin-sqrt -f"
	.ascii	"no-builtin-sscanf -fno-builtin-strcat -fno-builtin-strchr -f"
	.ascii	"no-builtin-strcmp -fno-builtin-strcpy -fno-builtin-strcspn -"
	.ascii	"fno-builtin-strlen -fno-builtin-strncat -fno-builtin-strncmp"
	.ascii	" -fno-builtin-strncpy -fno-builtin-strpbrk -fno-builtin-strr"
	.ascii	"chr -fno-builtin-strspn -fno-builtin-strstr -fno-builtin-tan"
	.ascii	"h -fno-builtin-tan -fno-builtin-vfprintf -fno-builtin-vsprin"
	.ascii	"tf -fno-builtin -fno-tree-tail-merge --param max-tail-merge-"
	.ascii	"comparisons=0 --para"
	.string	"m max-tail-merge-iterations=0 -fasynchronous-unwind-tables"
.LASF34:
	.string	"_shortbuf"
.LASF22:
	.string	"_IO_buf_base"
.LASF10:
	.string	"long long unsigned int"
.LASF9:
	.string	"__int64_t"
.LASF37:
	.string	"_codecvt"
.LASF53:
	.string	"__timezone"
.LASF67:
	.string	"/home/sbansal/superopt-project/superopt-tests/TSVC_new/s119.c"
.LASF6:
	.string	"signed char"
.LASF55:
	.string	"_Float128"
.LASF29:
	.string	"_fileno"
.LASF17:
	.string	"_IO_read_end"
.LASF59:
	.string	"__realloc_hook"
.LASF1:
	.string	"long int"
.LASF15:
	.string	"_flags"
.LASF23:
	.string	"_IO_buf_end"
.LASF32:
	.string	"_cur_column"
.LASF2:
	.string	"long long int"
.LASF31:
	.string	"_old_offset"
.LASF36:
	.string	"_offset"
.LASF62:
	.string	"array"
.LASF63:
	.string	"temp"
.LASF56:
	.string	"__morecore"
.LASF45:
	.string	"_IO_marker"
.LASF48:
	.string	"stdin"
.LASF57:
	.string	"__free_hook"
.LASF0:
	.string	"unsigned int"
.LASF40:
	.string	"_freeres_buf"
.LASF5:
	.string	"long unsigned int"
.LASF20:
	.string	"_IO_write_ptr"
.LASF4:
	.string	"short unsigned int"
.LASF24:
	.string	"_IO_save_base"
.LASF64:
	.string	"indx"
.LASF35:
	.string	"_lock"
.LASF65:
	.string	"val_s"
.LASF30:
	.string	"_flags2"
.LASF42:
	.string	"_mode"
.LASF49:
	.string	"stdout"
.LASF54:
	.string	"ptrdiff_t"
.LASF58:
	.string	"__malloc_hook"
.LASF14:
	.string	"long double"
.LASF21:
	.string	"_IO_write_end"
.LASF70:
	.string	"_IO_lock_t"
.LASF69:
	.string	"_IO_FILE"
.LASF52:
	.string	"__daylight"
.LASF27:
	.string	"_markers"
.LASF3:
	.string	"unsigned char"
.LASF7:
	.string	"short int"
.LASF47:
	.string	"_IO_wide_data"
.LASF68:
	.string	"/home/sbansal/superopt-project/superopt-tests/build/TSVC_new"
.LASF60:
	.string	"__memalign_hook"
.LASF33:
	.string	"_vtable_offset"
.LASF44:
	.string	"FILE"
.LASF13:
	.string	"char"
.LASF61:
	.string	"__after_morecore_hook"
.LASF46:
	.string	"_IO_codecvt"
.LASF12:
	.string	"__off64_t"
.LASF71:
	.string	"s119"
.LASF18:
	.string	"_IO_read_base"
.LASF26:
	.string	"_IO_save_end"
.LASF41:
	.string	"__pad5"
.LASF43:
	.string	"_unused2"
.LASF50:
	.string	"stderr"
.LASF25:
	.string	"_IO_backup_base"
.LASF39:
	.string	"_freeres_list"
.LASF38:
	.string	"_wide_data"
.LASF51:
	.string	"__tzname"
.LASF19:
	.string	"_IO_write_base"
	.ident	"GCC: (Ubuntu 8.4.0-3ubuntu2) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
