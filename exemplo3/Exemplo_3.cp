#line 1 "C:/Users/usertqi/Documents/faculdade/digital_system_lab/exemplo_3/Exemplo_3.c"
void main() {

 trisd = 0b00000000;
 portd = 0b00000000;

 trisb = 0b00000000;
 portb = 0b00000000;

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
