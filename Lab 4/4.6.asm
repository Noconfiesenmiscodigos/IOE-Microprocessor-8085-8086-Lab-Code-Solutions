;Write a program to transfer the data at 8020 to 8030 if the data is greater than 127. You can assume data yourself.

MVI A,08FH ;Put your number here
STA 8020H

STC
CMC

LHLD 8020H

CPI 7FH
JNC L1
HLT  

L1: JNZ L2
HLT

L2: STA 8030H
HLT