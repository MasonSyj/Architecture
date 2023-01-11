.section .text
.align 2
.global _start
_start:
   ldr r0, =_repetition_number
   ldr r10, [r0] @ r10 = times, when times == 0, means 2 - 1 - 4 apperas enough times
   ldr r0, =_n
   ldr r1, [r0], #4  @    mov r0, n
   mov r2, #4
   mov r3, #1
   b _loop

_loop:
   cmp r1, #2
   bleq _cyclecheck
   tst r1, #1
   lsreq r1, r1, #1
   streq r1, [r0, #4]!
   beq _loop
   addne r1, r1, r1, lsl #1
   addne r1, r1, #1
   strne r1, [r0, #4]!
   bne _loop

_cyclecheck:
   ldr r4, [r0, #-4]
   cmp r2, r4
   movne pc, lr
   ldr r5, [r0, #-8]
   cmp r3, r5
   movne pc, lr
   sub r10, r10, #1
   cmp r10, #0
   beq _end
   mov pc, lr

_end:
   b _end

.section .data
_n:
.word 5 @ starting num is 3
_data:
.skip 100
_repetition_number:
.word 3 @if repeat 3 times, quit


@tst r0, #0x1 @if r0 is odd, return false; if r0 is even, return true;
