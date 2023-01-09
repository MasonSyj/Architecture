.section .text
.align 2
.global _start
_start:
   mov r0, #7
   mov r1, #6
   mov r2, #5
   mov r3, #4
   mov r4, #3
   mov r5, #2
   mov r6, #1
   mov r7, #0

   ldr r8,=_data
   stmia r8!, {r0-r7}
   ldmia r8!, {r0-r7}
@   stmia r8!, {r7-r0}
@   ldmia r8!, {r7-r0}
   stmfd sp!, {r0-r7}
   ldmfd sp!, {r0-r7}
   

.section .data
_data:
.word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0

