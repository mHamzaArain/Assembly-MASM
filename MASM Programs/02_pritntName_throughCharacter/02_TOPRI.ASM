; Program to print name thrugh characters
dosseg
.model small
.stack 100h
.data
.code

main proc
; Print a
mov dl, 'a'
mov ah, 2
int 21h

; Print l
mov dl, 'l'
mov ah, 2
int 21h

; Print i
mov dl, 'i'
mov ah, 2
int 21h

; Return from ah register after display
mov ah, 4ch
int 21h

main endp
end main
