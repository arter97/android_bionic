/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(dup3)
    .set push
    .set noreorder
    li v0, __NR_dup3
    syscall
    bnez a3, 1f
    move a0, v0
    j ra
    nop
1:
    move t0, ra
    bal     2f
    nop
2:
    .cpsetup ra, t1, 2b
    LA t9,__set_errno_internal
    .cpreturn
    j t9
    move ra, t0
    .set pop
END(dup3)
