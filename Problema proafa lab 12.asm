
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
;Coloreaza sirul cu culori diferite
org 100h

.data 
sir db "Ana are mere"
l EQU $-sir   ;Determina lungimea sirului
.code

mov si,0
mov cx,l  
mov bl,0CAh   ;Atribut Culoare

mov ah,02h
mov dl,40  ;coloana
mov dh,12 ;linii


iar:    mov al,sir[si]
         mov ah,2
         int 10h
         inc dl
         
         mov ah,09  
         inc bl
         int 10h
         inc si 





loop iar

ret




