
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
       
       
       
       ;ADRESARE INDEXATA
.data 
sir db 1,5,2,3,4,1,0,2
sum db ?

.code

mov si,0                 
mov al,sir[si]     
  
mov cx ,7        ;ruleaza odata apoi decrementeaza --> 7+1 = 8 repetari (adica lungimea sirului)

repetitie: inc si     

    add al,sir[si] 

    loop repetitie       
    
    
    
    
    ;ADRESARE BAZATA INDEXATA
    
mov BX,offset sir  
mov si,0                 
mov al,[BX+0]     
  
mov cx ,7        ;ruleaza odata apoi decrementeaza --> 7+1 = 8 repetari (adica lungimea sirului)

rep2: inc si     

    add al,[BX+SI] 

    loop rep2      
                  
                  
 ;Metoda cu siruri
 
 cld; DF=0
 mov si,offset sir
 mov cx,7
 mov sum,0
 
 iar:
 lodsb; al
 add sum,al
 loop iar
    
    
ret




