
; You may customize this and other start-up templates; 
; Tlocahe tion of this template is c:\emu8086\inc\0_com_template.txt
                      
;pb propuse lab 12 pb1    
; Scrieti un caracter A pe ecran cu o culoare albastru pe fond galben, in
;mijlocul ecranului 
org 100h


.data
Val db 'A' ; define?te o variabila
 ; de tip byte în memorie
.code

mov  dl, 40   ;Column
mov  dh, 12   ;Row
mov  bh, 0    ;Display page
mov  ah, 02h  ;SetCursorPosition  ;Serviciul Functia 02 de la int 10h
int  10h
     
     
               
mov  ah, 09h ;Functia 09 de la Int 10h  
mov  al, Val  
mov  bh, 0    ;Display page
;mov  bl, 11100001b  ;Color is blue    
mov  bl, 11001001b   ;Fond rosu pe scris albastru; Prima jumate de bl e fondul a 2 jumatate e scrisul primul bit din fiecare grup e brightness-ul
mov cx,1

int  10h
ret




