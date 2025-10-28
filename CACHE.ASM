.model small
.stack 100h

.data
cache db 4 DUP(0FFH)
msg1 db 13,10,'enter block(0-9):$'
hit db 13,10,'cache hit!!$'
miss db 13,10,'cache miss!! replaced...$'

.code
main:
    mov ax,@data
    mov ds,ax

main_loop:
    lea dx,msg1
    mov ah,09h
    int 21h

    mov ah,01h
    int 21h
    cmp al,'R'
    je exit

    sub al,'0'
    mov bl,al
    mov cl,4
    mov ah,0
    mov al,bl
    div cl

    mov bh,ah
    mov si,OFFSET cache
    add si,bh
    cmp [si],bl
    je CACHE_HIT

CACHE_MISS:
    lea dx,miss
    mov ah,09h
    int 21h
    mov [si],bl
    jmp main_loop

CACHE_HIT:
    lea dx,hit
    mov ah,09h
    int 21h
    jmp main_loop

exit:
    mov ah,4ch
    int 21h
end main
