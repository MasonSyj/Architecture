.section .text
.align 2
.global _start
_start:
	mov r0, #12
	mov r1, #16
	mov r3, #0
	
loop:
   mov r2, r1
   bl mod
   mov r0, r2
   cmp r3, r1
   beq exit
   bal loop
   
exit:
   mov r7, #1
   swi 1
   
mod:
   udiv r4, r0, r1
   mov r5, r4
   mul r4, r5, r1
   sub r1, r0, r4
   bx lr
