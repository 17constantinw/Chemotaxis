int x;
int y;

Bacteria [] dots; 
 void setup()   
 {     
      size(500,500);
      dots = new Bacteria[100];
      for(int i = 0; i < dots.length; i++) {
        dots[i] = new Bacteria();
      }
 }   
 void draw()   
 {    
   background(0);
     for( int i = 0; i < dots.length; i++) {
       dots[i].show();
       dots[i].move();
       
      }
 }  
 class Bacteria    
 {     

     Bacteria(){
       
       x = 0;
       y = (int)(Math.random()*3)-1;
     }
     void show(){
       fill(random(255),random(255),random(255));
       ellipse(x,y,10,10);
     } 
     void move(){
      if(mouseX > x && y > mouseY){
      x= x+(int)(Math.random()*8);
      y= y-(int)(Math.random()*8);
      }
      else if(mouseX < x && y < mouseY){
      x= x-(int)(Math.random()*8);
      y= y+(int)(Math.random()*8);
      }
      else if(mouseX < x && y > mouseY){
      x= x-(int)(Math.random()*8);
      y= y-(int)(Math.random()*8);
      }
      else if(mouseX > x && y < mouseY){
      x= x+(int)(Math.random()*8);
      y= y+(int)(Math.random()*8);
      } 
      else{
        x= x+(int)(Math.random()*8);
        y= y+(int)(Math.random()*8);
        x= x-(int)(Math.random()*8);
        y= y-(int)(Math.random()*8);
      }
     }
     
 }
