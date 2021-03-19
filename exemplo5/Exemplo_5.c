void main() {
    int state = 0;
    trisd = 0;
    portd = 0;

    trisb.rb0 = 1;
    portb.rb0 = 1;

    while(1){
      if(portb.RB0 == 0){
        if(state == 0){
          portd = 255;
          state = 1;
        } 
        else{
          portd = 0;
          state = 0;
        }
      }
      
      delay_ms(20);
      while(portb.RB0 == 0){}
      delay_ms(50);
    }
}