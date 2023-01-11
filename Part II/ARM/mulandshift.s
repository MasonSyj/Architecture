.section .text
.align 2
.global _start
_start:
   mov r0, #2
   mov r1, #3
   mul r2, r0, r1
   b _end

_end:
   b _end
