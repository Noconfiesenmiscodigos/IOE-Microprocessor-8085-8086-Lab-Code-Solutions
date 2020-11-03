;The content of the memory is shown in the figure along side. Write a program to OR the content of memory location 9024 with the memory location 9025 and store the result at 9026.

MVI A,0A2H
MVI B,79H

ANA B
STA 9026H

HLT