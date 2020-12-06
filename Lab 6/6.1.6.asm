;Solve problem 5 for subtraction of 16-bit numbers

.MODEL SMALL
.DATA
.CODE

MOV DX,0000H
MOV BX,0202H
MOV CL,00H

MOV [BX],0A4H     ;Put your 1st number LSB here
MOV [BX+01H],0FCH ;Put your 1st number MSB here
MOV [BX+02H],0B5H ;Put your 2nd number LSB here
MOV [BX+03H],0B7H ;Put your 2nd number MSB here
     
MOV AL,[BX]
MOV AH,[BX+01H]
MOV CL,[BX+02H]
MOV CH,[BX+03H]
SUB AL,CL
SBB AH,CH
MOV [BX+04H],AL
MOV [BX+05H],AH

MOV AH,4CH
INT 21H

END