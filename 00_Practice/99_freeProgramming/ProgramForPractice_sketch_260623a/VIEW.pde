// method that starts the canvas
void setup(){
  size(800, 600);
  background(0);
}

void draw(){
  data classData = new data();
  controlModule access = new controlModule();
  access.mousePressed();
  access.mouseReleased();
  classData.sumFunction();  
                        
}
