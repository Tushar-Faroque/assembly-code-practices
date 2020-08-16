
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [32] 
MOV AX,15FAH
MOV BX,15BBH
ADD BX,AX
MOV A,BX

CMP BX,0
JO L1
JNO L2

L1:
   MOV DX,BX
   JMP EXIT
L2:
   MOV CX,BX
   JMP EXIT
EXIT:
   MOV AH,4CH
   INT 21H

ret
A DW ?
B DW ?
C DW ?

