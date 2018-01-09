
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
  
 ; 3)Se da un sir cu 5 elemente pe octet. Sa se calculeze media aritmetica a elementelor sirului. Rezultatul sa se depuna in
;memorie in variabila media.
              
             
              
org 100h
             
.data     

sir db 1,2,3,4,5
media db ?  
nr db 5   
     
.code
      
mov di,offset sir  
mov cx,5    
       
xor bl, bl


et:    

 mov al,[di]
 add bl,al  
 inc di




   

loop    et  
  
 mov al,bl
 
 div nr     

         
mov media,al
      
ret




