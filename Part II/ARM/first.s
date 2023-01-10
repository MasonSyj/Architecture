.section .text
.align 2
.global _start
_start:
   mov r8, #5
   mov r9, #6
   mov r10, r8
   mul r8, r10, r9
   ldr r0, =list
   ldr r1, [r0]
   ldr r2, [r0, #4]
   ldr r3, [r0, #8]
   ldr r4, [r0, #12]

   mov r10, r1
   mul r1, r10, r3
   mov r10, r2
   mul r2, r10, r4
   sub r1, r1, r2
   
   mov r7,#1
   swi 0
   



.data
list:
   .word 5, 9, 4, 2
