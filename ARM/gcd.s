.section .text
.align 2
.global _start

_start:
   mov r0, #20
   mov r1, #15

_gcd:
   cmp r0, r1
   beq _end
   subgt r0, r0, r1
   sublt r1, r1, r0
   b _gcd

_end:
   b _end
