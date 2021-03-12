
_main:

;Exemplo_1.c,1 :: 		void main() {
;Exemplo_1.c,3 :: 		trisd = 0b00000000; //Definindo familia D como saida
	CLRF        TRISD+0 
;Exemplo_1.c,4 :: 		portd = 0b00000000; //Zerando toda a saída D
	CLRF        PORTD+0 
;Exemplo_1.c,6 :: 		while(1){
L_main0:
;Exemplo_1.c,7 :: 		portd = ~portd; //inverte portas
	COMF        PORTD+0, 1 
;Exemplo_1.c,8 :: 		delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
	NOP
	NOP
;Exemplo_1.c,9 :: 		}
	GOTO        L_main0
;Exemplo_1.c,10 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
