 .section .text
.align 2
.global _start
_start:

   mov r0, #3
   tst r0, #1
   mov r0, #4
   tst r0, #1

   mov r0, #5
   add r0, r0, #5  @ r0 = 10
   add r1, r0, r0, lsl #4 @ r1 = 170 
   sub r1, r1, r1, lsr #2 @ r1 = 170 - 170 / 4 = 128
   rsb r1, r0, r1, lsr #1 @ r1 = 128 / 2 - 10 = 54
   
   mov r0, #3
   mov r1, #4
   and r0, r0, r1 @ r0 = 0
   and r0, r0, #3 @ r0 = 0
   mov r0, #3 
   and r0, r0, r0 @and op cal every bit (total 32) and make logical operation

   mov r0, #3
   orr r0, r0, r1 @ r0 = 7
   orr r0, r0, #5 @ r0 = 7
      
   mov r0, #3
   eor r0, r0, r1 @ r0 = 7
   eor r0, r0, r0 @ r0 = 0

   mov r0, #3
   bic r0, r0, #3
   mov r0, #3
   bic r0, r0, r1

   mov r0, #3
   mvn r0, #3 @ r0 = - (3 + 1)
   
   cmp r0, #3 @ change cpsr: 0xa0000010
   mov r0, #3
   cmn r0, #3 @ change cpsr: 0x10

   tst r0, #1 @ change cpsr: 0x10
   tst r0, #0 @ change cpsr: 0x40000010

   teq r0, #1
   teq r0, #0 @ change cpsr: 0x10

   clz r1, r0
   mov r0, #0xffff
   clz r1, r0


   
