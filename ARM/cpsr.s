.section .text
.align 2
.global _start
_start: 
   mov r0, #0x7fffffff
   mov r1, #1
   add r0, r0, r1
   mov r0, #0xffffffff
   add r0, r0, r1
   mov r2, #2
   cmp r1, r2
   mov r1, r2
   cmp r1, r2

   bal _end

_end:
   b _end
