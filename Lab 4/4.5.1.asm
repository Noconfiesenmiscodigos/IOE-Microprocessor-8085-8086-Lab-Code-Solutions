;Write a program that will count up from 00 to FF at port A. Be sure to use PCHL command.

MVI A,00H

L1: OUT 40H
INR A
JZ L2

LXI H,L1 
PCHL

L2: HLT
