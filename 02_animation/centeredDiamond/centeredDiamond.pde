void setup(){
    size(800, 800);
    background(#ffffff);
  }
  
void draw(){ // rectMode(CENTER);
    // outter
    circle(width/2, height/2, 125);
    // inner 
    circle(width/2, height/2, 100);
    // diamond
    translate(width/2, height/2);
    rotate(radians(45));
    rectMode(CENTER);
    
    square(0, 0, 40);
    
}
