
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; [18]
MOV BL,0
;MOV A,BL
OR BL,80H ;MSB
;MOV B,BL

MOV BL,0
OR BL,01H ;LSB
;MOV C,BL

ret
A DB ?
B DB ?
C DB ?

