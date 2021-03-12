#line 1 "C:/Users/usertqi/Documents/faculdade/digital_system_lab/exemplo1/Exemplo_1.c"
void main() {

 trisd = 0b00000000;
 portd = 0b00000000;

 while(1){
 portd = ~portd;
 delay_ms(1000);
 }
}
