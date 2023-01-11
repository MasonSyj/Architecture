.section .text
.align 2
.global _start
_start:
   mov r0, #0xf0
   mov r1, #0x100
   cmp r0, r1
   movlt r0, #0xf0
   mov r1, #0xe0
   cmp r0, r1
   movlt r0, #0xf0
   b _end

_end:
   b _end
