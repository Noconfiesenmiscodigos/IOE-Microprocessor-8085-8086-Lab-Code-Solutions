;Write a program to display a string "Programming is Fun" in the screen using string displaying function

TITLE DISPLAY PROGRAMMING IS FUN
.MODEL SMALL
.DATA
STR DB "PROGRAMMING IS FUN$"
.STACK
.CODE

MAIN PROC FAR
MOV AX, @DATA
MOV DS, AX
LEA DX, STR
MOV AH, 09H
INT 21H
MOV AX, 4C00H
INT 21H

MAIN ENDP
END MAIN
