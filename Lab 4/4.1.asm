;Write a program to set zero and parity flags and reset other flags.

MVI A,80H
ADI 78H ;Sets S flag

MVI A,70H
ADI 00H ;Resets S flag

MVI A,08H
ADI 08H ; Set AC 

MVI A,08H
ADI 00H ; Reset AC 

STC ;Set C flag 
CMC ;Reset C flag

MVI A,01H
ADI 01H ;Reset P flag

MVI A,01H
ADI 10H ;Set P flag

MVI A,00H
ADI 10H ;Reset Z flag

MVI A,00H
ADI 00H ;Set Z flag

HLT
