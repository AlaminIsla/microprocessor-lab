.MODEL SMALL
.STACK 100H
.DATA
 msg db "hello world $"
.CODE
MAIN PROC

mov AX, @data ;initialize data segment
mov DS, AX 

lea dx, msg    ; lea = load effective address
mov ah,9
int 21h
   

   

MAIN ENDP
END MAIN
