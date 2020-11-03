;Write a program that will check whether the number in reg. B is even or not. If the number is even display it in port A.

MVI B,0FCH ;Put your number here
MOV A,B


STC
CMC

RAR

JNC L1
HLT

L1: MOV A,B ;A has changed after rotation so
OUT 40H
HLT