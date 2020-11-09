;Write a program that takes a number from memory address 9000H, and stores the multiplication table of the corresponding number in memory address from 9001H to 900AH. (The number at memory address 9000H will not exceed twenty-five.)

MVI A,13 ;Put your number here (<=FAH(25D))
STA 9000H
MOV D,A

MVI H,00H
LXI B,9000H

L1: INR E ;E = counter
INR C ; C = Address
STAX B
ADD D 
MOV H,A
MOV A,E
CPI 0AH
MOV A,H
JNC L2
JMP L1

L2: JZ L3
JMP L1

L3: HLT

