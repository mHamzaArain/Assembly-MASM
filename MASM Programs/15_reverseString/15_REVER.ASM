; Program to print string in reverse 
dosseg
.model small
.stack 100h

.data
string db 'abc'

.code
main proc
; Moves memory location of @data into AX
; Moves AX into data seg. of heap memory
mov ax, @data
mov ds, ax

; SI(Source Index Register: Used pointer to access address)
; offset: Holds the single addresss of variable/array
mov si, offset string

; cx(Counter Register) set value of 3
mov cx, 3

ascending_push:
        mov bx, [si]
        push bx
        inc si

loop ascending_push

; To print array
mov cx, 3

descending_pop:
        pop dx
        mov ah, 2
        int 21h

loop descending_pop

; Return ah(Accumulator high bit register)
mov ah, 4ch
int 21h

main endp
end main
