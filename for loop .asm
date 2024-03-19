;hello world
; enter an input -----
;the output is ------


include "emu8086.inc"
.model 
.stack 100
.data
.code 
main proc 
    
    
mov cx,2

l1:
printn "hello world "
print "Enter an input :"
mov ah,1
int 21h 
mov bl,al 

printn " "

printn "The output is " 
mov ah,2
mov dl,bl
int 21h 

loop l1:   