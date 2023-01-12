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
lsls r1,r1,#1
add r3,#1
addcs r2,r2,#1
cmp r3,#32
blt _loop
cmp r2,#1
ldrhi r7,=0xffff
ldreq r7,=0x0
mov pc, lr

_end:
   b _end
