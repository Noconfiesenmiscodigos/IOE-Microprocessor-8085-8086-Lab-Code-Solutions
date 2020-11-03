;The table along side shows BCD data. Write a program to add the content at memory locations 818A and 818B. Store the BCD result at memory location 818C.

MVI A,29
MVI B,45

ADD B

DAA

STA 818CH

HLT
