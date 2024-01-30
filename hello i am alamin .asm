.MODEL SMALL
.STACK 100H
.DATA
 msg db "hello $"
 sms db "i am a good boy $"
.CODE
MAIN PROC

mov AX, @data ;initialize data segment
mov DS, AX 

lea dx, msg    ; lea = load effective address
mov ah,9
int 21h

mov ah, 2  
mov dl, 0Dh
int 21h
mov dl, 0Ah
int 21h 

mov AX,@data
mov DS, AX

lea dx, sms
mov ah,9
int 21h
   

   

MAIN ENDP
END MAIN
