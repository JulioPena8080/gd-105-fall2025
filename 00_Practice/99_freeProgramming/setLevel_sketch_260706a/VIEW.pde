void setup(){
  size(800, 500);
  
}

void draw(){
  background(0);
  
  // allocate class to draw
  level l = new level();
  //l.mousePressed(clicked);
  //l.mouseReleased(clicked);
  //l.setControllers(clicked, tall);
  //l.translation();
  
  l.levelProperties();
}
