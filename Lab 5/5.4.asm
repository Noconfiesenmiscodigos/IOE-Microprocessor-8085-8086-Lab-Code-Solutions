;Sixteen bit data are stored in two tables starting at 8040H and 8060H having ten data each. Write an 8085 program to store the sum in the corresponding index of the third table starting at 8080H. (Assume the sum will not exceed 16 bit).

LXI B,8040H
LXI D,8060H
LXI H,8080H

L1: STC
CMC
LDAX B
MOV B,A
LDAX D
ADD B
MOV B,E ;Due to limited no of registors
MOV E,L
STAX D
MOV E,B ;Copy back original contents
MVI B,80H

INR C
INR E
INR L

LDAX B
MOV B,A
LDAX D
ADC B
MOV B,E ;Due to limited no of registors
MOV E,L
STAX D
MOV E,B ;Copy back original contents
MVI B,80H

INR C
INR E
INR L

MOV A,C
CPI 60H

JNC L2
JMP L1

L2: JZ L3
JMP L1

L3: HLT
