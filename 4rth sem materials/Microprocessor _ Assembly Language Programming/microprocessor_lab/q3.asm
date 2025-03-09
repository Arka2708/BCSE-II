	   LDA 2500
	   ANI 0F
	   MOV B,A
	   LDA 2500
	   ANI F0
	   RLC
	   RLC
	   RLC
	   RLC
	   ADD B
	   STA 2550
	   HLT
