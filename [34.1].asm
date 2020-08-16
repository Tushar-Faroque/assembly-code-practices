
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;[34 UnSigned]
MOV AX,0000H
MOV DS,AX
MOV AX,0000H
MOV BX,AX
MOV CL,BYTE PTR DS:[BX]

INC BX
MOV CH,BYTE PTR DS:[BX]

INC BX
MOV DH,BYTE PTR DS:[BX]

CMP CL,CH
JA L1
JB L2

L1:
   CMP CL,DH
   JA L3
   JB L4
L2:
   CMP CH,DH
   JA L5
   JB L4
L3:
   MOV DL,CL
   JMP EXIT
L4:
   MOV DL,DH
   JMP EXIT
L5:
   MOV DL,CH
   JMP EXIT
EXIT:
   MOV AH,4CH
   INT 21H

ret




