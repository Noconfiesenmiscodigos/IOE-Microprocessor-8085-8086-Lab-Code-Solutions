;Write the program of your own and test it using DEBUG.

;Write a program that displays character 'ZOO' ON SCREEN. 

.MODEL SMALL
.STACK 64
.CODE

MOV DL,'Z'
MOV AH,02H
INT 21H

MOV AH,07H
INT 10H

MOV DL,'O'
MOV AH,02H 
INT 21H

MOV AH,07H
INT 10H

MOV DL,'O'
MOV AH,02H
INT 21H

MOV AH,4CH
INT 21H

END