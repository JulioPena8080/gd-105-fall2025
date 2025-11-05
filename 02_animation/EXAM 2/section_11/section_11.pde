void setup(){ // set up
  size(500, 500);
  background(255);
}


void draw(){ // display in screen 
  
  background(255);
  // AXIS sample for reference
  //line(250, 0, width/2, 500);
  //line(0, height/2, 500, 250);
  
  // actual project is to draw a sketch using transformation such rotation 
  // with TAU without moving the object's coordinates 
  translate(width/2, height/2); // main transformation to set origin at center of canvas
  scale(5); // create shape times the interger it's original size
  
  
  circle(0, 0, 25); // circle close to the center
  scale(0.25); // re size all objects
  
  rotate(TAU * (1.125 / 1.8));
  translate(-12, 38); // first transformation before shapes display
  //rotate(radians(25)); // 
  square(0, 0, 25); // 1)
  
  rotate(TAU * (1.125 / 0.9));
  translate(-50, 25); // first transformation controls 3 shapes at once
  square(0, 0, 25); // 2) 
  
  rotate(TAU * (1.125 / 0.9));
  translate(-50, 25); // secound controls 2 at once
  square(0, 0, 25); // 3)
  
  rotate(TAU * (1.125 / -150.6));
  translate(-50, -50); // third controls 1 at once which is the one below 
  square(0, 0, 25); // 4) 

  
  
  // save a copy of the canvas as a png file 
  //if(frameCount == 1){
  //save("section_11.png");
  //}
  //saveFrame("section_11.png");

}
