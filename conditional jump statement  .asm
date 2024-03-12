include 'emu8086.inc'
.model small
.stack 100h
.data

.code

main proc 
   
    
   
    print 'Enter a number :'
    mov ah,1 
    int 21h 
    mov bl,al
    
    printn ""
    
    
   
    print 'Enter another number :'
     mov ah,1 
    int 21h
    mov bh,al
    printn ""    
    
   
    cmp bl,bh
    jg L1 
    
    jmp L2
    
    
    
    
    L1:
   printn 'The largest numbers is:'
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
                                                                                                                                                        
    L2:
     mov ah,2
    mov dl,bh
    int 21h
    
    jmp exit
   
    
    exit:
    mov ah,4ch
    int 21h 
          
   main endp
    
end main 