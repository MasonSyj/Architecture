.section .text
.align 2
.global _start
_start:
   mov r0, #3
   rsb r0, r0, r0, lsl #4
   rsb r0, r0, r0, lsl #3
   b _end

_end:
   b _end
