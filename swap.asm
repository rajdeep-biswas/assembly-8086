mov ax, 2000h
mov ds, ax

mov si, 4000h
mov di, 5000h

mov bx, [si]
mov cx, [di]
mov [si], cx
mov [di], bx