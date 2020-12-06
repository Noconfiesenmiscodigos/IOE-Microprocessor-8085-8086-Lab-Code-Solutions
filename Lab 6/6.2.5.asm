;Write a program to generate and store a multiplication table of a number stored as num1                

.MODEL SMALL
.DATA
NUM1 DB 08H ;Put your number here. (It should be less than or equal to 25D(=19F))
.CODE

MOV AX,@DATA
MOV DS,AX
LEA BX,NUM1
MOV DL,[BX]
MOV CX,000AH
MOV BX,0000H
MOV AX,0000H 
 
L1: ADD AL,DL
MOV [BX],AL
INC BX
LOOP L1

L2:MOV AH,4CH
INT 21H

END 
