LDA 2050
ANI 0F
RLC
RLC
RLC
RLC
MOV B,A
LDA 2051
ANI F0
RRC
RRC
RRC
RRC
ADD B
STA 2052

LDA 2050
ANI F0
RRC
RRC
RRC
RRC
MOV B,A
LDA 2051
ANI 0F
RLC
RLC
RLC
RLC
ADD B
STA 2053
HLT