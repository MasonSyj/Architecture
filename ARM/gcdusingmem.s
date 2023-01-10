.section .text
.align 2
.global _start
_start:
   ldr r4, =_data2
   ldmia r4, {r0-r2}
   add r0, r0, r0, lsl #1
   add r1, r1, r1, lsl #1
   add r2, r2, r2, lsl #1
   stmia r4, {r0-r2}
   mov r0, #0
   mov r1, #0
   mov r2, #0
   ldmia r4, {r0-r2}
   ldr r4, =_data
   b _loop

_loop:
   ldmia r4, {r0, r1}
   cmp r0, r1
   beq _end
   sublt r1, r1, r0
   subgt r0, r0, r1
   stmia r4, {r0, r1}
   b _loop

_end:
   b _end


.section .data
_data:
.word 34, 51

.section .data
_data2:
.word 0x34, 0x51, 0x53

