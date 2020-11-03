;Write a program to copy content of memory location at 8080 to 8090.

MVI H,80H
MVI L,80H
MVI M,0AAH
LDA 8080H
STA 8090H
HLT
