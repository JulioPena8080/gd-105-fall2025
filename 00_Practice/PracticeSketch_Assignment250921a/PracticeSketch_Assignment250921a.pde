void setup(){
     size(100,100);
     background(225);
     
}
void draw(){
     stroke(0); // green stroke
     strokeWeight(4);
     strokeCap(ROUND);
     line(25, 75, 40, 50); // LEFT SIDE
     line(25, 25, 40, 50);
     
     line(75, 75, 60, 50); // RIGHT SIDE
     line(75, 25, 60, 50);
     
}
