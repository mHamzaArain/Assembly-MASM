; ===================================================================================
;
; @auther Muhammad Hamza Hanif B18101067
; @date 15 july 2020
;
; Assignment 1
; Program to take 2 numbers from user & return whether num1 is greater than to num2
;
; ===================================================================================

dosseg                     ; Dos management: Manages the arrangement of directives
.model small               ; Model Directives: Specifies total memory(small: code <= 64kb & data <= 64kb)
.stack 100h                ; Stack segment Directives: Specifies the storage of stack(100h: 100 hex size)

.data
    smaller db "num1 is smaller than  num2$"
    equal   db "num1 is  equals to num2$"
    greater db "num1 is greater than num2$"

.code
    main proc
        ; Moves memory location of @data into  AX(Acculator 16 bit)
        ; Moves AX into data seg. of heap memory
        mov ax, @data
        mov ds, ax
        
        processing:
            ; Taking input num1
            mov ah, 1
            int 21h

            mov dl, al ; moving num1 value to dl(low bit data register) for input

            ; Taking input num2
            mov ah, 1
            int 21h

            ; Comparing input value & set value
            cmp dl, al
                jl smaller_case 
                jg greater_case

            ; equal case
            mov dx, offset equal
            mov ah, 9
            int 21h

            mov ah, 4ch
            int 21h

        jmp processing

        smaller_case:
            mov dx, offset smaller
            mov ah, 9
            int 21h

            mov ah, 4ch
            int 21h

        greater_case:
            mov dx, offset greater
            mov ah, 9
            int 21h

            mov ah, 4ch
            int 21h

    main endp
end main