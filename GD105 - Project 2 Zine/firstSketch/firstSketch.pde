int backgroundCover = #aa00af;

float w = width;
float h = height;

int x = 800;
int y = 600;

void setup() {
  size(800, 500);
  background(backgroundCover);
  PImage img1;
  img1 = loadImage("1.jpg");// load picture
  
  scale(0.01); // zoom out 
  image(img1, 1800*2, 1500*2); // display image
  PImage img2; // label variable
  
  img2 = loadImage("2.jpg"); 
  image(img2, w*100, h*100);
  
  
}

void draw(){
  
}
