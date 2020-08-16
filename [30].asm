
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [30] 
MOV AL,14H
MOV AH,15H
ADD AH,AL
MOV A,AH

CMP AH,0
JP L1 ;EVEN PARITY
JNP L2 ;ODD PARITY

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
A DB ?
B DB ?
C DB ?

