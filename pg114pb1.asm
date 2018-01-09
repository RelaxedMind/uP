
;pg114 pb1


.model small    

.stack 200h  

.data      

text db 'TASM',0

.code

linie proc near
      mov cx,1
      mov dx,0
      
linie_iar: lea si,text

iar:
        mov ah,2
        int 10h
        mov al,[si]
        cmp al,0
        jz endtext
        mov ah,9
        int 10h
        inc dl
        inc si
        cmp dl,80
        jnz iar
        
endtext:
        inc dh
        cmp dh,25
        jc linie_iar
        ret
       
linie endp

main:
    
    mov ax,@data
    mov ds,ax
    mov ah,0
    mov al,2
    int 10h
    mov bh,0
    mov bl, 1fh
    call linie
    mov ax,4c00h
    int 21h
    
end main