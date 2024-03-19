include 'emu8086.inc'
.model small
.stack 100h

.code
main proc
    print "Enter 1st number: "

    mov ah, 01h
    int 21h
    sub al, '0'    
    mov bh, al     

    print "Enter 2nd number: "

    mov ah, 01h
    int 21h
    sub al, '0'    
    mov bl, al     

    
    cmp bh, bl
    jl print_bh   
    jmp print_bl 

print_bh:
   
    mov dl, bh    
    add dl, '0'    
    mov ah, 02h    
    int 21h

    jmp exit

print_bl:
    
    mov dl, bl    
    add dl, '0'   
    mov ah, 02h    
    int 21h

exit:
   
    mov dl, 0Dh
    mov ah, 02h
    int 21h
    mov dl, 0Ah
    int 21h

    
    mov ah, 4Ch
    int 21h
main endp
end main
