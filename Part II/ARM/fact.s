.section .text
.align 2
.global _start

_start:
   mov r0, #5
   mov r1, #1

_fact:
   cmp r0, #0
   beq _end
   mul r1, r0, r1
   sub r0, r0, #1
   b _fact

_end:
   b _end