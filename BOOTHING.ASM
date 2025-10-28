.model small
.stack 100h
.data
q db 9h
m db 7h
result dw ?
.code
main:
mov ax,@data
mov ds,ax
mov ax,0000h
mov bx,0000h
mov al,q
mov bl,m
mov cl,8
clc

back:
mov dx,00h
mov dx,ax
rcl dx,01
and dx,03h

cmp dx,01h
je Q01
cmp dx,02h
je Q10

next:
sar ax,01h
loop back
jmp exit

Q10:
sub ah,bl
jmp next

Q01:
add ah,bl
jmp next

exit:
mov result ,ax
int 3
end main



