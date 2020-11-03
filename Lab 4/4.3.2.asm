;Write a program to count the no of bits that are 1 in register A.

MVI A,0AFH ;Put your number here
MVI C,00H

RLC;1
CC L1

RLC;2
CC L1

RLC;3
CC L1

RLC;4
CC L1

RLC;5
CC L1

RLC;6
CC L1

RLC;7
CC L1

RLC;8
CC L1

JMP L2

L1: INR C
RET
       ;Answer is at C
L2: HLT