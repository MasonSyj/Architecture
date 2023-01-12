.section .text
.align 2
.global _start
_start:
   mov r0, #0
   mov r1, #0xff
   mov r2, #0xff
   mov r3, #0xff
   mov r4, #0xff

   cmp r3, r4

   subs r1, r0, r2

   cmp r3, r4
		
   subs r2, r0, r0
		
   cmp r3, r4

   movnes r1, r0

   cmp r3, r4	

   moveqs r1, r0

   cmp r3, r4	

   subs r0, r2, r1

   cmp r3, r4	

   movs r0, r1

   cmp r3, r4	

   subs r1, r2, r0

   cmp r3, r4	

   moveqs r0, r1

   cmp r3, r4	

   movs r1, r0
