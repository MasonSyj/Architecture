.section .text
.align 2
.global _start
_start:

   @if
   mov r0, #3 @x
   mov r1, #4 @y
   cmp r0, r1 @ x == y
   addeq r0, r0, r1 @ x = x + y

   @if - else
   mov r0, #5 @x
   mov r1, #5 @y
   cmp r0, r1 @ x == y
   addne r0, r0, r0, lsl #1 @ if x != y, x = y * 3
   rsbeq r1, r0, r0, lsl #4 @ if x == y, y = x * 15

   @for loop
   mov r0, #0 @c
   mov r1, #4 @a
   mov r2, #9 @b
   bl _loop

   @do while
   mov r0, #5
   mov r1, #9
   bl _dowhile

   b _end
   

_loop:
   cmp r1, r2
   moveq pc, lr
   add r0, r0, #1
   add r1, r1, #1
   b _loop

_dowhile:
   add r0, r0, #1
   cmp r0, r1
   blt _dowhile
   movge pc, lr

_end:
   b _end


      

   
