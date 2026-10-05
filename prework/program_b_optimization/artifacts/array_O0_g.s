	.text
	.file	"array_transform.c"
	.file	0 "/home/roy/compiler-lab/prework" "/home/roy/compiler-lab/prework/program_b_optimization/src/array_transform.c" md5 0x253a3e79462fd930358b2d99fd4fc2ef
	.file	1 "/usr/lib/llvm-14/lib/clang/14.0.0/include" "stddef.h" md5 0x2499dd2361b915724b073282bea3a7bc
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.file	2 "program_b_optimization/src" "array_transform.c" md5 0x253a3e79462fd930358b2d99fd4fc2ef
	.loc	2 40 0                          # program_b_optimization/src/array_transform.c:40:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp0:
	.loc	2 41 9 prologue_end             # program_b_optimization/src/array_transform.c:41:9
	movl	$1000000, -20(%rbp)             # imm = 0xF4240
.Ltmp1:
	.loc	2 42 14                         # program_b_optimization/src/array_transform.c:42:14
	cmpl	$1, -8(%rbp)
.Ltmp2:
	.loc	2 42 9 is_stmt 0                # program_b_optimization/src/array_transform.c:42:9
	jle	.LBB0_2
# %bb.1:
.Ltmp3:
	.loc	2 42 28                         # program_b_optimization/src/array_transform.c:42:28
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	.loc	2 42 23                         # program_b_optimization/src/array_transform.c:42:23
	callq	atoi@PLT
	.loc	2 42 21                         # program_b_optimization/src/array_transform.c:42:21
	movl	%eax, -20(%rbp)
.Ltmp4:
.LBB0_2:
	.loc	2 43 11 is_stmt 1               # program_b_optimization/src/array_transform.c:43:11
	cmpl	$0, -20(%rbp)
.Ltmp5:
	.loc	2 43 9 is_stmt 0                # program_b_optimization/src/array_transform.c:43:9
	jg	.LBB0_4
# %bb.3:
.Ltmp6:
	.loc	2 43 17                         # program_b_optimization/src/array_transform.c:43:17
	movl	$2, -4(%rbp)
	jmp	.LBB0_9
.Ltmp7:
.LBB0_4:
	.loc	2 44 35 is_stmt 1               # program_b_optimization/src/array_transform.c:44:35
	movslq	-20(%rbp), %rdi
	.loc	2 44 33 is_stmt 0               # program_b_optimization/src/array_transform.c:44:33
	shlq	$2, %rdi
	.loc	2 44 14                         # program_b_optimization/src/array_transform.c:44:14
	callq	malloc@PLT
	.loc	2 44 10                         # program_b_optimization/src/array_transform.c:44:10
	movq	%rax, -32(%rbp)
	.loc	2 45 35 is_stmt 1               # program_b_optimization/src/array_transform.c:45:35
	movslq	-20(%rbp), %rdi
	.loc	2 45 33 is_stmt 0               # program_b_optimization/src/array_transform.c:45:33
	shlq	$2, %rdi
	.loc	2 45 14                         # program_b_optimization/src/array_transform.c:45:14
	callq	malloc@PLT
	.loc	2 45 10                         # program_b_optimization/src/array_transform.c:45:10
	movq	%rax, -40(%rbp)
	.loc	2 46 35 is_stmt 1               # program_b_optimization/src/array_transform.c:46:35
	movslq	-20(%rbp), %rdi
	.loc	2 46 33 is_stmt 0               # program_b_optimization/src/array_transform.c:46:33
	shlq	$2, %rdi
	.loc	2 46 14                         # program_b_optimization/src/array_transform.c:46:14
	callq	malloc@PLT
	.loc	2 46 10                         # program_b_optimization/src/array_transform.c:46:10
	movq	%rax, -48(%rbp)
.Ltmp8:
	.loc	2 47 11 is_stmt 1               # program_b_optimization/src/array_transform.c:47:11
	cmpq	$0, -32(%rbp)
	.loc	2 47 19 is_stmt 0               # program_b_optimization/src/array_transform.c:47:19
	je	.LBB0_7
# %bb.5:
	.loc	2 47 24                         # program_b_optimization/src/array_transform.c:47:24
	cmpq	$0, -40(%rbp)
	.loc	2 47 32                         # program_b_optimization/src/array_transform.c:47:32
	je	.LBB0_7
# %bb.6:
	.loc	2 47 37                         # program_b_optimization/src/array_transform.c:47:37
	cmpq	$0, -48(%rbp)
.Ltmp9:
	.loc	2 47 9                          # program_b_optimization/src/array_transform.c:47:9
	jne	.LBB0_8
.LBB0_7:
.Ltmp10:
	.loc	2 47 53                         # program_b_optimization/src/array_transform.c:47:53
	movq	-32(%rbp), %rdi
	.loc	2 47 48                         # program_b_optimization/src/array_transform.c:47:48
	callq	free@PLT
	.loc	2 47 62                         # program_b_optimization/src/array_transform.c:47:62
	movq	-40(%rbp), %rdi
	.loc	2 47 57                         # program_b_optimization/src/array_transform.c:47:57
	callq	free@PLT
	.loc	2 47 71                         # program_b_optimization/src/array_transform.c:47:71
	movq	-48(%rbp), %rdi
	.loc	2 47 66                         # program_b_optimization/src/array_transform.c:47:66
	callq	free@PLT
	.loc	2 47 75                         # program_b_optimization/src/array_transform.c:47:75
	movl	$3, -4(%rbp)
	jmp	.LBB0_9
.Ltmp11:
.LBB0_8:
	.loc	2 48 16 is_stmt 1               # program_b_optimization/src/array_transform.c:48:16
	movq	-32(%rbp), %rdi
	.loc	2 48 19 is_stmt 0               # program_b_optimization/src/array_transform.c:48:19
	movq	-40(%rbp), %rsi
	.loc	2 48 22                         # program_b_optimization/src/array_transform.c:48:22
	movl	-20(%rbp), %edx
	.loc	2 48 5                          # program_b_optimization/src/array_transform.c:48:5
	callq	initialize
	.loc	2 49 15 is_stmt 1               # program_b_optimization/src/array_transform.c:49:15
	movq	-32(%rbp), %rdi
	.loc	2 49 18 is_stmt 0               # program_b_optimization/src/array_transform.c:49:18
	movq	-40(%rbp), %rsi
	.loc	2 49 21                         # program_b_optimization/src/array_transform.c:49:21
	movq	-48(%rbp), %rdx
	.loc	2 49 24                         # program_b_optimization/src/array_transform.c:49:24
	movl	-20(%rbp), %ecx
	.loc	2 49 5                          # program_b_optimization/src/array_transform.c:49:5
	callq	transform
	.loc	2 50 42 is_stmt 1               # program_b_optimization/src/array_transform.c:50:42
	movq	-48(%rbp), %rdi
	.loc	2 50 45 is_stmt 0               # program_b_optimization/src/array_transform.c:50:45
	movl	-20(%rbp), %esi
	.loc	2 50 33                         # program_b_optimization/src/array_transform.c:50:33
	callq	checksum
	movq	%rax, %rsi
	.loc	2 50 5                          # program_b_optimization/src/array_transform.c:50:5
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	.loc	2 51 10 is_stmt 1               # program_b_optimization/src/array_transform.c:51:10
	movq	-32(%rbp), %rdi
	.loc	2 51 5 is_stmt 0                # program_b_optimization/src/array_transform.c:51:5
	callq	free@PLT
	.loc	2 51 19                         # program_b_optimization/src/array_transform.c:51:19
	movq	-40(%rbp), %rdi
	.loc	2 51 14                         # program_b_optimization/src/array_transform.c:51:14
	callq	free@PLT
	.loc	2 51 28                         # program_b_optimization/src/array_transform.c:51:28
	movq	-48(%rbp), %rdi
	.loc	2 51 23                         # program_b_optimization/src/array_transform.c:51:23
	callq	free@PLT
	.loc	2 52 5 is_stmt 1                # program_b_optimization/src/array_transform.c:52:5
	movl	$0, -4(%rbp)
.LBB0_9:
	.loc	2 53 1                          # program_b_optimization/src/array_transform.c:53:1
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp12:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function initialize
	.type	initialize,@function
initialize:                             # @initialize
.Lfunc_begin1:
	.loc	2 24 0                          # program_b_optimization/src/array_transform.c:24:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.Ltmp13:
	.loc	2 25 14 prologue_end            # program_b_optimization/src/array_transform.c:25:14
	movl	$0, -24(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp14:
	.loc	2 25 21 is_stmt 0               # program_b_optimization/src/array_transform.c:25:21
	movl	-24(%rbp), %eax
	.loc	2 25 23                         # program_b_optimization/src/array_transform.c:25:23
	cmpl	-20(%rbp), %eax
.Ltmp15:
	.loc	2 25 5                          # program_b_optimization/src/array_transform.c:25:5
	jge	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp16:
	.loc	2 25 42                         # program_b_optimization/src/array_transform.c:25:42
	movl	-24(%rbp), %eax
	.loc	2 25 44                         # program_b_optimization/src/array_transform.c:25:44
	movl	$97, %ecx
	cltd
	idivl	%ecx
	.loc	2 25 35                         # program_b_optimization/src/array_transform.c:25:35
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	.loc	2 25 40                         # program_b_optimization/src/array_transform.c:25:40
	movl	%edx, (%rax,%rcx,4)
	.loc	2 25 57                         # program_b_optimization/src/array_transform.c:25:57
	movl	-24(%rbp), %eax
	.loc	2 25 59                         # program_b_optimization/src/array_transform.c:25:59
	movl	$31, %ecx
	cltd
	idivl	%ecx
	.loc	2 25 50                         # program_b_optimization/src/array_transform.c:25:50
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	.loc	2 25 55                         # program_b_optimization/src/array_transform.c:25:55
	movl	%edx, (%rax,%rcx,4)
.Ltmp17:
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	2 25 28                         # program_b_optimization/src/array_transform.c:25:28
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	.loc	2 25 5                          # program_b_optimization/src/array_transform.c:25:5
	jmp	.LBB1_1
.Ltmp18:
.LBB1_4:
	.loc	2 26 1 is_stmt 1                # program_b_optimization/src/array_transform.c:26:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp19:
.Lfunc_end1:
	.size	initialize, .Lfunc_end1-initialize
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function transform
	.type	transform,@function
transform:                              # @transform
.Lfunc_begin2:
	.loc	2 27 0                          # program_b_optimization/src/array_transform.c:27:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
.Ltmp20:
	.loc	2 32 14 prologue_end            # program_b_optimization/src/array_transform.c:32:14
	movl	$0, -32(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp21:
	.loc	2 32 21 is_stmt 0               # program_b_optimization/src/array_transform.c:32:21
	movl	-32(%rbp), %eax
	.loc	2 32 23                         # program_b_optimization/src/array_transform.c:32:23
	cmpl	-28(%rbp), %eax
.Ltmp22:
	.loc	2 32 5                          # program_b_optimization/src/array_transform.c:32:5
	jge	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp23:
	.loc	2 32 53                         # program_b_optimization/src/array_transform.c:32:53
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	.loc	2 32 58                         # program_b_optimization/src/array_transform.c:32:58
	shll	$1, %edi
	.loc	2 32 68                         # program_b_optimization/src/array_transform.c:32:68
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	.loc	2 32 66                         # program_b_optimization/src/array_transform.c:32:66
	addl	(%rax,%rcx,4), %edi
	.loc	2 32 40                         # program_b_optimization/src/array_transform.c:32:40
	callq	adjust_value
	movl	%eax, %edx
	.loc	2 32 33                         # program_b_optimization/src/array_transform.c:32:33
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	.loc	2 32 38                         # program_b_optimization/src/array_transform.c:32:38
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	2 32 28                         # program_b_optimization/src/array_transform.c:32:28
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	.loc	2 32 5                          # program_b_optimization/src/array_transform.c:32:5
	jmp	.LBB2_1
.Ltmp24:
.LBB2_4:
	.loc	2 34 1 is_stmt 1                # program_b_optimization/src/array_transform.c:34:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp25:
.Lfunc_end2:
	.size	transform, .Lfunc_end2-transform
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function checksum
	.type	checksum,@function
checksum:                               # @checksum
.Lfunc_begin3:
	.loc	2 35 0                          # program_b_optimization/src/array_transform.c:35:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp26:
	.loc	2 36 13 prologue_end            # program_b_optimization/src/array_transform.c:36:13
	movq	$0, -24(%rbp)
.Ltmp27:
	.loc	2 37 14                         # program_b_optimization/src/array_transform.c:37:14
	movl	$0, -28(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp28:
	.loc	2 37 21 is_stmt 0               # program_b_optimization/src/array_transform.c:37:21
	movl	-28(%rbp), %eax
	.loc	2 37 23                         # program_b_optimization/src/array_transform.c:37:23
	cmpl	-12(%rbp), %eax
.Ltmp29:
	.loc	2 37 5                          # program_b_optimization/src/array_transform.c:37:5
	jge	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp30:
	.loc	2 37 40                         # program_b_optimization/src/array_transform.c:37:40
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movslq	(%rax,%rcx,4), %rax
	.loc	2 37 37                         # program_b_optimization/src/array_transform.c:37:37
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	2 37 28                         # program_b_optimization/src/array_transform.c:37:28
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	2 37 5                          # program_b_optimization/src/array_transform.c:37:5
	jmp	.LBB3_1
.Ltmp31:
.LBB3_4:
	.loc	2 38 12 is_stmt 1               # program_b_optimization/src/array_transform.c:38:12
	movq	-24(%rbp), %rax
	.loc	2 38 5 is_stmt 0                # program_b_optimization/src/array_transform.c:38:5
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp32:
.Lfunc_end3:
	.size	checksum, .Lfunc_end3-checksum
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function adjust_value
	.type	adjust_value,@function
adjust_value:                           # @adjust_value
.Lfunc_begin4:
	.loc	2 20 0 is_stmt 1                # program_b_optimization/src/array_transform.c:20:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
.Ltmp33:
	.loc	2 21 15 prologue_end            # program_b_optimization/src/array_transform.c:21:15
	cmpl	$100, -8(%rbp)
.Ltmp34:
	.loc	2 21 9 is_stmt 0                # program_b_optimization/src/array_transform.c:21:9
	jle	.LBB4_2
# %bb.1:
.Ltmp35:
	.loc	2 21 35                         # program_b_optimization/src/array_transform.c:21:35
	movl	-8(%rbp), %eax
	.loc	2 21 41                         # program_b_optimization/src/array_transform.c:21:41
	subl	$3, %eax
	.loc	2 21 28                         # program_b_optimization/src/array_transform.c:21:28
	movl	%eax, -4(%rbp)
	jmp	.LBB4_3
.Ltmp36:
.LBB4_2:
	.loc	2 22 12 is_stmt 1               # program_b_optimization/src/array_transform.c:22:12
	movl	-8(%rbp), %eax
	.loc	2 22 5 is_stmt 0                # program_b_optimization/src/array_transform.c:22:5
	movl	%eax, -4(%rbp)
.LBB4_3:
	.loc	2 23 1 is_stmt 1                # program_b_optimization/src/array_transform.c:23:1
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp37:
.Lfunc_end4:
	.size	adjust_value, .Lfunc_end4-adjust_value
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%lld\n"
	.size	.L.str, 6

	.file	3 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	4 "/usr/include/x86_64-linux-gnu/bits" "stdint-intn.h" md5 0x55bcbdc3159515ebd91d351a70d505f4
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x197 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.byte	2                               # Abbrev [2] 0x23:0x8 DW_TAG_typedef
	.long	43                              # DW_AT_type
	.byte	4                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x2b:0x4 DW_TAG_base_type
	.byte	3                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x2f:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x30:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x34:0x52 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	6                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	365                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x43:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.byte	15                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x4e:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.byte	16                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	389                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x59:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.byte	18                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x64:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.byte	19                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	403                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x6f:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.byte	20                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	403                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x7a:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.byte	21                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	403                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x86:0x3f DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	8                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	6                               # Abbrev [6] 0x91:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.byte	19                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	403                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x9c:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.byte	20                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	403                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xa7:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.byte	18                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xb2:0x12 DW_TAG_lexical_block
	.byte	2                               # DW_AT_low_pc
	.long	.Ltmp18-.Ltmp13                 # DW_AT_high_pc
	.byte	7                               # Abbrev [7] 0xb8:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.byte	22                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xc5:0x4a DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	9                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.byte	6                               # Abbrev [6] 0xd0:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.byte	19                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	408                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xdb:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.byte	20                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	408                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xe6:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.byte	21                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	403                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xf1:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.byte	18                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0xfc:0x12 DW_TAG_lexical_block
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp24-.Ltmp20                 # DW_AT_high_pc
	.byte	7                               # Abbrev [7] 0x102:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.byte	22                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x10f:0x43 DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	10                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	369                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x11e:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.byte	21                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	408                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x129:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	18                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x134:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.byte	23                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	369                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x13f:0x12 DW_TAG_lexical_block
	.byte	6                               # DW_AT_low_pc
	.long	.Ltmp31-.Ltmp27                 # DW_AT_high_pc
	.byte	7                               # Abbrev [7] 0x145:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.byte	22                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x152:0x1b DW_TAG_subprogram
	.byte	7                               # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	14                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	365                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x161:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.byte	24                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x16d:0x4 DW_TAG_base_type
	.byte	7                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x171:0x8 DW_TAG_typedef
	.long	377                             # DW_AT_type
	.byte	13                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x179:0x8 DW_TAG_typedef
	.long	385                             # DW_AT_type
	.byte	12                              # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x181:0x4 DW_TAG_base_type
	.byte	11                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x185:0x5 DW_TAG_pointer_type
	.long	394                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x18a:0x5 DW_TAG_pointer_type
	.long	399                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x18f:0x4 DW_TAG_base_type
	.byte	17                              # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x193:0x5 DW_TAG_pointer_type
	.long	365                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x198:0x5 DW_TAG_pointer_type
	.long	413                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x19d:0x5 DW_TAG_const_type
	.long	365                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	104                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 14.0.0-1ubuntu1.1" # string offset=0
.Linfo_string1:
	.asciz	"/home/roy/compiler-lab/prework/program_b_optimization/src/array_transform.c" # string offset=39
.Linfo_string2:
	.asciz	"/home/roy/compiler-lab/prework" # string offset=115
.Linfo_string3:
	.asciz	"unsigned long"                 # string offset=146
.Linfo_string4:
	.asciz	"size_t"                        # string offset=160
.Linfo_string5:
	.asciz	"long long"                     # string offset=167
.Linfo_string6:
	.asciz	"main"                          # string offset=177
.Linfo_string7:
	.asciz	"int"                           # string offset=182
.Linfo_string8:
	.asciz	"initialize"                    # string offset=186
.Linfo_string9:
	.asciz	"transform"                     # string offset=197
.Linfo_string10:
	.asciz	"checksum"                      # string offset=207
.Linfo_string11:
	.asciz	"long"                          # string offset=216
.Linfo_string12:
	.asciz	"__int64_t"                     # string offset=221
.Linfo_string13:
	.asciz	"int64_t"                       # string offset=231
.Linfo_string14:
	.asciz	"adjust_value"                  # string offset=239
.Linfo_string15:
	.asciz	"argc"                          # string offset=252
.Linfo_string16:
	.asciz	"argv"                          # string offset=257
.Linfo_string17:
	.asciz	"char"                          # string offset=262
.Linfo_string18:
	.asciz	"n"                             # string offset=267
.Linfo_string19:
	.asciz	"a"                             # string offset=269
.Linfo_string20:
	.asciz	"b"                             # string offset=271
.Linfo_string21:
	.asciz	"c"                             # string offset=273
.Linfo_string22:
	.asciz	"i"                             # string offset=275
.Linfo_string23:
	.asciz	"sum"                           # string offset=277
.Linfo_string24:
	.asciz	"value"                         # string offset=281
	.section	.debug_str_offsets,"",@progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.long	.Linfo_string13
	.long	.Linfo_string14
	.long	.Linfo_string15
	.long	.Linfo_string16
	.long	.Linfo_string17
	.long	.Linfo_string18
	.long	.Linfo_string19
	.long	.Linfo_string20
	.long	.Linfo_string21
	.long	.Linfo_string22
	.long	.Linfo_string23
	.long	.Linfo_string24
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_begin1
	.quad	.Ltmp13
	.quad	.Lfunc_begin2
	.quad	.Ltmp20
	.quad	.Lfunc_begin3
	.quad	.Ltmp27
	.quad	.Lfunc_begin4
.Ldebug_addr_end0:
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym atoi
	.addrsig_sym malloc
	.addrsig_sym free
	.addrsig_sym initialize
	.addrsig_sym transform
	.addrsig_sym printf
	.addrsig_sym checksum
	.addrsig_sym adjust_value
	.section	.debug_line,"",@progbits
.Lline_table_start0:
