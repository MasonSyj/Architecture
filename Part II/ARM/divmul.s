.section .text
.align 2
.global _start
_start:

   mov r0, #0x180
   mov r1, #3
   lsl r1, #8
   mul r2, r0, r1
   lsr r2, #8
   
   mov r4, #6
   lsl r4, #8
   mul r3, r0, r4   
   lsr r3, #8

   bal _end

_end:
   b _end


