;Logical instructions can also be used to mask certain bits of a word. Write a program to complement bit D6 of data at memory location 9025. Assume data as shown in the above figure.

MVI B,79H
MVI A,40H ;D6

XRA B

STA 9025H

HLT