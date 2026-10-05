	.text
	.file	"array_transform.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	movl	$1000000, -20(%rbp)             # imm = 0xF4240
	cmpl	$1, -8(%rbp)
	jle	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi@PLT
	movl	%eax, -20(%rbp)
.LBB0_2:
	cmpl	$0, -20(%rbp)
	jg	.LBB0_4
# %bb.3:
	movl	$2, -4(%rbp)
	jmp	.LBB0_9
.LBB0_4:
	movslq	-20(%rbp), %rdi
	shlq	$2, %rdi
	callq	malloc@PLT
	movq	%rax, -32(%rbp)
	movslq	-20(%rbp), %rdi
	shlq	$2, %rdi
	callq	malloc@PLT
	movq	%rax, -40(%rbp)
	movslq	-20(%rbp), %rdi
	shlq	$2, %rdi
	callq	malloc@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_7
# %bb.5:
	cmpq	$0, -40(%rbp)
	je	.LBB0_7
# %bb.6:
	cmpq	$0, -48(%rbp)
	jne	.LBB0_8
.LBB0_7:
	movq	-32(%rbp), %rdi
	callq	free@PLT
	movq	-40(%rbp), %rdi
	callq	free@PLT
	movq	-48(%rbp), %rdi
	callq	free@PLT
	movl	$3, -4(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	initialize
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	-20(%rbp), %ecx
	callq	transform
	movq	-48(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	checksum
	movq	%rax, %rsi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movq	-32(%rbp), %rdi
	callq	free@PLT
	movq	-40(%rbp), %rdi
	callq	free@PLT
	movq	-48(%rbp), %rdi
	callq	free@PLT
	movl	$0, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function initialize
	.type	initialize,@function
initialize:                             # @initialize
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
	movl	$0, -24(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax
	movl	$97, %ecx
	cltd
	idivl	%ecx
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-24(%rbp), %eax
	movl	$31, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB1_1
.LBB1_4:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	initialize, .Lfunc_end1-initialize
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function transform
	.type	transform,@function
transform:                              # @transform
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
	movl	$0, -32(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	shll	$1, %edi
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	addl	(%rax,%rcx,4), %edi
	callq	adjust_value
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB2_1
.LBB2_4:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	transform, .Lfunc_end2-transform
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function checksum
	.type	checksum,@function
checksum:                               # @checksum
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movslq	(%rax,%rcx,4), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_1
.LBB3_4:
	movq	-24(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	checksum, .Lfunc_end3-checksum
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function adjust_value
	.type	adjust_value,@function
adjust_value:                           # @adjust_value
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	cmpl	$100, -8(%rbp)
	jle	.LBB4_2
# %bb.1:
	movl	-8(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_3
.LBB4_2:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_3:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	adjust_value, .Lfunc_end4-adjust_value
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%lld\n"
	.size	.L.str, 6

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
