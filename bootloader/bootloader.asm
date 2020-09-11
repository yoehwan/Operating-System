[org 0]
[bits 16]

SECTION .txt

jmp $

times 510-($-$$) db 0

dw 0xAA55