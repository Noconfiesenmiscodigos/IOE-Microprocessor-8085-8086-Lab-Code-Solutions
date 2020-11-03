;Write a program to add nos. from one to fifty and display the 16 bit result at port A & B.

LXI H,00H
LXI B,00H

L1: DAD B
INR C
MOV A,C
CPI 33H
JNC L2

L2: JZ L3
JMP L1
      ;Result is at HL

L3: MOV A,L
OUT 40H
MOV A,H
OUT 41H
HLT
