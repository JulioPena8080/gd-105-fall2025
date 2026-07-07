// background for title screen

void setup(){
  size(800, 600);
}

void draw(){
  // allocate class
  circleClass circleSettings = new circleClass();
  // background color
  background(0);
  // call the function that will display everything
  circleSettings.circleFunction();
  
}
