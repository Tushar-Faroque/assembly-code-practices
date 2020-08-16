
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;[02]
IN AX,20H                          
MOV BH,AH
MOV BL,AL
ADD BL,BH

MOV AX,0F000H
MOV DS,AX
MOV AX,0FFFFH
MOV DI,AX
MOV BYTE PTR DS:[DI],BL

ret




