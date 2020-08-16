
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [22]
MOV BL,10101101B
MOV A,BL

XOR BL,0AAH
MOV B,BL

ret
A DB ?
B DB ?
C DB ?

