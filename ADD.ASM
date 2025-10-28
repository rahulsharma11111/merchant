  .model small
.stack 100h
.data
a dw 14h
b dw 03h
sum dw ?
.code
main:
mov ax, @data
mov ds,ax
mov ax,a
mov bx,b
add ax,bx
mov ah,0
int 3
mov sum ,ax
mov ah,09h
int 21h
end main
