;Write a program to subtract an 8-bit number stored at 204 from the number stored at 202 and store the result at location 206.

.MODEL SMALL
.STACK 64
.CODE
	
MOV DI,0204H
MOV [DI],11H
MOV [DI-2],9FH

MOV AX,0000H
MOV DI,0202H
MOV AL,[DI]
SUB AL,[DI+2]
JNC TE
INC AH

TE:	MOV DI,0206H	
MOV [DI],AX
MOV AH,4CH
INT 21H  

END
	
