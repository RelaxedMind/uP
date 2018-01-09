
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
          
          ;1A   ADRESARE INDIRECTA
org 100h

.data

a db 2
b db 5
sum db ?

.code
mov bx,offset a
mov al,[bx]
mov bx,offset b
add al,[bx]
mov bx,offset sum
mov [bx],al 
                   
                   
                   ;A desenat pe tabla, ai facut in one note
ret




