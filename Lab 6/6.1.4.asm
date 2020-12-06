;Write a program to add four 8-bit numbers stored in the memory location starting at 200 and store the result at the end of the table. 

.MODEL SMALL
.DATA
.CODE

MOV DX,0000H
MOV BX,0200H
MOV CL,00H

MOV [BX],016H       ;Put your 1st number here
MOV [BX+01H],1AH    ;Put your 2nd number here
MOV [BX+02H],0C4H   ;Put your 3rd number here
MOV [BX+03H],0BH    ;Put your 4th number here

MOV AH,00H      
MOV AL,[BX]

MOV CL,[BX+01H]
ADD AL,CL

MOV CL,[BX+02H]
ADD AL,CL

MOV CL,[BX+03H]
ADD AL,CL

MOV [BX+04H],AL

MOV AH,4CH
INT 21H

END