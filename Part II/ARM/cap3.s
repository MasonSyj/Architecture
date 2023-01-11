.section .text
.align 2
.global _start
_start: 
   mov r9,  #0x0A @ '\0' 
   mov r10, #0x20 @ ' '
   mov r11, #0x61 @ 'a'
   mov r12, #0x7A @ 'z'
   mov r8,  #0x41 @ 'A'
   sub r8, r8, r11
   ldr r0, =_data
   ldr r1, [r0, #4]!
   b _loop
   
   mov r13, r0 @
   ldr r0, =_data
   stmia r0!, {r1-r12}

_loop:
   cmp r1, r9 @ a[i] == '\0'
   beq _end

   ldr r2, [r0, #-4]
   cmp r2, r10 @ a[i - 1] == ' '
   ldrne r1, [r0, #4]!
   bne _loop

   cmp r1, r11  @ 'a'
   ldrlt r1, [r0, #4]! 
   blt _loop   

   cmp r1, r12 @ 'z'
   ldrgt r1, [r0, #4]!
   bgt _loop

   add r1, r1, r8 @ 'A' - 'a'
   ldr r1, [r0, #4]!
   b _loop

_end:
   b _end
   

.section .data
_data:
.word 0x48, 0x69, 0x20, 0x49, 0x20, 0x6B, 0x6E, 0x6F, 0x77, 0x20, 0x68, 0x6F, 0x77, 0x20, 0x74, 0x6F,0x20, 0x63, 0x6F, 0x64, 0x65, 0x20, 0x77, 0x69, 0x74, 0x68, 0x20, 0x41, 0x52, 0x4D, 0x20, 0x61, 0x73, 0x73, 0x65, 0x6D, 0x62, 0x6C, 0x79, 0x0A
