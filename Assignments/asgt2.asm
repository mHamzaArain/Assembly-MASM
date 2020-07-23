; ===================================================================================
;
; @auther Muhammad Hamza Hanif B18101067
; @date  20 July, 2020
;
; Assignment 2
; Program to take string then charater and return that how many times character appears
;
; ===================================================================================

dosseg                     ; Dos management: Manages the arrangement of directives
.model small               ; Model Directives: Specifies total memory(small: code <= 64kb & data <= 64kb)
.stack 100h                ; Stack segment Directives: Specifies the storage of stack(100h: 100 hex size)

.data                      ; Data Stack Directives
    ; size: 100, dup: duplicates ? 100 times
    var db 15 dup('$')  

.code
    main proc
        ; Moves AX into data seg. of heap memory
        mov ax, @data
        mov ds, ax

        ; SI(Source Index Register: used pointer to access address)
        ; offset: Holds the single address of variable/array
        mov si, offset var
        mov bl, 48


        ; Jumped from pressing_character
        pressing_character:
            ; This allow to insert character in array untill [enter] pressed.

            ; Input a character
            mov ah, 1          ; ah(Accumulator high bit), service routine = 1 for input
            int 21h            ; intrupt 21 for character input

            ; Compare character with enter(ASCII=13)
            ; Jumps equals to enter
            cmp al, 13
                je pressed_enter

            ; insert input character in array
            ; inc: Increment by 1
            mov [si], al       ; Inserting character through SI 
            inc si             ; moving index forward for next input     

        ; Firstly program run this jump
        jmp pressing_character

        ; Run only if above jump completed 
        mov cx, 15 ; cx(Counter register exteded16-bits) & set value upto 26
        pressed_enter:
            ; Print all charactes when pressed [Enter].
            
            ; Input a character 
            mov ah, 1          ; ah(Accumulator high bit), service routine = 1 for input
            int 21h            ; intrupt 21 for character input

            jmp check

        counter:
            dec bl, 1
            jmp check
        check:
            mov si, offset var
            l:
                cmp  al, [si]
                    je counter
                inc si
            loop l

            ; Display result from dl register on screen
            mov dl, bl

            mov ah, 2
            int 21h

            ; Return form ah register after printing
            mov ah, 4ch
            int 21h

        print:
        



    main endp

end main