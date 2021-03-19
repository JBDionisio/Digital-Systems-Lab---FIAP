
_main:

;Exemplo_5.c,1 :: 		void main() {
;Exemplo_5.c,2 :: 		int state = 0;
	CLRF        main_state_L0+0 
	CLRF        main_state_L0+1 
;Exemplo_5.c,3 :: 		trisd = 0;
	CLRF        TRISD+0 
;Exemplo_5.c,4 :: 		portd = 0;
	CLRF        PORTD+0 
;Exemplo_5.c,6 :: 		trisb.rb0 = 1;
	BSF         TRISB+0, 0 
;Exemplo_5.c,7 :: 		portb.rb0 = 1;
	BSF         PORTB+0, 0 
;Exemplo_5.c,9 :: 		while(1){
L_main0:
;Exemplo_5.c,10 :: 		if(portb.RB0 == 0){
	BTFSC       PORTB+0, 0 
	GOTO        L_main2
;Exemplo_5.c,11 :: 		if(state == 0){
	MOVLW       0
	XORWF       main_state_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main10
	MOVLW       0
	XORWF       main_state_L0+0, 0 
L__main10:
	BTFSS       STATUS+0, 2 
	GOTO        L_main3
;Exemplo_5.c,12 :: 		portd = 255;
	MOVLW       255
	MOVWF       PORTD+0 
;Exemplo_5.c,13 :: 		state = 1;
	MOVLW       1
	MOVWF       main_state_L0+0 
	MOVLW       0
	MOVWF       main_state_L0+1 
;Exemplo_5.c,14 :: 		}
	GOTO        L_main4
L_main3:
;Exemplo_5.c,16 :: 		portd = 0;
	CLRF        PORTD+0 
;Exemplo_5.c,17 :: 		state = 0;
	CLRF        main_state_L0+0 
	CLRF        main_state_L0+1 
;Exemplo_5.c,18 :: 		}
L_main4:
;Exemplo_5.c,19 :: 		}
L_main2:
;Exemplo_5.c,21 :: 		delay_ms(20);
	MOVLW       52
	MOVWF       R12, 0
	MOVLW       241
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	NOP
	NOP
;Exemplo_5.c,22 :: 		while(portb.RB0 == 0){}
L_main6:
	BTFSC       PORTB+0, 0 
	GOTO        L_main7
	GOTO        L_main6
L_main7:
;Exemplo_5.c,23 :: 		delay_ms(50);
	MOVLW       130
	MOVWF       R12, 0
	MOVLW       221
	MOVWF       R13, 0
L_main8:
	DECFSZ      R13, 1, 1
	BRA         L_main8
	DECFSZ      R12, 1, 1
	BRA         L_main8
	NOP
	NOP
;Exemplo_5.c,24 :: 		}
	GOTO        L_main0
;Exemplo_5.c,25 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
