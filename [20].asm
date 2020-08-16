
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [20]
MOV BL,255
MOV A,BL

CMP BL,0
JS L1
JNS L2

L1:
   AND BL,7FH
   MOV B,BL
   JMP EXIT
L2:
   OR BL,80H
   MOV C,BL
   JMP EXIT
EXIT:
   MOV AH,4CH
   INT 21H

ret
A DB ?
B DB ?
C DB ?

