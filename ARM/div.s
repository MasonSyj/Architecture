.section .text
.align 2
.global _start
_start:
   mov r0, #9
   mov r1, #6
   lsl r0, r0, #16
   lsl r1, r1, #8
   udiv r2, r0, r1
   
   mov r4, #36
   lsl r4, r4, #16
   mov r5, #5
   lsl r5, r5, #8
   udiv r3, r4,r5


_end:
   b _end
