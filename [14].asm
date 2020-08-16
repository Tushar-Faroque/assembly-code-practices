
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [14]
MOV AL,2
MOV NUM,AL

SHL AL,1
MOV A,AL

SHL AL,1
MOV B,AL

SHL AL,1
MOV C,AL

SHL AL,1
MOV D,AL

ret
A DB ?
B DB ?
C DB ?
D DB ?
NUM DB ?

