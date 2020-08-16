
; You may customize this and other start-up templates;
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;[05]
MOV AX,0000H
MOV DS,AX
MOV AX,0000H
MOV BX,AX
MOV DL,BYTE PTR DS:[BX]

INC BX
MOV DH,BYTE PTR DS:[BX]

ADD DH,DL

INC BX
MOV DL,BYTE PTR DS:[BX]

ADD DH,DL
MOV AL,DH

MOV DX,0FFFFH
OUT DX,AL

ret
