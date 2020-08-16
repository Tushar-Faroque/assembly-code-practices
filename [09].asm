
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [09]
MOV AL,25d

AND AL,80H
JZ POSITIVE
JNZ NEGATIVE

POSITIVE:
    LEA DX,ST1
    MOV AH,9
    INT 21H
    JMP EXIT
    
NEGATIVE:
    LEA DX,ST2
    MOV AH,9
    INT 21H
    JMP EXIT
    
EXIT:
    MOV AH,4CH
    INT 21H        

ret

ST1 DB "It's Positive$"
ST2 DB "It's Negative$"


