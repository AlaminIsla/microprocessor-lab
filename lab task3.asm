;take a number input n(suppose 7), using loop print the following sequence 7531

include "emu8086.inc"
.model 
.stack 100
.data
.code 
main proc 
  mov ah,1
  int 21h
  mov bl,al
  
   top:
   cmp bl,"0"
   jl exit 
  
  mov ah,2
  mov dl,bl
  int 21h
  
  dec bl
  dec bl
  
  
  jmp top
 

exit:
    mov ah, 4Ch     
    int 21h 
    