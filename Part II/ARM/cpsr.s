.section .text
.align 2
.global _start
_start: 
   mov r0, #0x7fffffff
   adds r0, r0, #0x7fffffff @oVerflow
   mov r1, #1
   cmp r1, #1 @Z
   cmp r1, #2 @N
   cmp r1, #0 @C

   bal _end

_end:
   b _end
