.model small
.stack 100h
.data
.code
main:
mov ah,0
mov al,13h
int 10h
mov cx,50
mov dx,50

down:
mov ah,0ch
mov al,4
int 10h
inc dx
cmp dx, 160
jle down


right:
mov ah,0ch
mov al,4
int 10h
inc cx
cmp cx,130
jle right

up:
mov ah,0ch
mov al,4
int 10h
dec dx
cmp dx,50
jge up

left:
mov ah,0ch
mov al,4
int 10h
dec cx
cmp cx,50
jge left

mov ah,0
int 16h
mov ah,0
mov al,03h
int 10h
mov ah,4ch
int 21h
end main
