include 'emu8086.inc'
.model small
.stack 100h
.data

.code

main proc 
    printn 'Enter a number:' 
    mov ah,1h
    int 21h
    mov bl,al 
    
    printn ' '
    
    printn 'Enter another number:'
    mov ah,1
    int 21h
    mov bh,al
    
    printn ' '
    
    printn 'The numbers are :'
    MOV AH,2
    MOV dl,bl
    int 21h
     print ' '
    MOV AH,2
    MOV dl,bh
    int 21h
    
   main endp
end main 