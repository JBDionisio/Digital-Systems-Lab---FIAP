#line 1 "C:/Users/usertqi/Documents/faculdade/digital_system_lab/exercicio1/Exercicio1.c"
void main() {
 int lastNumber = 0;
 int currentNumber = 0;
 trisd = 0;
 portd = 0;

 trisb.rb0 = 1;
 trisb.rb1 = 1;
 trisb.rb2 = 1;

 portb.rb0 = 1;
 portb.rb1 = 1;
 portb.rb2 = 1;





 while(1){
 if(portb.RB0 == 0){
 currentNumber = 0;
 }
 else if(portb.RB1 == 0){
 currentNumber++;
 }
 else if(portb.RB2 == 0){
 currentNumber--;
 }
 delay_ms(20);


 portd = currentNumber;
 delay_ms(500);
 }
}
