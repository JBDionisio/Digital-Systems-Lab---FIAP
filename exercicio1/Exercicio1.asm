
_main:

;Exercicio1.c,1 :: 		void main() {
;Exercicio1.c,2 :: 		int lastNumber = 0;
;Exercicio1.c,3 :: 		int currentNumber = 0;
	CLRF        main_currentNumber_L0+0 
	CLRF        main_currentNumber_L0+1 
;Exercicio1.c,4 :: 		trisd = 0;
	CLRF        TRISD+0 
;Exercicio1.c,5 :: 		portd = 0;
	CLRF        PORTD+0 
;Exercicio1.c,7 :: 		trisb.rb0 = 1;
	BSF         TRISB+0, 0 
;Exercicio1.c,8 :: 		trisb.rb1 = 1;
	BSF         TRISB+0, 1 
;Exercicio1.c,9 :: 		trisb.rb2 = 1;
	BSF         TRISB+0, 2 
;Exercicio1.c,11 :: 		portb.rb0 = 1;
	BSF         PORTB+0, 0 
;Exercicio1.c,12 :: 		portb.rb1 = 1;
	BSF         PORTB+0, 1 
;Exercicio1.c,13 :: 		portb.rb2 = 1;
	BSF         PORTB+0, 2 
;Exercicio1.c,19 :: 		while(1){
L_main0:
;Exercicio1.c,20 :: 		if(portb.RB0 == 0){
	BTFSC       PORTB+0, 0 
	GOTO        L_main2
;Exercicio1.c,21 :: 		currentNumber = 0;
	CLRF        main_currentNumber_L0+0 
	CLRF        main_currentNumber_L0+1 
;Exercicio1.c,22 :: 		}
	GOTO        L_main3
L_main2:
;Exercicio1.c,23 :: 		else if(portb.RB1 == 0){
	BTFSC       PORTB+0, 1 
	GOTO        L_main4
;Exercicio1.c,24 :: 		currentNumber++;
	INFSNZ      main_currentNumber_L0+0, 1 
	INCF        main_currentNumber_L0+1, 1 
;Exercicio1.c,25 :: 		}
	GOTO        L_main5
L_main4:
;Exercicio1.c,26 :: 		else if(portb.RB2 == 0){
	BTFSC       PORTB+0, 2 
	GOTO        L_main6
;Exercicio1.c,27 :: 		currentNumber--;
	MOVLW       1
	SUBWF       main_currentNumber_L0+0, 1 
	MOVLW       0
	SUBWFB      main_currentNumber_L0+1, 1 
;Exercicio1.c,28 :: 		}
L_main6:
L_main5:
L_main3:
;Exercicio1.c,29 :: 		delay_ms(20);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	NOP
	NOP
;Exercicio1.c,32 :: 		portd = currentNumber;
	MOVF        main_currentNumber_L0+0, 0 
	MOVWF       PORTD+0 
;Exercicio1.c,33 :: 		delay_ms(500);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main8:
	DECFSZ      R13, 1, 1
	BRA         L_main8
	DECFSZ      R12, 1, 1
	BRA         L_main8
	DECFSZ      R11, 1, 1
	BRA         L_main8
	NOP
	NOP
;Exercicio1.c,34 :: 		}
	GOTO        L_main0
;Exercicio1.c,35 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
