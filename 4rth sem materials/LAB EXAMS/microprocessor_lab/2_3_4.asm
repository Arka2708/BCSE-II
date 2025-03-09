
          LDA 204F   
          MOV C,A 
          DCR C 
  REPEAT: MOV D,C 
          LXI H ,2050
    LOOP: MOV A,M
          INX H 
          CMP M 
          JNC SKIP    
          MOV B,M 
          MOV M,A 
          DCX H    
          MOV M,B 
          INX H  
    SKIP: DCR D    
          JNZ LOOP 
          DCR C      
          JNZ REPEAT 
          HLT         
