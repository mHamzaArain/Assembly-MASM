; Program of addition
dosseg
.model small
.stack 100h
.data

.code
main proc
; Add 2 + 2 = 4
mov bl, 2  ; bl > Base low bit register 
mov cl, 2  ; cl > Counter low bit register

add bl, cl  ; bl=4
add bl, 48  ; bl=52 -> 4

mov dl, bl  ; Transfer value to dl(Data low bit register) from bl(Base low register)

; Display result from dl register on screen
mov ah, 2
int 21h

; Return form ah register after printing
mov ah, 4ch
int 21h

main endp
end main
