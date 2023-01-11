.global _start
.align 2
_start:
   ldr r0,=_data
   ldr r1,=_data2
   ldmia r1!, {r2-r4}
   mov r5, r1
   ldr r1,=_data2
   bl _loop
   b _end
	
_loop:
   ldmia r0, {r2-r4}
   stmia r1!, {r2-r4}
   cmp r1, r5
   moveq pc, lr
   bne _loop

_end:
   bal _end


.section .data
_data:
.word 0x50, 0x99, 0x40

.section .data
_data2:
.word 0x41, 0x52, 0x4D
