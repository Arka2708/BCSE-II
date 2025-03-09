	   LDA 2500
	   MVI B,00
	   MVI C,00
	   MVI D,08

LOOP:	   RLC
	   JC INR_ONE
	   INR C

INR_ONE:	   JNC SKIP
	   INR B

SKIP:	   DCR D
	   JNZ LOOP
	   MOV A,B
	   STA 2610
	   MOV A,C
	   STA 2611
	   HLT
