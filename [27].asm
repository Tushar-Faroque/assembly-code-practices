
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [27]
MOV AL,0DAH
MOV A,AL

ROL AL,4
MOV B,AL

ret
A DB ?
B DB ? 
C DB ?

