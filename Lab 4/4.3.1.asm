;Write a program to count the no of bits that are 1 in register A.

MVI B,0ABH ;Put your number here
MVI C,00H
MVI D,08H

LOOP: MOV A,B
RLC
CC L1
MOV B,A
L2: DCR D
MOV A,D
CPI 00H
JNC L3

L1: INR C
RET

L3: JZ L4
JNZ LOOP
        ;Answer is at C
L4: HLT
 