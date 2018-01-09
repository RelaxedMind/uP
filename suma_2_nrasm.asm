
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
           
           
mov AH, 0h
int 16h ;Al=2=32h
mov BL,AL;
sub BL,30h       

mov AH,0
int 16h
sub AL,30h
add AL,BL
add AL,30h
mov AH,0Eh
int 10h           
ret




