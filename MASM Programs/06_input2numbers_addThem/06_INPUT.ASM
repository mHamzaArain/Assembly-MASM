; Program to input 2 numbers and add them
dosseg
.model small
.stack 100h
.data

.code
main proc
; Taking input & save in bl(base low bit register)
mov ah, 1   ; e.g; al = 2 (in ASCII = 50)
int 21h

mov bl, al  ; bl = 2(50),  To take another input in same register

; Taking input & add into bl register
mov ah, 1   ; e.g; al =  3  (in ASCII = 51)
int 21h

add bl, al  ; bl(2=50) + al(3=51) = bl(5=101)

; Substracting to get exact ASCII code 
sub bl, 48  ; bl(5=53) - 48 = 53

; Display on screen
mov dl, bl
mov ah, 2
int 21h

; Return form from ah rwegister
mov ah, 4ch
int 21h

main endp
end main
