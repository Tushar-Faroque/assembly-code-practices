
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [29] 
MOV AL,52h
MOV AH,15H
ADD AH,AL

CMP AH,0
JZ L1
JNZ L2

L1:
   MOV DL,AH
   JMP EXIT
L2:
   MOV DH,AH
   JMP EXIT
EXIT:
   MOV AH,4CH
   INT 21H

ret




