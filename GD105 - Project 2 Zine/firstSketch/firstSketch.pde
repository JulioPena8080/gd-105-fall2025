int backgroundCover = #aa00af;

float w = width;
float h = height;



void setup() {

  // setup canvas for display with background
  size(800, 600); // x, y cannot reach the variables so 
  background(backgroundCover);
  frameRate(1);
  
  scale(0.01); // zoom out 
  
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
  
  // coordinates for each image creating a shape of ellipse
  
  //float x; //AXIS "x" = ellipse cartesian coordinate horizontally
  //float y;
  //float s;
  

  
  
  
  
  
  // calling each image 
  
  image(img1, 1800*20, 1500*20); // display image
  image(img2, w*100, h*100);
  image(img3, w*320, w*320);
  
}

void keyPressed(){

}

void mouseClicked(){
      
}

void draw(){
  
    for(float x = w/2; x<w; x++){
      for(float y = h/2; y<h; y++){
          for(float s = 20; s<50; s++){
              fill(0, 240, 130);
              ellipse(x, y, 20, 40);
          }  
      }
  }
  
}
