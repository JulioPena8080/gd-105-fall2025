void setup(){
  size(800, 500);
  background(255);
}
int x = 100;
int y = 100;
int s = 20;


void c(){
  circle(x, y, s);
  
}

void draw(){
  background(255);
  if(mousePressed){
     x += 10*frameCount;
  }
  if(x>width){
     x-= 10*frameCount; 
  }
  c();
}
