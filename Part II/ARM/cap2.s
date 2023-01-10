.section .text
.align 2
.global _start

_start: 
   ldr r9,=_data
   ldr r0,[r9]
   bl _end
	
_end:
   mov r4, #0x30
   cmp r0, r4
   bne _isspace @'\0'
@   ldr r0, [r9, #4]!
@   cmp r0, r4
   beq _return0
@   bne _end

_isspace:
   mov r1, #0x20 
   cmp r0, r1 @' '
   beq _gta
   ldr r0, [r9, #4]!
   bal _end
	
_gta: @greater than 'a'
   ldr r0, [r9, #4]!
   mov r2, #0x61
   cmp r0, r2 @'a'
   bge _ltz
   ldr r0, [r9, #4]!
   bal _end
	
_ltz: @less than 'z'
   mov r3, #0x7a
   cmp r0, r3 @'z'
   ble _toupper
   ldr r0, [r9, #4]!
   bal _end

_toupper:
   mov r12, #0x41
   sub r12, r12, #0x61
   add r0, r0, r12
   ldr r0, [r9, #4]!
   bal _end
	
_return0:
   mov r7, #0
   swi 1
	
.section .data
_data:
@Hi I know how to code with ARM assembly
.word 0x48, 0x69, 0x20, 0x49, 0x20, 0x6B, 0x6E, 0x6F, 0x77, 0x20, 0x68, 0x6F, 0x77, 0x20, 0x74, 0x6F, 0x20, 0x63, 0x6F, 0x64, 0x65, 0x20, 0x77, 0x69, 0x74, 0x68, 0x20, 0x41, 0x52, 0x4D, 0x20, 0x61, 0x73, 0x73, 0x65, 0x6D, 0x62, 0x6C, 0x79@, 0x0A
	
