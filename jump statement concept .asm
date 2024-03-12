include 'emu8086.inc'
.model small
.stack 100h
.data

.code

main proc 
    jmp L2
    
    L1:
    printn 'hello world'
    
    jmp exit 
    
    L2:
    printn 'welcome'
    jmp L1
    
    exit:
    mov ah,4ch
    int 21h 
          
   main endp
    
end main 