;Change the program in assignment 8 to display 80H if the bit is 1 else nothing.

MVI A,80H

STC
CMC

RAL ;D5
RAL ;Rotating 3 times so that it comes at palce of carry 
RAL

JNC IS_LOW ;If D5 is low carry is low

MVI A,01H
OUT 40H 

IS_LOW: HLT

HLT



