;Write a program in DEBUG to add two 8-bit numbers stored in the memory location DS:300 and DS:302 and store the result at DS:304.

.MODEL SMALL
.STACK 64
.CODE	

MOV DI,300H	
MOV [DI],0FFH
MOV [DI+2],0A0H

MOV AX,0000H
MOV DI,300H
MOV AL,[DI]
ADD DI,02H
ADD AL,[DI]
JNC TE
INC AH 

TE:	ADD DI,02H	
MOV [DI],AX
MOV AH,4CH
INT 21H

END

	