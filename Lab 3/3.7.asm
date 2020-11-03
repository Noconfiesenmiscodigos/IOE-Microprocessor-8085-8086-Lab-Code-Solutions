;Write a program to compare the content of the memory location 8081 and 8082. Subtract the memory content at 8082 from 8081 and see whether the flag content is same as the compare instruction or not.

MVI A,36H
MVI B,0A4H

CMP B

SUB B

HLT