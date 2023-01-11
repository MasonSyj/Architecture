.section .text
.align 2
.global _start
_start:
   mov r0, #5
   sub r0, r0, #1
   ldr r1, =_data
   ldmia r1, {r5-r9}
   bl _firstloop
   b _display

_firstloop:
   cmp r0, #4
   pusheq {lr}
   cmp r0, #0
   popeq {pc}
   mov r6, r0
   bl _secondloop
   sub r0, r0, #1
   ldr r1, =_data
   b _firstloop

_secondloop:
   cmp r6, #0
   moveq pc, lr
   sub r6, r6, #1

   ldr r2, [r1]
   ldr r3, [r1, #4]
   cmp r2, r3

   stmleia r1, {r2, r3}
   addle r1, r1, #4
   ble _secondloop

   mov r4, r2
   mov r2, r3
   mov r3, r4
   stmia r1, {r2, r3}
   add r1, r1, #4
   b _secondloop

_display:
   ldr r1, =_data
   ldmia r1, {r5-r9}
   b _end


_end:
   b _end

.section .data
_data:
.word 5, 1, 4, 2, 8
