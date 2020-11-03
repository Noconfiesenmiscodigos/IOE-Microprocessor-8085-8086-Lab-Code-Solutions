;The content of the memory is shown in the figure along side. Write a program to OR the content of memory location 9024 with the memory location 9025 and store the result at 9026.

MVI A,4BH
MVI B,0C4H

XRA B
STA 9029H

HLT