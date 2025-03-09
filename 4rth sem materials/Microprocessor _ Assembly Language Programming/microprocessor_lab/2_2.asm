	   LDA 2050
	   MOV B,A
	   LDA 2051
	   MOV C,A
	   MVI A,00
	   MVI D,00

LOOP:	   ADD B
	   JNC SKIP
	   INR D

SKIP:	   DCR C
	   JNZ LOOP
	   STA 2052
	   MOV A,D
	   STA 2053
	   HLT
