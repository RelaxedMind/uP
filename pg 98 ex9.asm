
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
   
;ex10 linia 2 pag 98
org 100h

.code
                     
               
mov BX, 10h
mov DI,20h
mov AL,[BX]
xchg AL,[DI]
mov [BX].AL



                           
rep