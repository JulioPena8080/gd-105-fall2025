// this is where all the loops takes place
class drawClass {
  // returns everything to the canvas in frame count
  void draw(){
    // allocate class for methods
    layoutClass layoutClassForCanvas = new layoutClass();
    // assign new vector to the call
    PVector rectVector = new PVector(0, 0);
    PVector textVector = new PVector(0, 0);
    // call the custom function for the layout
    layoutClassForCanvas.customRectFunction(rectVector, textVector); // rect display but wont be effective
  }
}

// core mechanics that can load and display once 
class setupClass {
  // returns the settings of the canvas
  void setup(){
    color black = 0;
    size(800, 600);
    background(black);
    textSize(40);
    textAlign(CENTER);
  }
}
