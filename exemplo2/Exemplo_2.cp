#line 1 "C:/Users/usertqi/Documents/faculdade/digital_system_lab/exemplo2/Exemplo_2.c"
void main() {

 trisd = 0b00000000;
 portd = 0b00000000;

 while(1){
 portd = 0b01010101;
 delay_ms(1000);
 portd = ~portd;

 delay_ms(1000);
 }
}
