
org 100h

.MODEL SMALL
.STACK 1000H
.DATA

SHIRT DW 50D
TROUSERS DW 30D
BELT DW 50D
WATCH DW 200D
TIE DW  15D
BRACELET DW 5D
SHOES DW 100D
SOCKS DW 10D
UNDERWEAR DW 10D
TSHIRT DW 30D
SAREE DW 130D
BLOUSE DW 30D
KAMEEZ DW 90D
INNERWEAR DW 10D
SHIRTW DW 50D
PANTW DW 30D
TOPS DW 25D
JEANS DW 60D
TIGHTS DW 20D
SKIRTS DW 40D

SUM DW ? 

MSDIS DB 'AFTER 5%DISCOUNT TOTAL IS: $'
MSENT DB 'PRESS ENTER TO BUY MORE PRODUCTS',10,13,'$'
MSG DB 'PRESS Y TO SEE THE TOTAL',10,13,'$'
MS1 DB '     ***WELCOME TO RAND SUPER SHOP***',10,13, '$'
MS2 DB 'PRESS THE LETTER OF YOUR DESIRED PRODUCT',10,13, '$'

MSM DB '>>MALE PRODUCTS<<        $'

 MS3 DB ' A) SHIRT-50TK          $'
 MS4 DB ' B) TROUSERS-30TK       $'
 MS5 DB ' C) BELT-50TK           $'
 MS6 DB ' D) WATCH-200TK         $'
 MS7 DB ' E) TIE-15TK            $'
 MS8 DB ' F) BRACELET-5TK        $'
 MS9 DB ' G) SHOES-100TK         $'
MS10 DB ' H) SOCKS-10TK          $'
MS11 DB ' I) UNDERWEAR-10TK      $'
MS12 DB ' J) T-SHIRT- 30TK       $'

MS260 DB '>>FEMALE PRODUCTS<<',10,13, '$'

MS13 DB ' K) SAREE-130TK',10,13, '$'
MS14 DB ' L) BLOUSE-30TK',10,13, '$'
MS15 DB ' M) KAMEEZ-90TK',10,13, '$'
MS16 DB ' N) INNER WEAR-10TK',10,13, '$'
MS17 DB ' O) SHIRT-50TK',10,13, '$'
MS18 DB ' P) PANT-30TK',10,13, '$'
MS19 DB ' Q) TOPS-25TK',10,13, '$'
MS20 DB ' R) JEANS-60TK',10,13, '$'
MS21 DB ' S) TIGHTS-20TK',10,13, '$'
MS22 DB ' T) SKIRTS-40TK',10,13, '$'


MS123 DB 10,13,'THANK YOU FOR YOUR PURCHASE',10,13,' $'
MST DB 'TOTAL IS: $'
MSTK DB 'TK ',10,13, '$'

MSIL DB ' INVALID CHARACTER.PLEASE TRY AGAIN',10,13,'$'


.CODE

MAIN PROC
    
    MOV ax,@DATA
    MOV DS,AX
    
     LEA DX,MS1
    MOV AH,9
    INT 21H
    
RUN:
    
    LEA DX,MSM  ;prints the product list in the following statements
    MOV AH,9
    INT 21H
    
      LEA DX,MS260
    MOV AH,9
    INT 21H
    
      LEA DX,MS3
    MOV AH,9
    INT 21H
    
      LEA DX,MS13
    MOV AH,9
    INT 21H
    
      LEA DX,MS4
    MOV AH,9
    INT 21H
    
      LEA DX,MS14
    MOV AH,9
    INT 21H
    
      LEA DX,MS5
    MOV AH,9
    INT 21H
    
      LEA DX,MS15
    MOV AH,9
    INT 21H
    
      LEA DX,MS6
    MOV AH,9
    INT 21H
    
      LEA DX,MS16
    MOV AH,9
    INT 21H
    
      LEA DX,MS7
    MOV AH,9
    INT 21H
    
       LEA DX,MS17
    MOV AH,9
    INT 21H
    
    LEA DX,MS8
    MOV AH,9
    INT 21H
    
    LEA DX,MS18
   MOV AH,9
   INT 21H
    
    LEA DX,MS9
    MOV AH,9
   INT 21H
    
    LEA DX,MS19
   MOV AH,9
   INT 21H
    
    LEA DX,MS10
    MOV AH,9
    INT 21H
    
    LEA DX,MS20
   MOV AH,9
   INT 21H
    
    LEA DX,MS11
   MOV AH,9
   INT 21H
    
   LEA DX,MS21
   MOV AH,9
   INT 21H
    
   LEA DX,MS12
   MOV AH,9
   INT 21H
    
   LEA DX,MS22
   MOV AH,9
   INT 21H
   
   LEA DX,MSENT
   MOV AH,9
   INT 21H 
   
   LEA DX,MS2
   MOV AH,9
   INT 21H
  
   LEA DX,MSG
   MOV AH,9
   INT 21H 
   
    
    
    
     
START:      ;comparing section(label)
    
    MOV AH,1
    INT 21H
   ;MOV BL,AL
   
    CMP AL,0DH ;compares if enter is pressed
   JE START 
   
    CMP AL,'Y'  ;to see total
   JE LABELT 
   
   CMP AL,'A'
   JE LABEL1
   
   CMP AL,'B'
   JE LABEL2
   
   CMP AL,'C'
   JE LABEL3
   
   CMP AL,'D'
   JE LABEL4
   
    CMP AL,'E'
   JE LABEL5
   
    CMP AL,'F'
   JE LABEL6
   
    CMP AL,'G'
   JE LABEL7
   
    CMP AL,'H'
   JE LABEL8
   
    CMP AL,'I'
   JE LABEL9 
   
    CMP AL,'J'
   JE LABEL10
   
    CMP AL,'K'
   JE LABEL11
   
    CMP AL,'L'
   JE LABEL12 
   
    CMP AL,'M'
  JE LABEL13 
   
    CMP AL,'N'
   JE LABEL14 
   
    CMP AL,'O'
  JE LABEL15 
   
    CMP AL,'P'
   JE LABEL16 
   
    CMP AL,'Q'
   JE LABEL17 
   
    CMP AL,'R'
   JE LABEL18 
   
    CMP AL,'S'
   JE LABEL19 
   
    CMP AL,'T'
   JE LABEL20
   
   CMP AL,39H   ;for invalid char
   JG ILLEGAL
   
    CMP AL,39H  ;for invalid char
   JLE ILLEGAL
   
   
   
LABEL1:
CALL CAL1   ;procedure call
JMP START

LABEL2:
CALL CAL2
JMP START   

LABEL3:
CALL CAL3
JMP START

LABEL4:
CALL CAL4
JMP START

LABEL5:
CALL CAL5
JMP START

LABEL6:
CALL CAL6
JMP START

LABEL7:
CALL CAL7
JMP START

LABEL8:
CALL CAL8
JMP START

LABEL9:
CALL CAL9
JMP START


LABEL10:
CALL CAL10
JMP START  

LABEL11:
CALL CAL11
JMP START

LABEL12:
CALL CAL12
JMP START

LABEL13:
CALL CAL13
JMP START 

LABEL14:
CALL CAL14
JMP START

 
LABEL15:
CALL CAL15
JMP START

LABEL16:
CALL CAL16
JMP START

LABEL17:
CALL CAL17
JMP START

LABEL18:
CALL CAL18
JMP START

LABEL19:
CALL CAL19
JMP START

LABEL20:
CALL CAL20
JMP START 

LABELT:
CALL TOTAL
JMP END_T

   
   
CAL1 PROC

 LEA DX,MS3
    MOV AH,9
    INT 21H 

 
   XOR AX,AX
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX      ;clearing registers
   
   MOV AX,SHIRT
   MOV BX,10D     ;divide by 10 for decimal output 
CONT1:
   XOR DX,DX   
   DIV BX
   PUSH DX         ;push remainder to stack
   INC CX  
   OR AX,AX
   JNE CONT1
   
OUTP1:
    POP DX          ;pop from stack to print in reverse 
    ADD DL,48       ;add 48 for diplaying numbers
    MOV AH,2
    INT 21H   
    LOOP OUTP1   ;CX--
    
    XOR BX,BX
  MOV BX,SHIRT 
  ADD SUM,BX        ;putting the value in SUM for total
  
    LEA DX,MSTK
    MOV AH,9
    INT 21H 
    
;JMP RUN
  
ret

CAL1 ENDP

  ENDP CAL1     
   
CAL2 PROC

 LEA DX,MS4
    MOV AH,9
    INT 21H 

   XOR AX,AX
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,TROUSERS
   MOV BX,10D
CONT2:
  
   XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT2
   
OUTP2:
    POP DX 
    ADD DL,48
    MOV AH,2
    INT 21H   
    LOOP OUTP2   ;CX--
   
   XOR BX,BX
   XOR CX,CX
   
   MOV BX,TROUSERS  
   ADD SUM,BX
   
    LEA DX,MSTK
    MOV AH,9
    INT 21H 


;JMP RUN 

CAL2 ENDP

  ENDP CAL2
  
  
ret  

CAL3 PROC

 LEA DX,MS5
    MOV AH,9
    INT 21H 


   XOR AX,AX
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,BELT
   MOV BX,10D
CONT3:   
  XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT3
   
OUTP3: 

    POP DX 
    ADD DL,48
    MOV AH,2
    INT 21H   
    LOOP OUTP3   ;CX--
   XOR BX,BX
   MOV BX,BELT  
   ADD SUM,BX
   
   LEA DX,MSTK
    MOV AH,9
    INT 21H  

;JMP RUN 

CAL3 ENDP

  ENDP CAL3
  
  
ret    

CAL4 PROC

 LEA DX,MS6
    MOV AH,9
    INT 21H 
   

 XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,WATCH
   MOV BX,10D
CONT4:   
   XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT4
   
OUTP4:
    POP DX 
    ADD DL,48
    MOV AH,2
    INT 21H   
    LOOP OUTP4   ;CX--
   XOR BX,BX
   MOV BX,WATCH  
   ADD SUM,BX
   
   LEA DX,MSTK
    MOV AH,9
    INT 21H  

;JMP RUN 

CAL4 ENDP

  ENDP CAL4
  
  
ret 

CAL5 PROC 

LEA DX,MS7 
MOV AH,9
INT 21H 

 XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,TIE
   MOV BX,10D
CONT5:   
   XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT5
   
OUTP5:
    POP DX 
    ADD DL,48
    MOV AH,2
    INT 21H   
    LOOP OUTP5   ;CX--
   XOR BX,BX
   MOV BX,TIE  
   ADD SUM,BX
   
   LEA DX,MSTK
    MOV AH,9
    INT 21H  

;JMP RUN 

CAL5 ENDP

  ENDP CAL5
  
  
ret 

CAL6 PROC 

LEA DX,MS8 
MOV AH,9
INT 21H

 XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,BRACELET
   MOV BX,10D
CONT6:   
   XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT6
   
OUTP6:
    POP DX 
    ADD DL,48
    MOV AH,2
    INT 21H   
    LOOP OUTP6   ;CX--
   XOR BX,BX
   MOV BX,BRACELET  
   ADD SUM,BX
   
   LEA DX,MSTK
    MOV AH,9
    INT 21H  


;JMP RUN 

CAL6 ENDP

  ENDP CAL6
  
  
ret 

CAL7 PROC 

LEA DX,MS9 
MOV AH,9
INT 21H 

XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,SHOES
   MOV BX,10D
CONT7:   
   XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT7
   
OUTP7:
    POP DX 
    ADD DL,48
    MOV AH,2
    INT 21H
       
   LOOP OUTP7   ;CX--
   
   
   XOR BX,BX
   MOV BX,SHOES  
   ADD SUM,BX
   
   LEA DX,MSTK
   MOV AH,9
   INT 21H  

;JMP RUN 

CAL7 ENDP

  ENDP CAL7
  
  
ret 

CAL8 PROC  

LEA DX,MS10 
MOV AH,9
INT 21H

XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,SOCKS
   MOV BX,10D
CONT8:   
   XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT8
   
OUTP8:
   POP DX 
   ADD DL,48
   MOV AH,2
   INT 21H 
      
   LOOP OUTP8   ;CX--
    
   XOR BX,BX
   MOV BX,SOCKS  
   ADD SUM,BX
   
   LEA DX,MSTK
   MOV AH,9
   INT 21H  

;JMP RUN 

CAL8 ENDP

  ENDP CAL8
  
  
ret 

CAL9 PROC  

LEA DX,MS11 
MOV AH,9
INT 21H

XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,UNDERWEAR
   MOV BX,10D
CONT9:   
   XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT9
   
OUTP9:
   POP DX 
   ADD DL,48
   MOV AH,2
   INT 21H 
      
   LOOP OUTP9   ;CX--
    
   XOR BX,BX
   MOV BX,UNDERWEAR  
   ADD SUM,BX
   
   LEA DX,MSTK
   MOV AH,9
   INT 21H 

;JMP RUN 

CAL9 ENDP

  ENDP CAL9
  
  
ret 

CAL10 PROC   

LEA DX,MS12 
MOV AH,9
INT 21H

XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,TSHIRT
   MOV BX,10D
CONT10:   
   XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT10
   
OUTP10:
   POP DX 
   ADD DL,48
   MOV AH,2
   INT 21H 
      
   LOOP OUTP10   ;CX--
    
   XOR BX,BX
   MOV BX,TSHIRT  
   ADD SUM,BX
   
   LEA DX,MSTK
   MOV AH,9
   INT 21H 

;JMP RUN 

CAL10 ENDP

  ENDP CAL10
  
  
ret 

CAL11 PROC   

LEA DX,MS13 
MOV AH,9
INT 21H

XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,SAREE
   MOV BX,10D
CONT11:   
   XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT11
   
OUTP11:
   POP DX 
   ADD DL,48
   MOV AH,2
   INT 21H 
      
   LOOP OUTP11   ;CX--
    
   XOR BX,BX
   MOV BX,SAREE  
   ADD SUM,BX
   
   LEA DX,MSTK
   MOV AH,9
   INT 21H 

;JMP RUN 

CAL11 ENDP

  ENDP CAL11
  
  
ret 

CAL12 PROC   

LEA DX,MS14 
MOV AH,9
INT 21H

XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,BLOUSE
   MOV BX,10D
CONT12:   
  XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT12
   
OUTP12:
   POP DX 
   ADD DL,48
   MOV AH,2
   INT 21H 
      
   LOOP OUTP12   ;CX--
    
   XOR BX,BX
   MOV BX,BLOUSE  
   ADD SUM,BX
   
   LEA DX,MSTK
   MOV AH,9
   INT 21H 

;JMP RUN 

CAL12 ENDP

  ENDP CAL12
  
  
ret 

CAL13 PROC   

LEA DX,MS15 
MOV AH,9
INT 21H

   XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,KAMEEZ
   MOV BX,10D
CONT13:   
   XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT13
   
OUTP13:
   POP DX 
   ADD DL,48
   MOV AH,2
   INT 21H 
      
   LOOP OUTP13   ;CX--
    
   XOR BX,BX
   MOV BX,KAMEEZ  
   ADD SUM,BX
   
   LEA DX,MSTK
   MOV AH,9
   INT 21H 

;JMP RUN 

CAL13 ENDP

  ENDP CAL13
  
  
ret 

CAL14 PROC 

LEA DX,MS16 
MOV AH,9
INT 21H

   XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,INNERWEAR
   MOV BX,10D
CONT14:   
   XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT14
   
OUTP14:
   POP DX 
   ADD DL,48
   MOV AH,2
   INT 21H 
      
   LOOP OUTP14   ;CX--
    
   XOR BX,BX
   MOV BX,INNERWEAR  
   ADD SUM,BX
   
   LEA DX,MSTK
   MOV AH,9
   INT 21H 

;JMP RUN 

CAL14 ENDP

  ENDP CAL14
  
  
ret 

CAL15 PROC   

LEA DX,MS17 
MOV AH,9
INT 21H

XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,SHIRTW
   MOV BX,10D
CONT15:   
   XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT15
   
OUTP15:
   POP DX 
   ADD DL,48
   MOV AH,2
   INT 21H 
      
   LOOP OUTP15   ;CX--
    
   XOR BX,BX
   MOV BX,SHIRTW  
   ADD SUM,BX
   
   LEA DX,MSTK
   MOV AH,9
   INT 21H 

;JMP RUN 

CAL15 ENDP

  ENDP CAL15
  
  
ret 

CAL16 PROC  

LEA DX,MS18 
MOV AH,9
INT 21H

XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,PANTW
   MOV BX,10D
CONT16:   
  XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT16
   
OUTP16:
   POP DX 
   ADD DL,48
   MOV AH,2
   INT 21H 
      
   LOOP OUTP16   ;CX--
    
   XOR BX,BX
   MOV BX,PANTW  
   ADD SUM,BX
   
   LEA DX,MSTK
   MOV AH,9
   INT 21H 

;JMP RUN 

CAL16 ENDP

  ENDP CAL16
  
  
ret 

CAL17 PROC  

LEA DX,MS19 
MOV AH,9
INT 21H

XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,TOPS
   MOV BX,10D
CONT17:   
   XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT17
   
OUTP17:
   POP DX 
   ADD DL,48
   MOV AH,2
   INT 21H 
      
   LOOP OUTP17   ;CX--
    
   XOR BX,BX
   MOV BX,TOPS  
   ADD SUM,BX
   
   LEA DX,MSTK
   MOV AH,9
   INT 21H 

;JMP RUN 

CAL17 ENDP

  ENDP CAL17
  
  
ret 

CAL18 PROC   

LEA DX,MS20 
MOV AH,9
INT 21H 

XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,JEANS
   MOV BX,10D
CONT18:   
  XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT18
   
OUTP18:
   POP DX 
   ADD DL,48
   MOV AH,2
   INT 21H 
      
   LOOP OUTP18   ;CX--
    
   XOR BX,BX
   MOV BX,JEANS  
   ADD SUM,BX
   
   LEA DX,MSTK
   MOV AH,9
   INT 21H 

;JMP RUN 

CAL18 ENDP

  ENDP CAL18
  
  
ret 

CAL19 PROC   

LEA DX,MS21 
MOV AH,9
INT 21H

XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,TIGHTS
   MOV BX,10D
CONT19:   
   XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT19
   
OUTP19:
   POP DX 
   ADD DL,48
   MOV AH,2
   INT 21H 
      
   LOOP OUTP19   ;CX--
    
   XOR BX,BX
   MOV BX,TIGHTS  
   ADD SUM,BX
   
   LEA DX,MSTK
   MOV AH,9
   INT 21H 

;JMP RUN 

CAL19 ENDP

  ENDP CAL19
  
  
ret 

CAL20 PROC   

LEA DX,MS22 
MOV AH,9
INT 21H

XOR AL,AL
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   MOV AX,SKIRTS
   MOV BX,10D
CONT20:   
  XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONT20
   
OUTP20:
   POP DX 
   ADD DL,48
   MOV AH,2
   INT 21H 
      
   LOOP OUTP20   ;CX--
    
   XOR BX,BX
   MOV BX,SKIRTS  
   ADD SUM,BX
   
   LEA DX,MSTK
   MOV AH,9
   INT 21H 



;JMP RUN 

CAL20 ENDP

  ENDP CAL20
  
  
ret  

ILLEGAL:

 
    LEA DX,MSIL
    MOV AH,9
    INT 21H

 JMP START 



TOTAL PROC


   LEA DX,MST
   MOV AH,9
   INT 21H
   
   
   
   XOR AX,AX 
   XOR DX,DX
   XOR BX,BX
   XOR CX,CX
   
   
   MOV AX,SUM
   MOV BX,10D
   
CONTS:
   
   XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONTS
   
OUTPS:
    XOR AX,AX
    POP DX 
    ADD DL,48
    MOV AH,2
    INT 21H   
    LOOP OUTPS   ;CX--
    

    
    LEA DX,MSTK
   MOV AH,9
   INT 21H
   
    
    
 CALL DISCOUNT 

    
    TOTAL ENDP

  ENDP TOTAL
  
  
ret



DISCOUNT PROC

LEA DX,MSDIS
    MOV AH,9
    INT 21H 

XOR AX,AX
XOR BX,BX
XOR DX,DX
XOR CX,CX
MOV AX,SUM
MOV BX,20     ;divide by 20 for
DIV BX        ;%5 discount
SUB SUM,AX 

XOR AX,AX
XOR BX,BX
XOR DX,DX
XOR CX,CX

MOV AX,SUM
MOV BX,10



   
CONTD:
   
   XOR DX,DX   
   DIV BX
   PUSH DX
   INC CX  
   OR AX,AX
   JNE CONTD
   
OUTPD:  

    XOR AX,AX
    POP DX 
    ADD DL,48
    MOV AH,2
    INT 21H   
    LOOP OUTPD  


    LEA DX,MSTK
    MOV AH,9
    INT 21H
     
     
    LEA DX,MS123
    MOV AH,9
    INT 21H
         
DISCOUNT ENDP

ENDP DISCOUNT

END_T:
   
    
 MOV AH,4CH
    INT 21H
    







ret




