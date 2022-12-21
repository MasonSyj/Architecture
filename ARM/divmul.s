.section .text
.align 2
.global _start
_start:

   mov r0, #0b11
   lsl r0, #8
   mov r1, #3
   lsl r1, #8
   mul r2, r0, r1
   lsr r2, #8
   
   bal _end

_end:
   b _end