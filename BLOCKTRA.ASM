.model small
.stack 100h
.data
.code
main:
mov ax,2000h
mov ds,ax
mov ax,3000h
mov es,ax
mov si,5000h
mov di,8000h
mov cx,5
cld
rep movsb
mov ah,4ch
int 21h
end main
