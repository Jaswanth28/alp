assume cs:code, ds:data
org 100h
data segment
list db 9h,6h,2h
count equ 03h
max db 01h dup(?)
data ends
code segment
start:
mov ax,data
mov ds,ax
mov si,offset list
mov cl,count
mov al,[si]
again:
cmp al,[si+1]
jng next
mov al,[si+1]
next:
inc si
dec cl
cmp cl,0h
jl again
mov bl,al
mov ah,4ch
mov al,0h
int 03h
code ends
end start
intpu/output:
