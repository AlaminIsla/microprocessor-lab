.MODEL SMALL
.STACK 100H
.DATA
 msg db  "Enter A: $"
 msg2 db 13,10, "Enter B:$"
msg3 db 10,13, "After exchange A is : $"  
msg4 db 10,13, "After exchange b is: $"

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


mov bl,a
mov bh,b
mov a,bh
mov b,bl


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
