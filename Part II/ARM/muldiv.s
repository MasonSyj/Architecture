.section .text
.align 2
.global _start
_start:
   mov r0, #15
   mov r1, #3
   mov r4, #4
   mul r2, r0, r1
   udiv r3, r0, r1
   udiv r5, r0, r4

_end:
   bal _end
