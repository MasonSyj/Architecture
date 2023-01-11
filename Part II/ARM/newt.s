.section .text
.align 2
.global _start
_start:
   mov r0, #4 @ yn
   mov r1, #4 @ w
   mov r5, #1 @ range
   lsl r5, #8 @ 16.8 value: 1
   lsr r5, #4 @ 16.8 value: 0.0625
   lsl r1, #8 @ 16.16
   lsl r0, #16 @ 24.8
   bl _algo
   b _end

_algo:
   udiv r2, r0, r1 @ 16.8
   lsr r2, #1 @ 16.8
   mul r3, r2, r2 @ 16.16
   lsr r0, #8 @ yn: 24.8
   lsr r3, #8 @ 24.8: (yn + w / yn) * (1 / 2)
   sub r4, r3, r0 @r4: 24.8
   cmp r4, r5 
   movlt pc, lr
   mov r1, r4
   b _algo

_end:
   b _end

   
