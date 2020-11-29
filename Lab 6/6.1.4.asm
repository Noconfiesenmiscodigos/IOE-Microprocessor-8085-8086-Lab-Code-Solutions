;Write a program to add four 8-bit numbers stored in the memory location starting at 200 and store the result at the end of the table.

.MODEL SMALL
.STACK 64
.CODE	

MOV DI,0200H
MOV [DI],9FH
MOV [DI+1],11H
MOV [DI+2],8DH
MOV [DI+3],26H

MOV AX,0000H
MOV CX,0004H
MOV DI,0200H

AGAIN: ADD AL,[DI]
JNC TE
INC AH

TE:	INC DI
DEC CX
JNZ AGAIN	
MOV [DI],AX
MOV AH,4CH
INT 21H

END
	
