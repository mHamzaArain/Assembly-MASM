; Program to swap to numbers
dosseg
.model small
.stack 100h
.data

.code
main proc
mov ax, '1'  
mov bx, '2'  

; Insert in stack
push ax      ; Copies 1 to stack
push bx      ; Copies 2 to stack

; Take out from stack 
pop ax       ; Moves 2 from stack to dx
pop bx       ; Moves 1 from stack to bx

mov dx, ax
mov ah, 2
int 21h

mov dx, bx
mov ah, 2
int 21h

mov ah, 4ch
int 21h

main endp
end main
