.section .text
.align 2
.global _start
_start:
   mov r0, #4
   mov r1, #4
   bal _loop
	
_loop:
   lsl r0, r0, #16
   lsl r1, r1 #8
   udiv r2, r0, r1
   add r2, r2, r1
   lsr r2, r2, #1
   sub r3, r1, r2
   cmp r3, 0.0001
   blt _end
   mov r1, r2
   bal _loop

	
_end:
   b _end

