.section .text
.align 2
.global _start
_start:
   mov r0, #17

_loop:
   cmp r0, #1
   beq _end
   tst r0, #1
   lsreq r0, r0, #1
   beq _loop
   addne r0, r0, r0, lsl #1
   addne r0, r0, #1
   bne _loop

_end:
   b _end


@tst r0, #0x1 @if r0 is odd, return false; if r0 is even, return true;
