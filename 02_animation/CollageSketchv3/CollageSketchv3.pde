// Tweak mode
void setup(){
  size(100, 100);
}
void draw(){
  int x = 50; // change the 'x' values on tweak mode for a demostration
  background(255);
  line(0, 0, 100, 100);
  line(0, 100, 100, 0);
  line(x, 50, 50, 100); 
}
