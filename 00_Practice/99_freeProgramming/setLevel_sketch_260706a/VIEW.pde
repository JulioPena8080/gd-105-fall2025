void setup(){
  size(800, 500);
}

void draw(){frameRate(30);
  background(25);
  // allocate class to draw
  levelClass display = new levelClass();
  // properties to be display
  display.levelProperties();
}
