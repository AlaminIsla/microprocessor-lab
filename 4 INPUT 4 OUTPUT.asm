.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    mov ah, 1    ;INPUT 
    int 21h
    mov bl, al

    mov ah, 1       ; input 
    int 21h
    mov bh, al

    mov ah, 1      ;input 
    int 21h
    mov ch, al

    mov ah, 1      ;input
    int 21h
    mov dh, al

    mov ah, 2h    ;output 4
    mov dl, dh
    int 21h 
    
    
    mov ah, 2h     ;output 2
    mov dl, bh
    int 21h
    

    mov ah, 2h     ;output 3
    mov dl, ch
    int 21h

    

    mov ah, 2h    ;output 1
    mov dl, bl
    int 21h

   

    MAIN ENDP
    END MAIN
