; this weirdness copies the first two bytes at once
; but then on its only one byte at a time

mov ax, 4000h
mov ds, ax
mov si, 0h
mov di, 0010h
mov cl, 0fh    

l1:
    mov bl, [di]
    add bl, [si]
    mov [di], bl
    inc si
    dec cl     
    jnz l1
    