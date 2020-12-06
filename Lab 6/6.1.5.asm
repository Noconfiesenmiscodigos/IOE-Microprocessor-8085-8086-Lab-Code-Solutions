;Write a program to subtract an 8-bit number stored at 204 from the number stored at 202 and store the result at location 206.

.MODEL SMALL
.DATA
.CODE

MOV DX,0000H
MOV BX,0202H
MOV CL,00H

MOV [BX],0A4H    ;Put your 1st number here
MOV [BX+02H],0BH ;Put your 2nd number here

MOV AH,00H      
MOV AL,[BX]
MOV CL,[BX+02H]
SUB AL,CL
MOV [BX+04H],AL

MOV AH,4CH
INT 21H

END