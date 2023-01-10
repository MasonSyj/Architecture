.section .text
.align 2
.global _start
_start:
   mov r0, #5
   mov r1, #0
   push {r1}
   mov r1, #1
   b _fact

_fact:
   cmp r0, r1
   beq _dopop
   push {r0}
   sub r0, r0, #1
   b _fact

_dopop:
   pop {r2}
   cmp r2, #0
   beq _end
   mul r1, r2, r1
   b _dopop

_end:
   b _end
