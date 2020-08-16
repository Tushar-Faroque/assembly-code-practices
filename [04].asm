
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [04]
MOV DX,0000H
IN AL,DX
MOV BL,AL

MOV DX,0FFFFH
IN AL,DX
MOV BH,AL

ADD BH,BL
MOV AL,BH

OUT 0FEH,AL

ret




