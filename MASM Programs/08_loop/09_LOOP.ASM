; Program to print from A-Z using loop
dosseg
.model small
.stack 100h
.data

.code
main proc
mov cx, 26  ; cx(Counter register exteded16-bits) & set value upto 26
mov dx, 65  ; dx(data exteded 16-bits) & set value upto 65(ASCII = A)

; Using loop to print 
la1:
        mov ah, 2
        int 21h

        inc dx
loop la1

; Return ah(Accumulator Register of high-8 bits)
mov ah, 4ch
int 21h

main endp
end main
