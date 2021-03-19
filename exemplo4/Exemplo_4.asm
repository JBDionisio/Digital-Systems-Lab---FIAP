
_main:

;Exemplo_4.c,1 :: 		void main() {
;Exemplo_4.c,2 :: 		trisd = 0;
	CLRF        TRISD+0 
;Exemplo_4.c,3 :: 		portd = 0;
	CLRF        PORTD+0 
;Exemplo_4.c,5 :: 		trisb.rb0 = 1;
	BSF         TRISB+0, 0 
;Exemplo_4.c,6 :: 		portb.rb0 = 1;
	BSF         PORTB+0, 0 
;Exemplo_4.c,8 :: 		while(1){
L_main0:
;Exemplo_4.c,9 :: 		if(portb.RB0 == 0){
	BTFSC       PORTB+0, 0 
	GOTO        L_main2
;Exemplo_4.c,10 :: 		portd = 0;
	CLRF        PORTD+0 
;Exemplo_4.c,11 :: 		}
	GOTO        L_main3
L_main2:
;Exemplo_4.c,13 :: 		portd = 255;
	MOVLW       255
	MOVWF       PORTD+0 
;Exemplo_4.c,14 :: 		}
L_main3:
;Exemplo_4.c,15 :: 		}
	GOTO        L_main0
;Exemplo_4.c,16 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
