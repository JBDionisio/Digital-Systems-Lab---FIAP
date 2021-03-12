
_main:

;Exemplo_3.c,1 :: 		void main() {
;Exemplo_3.c,3 :: 		trisd = 0b00000000; //Definindo familia D como saida
	CLRF        TRISD+0 
;Exemplo_3.c,4 :: 		portd = 0b00000000; //Zerando toda a saída D
	CLRF        PORTD+0 
;Exemplo_3.c,6 :: 		trisb = 0b00000000; //Definindo familia B como saida
	CLRF        TRISB+0 
;Exemplo_3.c,7 :: 		portb = 0b00000000; //Zerando toda a saída b
	CLRF        PORTB+0 
;Exemplo_3.c,9 :: 		while(1){
L_main0:
;Exemplo_3.c,10 :: 		portd = 0b10000000;
	MOVLW       128
	MOVWF       PORTD+0 
;Exemplo_3.c,11 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
;Exemplo_3.c,12 :: 		portd = 0b01000000;
	MOVLW       64
	MOVWF       PORTD+0 
;Exemplo_3.c,13 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
;Exemplo_3.c,14 :: 		portd = 0b00100000;
	MOVLW       32
	MOVWF       PORTD+0 
;Exemplo_3.c,15 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main4:
	DECFSZ      R13, 1, 1
	BRA         L_main4
	DECFSZ      R12, 1, 1
	BRA         L_main4
	DECFSZ      R11, 1, 1
	BRA         L_main4
;Exemplo_3.c,16 :: 		portd = 0b00010000;
	MOVLW       16
	MOVWF       PORTD+0 
;Exemplo_3.c,17 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main5:
	DECFSZ      R13, 1, 1
	BRA         L_main5
	DECFSZ      R12, 1, 1
	BRA         L_main5
	DECFSZ      R11, 1, 1
	BRA         L_main5
;Exemplo_3.c,18 :: 		portd = 0b00001000;
	MOVLW       8
	MOVWF       PORTD+0 
;Exemplo_3.c,19 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	DECFSZ      R11, 1, 1
	BRA         L_main6
;Exemplo_3.c,20 :: 		portd = 0b00000100;
	MOVLW       4
	MOVWF       PORTD+0 
;Exemplo_3.c,21 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main7:
	DECFSZ      R13, 1, 1
	BRA         L_main7
	DECFSZ      R12, 1, 1
	BRA         L_main7
	DECFSZ      R11, 1, 1
	BRA         L_main7
;Exemplo_3.c,22 :: 		portd = 0b00000010;
	MOVLW       2
	MOVWF       PORTD+0 
;Exemplo_3.c,23 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main8:
	DECFSZ      R13, 1, 1
	BRA         L_main8
	DECFSZ      R12, 1, 1
	BRA         L_main8
	DECFSZ      R11, 1, 1
	BRA         L_main8
;Exemplo_3.c,24 :: 		portd = 0b00000001;
	MOVLW       1
	MOVWF       PORTD+0 
;Exemplo_3.c,25 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main9:
	DECFSZ      R13, 1, 1
	BRA         L_main9
	DECFSZ      R12, 1, 1
	BRA         L_main9
	DECFSZ      R11, 1, 1
	BRA         L_main9
;Exemplo_3.c,27 :: 		portd = 0b00000000;
	CLRF        PORTD+0 
;Exemplo_3.c,28 :: 		portb = 0b00000001;
	MOVLW       1
	MOVWF       PORTB+0 
;Exemplo_3.c,29 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main10:
	DECFSZ      R13, 1, 1
	BRA         L_main10
	DECFSZ      R12, 1, 1
	BRA         L_main10
	DECFSZ      R11, 1, 1
	BRA         L_main10
;Exemplo_3.c,30 :: 		portb = 0b00000010;
	MOVLW       2
	MOVWF       PORTB+0 
;Exemplo_3.c,31 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main11:
	DECFSZ      R13, 1, 1
	BRA         L_main11
	DECFSZ      R12, 1, 1
	BRA         L_main11
	DECFSZ      R11, 1, 1
	BRA         L_main11
;Exemplo_3.c,32 :: 		portb = 0b00000100;
	MOVLW       4
	MOVWF       PORTB+0 
;Exemplo_3.c,33 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main12:
	DECFSZ      R13, 1, 1
	BRA         L_main12
	DECFSZ      R12, 1, 1
	BRA         L_main12
	DECFSZ      R11, 1, 1
	BRA         L_main12
;Exemplo_3.c,34 :: 		portb = 0b00001000;
	MOVLW       8
	MOVWF       PORTB+0 
;Exemplo_3.c,35 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main13:
	DECFSZ      R13, 1, 1
	BRA         L_main13
	DECFSZ      R12, 1, 1
	BRA         L_main13
	DECFSZ      R11, 1, 1
	BRA         L_main13
;Exemplo_3.c,36 :: 		portb = 0b00010000;
	MOVLW       16
	MOVWF       PORTB+0 
;Exemplo_3.c,37 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main14:
	DECFSZ      R13, 1, 1
	BRA         L_main14
	DECFSZ      R12, 1, 1
	BRA         L_main14
	DECFSZ      R11, 1, 1
	BRA         L_main14
;Exemplo_3.c,38 :: 		portb = 0b00100000;
	MOVLW       32
	MOVWF       PORTB+0 
;Exemplo_3.c,39 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main15:
	DECFSZ      R13, 1, 1
	BRA         L_main15
	DECFSZ      R12, 1, 1
	BRA         L_main15
	DECFSZ      R11, 1, 1
	BRA         L_main15
;Exemplo_3.c,40 :: 		portb = 0b01000000;
	MOVLW       64
	MOVWF       PORTB+0 
;Exemplo_3.c,41 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main16:
	DECFSZ      R13, 1, 1
	BRA         L_main16
	DECFSZ      R12, 1, 1
	BRA         L_main16
	DECFSZ      R11, 1, 1
	BRA         L_main16
;Exemplo_3.c,42 :: 		portb = 0b10000000;
	MOVLW       128
	MOVWF       PORTB+0 
;Exemplo_3.c,43 :: 		delay_ms(200);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       8
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_main17:
	DECFSZ      R13, 1, 1
	BRA         L_main17
	DECFSZ      R12, 1, 1
	BRA         L_main17
	DECFSZ      R11, 1, 1
	BRA         L_main17
;Exemplo_3.c,44 :: 		portb = 0b00000000;
	CLRF        PORTB+0 
;Exemplo_3.c,45 :: 		}
	GOTO        L_main0
;Exemplo_3.c,46 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
