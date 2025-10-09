int backgroundCover = #aa00af;

float w = width;
float h = height;

int x = 800;
int y = 600;

void setup() {
  size(800, 500);
  background(backgroundCover);
  
  // load images
  PImage img1;
  img1 = loadImage("1.jpg");// load picture
  
  scale(0.01); // zoom out 
  image(img1, 1800*20, 1500*20); // display image
  PImage img2; // label variable
  
  img2 = loadImage("2.jpg");  
  image(img2, w*100, h*100);
  
  PImage img3; // the third one
  img3 = loadImage("3.jpg");
  image(img3, w*320, w*320);
  
  PImage img4;
  img4 = loadImage("4.jpg");
  PImage img5;
  img5 = loadImage("5.jpg");
  PImage img6;
  img6 = loadImage("6.jpg");
  PImage img7;
  img7 = loadImage("7.jpg");
  PImage img8;
  img8 = loadImage("8.jpg");
  PImage img9;
  img9 = loadImage("9.jpg");
  
}

void draw(){
  
}
