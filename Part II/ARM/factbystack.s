.section .text
.align 2
.global _start
_start:
   mov r0, #6
   mov r1, #1
_loop:
   cmp r0, #0
   ldmfdeq sp!, {r0, lr}
   muleq r1, r0, r1
   moveq pc, lr

   sub r0, r0, #1
   stmfd sp!, {r0, lr}
   bl _loop
   ldmfdeq sp!, {r0, lr}
   muleq r1, r0, r1
   moveq, pc, lr

_mul:
   ldmfd {r0, lr}
   mul r1, r0, r1
   mov pc, lr
   
_end:
   b _end
