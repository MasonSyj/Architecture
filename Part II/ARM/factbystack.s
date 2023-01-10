.section .text
.align 2
.global _start
_start:
   mov r0, #3
   mov r1, #1
   bl _loop
   b _end
   
_loop:
   cmp r0, #0
   beq _mul
   
   stmfd sp!, {r0, lr}
   sub r0, r0, #1
   bl _loop
   b _mul

_mul:
   ldmfd sp!, {r0, lr}
   mul r1, r0, r1
   mov pc, lr
   
_end:
   b _end
