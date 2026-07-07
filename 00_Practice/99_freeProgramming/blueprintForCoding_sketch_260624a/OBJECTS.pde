// classes for the layout 
class layoutClass {
  // variables for rectangle dimension
  float x = 12.5;
  float y = 15;
  // dimension for layout
  float x_end = width;
  float y_end = height;
  // default vector for rectangle
  PVector rectVector = new PVector(0, 0);
  PVector textVector = new PVector(0, 0);
  // create a custom function for the rectangle's parameters
  void rectangle(PVector rectVector, float x, float y, float x_end, float y_end){
    rectVector.x+=x_end-25; // rectangle math in canvas
    rectVector.y+=y_end-25;
    rect(x, y, rectVector.x, rectVector.y);
  }
  // rect that draw the layout in canvas
  void customRectFunction(PVector rectVector, PVector textVector){ // dont really need parameters because its inside a class but if i call this method inside another class
    fill(75);                                                      // developer will need these parameters in place in order to use them
    stroke(255);
    strokeWeight(2);    
    //calling custom function for the rectangle
    rectangle(rectVector, x, y, x_end, y_end);
    // rect text properties
    strokeWeight(2);
    textSize(65);
    fill(0);
    text("Label 1", textVector.x+width/2, textVector.y+height/2);
  }
}
// classes for the buttons
