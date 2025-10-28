.model small
.stack 100h
.data
filename db "FAMT.txt",0
msg db "Hello this is famt$"
.code
main:
mov ax,@data
mov ds,ax
mov ah,3ch
mov cx,0
mov dx,offset filename
int 21h
mov bx,ax

mov ah,40h
mov cx,18
mov dx,offset msg
int 21h

mov ah,3eh
int 21h
mov ah,4ch
int 21h
end main

