	   LDA 204F
	   MOV B,A
	   MVI C,00
	   MVI D,00
	   MVI H,20
	   MVI L,50

LOOP:	   MOV E,L
	   MOV A,M
	   RRC
	   RLC
	   JC ODD
	   INR C
	   MVI H,21
	   MOV L,C
	   MOV M,A
	   MVI H,20
	   MOV L,E
	   JMP SKIP

ODD:	   INR D
	   MVI H,22
	   MOV L,D
	   MOV M,A
	   MVI H,20
	   MOV L,E
	   JMP SKIP

SKIP:	   INR L
	   DCR B
	   JNZ LOOP
	   MOV A,C
	   STA 2300
	   MOV A,D
	   STA 2301
	   HLT
