
opt101.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   x = 3;
   y = 4;
   x += 0;
   y += x;
   return 0;
}
   0:	e3a00000 	mov	r0, #0
   4:	e12fff1e 	bx	lr
