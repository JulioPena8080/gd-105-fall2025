void setup(){ // set up
  size(500, 500);
  background(255);
}

float resizeX = width/2-50;
float resizeY = height/2-50;

void draw(){ // display in screen 
  background(255);
  translate(resizeX, height/2-50);
  translate(width/2-50, resizeY);
  scale(2); // create shape times 2 it's original size
  
  circle(0, 0, 25); // circle close to the center
  noFill();
  rotate(75); 
  scale(0.25);
  square(0, 0, 25); // square close to circle 
  
  //translate(width/2-100, height/2-150);
  translate(width/2-450, height/2-350); // after translating 
                                        // the centered origin is (0, 0)

  
  
  square(0, 0, 25); // far away from the circle 
  //translate(width/2-275, height/2-150);

  
  square(0, 0, 25);
  //translate(width/2-100, height/2-50);

  
  square(0, 0, 25);
  //translate(width/2-100, height/2-50);
  //saveFrame("section_11.png");

}
