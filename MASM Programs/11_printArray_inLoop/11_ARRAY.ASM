; Program to print array using loop
dosseg
.model small
.stack 100h

.data
array db 1, 2, 3

.code
main proc
; Move memory location of @data into Ax(Accumulator 16-bits exteded)
; Move Ax into ds(data seg. register) get init. in heap
mov ax, @data
mov ds, ax

; si > Source Index Register: Used as pointer to access array
; offset >  access address from register 
mov si, offset array
mov cx, 3  ; Counter register set value to 3

l1:
        ; element of array moved in dx(Data 16-bits Extended Register)
        mov dx, [si]
        mov ah, 2
        int 21h

        inc si
loop l1

; Return from ah(Accumulator high bit) register
mov ah, 4ch
int 21h

main endp
end main
