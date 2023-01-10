.section .text
.align 2
.global _start
_start:
   mov r0, #5
   mov r2, #2
   mov r3, #3

_loop:
   cmp r0, #1
   beq _end
   sdiv r1, r0, r2
   lsl r1, r1, #1
   cmp r1, r0
   beq _div
   bne _mul

_div:
   lsr r0, r0, #1
   bal _loop

_mul:
   rsb r0, r0, r0, lsl #2
   add r0, r0, #1
   bal _loop
   
_end:
   b _end
