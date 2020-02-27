;Program to print character
dosseg                  ; DOS Management: Manages the arrangement segment of pragram
.model small            ; Model Directives: Specifies total memory
.stack 100h             ; Stack segment Directives: Specifies the storage of stack
.data                   ; Data Stack Directives
.code                   ; Code Management Directives


main proc      ; Main code starts here
mov dl, '1'     ;   Move '1' character into dl(Data Register)
mov ah, 2       ; Move data form dl(Data Register) to ah(Accumulator high bit Register)
int 21h         ; Hold preocess to display character

mov ah, 4ch     ; Return from ah(Accumulator high bit register)
int 21h         ; Holds process to return from ah
main endp           ; Main code ends here

end main                ; Whole program terminates here
