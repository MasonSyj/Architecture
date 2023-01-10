.section .text
.align 2
.global _start
_start:
   mov r0, #4 @a
   mov r1, #7 @b
   mov r2, #2 @c
   mov r3, #6 @d

   mul r4, r3, r0
   mul r5, r1, r2
   sub r4, r4, r5
   mov r5, #1
   lsl r5, #16
   lsl r4, #8
   sdiv r4, r5, r4

   mov r7, r3 @d
   mvn r8, r1 @-b
   add r8, r8, #1
   mvn r9, r2 @-c
   add r9, r9, #1
   mov r10, r0 @a

   mul r5, r7, r10
   mul r6, r8, r9
   sub r5, r5, r6
   lsl r5, #8

   mul r4, r5, r4
   lsr r4, #8
   
