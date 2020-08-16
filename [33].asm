
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [33] 
MOV AL,0B6H
MOV AH,0AAH
SHL AL,4
SHL AH,4
MOV B,AL
MOV C,AH
ADD AL,AH

JC L1
JNC L2

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
ST1 DB "AUX CARRY FOUND$"
ST2 DB "NOT FOUND$"
A DB ?
B DB ?
C DB ?
