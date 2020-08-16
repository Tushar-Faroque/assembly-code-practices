
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [16]
MOV AL,26

AND AL,0FH
CMP AL,09H
JG L1
JNG L2
L1:
   LEA DX,ST1
   MOV AH,9
   INT 21H
   JMP EXIT
L2:
   LEA DX,ST2
   MOV AH,9
   INT 21H
   JMP EXIT
EXIT:
    MOV AH,4CH
    INT 21H

ret

ST1 DB "Greater than 9$"
ST2 DB "Less than 9$"

