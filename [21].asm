
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [21]
MOV AL,10101101B
MOV A,AL

XOR AL,55H
MOV B,AL

ret
A DB ?
B DB ?
C DB ?

