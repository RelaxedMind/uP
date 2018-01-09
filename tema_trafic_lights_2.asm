
; Traffic ligts test 2 for
; c:\emu8086\devices\Traffic_Lights.exe

; This is just an example of how to set the lights,
; better if you run it in step-by-step mode.
; DO NOT RUN AT MAXIMUM SPEED, DO NOT USE REAL CARS.
;)


#start=Traffic_Lights.exe#

name "traffic2"

yellow_and_green equ      0000_0110b
red              equ      0000_0001b
yellow_and_red   equ      0000_0011b
green            equ      0000_0100b  
                                             
red              equ      0000_0001b
red              equ      0000_0001b                                             
                                             
                               ;1     
red_2_4          equ      0011_0000_1100b    
red_yellow_2_4   equ      0110_1001_1010b  
green_2_4        equ      1000_0110_0001b
yellow_2_4       equ      0100_1101_0011b
start:
nop








; all
 
 nop
mov ax, red_2_4                                       
out 4, ax  
   
nop


mov ax, red_yellow_2_4   
out 4, ax 

nop


mov ax, green_2_4  
out 4, ax     

nop


mov ax, yellow_2_4  
out 4, ax   

nop
       
jmp start
