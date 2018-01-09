
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;a) Sa se calculeze produsul a 2 numere definite in segmentul de date pe octet. Rezultatul sa se depuna in memorie
;in variabila produs. Numerele sunt considerate fara semn.

.data
      
a db -2
b db 3      
prod db ?
                                                             
.code
                                                         

mov al,a
mov bl,b

imul bl

mov prod,bl   
                                                             
ret




