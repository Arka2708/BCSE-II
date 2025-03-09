	   MVI C,00
	   LDA 2200
	   MOV B,A
	   LDA 2201
	   ADD B
	   JNC SKIP
	   INR C

SKIP:  STA 2202
	   MOV A,C
	   STA 2203
	   HLT
