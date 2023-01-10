.section .text
.align 2
.global _start
_start:
   mov r0, #0x8000000f
   asr r1, r0, #1
   lsr r2, r0, #1
   mov r3, #0xf
   asr r4, r3, #1
   lsr r5, r3, #1
 
   bal _end   

_end:
   b _end
