MOV AX, 4000H
MOV DS, AX
; MOV DI, 2000H 
l1:
    MOV [2000H], 69H
    MOV AX, [2000H]
    MOV DI, 2000H + 10H
    MOV [DI], AX    
loop l1