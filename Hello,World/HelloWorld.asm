[org 0x7c00]
[bits 16]

    cli
    xor ax,ax
    mov ds,ax
    mov es,ax
    sti

    lea si,[HELLO_MSG]
    call PRINT

    jmp $

PRINT:
    pusha

PRINT_LOOP:
    mov al,[si]
    inc si
    or al,al
    jz PRINT_END
    mov ah,0x0E
    int 0x10
    jmp PRINT_LOOP

PRINT_END:
    popa
    ret

HELLO_MSG:
    db 'Hello World!!', 0x00

    times 510-($-$$) db 0x00
    dw 0xAA55
