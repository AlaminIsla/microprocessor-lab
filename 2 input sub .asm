.MODEL SMALL
.STACK 100H
.DATA
 msg db  "Enter the fist  number: $"
 msg2 db 13,10, "Enter the second number:$"
msg3 db 10,13, "The difference is :$"
  
.CODE
MAIN PROC

mov AX, @data 
mov DS, AX 

lea dx, msg   
mov ah,9
int 21h

mov ah,1 
int 21h
mov bl,al

lea dx, msg2   
mov ah,9
int 21h

mov ah,1 
int 21h
mov bh,al


lea dx, msg3   
mov ah,9
int 21h  


sub bl,bh
add bl,48



mov ah,2
mov dl,bl
int 21h


MAIN ENDP
END MAIN
