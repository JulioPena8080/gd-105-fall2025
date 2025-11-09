void setup(){ // set up
  size(100, 100);
  background(255);
}


void draw(){ // display in screen 
  
  background(255);
  
  // actual project is to draw a sketch using transformation such rotation 
  // with TAU without moving the object's coordinates 
  translate(width/2, height/2); // main transformation to set origin at center of canvas
  scale(3); // create shape times the interger it's original size
  
  noFill();
  circle(0, 0, 25); // circle at the translated origion
  scale(0.25); // re-size all objects by 0.25
  
  rotate(TAU * (1.125 / 1.8)); // rotates "6.2831855" in "radians floating point" times (1.1/1.8)
  translate(-12, 38); // transformation before shapes display
  square(0, 0, 25); // 1)
  
  rotate(TAU * (1.125 / 0.9));
  translate(-50, 25); // transformation controls 3 origins at once
  square(0, 0, 25); // 2) 
  
  rotate(TAU * (1.125 / 0.9));
  translate(-50, 25); // Transmformation controls 2 origins at once
  square(0, 0, 25); // 3)
  
  rotate(TAU * (1.125 / -150.6));
  translate(-50, -50); // third controls 1 origin which is the one below 
  square(0, 0, 25); // 4) 

  
  
  // save a copy of the canvas as a png file 
  //if(frameCount == 1){
  //    save("section_11.png");
  //}
  
  // this way of saving is kinda a bug
  //saveFrame("section_11.png");

}
