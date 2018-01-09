
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data

a db 2
b db 3
sum db ?

.code
mov al,a
mov bl,b
add al,bl
mov sum,al ;sum = 5

ret




