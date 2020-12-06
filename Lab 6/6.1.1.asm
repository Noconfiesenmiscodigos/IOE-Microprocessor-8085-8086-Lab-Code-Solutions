;Write an assemble language program in DEBUG to add four 16-bit numbers and test it.

.MODEL SMALL
.STACK 64
.CODE

MOV AX,0A001H ;Put your first numer here
MOV BX,10AAH ;Put your second numer here
MOV CX,22FEH  ;Put your third numer here
MOV DX,2291H  ;Put your fourth numer here

CLC

ADD AL,BL
ADC AH,BH

CLC

ADD AL,CL
ADC AH,CH

CLC

ADD AL,DL
ADC AH,DH 

MOV BX,AX ;Answer is in BX

MOV AH,4CH
INT 21H
END
