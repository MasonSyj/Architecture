.section .text
.align 2
.global _start
_start:
   @ if r0 == 5, render r0 = r0 * 5
   @ r0 = r0 + r0 *4
   mov r0, #5
   add r0, r0, r0, lsl #2
   @ if r1 == 3, render r1 = r1 * 105
   @ 105 = 7 * 15
   @ r1 = r1 * 7 * 15
   mov r1, #3
   rsb r1, r1, r1, lsl #3
   rsb r1, r1, r1, lsl #4

   bal _end

_end:
   b _end
