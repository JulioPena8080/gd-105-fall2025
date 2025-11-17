void setup(){ // animated composition
  size(100, 100);
  background(0);
}
void draw(){
  square(mouseX, mouseY,
        sin(frameCount * 0.1) * 30);
}
