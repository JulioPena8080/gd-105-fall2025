int x = width/2; // set x to width at center
int y = height/2; // set y to height at center
float a = random(99, 191); // set to random
float b = random(x-1, y+1); 
float c = random(0, 110);
void setup(){
  size(100, 100); // set dimension
  background(0); // set background color
}
void draw(){
  circle(random(c), random(c), 10); // set to random at size 10 
  circle(random(c), random(c), 10);  
  //saveFrame("####lines.png"); // WARNING
}
