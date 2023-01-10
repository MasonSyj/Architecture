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

   mov r0, #70
   mov r1, #60
   mov r2, #50
   mov r3, #40
   mov r4, #30
   mov r5, #20
   mov r6, #10
   mov r7, #250

   ldmdb r8!, {r0-r7}


   stmfd sp!, {r0-r7}

   mov r0, #70
   mov r1, #60
   mov r2, #50
   mov r3, #40
   mov r4, #30
   mov r5, #20
   mov r6, #10
   mov r7, #250

   ldmfd sp!, {r0-r7}

   b _end

_end:
   b _end   

.section .data
_data:
.word 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0


