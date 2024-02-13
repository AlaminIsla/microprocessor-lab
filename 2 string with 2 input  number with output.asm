.MODEL SMALL
.STACK 100H
.DATA
 msg db  "Enter a number: $"
 sms db 13,10,"Enter another Number: $"
 fnum db 13,10,"The first number is: $"
 snum db 13,10,"The second number is : $"
.CODE
MAIN PROC

mov AX, @data ;initialize data segment
mov DS, AX 

lea dx, msg    ; 
mov ah,9
int 21h

mov ah, 1
int 21h    
mov bl, al


mov AX,@data
mov DS, AX

lea dx, sms
mov ah,9
int 21h 

mov ah,1
int 21h
mov bh,al


lea dx,fnum   ;
mov ah,9
int 21h  

mov ah,2
mov dl,bl 
int 21h

lea dx,snum  ; 
mov ah,9
int 21h    

mov ah,2
mov dl,bh
int 21h





MAIN ENDP
END MAIN
