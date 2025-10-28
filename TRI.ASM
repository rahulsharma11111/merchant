.model small
.stack 100h
.data
.code
main:
mov ah,0
mov al,13h
int 10h
mov cx,100
mov dx,150

left:
mov ah,0ch
mov al,4
int 10h
inc cx
dec dx
cmp dx,90
jge left
mov cx,220
mov dx,150

right:
mov ah,0ch
mov al,4
int 10h
dec cx
dec dx
cmp dx,90
jge right
mov cx,100
mov dx,150

base:
mov ah,0ch
mov al,4
int 10h
inc cx
cmp cx,220
jle base

mov ah,0
int 16h
mov ah,0
mov al,03h
int 10h
mov ah,4ch
int 21h
end main
