; this weirdness copies the first two bytes at once
; but then on its only one byte at a time

mov ax, 4000h
mov ds, ax
mov si, 0h
mov di, 0010h
mov cl, 0ffh

l1:
    mov bx, [si]
    mov [di], bx
    inc si
    inc di
    dec cl
    jnz l1