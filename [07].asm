
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [07]                 
MOV AX,0F000H
MOV DS,AX
MOV AX,0FFFFH
MOV BX,AX
MOV DH,BYTE PTR DS:[BX]

MOV AX,0000H
MOV DS,AX
MOV AX,0000H
MOV BX,AX
MOV DL,BYTE PTR DS:[BX]

SUB DH,DL
MOV AL,DH

CMP AL,0
JGE VPORT
JL FPORT

VPORT:
    MOV DX,0FFFFH
    OUT DX,AL
FPORT:
    OUT 00H,AL
EXIT:
    MOV AH,4CH
    INT 21H     

ret




