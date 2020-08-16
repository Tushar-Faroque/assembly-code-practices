
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [26]
MOV CL,00H
MOV A,CL

OR CL,0AAH
MOV B,CL

ret
A DB ?
B DB ? 
C DB ?

