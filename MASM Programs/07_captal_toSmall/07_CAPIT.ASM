; Program to convert capital to small
dosseg
.model small
.stack 100h
.data

.code
main proc
; Take character input
mov ah, 1 ; e.g; A
int 21h

; Add 32 (ASCII of A = 65, a = 97
                ; 97 - 65 = 32
add al, 32

; Print on screen
mov dl, al
mov ah, 2
int 21h

; Return ah register 
mov ah, 4ch
int 21h

main endp
end main
