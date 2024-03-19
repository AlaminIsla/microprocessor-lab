include 'emu8086.inc'
.model small
.stack 100h

.data
    x db ?

.code
main proc
    print "Enter the value of x: $"

    mov ah, 01h    
    int 21h        
    mov bl, al      

    
    cmp bl, '0'
    je even
    cmp bl, '2'
    je even
    cmp bl, '4'
    je even
    cmp bl, '6'
    je even
    cmp bl, '8'
    je even

    
    print "This is odd"
    jmp exit

even:
    print "This is even"

exit:
    mov ah, 4Ch     
    int 21h
main endp
end main
