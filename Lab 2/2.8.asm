;Write a program to Add the 16-bit BCD data at memory location 8284 with the 16-bit BCD data at 8286 and store the BCD result at 8288.

MVI H,13
MVI L,79
MVI D,26
MVI E,48

DAD D

MOV A,L
DAA
STA 8288H

MOV A,H
DAA
STA 8289H

HLT 
 

