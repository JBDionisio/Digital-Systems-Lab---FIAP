void main() {
     //SETUP
     trisd = 0b00000000; //Definindo familia D como saida
     portd = 0b00000000; //Zerando toda a saída D

     while(1){
              portd = 0b01010101;
              delay_ms(1000);
              portd = ~portd;
//              portd = 0b10101010;
              delay_ms(1000);
     }
}