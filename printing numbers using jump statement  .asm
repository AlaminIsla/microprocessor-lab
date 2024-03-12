include 'emu8086.inc'
.model small
.stack 100h
.data

.code

main proc 
    jmp L3
    
    L1:
    print 'Enter a number :'
    mov ah,1 
    int 21h 
 
    mov bl,al
    
    printn ""
    
    
    L2:
    print 'Enter another number :'
     mov ah,1 
    int 21h
    mov bh,al
    printn ""    
    jmp L4
   
    L3:
   printn 'Welcome'
   jmp L1 
    
    L4:
   printn 'The numbers are:'
    mov ah,2
    mov dl,bl
    int 21h
    
     mov ah,2
    mov dl,bh
    int 21h
    
    jmp exit
   
    
    exit:
    mov ah,4ch
    int 21h 
          
   main endp
    
end main 