    .text
    .globl factorial
    .type factorial, @function
factorial:
    li      t0, 0
    blt     a0, t0, .Linvalid
    li      t0, 12
    blt     t0, a0, .Linvalid

    li      t0, 2
    li      t1, 1
.Lloop:
    blt     a0, t0, .Ldone
    mulw    t1, t1, t0
    addiw   t0, t0, 1
    j       .Lloop

.Ldone:
    mv      a0, t1
    ret

.Linvalid:
    li      a0, -1
    ret
    .size factorial, .-factorial

    .globl main
    .type main, @function
main:
    addi    sp, sp, -16
    sd      ra, 8(sp)
    call    getint
    call    factorial
    call    putint
    li      a0, 0
    ld      ra, 8(sp)
    addi    sp, sp, 16
    ret
    .size main, .-main

    .section .note.GNU-stack,"",@progbits
