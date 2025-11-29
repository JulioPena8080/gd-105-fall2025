// set up canvas
void setup(){
  size(800, 400);
  background(0);
}
  // circle variables
  int horizon = width/2;
  int vertica = height/2;
  int radious = 250;
  int radiousStroke;

// set the original color
void originalColor(){
  fill(#00aaee);
}  

// bool data type for mouse clicked
boolean mouseClicked = false;
void radiousStroke(){
  noFill();
  stroke(color(255));
  circle(width/2, height/2, radious);
  
}
// custom function for the circle
void circleUI(int horizon, int vertica, int radious){
  
  float mousePositionX = mouseX;
  float mousePositionY = mouseY;
  // using dist() function to tell us when is colliding
  float mouseDistance = dist(mousePositionX, mousePositionY, width/2, height/2);
 
  boolean hover = mouseDistance <= radious/50.0;
  
  horizon = width/2;
  vertica = height/2;
  radious = 250;
  
  if(mouseClicked){
    changeColor();
  } 
  if(mouseClicked==false){
    originalColor();
  }
  if(hover){
    background(255);
  }
  if(mouseDistance>radious/25){
    originalColor();
  }
  stroke(255);
  strokeWeight(5);
  circle(horizon, vertica, radious);
  noFill();
  strokeWeight(2);
  stroke(color(#ffdd99));
  circle(horizon, vertica, radious-225);
  // function that creates a tiny radious in mouse cursor 
  point(mousePositionX, mousePositionY);
}

// change color when function is called
void changeColor(){
    color newColor = #ff00ff;
    fill(newColor);
}

// mouse pressed function
void mousePressed(){
  mouseClicked = true;
  changeColor();
  circleUI(horizon, vertica, radious);
}

// mouse released function
void mouseReleased(){
  mouseClicked = false;
}

// draw everthing in the screen 
void draw(){
  background(0);
  circleUI(horizon, vertica, radious);
  
}
