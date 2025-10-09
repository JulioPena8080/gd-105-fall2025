int backgroundCover = #aa00af;

float w = width;
float h = height;



void setup() {

  // setup canvas for display with background
  size(800, 600); // x, y cannot reach the variables so 
  background(backgroundCover);
  frameRate(1);
  scale(0.9);
  
}  


void draw(){
  // variables
  int num5=500;
 

  // load images
  PImage img1;
  img1 = loadImage("1.jpg");
  PImage img2; 
  img2 = loadImage("2.jpg");  
  PImage img3; 
  img3 = loadImage("3.jpg");
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
  
    for(float x = w/2; x<w; x++){x=w/2*2;// this can be code
      for(float y = h/2; y<h; y++){y=w/2*2;// and this too
          for(float s = 20; s<50; s++){
              fill(0, 240, 130);
              ellipse(x*2+8*20, y*2+80, 275, 290); }}}
              
              // display images with 
              scale(0.01);
              image(img1, num5*90, 90*220);
              image(img2, num5*70, 90*200);
              image(img3, num5*50, 90*180);
              image(img4, num5*60, 90*170);
              image(img5, num5*65, 90*230);
              
                
              
  
}
