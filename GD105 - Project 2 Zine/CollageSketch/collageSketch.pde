int backgroundCover = #ff00ff;


float w = width;
float h = height;

void setup() {

  // setup canvas for display with background
  size(800, 600); // x, y cannot reach the variables so 
  background(backgroundCover);
  scale(0.9);
  fill(0);
  text("Loading GIF please, wait...", 350, 300, 5000);
  rectMode(CENTER);
  noFill();
  strokeWeight(5);
  
  rect(415, 295, 180, 60);  
}   

void draw(){frameRate(60);
  
background(#ffffff);
// variables
int n5=500;

// load images
PImage img1;
img1 = loadImage("1.png");
PImage img2; 
img2 = loadImage("6.png");  
PImage img3; 
img3 = loadImage("9.png");
PImage img4;
img4 = loadImage("32.png");
PImage img5;
img5 = loadImage("33.png");
PImage img6;
img6 = loadImage("35.png");
PImage img7;
img7 = loadImage("41.png");
PImage img8;
img8 = loadImage("45.png");
PImage img9;
img9 = loadImage("50.png");
PImage img10;
img10 = loadImage("77.png");
PImage img11;
img11 = loadImage("80.png");
PImage img12;
img12 = loadImage("89.png");
PImage img13;
img13 = loadImage("90.png");
PImage img14;
img14 = loadImage("98.png");
PImage img15;
img15 = loadImage("100.png");
PImage img16;
img16 = loadImage("avatar2.png");

// up to 60 pictures

scale(0.01);
//     i        x       y 
// axis to the random sequence of coordinates
int x = 190; // number increase to the right
int y = 420; // number increase down 

int a = 22500; // min at 45
int b = 42500; // max at 85
int e = 90; // static number

fill(0, 255, 100);
strokeWeight(2000);
ellipse(n5*65, 90*320, n5*65, 90*490);
fill(random(120, 230), random(120, 230), random(120, 230));
ellipse(n5*65, 90*330, n5*65, 90*500);


// display images 

image(img1, random(a, b), e*random(x, y));
image(img2, random(a, b), e*random(x, y));
image(img3, random(a, b), e*random(x, y));
image(img4, random(a, b), e*random(x, y));
image(img5, random(a, b), e*random(x, y));
image(img6, random(a, b), e*random(x, y));
image(img7, random(a, b), e*random(x, y));
image(img8, random(a, b), e*random(x, y));
image(img9, random(a, b), e*random(x, y));
image(img10, random(a, b), e*random(x, y));
image(img11, random(a, b), e*random(x, y));
image(img12, random(a, b), e*random(x, y));
image(img13, random(a, b), e*random(x, y));
image(img14, random(a, b), e*random(x, y));
image(img15, random(a, b), e*random(x, y));
image(img16, random(a, b), e*random(x, y));

  
  // Eyes coordinates turned into intergers
  int xAxis = 24200; // multiples of 2,000's for (y) and 10,000's for (x)
  int yAxis = 16500;
  int xAxis1 = 32800;
  int yAxis1 = 16500;
  
  fill(#ff00ff);
  ellipse(xAxis, yAxis, 4000, 4000);
  ellipse(xAxis1, yAxis1, 4000, 4000);
  fill(backgroundCover);
  strokeWeight(2);
  
  
}
