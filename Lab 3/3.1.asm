;Write a program to AND the content of reg B and content of memory at 9030. Assume the content of 9030 as 34 and reg B as 92.

MVI B,92H

MVI A,34H
STA 9030H

ANA B

HLT 