;Write a program that will check whether D4 bit of data at address 9030 is zero. Just check the result after the operation.

MVI A,0FFH
STA 9030H ; Say 9030H has ACH as its value

STC
CMC

RAL
RAL
RAL
RAL

JNC L1
MVI A,01H ;If D4 is 1,1 will be displayed at 40H
OUT 40H
HLT

L1: MVI A,00H ;If D4 is 0,0 will be displayed at 40H
OUT 40H

HLT
 