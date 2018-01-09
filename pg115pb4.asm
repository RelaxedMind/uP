
; You may customize this and other start-up templates; 
;pg 115 pb4
org 100h

mov si,0
mov dl,30h
mov ah,2
lop: int 21h
inc dl
inc si
cmp si,8h
jne lop
int 20h

ret




