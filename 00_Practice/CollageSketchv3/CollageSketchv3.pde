PVector start = new PVector(0, 0);
PVector end = new PVector(width/2, height/2);

// Tweak mode
void setup(){
  size(100, 100);
  background(255);
  
}


void draw(){
  frameRate(1);
  //background(255);
  rotate(end.x * frameCount / 0.0050); 
  line(start.x, start.y, end.x, end.y);
}
