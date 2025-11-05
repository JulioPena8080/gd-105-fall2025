void setup(){ // set up
  size(500, 500);
  background(255);
}


void draw(){ // display in screen 
  
  background(255);
  // AXIS sample for reference
  line(250, 0, width/2, 500);
  line(0, height/2, 500, 250);
  // actually project
  noFill();
  translate(width/2, height/2); // main transformation
  scale(10); // create shape times the interger it's original size
  
  
  circle(0, 0, 25); // circle close to the center
  scale(0.24);
  
  rotate(TAU * (1.125 / 1.4));
  translate(-25, 25); // first transformation before shapes display
  rotate(radians(25));
  square(0, 0, 25); // 1)
  
  rotate(TAU * (1.125 / 0.9));
  translate(-50, 25); // first transformation controls 3 shapes at once
  square(0, 0, 25); // 2) 
  
  rotate(TAU * (1.125 / 0.9));
  translate(-50, 25); // secound controls 2 at once
  square(0, 0, 25); // 3)
  
  rotate(TAU * (1.125 / -152.6));
  translate(-50, -50); // third controls 1 at once which is the one below 
  square(0, 0, 25); // 4) 

  
  
  // save a copy of the canvas as a png file 
  //saveFrame("section_11.png");

}
