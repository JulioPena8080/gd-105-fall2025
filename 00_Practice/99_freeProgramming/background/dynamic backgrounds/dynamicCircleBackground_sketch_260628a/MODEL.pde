// class of shapes
class circleClass {
  // color 
  color white = color(255, 255, 255);
  // size
  int circumference = 25;
  // position in canvas
  PVector circleVector = new PVector(0, 0);
  // circle properties and calculations
  void circleProperties(){
    // set a frame rate to 60 per second
    frameRate(60);
    // assing a floating point to the velocity variable
    float velocity = 0.0006;
    // create an endless loop of incrementation for 'i' start with 0, if 0 is less than the height... 'i' increment   
    for(int i = 0; i < height; i++){
       // velocity is added to the circle's vector times the current frame count
       circleVector.y+=velocity*frameCount;
    }
    // default properties for circle
    // creates an outline in the geometric shape
    stroke(0);
    // sets the stroke width or weight to a value
    strokeWeight(2);
    // this line add color to the inner geometric shape
    fill(white);
    // circle vector assigned to width and height divided by 2
    circleVector.x+=width/2;
    //circleVector.y+=height/2;
    circle(circleVector.x, circleVector.y, circumference);

  }
  // circle function
  void circleFunction(){
    // calls the method with the circle's properties
    circleProperties();
  }
  
}
