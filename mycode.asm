.MODEL SMALL 
.STACK 100H  
.DATA
.CODE
MAIN PROC
   mov ah, 1
   int 21h    
   mov bl, al
   
   mov ah,2
   mov dl,bl 
   int 21h
    
  mov ah,1
  int 21h
  mov bh,al
  
  mov ah,2
  mov dl,bh
  int 21h    
  
  
  
  
   
    
    
MAIN ENDP
END MAIN