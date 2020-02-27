; Program to take input from user and display on screen
dosseg
.model small
.stack 100h
.data

.code
main proc

; Taking input
mov ah, 1
int 21h

; Displaying input character(Note: Input always stores in al register)
mov dl, al  ; Move value from al to dl
mov ah, 2
int 21h

; Return from ah register
mov ah, 4ch
int 21h


main endp
end main
