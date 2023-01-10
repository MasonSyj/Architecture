.section .text
.align 2
.global _start
_start:

   mov r0, #3
   mov r1, #4
   mul r0, r1, r0
   mul r0, r1, r0 @mul doesn't take shift or rotation.
   mla r0, r1, r0, r0

   
