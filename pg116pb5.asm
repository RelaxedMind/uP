
; You may customize this and other start-up templates; 
;pg116pb5

org 100h
mov si,0
mov ah,1 

lop:    int 21h  

cmp al,0dh
je out1
mov 200h[si],al
inc si
jmp lop

out1:    int 20h


ret




