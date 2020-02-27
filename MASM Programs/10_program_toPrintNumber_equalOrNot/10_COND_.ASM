; Program to print input number is equal or not
dosseg
.model small
.stack 100h

.data
msg1 db 'Number is equal$'
msg2 db 'Number is not equal$'

.code
main proc
; Moves memory location of @data into the AX Register(16-bits)
; moves data address to dsso data seg. gets init. as heap to access variable fast
mov ax, @data
mov ds, ax

; Setting value 3 to dl for comparison
mov dl, '3'

; Taking input
mov ah, 1
int 21h

; Comparing input value & set value
cmp al, dl

; Jumps equals
je l1           

; If jump condition is not satisfied
mov dx, offset msg2
mov ah, 9
int 21h

mov ah, 4ch
int 21h

; If jump condition satisfied
l1:  
        mov dx, offset msg1
        mov ah, 9
        int 21h

        mov ah, 4ch
        int 21h

main endp
end main
