
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [13]
MOV AX,0F000H
MOV DS,AX
MOV AX,0FFFFH
MOV SI,AX
MOV BL,BYTE PTR DS:[SI]

MOV CX,8
L1:
   CMP CX,0
   JZ EXIT
L2:
   SHL BL,1  
   JNC L3
   DEC CX
   JMP L1
L3:
   INC DL
   DEC CX
   JMP L1

EXIT:
    MOV AH,4CH
    INT 21H  


ret




