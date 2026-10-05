	.text
	.file	"factorial.c"
	.globl	factorial                       # -- Begin function factorial
	.p2align	4, 0x90
	.type	factorial,@function
factorial:                              # @factorial
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jl	.LBB0_2
# %bb.1:
	cmpl	$12, -8(%rbp)
	jle	.LBB0_3
.LBB0_2:
	movl	$-1, -4(%rbp)
	jmp	.LBB0_7
.LBB0_3:
	movl	$2, -12(%rbp)
	movl	$1, -16(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-16(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_4
.LBB0_6:
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	factorial, .Lfunc_end0-factorial
	.cfi_endproc
                                        # -- End function
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	callq	getint@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	factorial
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	putint@PLT
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym factorial
	.addrsig_sym getint
	.addrsig_sym putint
