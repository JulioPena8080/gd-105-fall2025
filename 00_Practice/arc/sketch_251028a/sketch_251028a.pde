void setup(){ 
  size(1000, 600);
    
}

void draw(){frameRate(10);
  fill(random(100, 190),random(100, 190),random(100, 190));
  stroke(color(random(0, 255), random(0, 255), random(0, 255)));
  circle(random(0, width), random(0, height), 70); 
}
