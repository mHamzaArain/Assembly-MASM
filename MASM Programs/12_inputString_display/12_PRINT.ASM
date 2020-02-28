; Program to input string & display
dosseg
.model small
.stack 100h

.data
; size: 100, dup: duplicates ? 100 times
var1 db 100 dup('$')           

.code
main proc
; Moves memory location of @data into  AX
; Moves AX into data seg. of heap memory
mov ax, @data
mov ds, ax

; SI(Source Index Register: used pointer to access address)
; offset: Holds the single address of variable/array
mov si, offset var1

pressing_character:
        ; This allow to insert character in array untill [enter] pressed.

        ; Input a character
        mov ah, 1
        int 21h

        ; Compare character with enter(ASCII=13)
        ; Jumps equals to enter
        cmp al, 13
               je pressed_enter

        ; insert input character in array
        ; inc: Increment by 1
        mov [si], al
        inc si

jmp pressing_character

pressed_enter:
        ; Print all charactes when pressed [Enter].

        ; Moving each address of item in var1 to dx(Data 16-bits Extended)
        mov dx, offset var1

        ; Print string
        mov ah, 9                                
        int 21h

        ; Return from ah(Accumulator 16-bits register)
        mov ah, 4ch
        int 21h

main endp
end main
