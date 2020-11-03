;Write a program to check the bit D5 of the content of memory at 9025. Display 1 at port A if the bit is 1 else displays nothing. Use the rotating instructions after masking. Use the rotating instruction which uses less no of instructions.

MVI A,79H

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


