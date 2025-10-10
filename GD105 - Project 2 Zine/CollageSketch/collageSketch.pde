int backgroundCover = #aa00af;


float w = width;
float h = height;

void setup() {

  // setup canvas for display with background
  size(800, 600); // x, y cannot reach the variables so 
  background(backgroundCover);
  frameRate(60);
  scale(0.9);
  text("Loading GIF please, wait...", 350, 300, 5000);
  rectMode(CENTER);
  strokeWeight(5);
  rect(415, 295, 180, 60);  
}   

void draw(){
  
background(#ffffff);
// variables
int n5=500;

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
PImage img10;
img10 = loadImage("10.jpg");
PImage img11;
img11 = loadImage("11.jpg");
PImage img12;
img12 = loadImage("12.jpg");
PImage img13;
img13 = loadImage("13.jpg");
PImage img14;
img14 = loadImage("14.jpg");
PImage img15;
img15 = loadImage("15.jpg");
PImage img16;
img16 = loadImage("16.jpg");
PImage img17; 
img17 = loadImage("17.jpg");
PImage img18;
img18 = loadImage("18.jpg");
PImage img19;
img19 = loadImage("19.jpg");
PImage img20;
img20 = loadImage("20.jpg");
PImage img21;
img21 = loadImage("21.jpg");
PImage img22;
img22 = loadImage("22.jpg");
PImage img23;
img23 = loadImage("23.jpg");
PImage img24;
img24 = loadImage("24.jpg");
PImage img25;
img25 = loadImage("25.jpg");
PImage img26;
img26 = loadImage("26.jpg");
PImage img27;
img27 = loadImage("27.jpg");
PImage img28;
img28 = loadImage("28.jpg");
PImage img29;
img29 = loadImage("29.jpg");
PImage img30;
img30 = loadImage("30.jpg");
PImage img31;
img31 = loadImage("31.jpg");
PImage img32;
img32 = loadImage("32.jpg");
PImage img33;
img33 = loadImage("33.jpg");
PImage img34;
img34 = loadImage("34.jpg");
PImage img35;
img35 = loadImage("35.jpg");
PImage img36;
img36 = loadImage("36.jpg");

scale(0.01);
//     i        x       y 
image(img1, n5*80, 90*random(190, 420));
image(img2, n5*70, 90*random(190, 420));
image(img3, n5*60, 90*random(190, 420));
image(img4, n5*65, 90*random(190, 420));
image(img5, n5*65, 90*random(190, 420));
image(img6, n5*75, 90*random(190, 420));
image(img7, n5*85, 90*random(190, 420));
image(img8, n5*65, 90*random(190, 420));
image(img9, n5*85, 90*random(190, 420));
image(img10, n5*65, 90*random(190, 420));
image(img11, n5*70, 90*random(190, 420));
image(img12, n5*75, 90*random(190, 420));
image(img13, n5*70, 90*random(190, 420));
image(img14, n5*75, 90*random(190, 420));
image(img15, n5*80, 90*random(190, 420));
image(img16, n5*75, 90*random(190, 420));
image(img17, n5*70, 90*random(190, 420));
image(img18, n5*50, 90*random(190, 420));
image(img19, n5*75, 90*random(190, 420));
image(img20, n5*70, 90*random(190, 420));
image(img21, n5*50, 90*random(190, 420));
image(img22, n5*75, 90*random(190, 420));
image(img23, n5*50, 90*random(190, 420));
image(img24, n5*70, 90*random(190, 420));
image(img25, n5*80, 90*random(190, 420));
image(img26, n5*80, 90*random(190, 420));
image(img27, n5*60, 90*random(190, 420));
image(img28, n5*80, 90*random(190, 420));
image(img29, n5*70, 90*random(190, 420));
image(img30, n5*45, 90*random(190, 420));
image(img31, n5*70, 90*random(190, 420));
image(img32, n5*50, 90*random(190, 420));
image(img33, n5*45, 90*random(190, 420));
image(img34, n5*45, 90*random(190, 420));
image(img35, n5*60, 90*random(190, 420));
image(img36, n5*55, 90*random(190, 420));

fill(0, 255, 100);
strokeWeight(20);
ellipse(n5*85, 90*220, n5*85, 90*220);
}
