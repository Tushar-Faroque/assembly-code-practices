
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [28]
MOV AL,0AAH
MOV A,AL

MOV CX,4
L1:
   SHR AL,1
   MOV B,AL
   RCR BL,1
   MOV C,BL
   LOOP L1

SHR BL,4
MOV C,BL

CMP AL,BL
JE L2
JNE EXIT

L2:
   LEA DX,ST1
   MOV AH,9
   INT 21H
   JMP EXIT
EXIT:
   MOV AH,4CH
   INT 21H

ret
A DB ?
B DB ? 
C DB ?
ST1 DB "EQUAL$"
