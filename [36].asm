
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [36]
MOV CX,10
MOV BL,0
        
L1:
   MOV AL,BL
   INC BL
   ADD AL,48
   MOV DL,AL
   MOV AH,2
   INT 21H
   LOOP L1

ret




