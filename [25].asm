
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [25]
MOV AL,0EDH
MOV A,AL

AND AL,0AAH
MOV B,AL

ret
A DB ?
B DB ? 
C DB ?

