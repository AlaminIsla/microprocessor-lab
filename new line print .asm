.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    mov ah, 1     ;input
    int 21h
    mov bl, al

    mov ah, 1     ; input 
    int 21h
    mov bh, al

    mov ah, 1     ;input 
    int 21h
    mov ch, al

    mov ah, 1     ;input
    int 21h
    mov dh, al 
    
    mov ah, 2
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h 
     
    mov dl, 03h      ;love
    int 21h

    mov ah, 2h    ;output 4
    mov dl, dh
    int 21h 
    
    
    mov ah, 2h    ;output 2
    mov dl, bh
    int 21h
    

    mov ah, 2h    ;output 3
    mov dl, ch
    int 21h

    

    mov ah, 2h   ;output 1
    mov dl, bl
    int 21h    
    
     mov dl, 03h  ;love
    int 21h

   

    MAIN ENDP
    END MAIN
