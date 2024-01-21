	.file	"helloworld.c"
	.text
.Ltext0:
	.file 0 "/grade/student" "helloworld.c"
	.section	.rodata
	.align 32
.LC0:
	.string	"Hi! My name is "
	.zero	48
	.text
	.globl	main
	.type	main, @function
main:
.LASANPC0:
.LFB0:
	.file 1 "helloworld.c"
	.loc 1 4 34
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 6 11
	leaq	.LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc 1 7 17
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 7 9
	movl	%eax, -12(%rbp)
	.loc 1 8 5
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	leaq	stdin(%rip), %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	addq	$2147450880, %rcx
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L2
	movq	%rax, %rdi
	call	__asan_report_load8@PLT
.L2:
	movq	stdin(%rip), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	%ecx, %edi
	call	write@PLT
	.loc 1 9 12
	movl	$0, %eax
	.loc 1 10 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
.LC1:
	.string	"*.LC0"
.LC2:
	.string	"helloworld.c"
	.section	.data.rel.local,"aw"
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 64
.LASAN0:
	.quad	.LC0
	.quad	16
	.quad	64
	.quad	.LC1
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	0
	.text
	.type	_sub_D_00099_0, @function
_sub_D_00099_0:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_sub_D_00099_0, .-_sub_D_00099_0
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_sub_D_00099_0
	.text
	.type	_sub_I_00099_1, @function
_sub_I_00099_1:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init@PLT
	call	__asan_version_mismatch_check_v8@PLT
	movl	$1, %esi
	leaq	.LASAN0(%rip), %rax
	movq	%rax, %rdi
	call	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	_sub_I_00099_1, .-_sub_I_00099_1
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_sub_I_00099_1
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/unistd.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x324
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0xb
	.long	.LASF52
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x8
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
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x98
	.byte	0x12
	.long	0x5f
	.uleb128 0x4
	.long	.LASF10
	.byte	0x2
	.byte	0x99
	.byte	0x12
	.long	0x5f
	.uleb128 0xd
	.byte	0x8
	.uleb128 0x4
	.long	.LASF11
	.byte	0x2
	.byte	0xc2
	.byte	0x12
	.long	0x5f
	.uleb128 0x2
	.long	0x91
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0xe
	.long	0x91
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0xdc
	.byte	0x13
	.long	0x80
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0xd1
	.byte	0x1b
	.long	0x43
	.uleb128 0x2
	.long	0x8c
	.uleb128 0xf
	.long	.LASF53
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x224
	.uleb128 0x1
	.long	.LASF15
	.byte	0x33
	.byte	0x7
	.long	0x58
	.byte	0
	.uleb128 0x1
	.long	.LASF16
	.byte	0x36
	.byte	0x9
	.long	0x8c
	.byte	0x8
	.uleb128 0x1
	.long	.LASF17
	.byte	0x37
	.byte	0x9
	.long	0x8c
	.byte	0x10
	.uleb128 0x1
	.long	.LASF18
	.byte	0x38
	.byte	0x9
	.long	0x8c
	.byte	0x18
	.uleb128 0x1
	.long	.LASF19
	.byte	0x39
	.byte	0x9
	.long	0x8c
	.byte	0x20
	.uleb128 0x1
	.long	.LASF20
	.byte	0x3a
	.byte	0x9
	.long	0x8c
	.byte	0x28
	.uleb128 0x1
	.long	.LASF21
	.byte	0x3b
	.byte	0x9
	.long	0x8c
	.byte	0x30
	.uleb128 0x1
	.long	.LASF22
	.byte	0x3c
	.byte	0x9
	.long	0x8c
	.byte	0x38
	.uleb128 0x1
	.long	.LASF23
	.byte	0x3d
	.byte	0x9
	.long	0x8c
	.byte	0x40
	.uleb128 0x1
	.long	.LASF24
	.byte	0x40
	.byte	0x9
	.long	0x8c
	.byte	0x48
	.uleb128 0x1
	.long	.LASF25
	.byte	0x41
	.byte	0x9
	.long	0x8c
	.byte	0x50
	.uleb128 0x1
	.long	.LASF26
	.byte	0x42
	.byte	0x9
	.long	0x8c
	.byte	0x58
	.uleb128 0x1
	.long	.LASF27
	.byte	0x44
	.byte	0x16
	.long	0x23d
	.byte	0x60
	.uleb128 0x1
	.long	.LASF28
	.byte	0x46
	.byte	0x14
	.long	0x242
	.byte	0x68
	.uleb128 0x1
	.long	.LASF29
	.byte	0x48
	.byte	0x7
	.long	0x58
	.byte	0x70
	.uleb128 0x1
	.long	.LASF30
	.byte	0x49
	.byte	0x7
	.long	0x58
	.byte	0x74
	.uleb128 0x1
	.long	.LASF31
	.byte	0x4a
	.byte	0xb
	.long	0x66
	.byte	0x78
	.uleb128 0x1
	.long	.LASF32
	.byte	0x4d
	.byte	0x12
	.long	0x35
	.byte	0x80
	.uleb128 0x1
	.long	.LASF33
	.byte	0x4e
	.byte	0xf
	.long	0x4a
	.byte	0x82
	.uleb128 0x1
	.long	.LASF34
	.byte	0x4f
	.byte	0x8
	.long	0x247
	.byte	0x83
	.uleb128 0x1
	.long	.LASF35
	.byte	0x51
	.byte	0xf
	.long	0x257
	.byte	0x88
	.uleb128 0x1
	.long	.LASF36
	.byte	0x59
	.byte	0xd
	.long	0x72
	.byte	0x90
	.uleb128 0x1
	.long	.LASF37
	.byte	0x5b
	.byte	0x17
	.long	0x261
	.byte	0x98
	.uleb128 0x1
	.long	.LASF38
	.byte	0x5c
	.byte	0x19
	.long	0x26b
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF39
	.byte	0x5d
	.byte	0x14
	.long	0x242
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF40
	.byte	0x5e
	.byte	0x9
	.long	0x7e
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF41
	.byte	0x5f
	.byte	0xa
	.long	0xa9
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF42
	.byte	0x60
	.byte	0x7
	.long	0x58
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF43
	.byte	0x62
	.byte	0x8
	.long	0x270
	.byte	0xc4
	.byte	0
	.uleb128 0x4
	.long	.LASF44
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0xba
	.uleb128 0x10
	.long	.LASF54
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0x6
	.long	.LASF45
	.uleb128 0x2
	.long	0x238
	.uleb128 0x2
	.long	0xba
	.uleb128 0x7
	.long	0x91
	.long	0x257
	.uleb128 0x8
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	0x230
	.uleb128 0x6
	.long	.LASF46
	.uleb128 0x2
	.long	0x25c
	.uleb128 0x6
	.long	.LASF47
	.uleb128 0x2
	.long	0x266
	.uleb128 0x7
	.long	0x91
	.long	0x280
	.uleb128 0x8
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x11
	.long	.LASF55
	.byte	0x7
	.byte	0x8f
	.byte	0xe
	.long	0x28c
	.uleb128 0x2
	.long	0x224
	.uleb128 0x12
	.long	.LASF56
	.byte	0x3
	.value	0x17a
	.byte	0x10
	.long	0x9d
	.long	0x2b2
	.uleb128 0x5
	.long	0x58
	.uleb128 0x5
	.long	0x2b2
	.uleb128 0x5
	.long	0xa9
	.byte	0
	.uleb128 0x2
	.long	0x2b7
	.uleb128 0x13
	.uleb128 0x14
	.long	.LASF57
	.byte	0x1
	.byte	0x4
	.byte	0x5
	.long	0x58
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x322
	.uleb128 0x9
	.long	.LASF48
	.byte	0xe
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x9
	.long	.LASF49
	.byte	0x1a
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.long	.LASF50
	.byte	0x6
	.byte	0xb
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.long	.LASF51
	.byte	0x7
	.byte	0x9
	.long	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.long	.LASF58
	.byte	0x8
	.byte	0
	.long	0x43
	.uleb128 0x5
	.long	0x322
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	0x98
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x2
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"_IO_read_base"
.LASF17:
	.string	"_IO_read_end"
.LASF14:
	.string	"size_t"
.LASF53:
	.string	"_IO_FILE"
.LASF19:
	.string	"_IO_write_base"
.LASF23:
	.string	"_IO_buf_end"
.LASF9:
	.string	"__off_t"
.LASF51:
	.string	"count"
.LASF16:
	.string	"_IO_read_ptr"
.LASF41:
	.string	"__pad5"
.LASF4:
	.string	"unsigned int"
.LASF36:
	.string	"_offset"
.LASF13:
	.string	"ssize_t"
.LASF42:
	.string	"_mode"
.LASF10:
	.string	"__off64_t"
.LASF29:
	.string	"_fileno"
.LASF24:
	.string	"_IO_save_base"
.LASF2:
	.string	"unsigned char"
.LASF45:
	.string	"_IO_marker"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF55:
	.string	"stdin"
.LASF56:
	.string	"write"
.LASF26:
	.string	"_IO_save_end"
.LASF54:
	.string	"_IO_lock_t"
.LASF52:
	.string	"GNU C17 11.4.0 -mtune=generic -march=x86-64 -g -O0 -fsanitize=address -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF27:
	.string	"_markers"
.LASF57:
	.string	"main"
.LASF44:
	.string	"FILE"
.LASF30:
	.string	"_flags2"
.LASF31:
	.string	"_old_offset"
.LASF35:
	.string	"_lock"
.LASF58:
	.string	"strlen"
.LASF38:
	.string	"_wide_data"
.LASF12:
	.string	"char"
.LASF46:
	.string	"_IO_codecvt"
.LASF32:
	.string	"_cur_column"
.LASF22:
	.string	"_IO_buf_base"
.LASF11:
	.string	"__ssize_t"
.LASF33:
	.string	"_vtable_offset"
.LASF47:
	.string	"_IO_wide_data"
.LASF48:
	.string	"argc"
.LASF40:
	.string	"_freeres_buf"
.LASF43:
	.string	"_unused2"
.LASF28:
	.string	"_chain"
.LASF37:
	.string	"_codecvt"
.LASF21:
	.string	"_IO_write_end"
.LASF7:
	.string	"short int"
.LASF25:
	.string	"_IO_backup_base"
.LASF50:
	.string	"buffer"
.LASF15:
	.string	"_flags"
.LASF49:
	.string	"argv"
.LASF8:
	.string	"long int"
.LASF20:
	.string	"_IO_write_ptr"
.LASF39:
	.string	"_freeres_list"
.LASF6:
	.string	"signed char"
.LASF34:
	.string	"_shortbuf"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"helloworld.c"
.LASF1:
	.string	"/grade/student"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
