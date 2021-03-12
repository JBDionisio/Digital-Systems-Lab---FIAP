void main() {
     //SETUP
     trisd = 0b00000000; //Definindo familia D como saida
     portd = 0b00000000; //Zerando toda a saída D

     trisb = 0b00000000; //Definindo familia B como saida
     portb = 0b00000000; //Zerando toda a saída b

     while(1){
              portd = 0b10000000;
              delay_ms(200);
              portd = 0b01000000;
              delay_ms(200);
              portd = 0b00100000;
              delay_ms(200);
              portd = 0b00010000;
              delay_ms(200);
              portd = 0b00001000;
              delay_ms(200);
              portd = 0b00000100;
              delay_ms(200);
              portd = 0b00000010;
              delay_ms(200);
              portd = 0b00000001;
              delay_ms(200);
              
              portd = 0b00000000;
              portb = 0b00000001;
              delay_ms(200);
              portb = 0b00000010;
              delay_ms(200);
              portb = 0b00000100;
              delay_ms(200);
              portb = 0b00001000;
              delay_ms(200);
              portb = 0b00010000;
              delay_ms(200);
              portb = 0b00100000;
              delay_ms(200);
              portb = 0b01000000;
              delay_ms(200);
              portb = 0b10000000;
              delay_ms(200);
              portb = 0b00000000;
     }
}