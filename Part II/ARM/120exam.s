.section .text
.align 2
.global _start
_start:

   mov r1, #1
   mov r2, #0x0
   mov r3, #0x0
   mov r7, #0x5
   bl _loop

   mov r1, #4
   mov r2, #0x0
   mov r3, #0x0
   mov r7, #0x5
   bl _loop

   mov r1, #16
   mov r2, #0x0
   mov r3, #0x0
   mov r7, #0x5
   bl _loop

   mov r1, #7
   mov r2, #0x0
   mov r3, #0x0
   mov r7, #0x5
   bl _loop
   b _end
   
_loop:
sub r1,r1,#2
cmp r1,#2
addgt r3,r3,#1
bgt _loop
tst r3,#1
ldrne r7,=0x0
ldreq r7,=0xffff
mov pc, lr

_end:
   b _end
