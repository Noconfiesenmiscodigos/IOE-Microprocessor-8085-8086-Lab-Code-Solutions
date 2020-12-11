;Write an assembly language program that takes a string (having 14 characters at max.) input from user and scroll a window of size 20*20 at the center of screen. Then display the string at the center of scrolled window. (You can choose the color attribute yourself).

TITLE SCROLL
.MODEL SMALL
.DATA
STR DB "PROGRAMMING IN ASSEMBLY LANGUAGE IS FUN",'$'
STRLEN DB $-STR
.STACK
.CODE

MAIN PROC FAR
MOV AX, @DATA
MOV DS, AX

;; SETTING REVERSE VIDEO MODE
MOV AH, 00
MOV AL, 03H
INT 10H

;; SCROLLING FORM 5, 20 TO  20 ROW, COLUMN 60
MOV CH, 05
MOV CL, 20
MOV DH, 20
MOV DL, 60
MOV AH, 07H
MOV BH, 71H
MOV AL, 00
INT 10H

;; CHARACTER CURSOR POSITION CHANGE
MOV BH,00
MOV DH, 12
MOV DL, 30
MOV AH, 02H
INT 10H

;; DISPLAYING THE STRING
LEA DX, STR
MOV AH, 09H
INT 21H

;; ENDING THE PROGRAM
MOV AX, 4C00H
INT 21H
MAIN ENDP
END MAIN
