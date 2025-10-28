.model small
.stack 100h
.data
BCD db 25h
ASCII db ?
.code
main:
    mov ax,@data
    mov ds,ax
    mov dl,BCD
    and dl,0F0h
    mov cl,4
    shr dl,cl
    add dl,30h
    mov ah,0
    int 3
    mov ASCII,dl
    mov ah,09h
    int 21h
end main
