; mov ah, 0f8h ; immediate addressing, also note address cannot begin with alphabet         
; mov bl, ah ; register addressing
; mov si, 1337h ; p assing in 16 bits makes 3 byte instruction, also can notice little endianness
; mov dx, si ; also, register addressing        
; mov di, [si] ; register indirect addressing    
; mov si, 0000H ; happened to find an address that actually had something stored "B4 F8 8A ..."       
; mov di, [si] ; and interestingly enough, DI now has "F8B4" - little endian'd.
; mov 0007H, 1337H ; actually writing to memory. woah. 
; mov ax, 0abcdh     
; mov ds, ax ; truns out: cannot use segment register with an immediate value 
; mov bx, [002AH] ; (turns out this is) direct addressing, fetching random stuff from RAM
; mov ah, 0ah ; just messin around - this is fun. can't wait to do some buffer overflows

; little snippet to 2 bytes of memory to next 2 bytes
 mov ax, 0aefeh
 mov ds, ax
 mov [1337h], 0cdabh
; mov [1339h], [1337h]  
; mov [1337h + 2h], bh
; mov [1337h + 3h], bl
 
; mov cx, [es] ; so bx, bp, si, di only work. [why?] 
; mov [1337h + 4h], cx  