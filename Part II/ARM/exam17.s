.section .text
.align 2
.global _start
_start:
   b _blue


_blue:    
        mov r0, #1
        bl  _green
        b   _red
        b   _yellow
        b   _blue

_yellow: mov r0, #2
        bl  _green

_red:  mov r0, #3
        mov pc, lr

_green:   mov r0, #4
        mov pc, lr
        b   _green
