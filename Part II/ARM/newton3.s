
newton3.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
#include <stdio.h>

int main(void){
   0:	e92d4810 	push	{r4, fp, lr}
   4:	e28db008 	add	fp, sp, #8
   8:	e24dd014 	sub	sp, sp, #20
   float y0 = 4;
   c:	e59f30cc 	ldr	r3, [pc, #204]	; e0 <main+0xe0>
  10:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   float w = 4;
  14:	e59f30c4 	ldr	r3, [pc, #196]	; e0 <main+0xe0>
  18:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   float y1 = 4;
  1c:	e59f30bc 	ldr	r3, [pc, #188]	; e0 <main+0xe0>
  20:	e50b3010 	str	r3, [fp, #-16]
   do {
      y0 = y1;
  24:	e51b3010 	ldr	r3, [fp, #-16]
  28:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
      y1 = (y0 + w / y0) / 2;
  2c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
  30:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
  34:	ebfffffe 	bl	0 <__aeabi_fdiv>
  38:	e1a03000 	mov	r3, r0
  3c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
  40:	e1a00003 	mov	r0, r3
  44:	ebfffffe 	bl	0 <__aeabi_fadd>
  48:	e1a03000 	mov	r3, r0
  4c:	e3a01101 	mov	r1, #1073741824	; 0x40000000
  50:	e1a00003 	mov	r0, r3
  54:	ebfffffe 	bl	0 <__aeabi_fdiv>
  58:	e1a03000 	mov	r3, r0
  5c:	e50b3010 	str	r3, [fp, #-16]
      printf("%f\n", y1);   
  60:	e51b0010 	ldr	r0, [fp, #-16]
  64:	ebfffffe 	bl	0 <__aeabi_f2d>
  68:	e1a03000 	mov	r3, r0
  6c:	e1a04001 	mov	r4, r1
  70:	e1a02003 	mov	r2, r3
  74:	e1a03004 	mov	r3, r4
  78:	e59f0064 	ldr	r0, [pc, #100]	; e4 <main+0xe4>
  7c:	ebfffffe 	bl	0 <printf>
   }while (y1 * y1 - y0 > 0.001);
  80:	e51b1010 	ldr	r1, [fp, #-16]
  84:	e51b0010 	ldr	r0, [fp, #-16]
  88:	ebfffffe 	bl	0 <__aeabi_fmul>
  8c:	e1a03000 	mov	r3, r0
  90:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
  94:	e1a00003 	mov	r0, r3
  98:	ebfffffe 	bl	0 <__aeabi_fsub>
  9c:	e1a03000 	mov	r3, r0
  a0:	e1a00003 	mov	r0, r3
  a4:	ebfffffe 	bl	0 <__aeabi_f2d>
  a8:	e28f3028 	add	r3, pc, #40	; 0x28
  ac:	e893000c 	ldm	r3, {r2, r3}
  b0:	ebfffffe 	bl	0 <__aeabi_dcmpgt>
  b4:	e1a03000 	mov	r3, r0
  b8:	e3530000 	cmp	r3, #0
  bc:	1affffd8 	bne	24 <main+0x24>
  c0:	e3a03000 	mov	r3, #0
}
  c4:	e1a00003 	mov	r0, r3
  c8:	e24bd008 	sub	sp, fp, #8
  cc:	e8bd4810 	pop	{r4, fp, lr}
  d0:	e12fff1e 	bx	lr
  d4:	e1a00000 	nop			; (mov r0, r0)
  d8:	d2f1a9fc 	.word	0xd2f1a9fc
  dc:	3f50624d 	.word	0x3f50624d
  e0:	40800000 	.word	0x40800000
  e4:	00000000 	.word	0x00000000
