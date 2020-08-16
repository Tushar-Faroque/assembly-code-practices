
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [19]
MOV CX,0
MOV CL,255
MOV A,CL
AND CL,7FH ;MSB
MOV B,CL

MOV CX,0
MOV CL,255
AND CL,0FEH ;LSB
MOV C,CL

ret
A DB ?
B DB ?
C DB ?

