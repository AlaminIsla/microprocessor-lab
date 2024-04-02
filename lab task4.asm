;write an assembly program display the n terms odd natural  numbers and their sum. input:3 output:9

include "emu8086.inc"
.model 
.stack 100
.data
.code 
main proc 
   mov bh,'0'
   mov bl, '1'
   mov cx,2
   top:
   mov ah,2
   mov dl,bl
   int 21h
   
   add bh,bl 
   sub bh,48
   
   inc bl
   inc bl
   
   loop top
   
   mov ah,2
   mov dl, bh
   int 21h

exit:
    mov ah, 4Ch     
    int 21h 
    