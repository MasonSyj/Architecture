.section .text
.align 2
.global _start
_start: 
   mov r0, #3
   mov r1, r0, lsl #2
   bal _end

_end:
   b _end
