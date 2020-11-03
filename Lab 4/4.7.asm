;Write a program to rotate the data 3C in port A. Call a delay subroutine for the delaying.

MVI B,3CH

LOOP: MOV A,B
RLC
OUT 40H
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

L4: HLT 