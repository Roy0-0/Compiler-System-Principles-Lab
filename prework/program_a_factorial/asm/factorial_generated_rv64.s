	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.file	"factorial.c"
	.globl	factorial                       # -- Begin function factorial
	.p2align	1
	.type	factorial,@function
factorial:                              # @factorial
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	li	a1, 0
	blt	a0, a1, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	lw	a0, -24(s0)
	li	a1, 13
	blt	a0, a1, .LBB0_3
	j	.LBB0_2
.LBB0_2:
	li	a0, -1
	sw	a0, -20(s0)
	j	.LBB0_7
.LBB0_3:
	li	a0, 2
	sw	a0, -28(s0)
	li	a0, 1
	sw	a0, -32(s0)
	j	.LBB0_4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	lw	a1, -28(s0)
	lw	a0, -24(s0)
	blt	a0, a1, .LBB0_6
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	lw	a0, -32(s0)
	lw	a1, -28(s0)
	mulw	a0, a0, a1
	sw	a0, -32(s0)
	lw	a0, -28(s0)
	addiw	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB0_4
.LBB0_6:
	lw	a0, -32(s0)
	sw	a0, -20(s0)
	j	.LBB0_7
.LBB0_7:
	lw	a0, -20(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	factorial, .Lfunc_end0-factorial
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	li	a0, 0
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	sw	a0, -20(s0)
	call	getint@plt
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	call	factorial
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	call	putint@plt
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym factorial
	.addrsig_sym getint
	.addrsig_sym putint
