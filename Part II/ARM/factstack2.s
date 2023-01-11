.section .text
.align 2
.global _start
_start:
   mov r0, #5
   mov r1, #5
   bl _loop
   b _end

_loop:
   cmp r0, #0
   moveq pc, lr
   sub r0, r0, #1
   stmfd sp!, {r0, lr}
   bl _loop
   ldmeqfd sp!, {r0, lr}
   mul r1, r0, r1
   mov pc, lr

_end:
   b _end

