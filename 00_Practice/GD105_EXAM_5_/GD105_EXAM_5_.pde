void setup(){
  size(100, 100);
  background(255);
  frameRate(1);
}
void draw(){
  stroke(2);
  strokeWeight(2);
  square(25, 25, 50);
  fill(0);
  circle(50, 50, 25);
  noFill();
  stroke(255);
  line(50, 50, 50, 25);
  stroke(0);
  fill(255);
  triangle(75, 25, 25, 25, 75, 50); // RIGHT
  triangle(25, 50, 75, 25, 25, 25); // LEFT
}
