
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [24]
MOV CL,10101101B
MOV A,CL

XOR CL,CL
MOV B,CL

ret
A DB ?
B DB ? 
C DB ?

