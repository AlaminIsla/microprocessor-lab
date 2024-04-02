;demonstrate the odd numbers from 1 to 9 using loop

include "emu8086.inc"
.model 
.stack 100
.data
.code 
main proc 

 mov cx, 5
 
 mov bl,"1"
 
 for:
 mov ah,2
 mov dl,bl
 int 21h
 
 inc bl
 inc bl
 
 loop for


exit:
    mov ah, 4Ch     
    int 21h 
    