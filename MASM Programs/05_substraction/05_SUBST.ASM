;
dosseg
.model small
.stack 100h
.data

.code
main proc
; Substract 3-1 = 2
mov bl, 3   ; bl(Base low bit register)
mov cl, 1   ; cl(Counter low bit register)
sub bl, cl  ; bl(3) - cl(1) =bl(2)

add bl, 48  ; bl = 50

; Print on screen
mov dl, bl  ; Destined to dl(Data low bit register) for print
mov ah, 2
int 21h

; Return from ah register
mov ah, 4ch
int 21h

main endp
end main
