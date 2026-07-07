// custom function for the setup method 
void setupMethodForClasses(){
  // allocate classes
  setupClass setupClassForCanvas = new setupClass();
  // set up class 
  setupClassForCanvas.setup();
}
// the set up of the canvas 
void setup(){
  // calling the method that calls the class
  setupMethodForClasses();
}

// custom function for the draw method 
void drawMethodForClasses(){
  // allocate class
  drawClass drawClassForCanvas = new drawClass();
  // calls the draw class and return the default draw method 
  drawClassForCanvas.draw();
}
// draw method for display 
void draw(){
  // calling the method that returns display in frames
  drawMethodForClasses();
}
