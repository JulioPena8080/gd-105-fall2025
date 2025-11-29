void setup(){
  size(800, 400);
}


void draw(){
  int circleRadious = 150;
  float mouseDistance = dist(mouseX, mouseY, width/2, height/2);
  boolean colliding = mouseDistance < circleRadious;
  fill(#00ff11);
  if(colliding){
    fill(#00aaee);
    println("colling!!");
  } else {
    println("Not colling");
    fill(#ff00ff);
  }
  circle(width/2, height/2, circleRadious);
  point(mouseX, mouseY);
}
