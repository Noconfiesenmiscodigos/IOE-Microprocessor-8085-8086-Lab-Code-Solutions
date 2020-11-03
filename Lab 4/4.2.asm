;Write a program to set auxiliary flag and reset parity flag without affecting other flags.

MVI A,01H
ADI 10H ;Set P flag

MVI A,08H ;Set AC & Reset P Flag
ADI 08H

HLT