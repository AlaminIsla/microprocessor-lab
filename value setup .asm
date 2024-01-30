.MODEL SMALL       ; Define the memory model as small
.STACK 100H        ; Set the stack size to 100H (256 bytes)
.DATA              ; Begin the data segment

 msg db "Enter a number $"   ; Define a null-terminated string "Enter a number"
 sms db "This is your output  $"  ; Define another null-terminated string "This is your output"

.CODE              ; Begin the code segment
MAIN PROC          ; Start of the main procedure

mov AX, @data      ; Load the address of the data segment into AX
mov DS, AX         ; Initialize the data segment register with the address in AX

lea dx, msg        ; Load the effective address of the string "Enter a number" into DX
mov ah, 9          ; Set AH to 9 (display string function)
int 21h            ; Call interrupt 21h to display the string

mov ah, 2          ; Set AH to 2 (display character function)
mov dl, 0Dh        ; Set DL to 0Dh (carriage return)
int 21h            ; Call interrupt 21h to display a newline character
mov dl, 0Ah        ; Set DL to 0Ah (line feed)
int 21h            ; Call interrupt 21h to display another newline character

mov ah, 1          ; Set AH to 1 (input character function)
int 21h            ; Call interrupt 21h to get a character from the user
mov bl, al         ; Move the input character to register BL

mov ah, 2          ; Set AH to 2 (display character function)
mov dl, 0Dh        ; Set DL to 0Dh (carriage return)
int 21h            ; Call interrupt 21h to display a newline character
mov dl, 0Ah        ; Set DL to 0Ah (line feed)
int 21h            ; Call interrupt 21h to display another newline character

mov AX, @data      ; Load the address of the data segment into AX (redundant in this case)
mov DS, AX         ; Initialize the data segment register with the address in AX

lea dx, sms        ; Load the effective address of the string "This is your output" into DX
mov ah, 9          ; Set AH to 9 (display string function)
int 21h            ; Call interrupt 21h to display the string

mov ah, 2          ; Set AH to 2 (display character function)
mov dl, bl         ; Move the content of register BL to DL
int 21h            ; Call interrupt 21h to display the character stored in DL

MAIN ENDP          ; End of the main procedure
END MAIN           ; End of the program
