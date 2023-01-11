.section .text
.align 2
.global _start
_start:
   ldr r0, =_data
   mov r2, #0
   bl _loop
   b _end


_loop:
   ldr r1, [r0], #4
   cmp r1, #0x0
   moveq pc, lr
   add r2, r2, r1
   b _loop

_end:
   b _end


.section .data
_data:
.word 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0x0
