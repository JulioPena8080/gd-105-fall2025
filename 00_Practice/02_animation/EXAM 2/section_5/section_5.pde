void setup(){ // set up
  size(100, 100);
  background(255);
}

void draw(){ // display
  background(255);
  stroke(color(0));
  strokeWeight(2);
  fill(255);
  square(25, 25, 50);
  fill(0);
  circle(50, 50, 25);
  stroke(color(255));
  line(50, 50, 50, 0);
  stroke(color(0));
  fill(255);
  triangle(75, 25, 25, 25, 75, 50);
  triangle(75, 25, 25, 25, 25, 50);
}
