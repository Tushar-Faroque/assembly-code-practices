
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [08]
MOV AX,0F000H
MOV DS,AX
MOV AX,0FFFEH
MOV BX,AX
MOV DL,BYTE PTR DS:[BX]

INC BX
MOV DH,BYTE PTR DS:[BX]

CMP DH,DL
JG L1
JL L2

L1:
   MOV AL,DH
   OUT 02H,AL
   JMP EXIT
L2:
   MOV AL,DL
   OUT 02H,AL
   JMP EXIT
EXIT:
   MOV AH,4CH
   INT 21H

ret




