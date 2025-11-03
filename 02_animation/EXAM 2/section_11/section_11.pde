void setup(){ // set up
  size(100, 100);
  background(255);
}

void draw(){ // display in screen 
  translate(width/2-50, height/2-50);
  stroke(0);
  strokeWeight(1);
  translate(50, 50);
  scale(TAU/4);
  
  circle(0, 0, 25);
  strokeWeight(1);
  noFill();
  rotate(100);
  translate(width/2-50, height/2-50);
  scale(0.25);
  
  square(0, 0, 25);
  
  
  square(0, 0, 25);

  
  square(0, 0, 25);

  
  square(0, 0, 25);

}
