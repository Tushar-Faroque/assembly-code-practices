
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [10]
MOV CL,97 

AND CL,01H
JZ EVEN
JNZ ODD

EVEN:LEA DX,ST1
     MOV AH,9
     INT 21H
     JMP EXIT
    
ODD:LEA DX,ST2
    MOV AH,9
    INT 21H
    JMP EXIT
    
EXIT:MOV AH,4CH
     INT 21H        

ret

ST1 DB "It's Even$"
ST2 DB "It's Odd$"


