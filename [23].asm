
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [23]
MOV AL,11101101B
MOV A,AL

MOV CX,8

L1:
    SHL AL,1
    RCR BL,1
    LOOP L1

MOV B,BL
MOV AL,BL
MOV C,AL

ret
A DB ?
B DB ? 
C DB ?

