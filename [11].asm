
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [11]
MOV AL,102
MOV A,AL

MOV CX,8

L1:
    SHL AL,1
    ;MOV A,AL
    RCR BL,1
    ;MOV B,BL
    LOOP L1

MOV B,BL
CMP BL,A
JZ L2
JNZ L3

L2:
    LEA DX,ST1
    MOV AH,9
    INT 21H
    JMP EXIT
L3:
    LEA DX,ST2
    MOV AH,9
    INT 21H
    JMP EXIT
EXIT:
    MOV AH,4CH
    INT 21H

ret

ST1 DB "PALINDROME$"
ST2 DB "NOT PALINDROME$"
A DB ?
B DB ?


