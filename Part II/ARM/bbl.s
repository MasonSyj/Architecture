.section .text
.align 2
.global _start
_start:
   mov r0, #3
   bl _fun1
   b _fun2

   b _end
   

_fun1:
   add r0, r0, r0, lsl #2
   mov pc, lr

_fun2:
   add r0, r0, r0, lsl #3

_end:
   b _end
