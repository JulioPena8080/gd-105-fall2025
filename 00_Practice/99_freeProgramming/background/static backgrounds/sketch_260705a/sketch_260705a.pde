// a class dedicated to specific instructions 
class circleDisplay{ 
  // a method that return the parameters when is called
  void display(float xAxis, float yAxis, float circleSize){
    // the geometric shape that requires location and dimension to be displayed in canvas
    circle(xAxis, yAxis, circleSize);
  }
}

void setup(){
  // circle properties & location in canvas
  float xAxis = width/2;
  float yAxis = height/2;
  float circleSize = 20;
  // allocated the circle display class to improve context
  circleDisplay circle = new circleDisplay();
  // sets dimension of canvas
  size(800, 500);
  // fill canvas with black 
  background(0);
  // execute instructions with assinged parameters
  circle.display(xAxis, yAxis, circleSize);
}
