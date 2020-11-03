;We can complement the accumulator content by using instruction other than CMA How is that possible? Write a program to illustrate this.

MVI A,0A7H ; Say A has 0A7H initially
CMA
STA 0000H ; To Check

           ; Method 1
MVI A,0A7H ; Valu of A is repalced by CMA
MOV B,A ;B=A

MVI A,0FFH ;For A = FF 

SUB B ; A = FF - B (Initial A)
STA 0001H ; Check in Location 0000H & 0001H
          
          ;Method 2
MVI A,0A7H
XRI 0FFH
STA 0002H ;Check in Location 0000H & 0001H & 0002H

HLT