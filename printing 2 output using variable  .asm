.MODEL SMALL
.STACK 100H
.DATA
 msg db  "Enter the fist  number: $"
 msg2 db 13,10, "Enter the second number:$"
msg3 db 10,13, "The first value: $"  
msg4 db 10,13, "The second value $"

a db ?
b db ?
  
.CODE
MAIN PROC

mov AX, @data 
mov DS, AX 

lea dx, msg   
mov ah,9
int 21h

mov ah,1 
int 21h
mov a,al

lea dx, msg2   
mov ah,9
int 21h

mov ah,1 
int 21h
mov b,al


lea dx, msg3   
mov ah,9
int 21h  


mov ah,2
mov dl,a
int 21h

lea dx, msg4   
mov ah,9
int 21h  

mov ah,2
mov dl,b
int 21h
MAIN ENDP
END MAIN
