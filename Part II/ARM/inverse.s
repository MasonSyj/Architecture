.section .text
.align 2
.global _start
_start:
   mov r0, #4
   mov r1, #7
   mov r2, #2
   mov r3, #6
   mul r4, r0, r3
   mul r5, r1, r2
   sub r4, r4, r5
   lsl r4, #8
   mov r5, #1
   lsl r5, #16
   udiv r4, r5, r4

   mov r6, r3
   mvn r7, r1
   add r7, #1
   mvn r8, r2
   add r8, #1
   mov r9, r0

   lsl r6, #8 @ 24.8
   lsl r7, #8 @ 24.8 
   lsl r8, #8 @ 24.8
   lsl r9, #8 @ 24.8

   mul r6, r4, r6  
   mul r7, r4, r7  
   mul r8, r4, r8  
   mul r9, r4, r9

   lsr r6, #8 @ 24.8
   lsr r7, #8 @ 24.8 
   lsr r8, #8 @ 24.8
   lsr r9, #8 @ 24.8

   b _end

_end:
   b _end   
