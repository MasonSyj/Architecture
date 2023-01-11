
opt1.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
int main(void){
   0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   4:	e28db000 	add	fp, sp, #0
   8:	e24dd00c 	sub	sp, sp, #12
   int x;
   int y;
   x = 3;
   c:	e3a03003 	mov	r3, #3
  10:	e50b3008 	str	r3, [fp, #-8]
   y = 4;
  14:	e3a03004 	mov	r3, #4
  18:	e50b300c 	str	r3, [fp, #-12]
   x += 0;
   y += x;
  1c:	e51b200c 	ldr	r2, [fp, #-12]
  20:	e51b3008 	ldr	r3, [fp, #-8]
  24:	e0823003 	add	r3, r2, r3
  28:	e50b300c 	str	r3, [fp, #-12]
   return 0;
  2c:	e3a03000 	mov	r3, #0
}
  30:	e1a00003 	mov	r0, r3
  34:	e28bd000 	add	sp, fp, #0
  38:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  3c:	e12fff1e 	bx	lr
