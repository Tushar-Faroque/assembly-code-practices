
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;[01]
MOV AX,0000H
MOV DS,AX
MOV AX,0000H
MOV BX,AX
MOV DL,BYTE PTR DS:[BX]

MOV AX,0F000H
MOV DS,AX
MOV AX,0FFFFH
MOV BX,AX
MOV DH,BYTE PTR DS:[BX]

ADD DH,DL

DEC BX
MOV BYTE PTR DS:[BX],DH 

ret




