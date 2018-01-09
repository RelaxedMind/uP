;problema cu sir de 10 elemente si daca al 5lea element e mai mare ca 4, bx ia val 1 altfel bx 0
                                                                                          
;Set 1F 
 ;1. Se dau 2 siruri. Sa se calculeze un nou sir ca diferenta dintre
 ; sir1 si sir2.
;Exemplu: sir1 este 1,2,3,4,7,5
;sir2 este 7,2,
;Atunci sirul diferenta va fi: 1,3,4,5       
     


org 100h      
.data

sir1 db 1,2,3,4,5,7,5
sir2 db 7,2

.code

lea bx, sir1   
lea dx, sir2 
mov cx,1

mov al,cx
mov ax,xlat  

inc cx

cmp al,4
jnz mare  

mov bx,0

jmp gata:

mare: mov bx,1    
  
    gata:


ret