.section .text
.align 2
.global _start
_start:
   ldr r9, =_data
   ldmia r9!, {r0-r8}
   mov r9, r4
   mov r10, r5
   mov r11, r7
   mov r12, r8
   bl _twobytwo
   mul r0, r9, r0

   mov r9, r3
   mov r10, r5
   mov r11, r6
   mov r12, r8
   bl _twobytwo
   mul r1, r9, r1

   mov r9, r3
   mov r10, r4
   mov r11, r6
   mov r12, r7
   bl _twobytwo
   mul r2, r9, r2

   sub r0, r0, r1
   add r0, r0, r2

   b _end

   
_twobytwo:
   mul r9, r12, r9
   mul r10, r11, r10
   sub r9, r9, r10
   mov pc, lr

_end:
   b _end


.section .data
_data:
.word 6, 1, 1, 4, -2, 5, 2, 8, 7
