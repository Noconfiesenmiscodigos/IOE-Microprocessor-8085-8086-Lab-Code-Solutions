;Write a program to find the sum of the following series up to 20 terms and store the result 2 x 3 + 4 x 5 + ... to 20 terms

.MODEL SMALL
.STACK 64
.CODE  

MOV CX,0014H
MOV BL,01H
MOV DX,0000H

AGAIN:	INC BL
MOV AL,BL
INC BL
MUL BL
ADD DX,AX ;Answer is in DX 
LOOP AGAIN

MOV AH,4CH
INT 21H

END
