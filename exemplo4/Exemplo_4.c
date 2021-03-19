void main() {
              trisd = 0;
              portd = 0;
              
              trisb.rb0 = 1;
              portb.rb0 = 1;
              
              while(1){
                       if(portb.RB0 == 0){
                            portd = 0;
                       }
                       else{
                            portd = 255;
                       }
              }
}