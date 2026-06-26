// classes for the layout 
class layoutClass {
  // dimension for layout
  float x_end = width;
  float y_end = height;
  // default vector for rectangle
  PVector rectVector = new PVector(0, 0);
  PVector textVector = new PVector(0, 0);
  // rect that draw the layout in canvas
  void customRectFunction(PVector rectVector, PVector textVector){
    fill(75);
    stroke(255);
    strokeWeight(2);    
    rect(12.5, 15, rectVector.x+x_end-25, rectVector.y+y_end-25);
    // rect text properties
    strokeWeight(2);
    textSize(65);
    fill(0);
    text("Label 1", textVector.x+width/2, textVector.y+height/2);
  }
}
// classes for the buttons
