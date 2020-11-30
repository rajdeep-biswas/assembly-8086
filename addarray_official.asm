mov bx, 0h
mov ax, 4000h
mov ds, ax
mov si, 0h
mov cl, 32h
mov ah, 0h

x2:
    mov al, [si]
    add bx, ax
    inc si
    dec cl
    jnz x2
mov [1000h], bx        
    
; okay so same thing
; except: the register is added to
; at last the value is moved