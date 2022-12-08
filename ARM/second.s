.section .text
.align 2
.global _start
_start:

   mov r0, #9
   mov r3, #1
   BL loop
  
   
loop:
   mov r1, r0
   lsr r1, r1, #1
   lsl r1, r1, #1
   cmp r0,r1
   
   BNE odd
   
   BEQ even
   
   cmp r0, r3

   BEQ exit
   BAL loop
   BX LR
   
exit:
   mov r7, #1
   swi 1
even:
   lsr r0, r0, #1
   BX LR
   
odd:
   mov r2, #3
   mov r4, r0
   mul r0, r4, r2
   add r0, r0, #1
   BX LR
