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
img32 = loadImage("32.png");
PImage img33;
img33 = loadImage("33.jpg");
PImage img34;
img34 = loadImage("34.jpg");
PImage img35;
img35 = loadImage("35.jpg");
PImage img36;
img36 = loadImage("36.jpg");
PImage img37;
img37 = loadImage("37.jpg");
PImage img38;
img38 = loadImage("38.jpg");
PImage img39;
img39 = loadImage("39.jpg");
PImage img40;
img40 = loadImage("40.jpg");
PImage img41;
img41 = loadImage("41.jpg");
PImage img42;
img42 = loadImage("42.jpg");
PImage img43;
img43 = loadImage("43.jpg");
PImage img44;
img44 = loadImage("44.jpg");
PImage img45;
img45 = loadImage("45.jpg");
PImage img46;
img46 = loadImage("46.jpg");
PImage img47;
img47 = loadImage("47.jpg");
PImage img48;
img48 = loadImage("48.jpg");
PImage img49;
img49 = loadImage("49.jpg");
PImage img50;
img50 = loadImage("50.jpg");
PImage img51;
img51 = loadImage("51.jpg");
PImage img52;
img52 = loadImage("52.jpg");
PImage img53;
img53 = loadImage("53.jpg");
PImage img54;
img54 = loadImage("54.jpg");
PImage img55;
img55 = loadImage("55.jpg");
PImage img56;
img56 = loadImage("56.jpg");
PImage img57;
img57 = loadImage("57.jpg");
PImage img58;
img58 = loadImage("58.jpg");
PImage img59;
img59 = loadImage("59.jpg");
PImage img60;
img60 = loadImage("60.jpg");
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
image(img17, random(a, b), e*random(x, y));
image(img18, random(a, b), e*random(x, y));
image(img19, random(a, b), e*random(x, y));
image(img20, random(a, b), e*random(x, y));
image(img21, random(a, b), e*random(x, y));
image(img22, random(a, b), e*random(x, y));
image(img23, random(a, b), e*random(x, y));
image(img24, random(a, b), e*random(x, y));
image(img25, random(a, b), e*random(x, y));
image(img26, random(a, b), e*random(x, y));
image(img27, random(a, b), e*random(x, y));
image(img28, random(a, b), e*random(x, y));
image(img29, random(a, b), e*random(x, y));
image(img30, random(a, b), e*random(x, y));
image(img31, random(a, b), e*random(x, y));
image(img32, random(a, b), e*random(x, y));
image(img33, random(a, b), e*random(x, y));
image(img34, random(a, b), e*random(x, y));
image(img35, random(a, b), e*random(x, y));
image(img36, random(a, b), e*random(x, y));
image(img37, random(a, b), e*random(x, y));
image(img38, random(a, b), e*random(x, y));
image(img39, random(a, b), e*random(x, y));
image(img40, random(a, b), e*random(x, y));
image(img41, random(a, b), e*random(x, y));
image(img42, random(a, b), e*random(x, y));
image(img43, random(a, b), e*random(x, y));
image(img44, random(a, b), e*random(x, y));
image(img45, random(a, b), e*random(x, y));
image(img46, random(a, b), e*random(x, y));
image(img47, random(a, b), e*random(x, y));
image(img48, random(a, b), e*random(x, y));
image(img49, random(a, b), e*random(x, y));
image(img50, random(a, b), e*random(x, y));
image(img51, random(a, b), e*random(x, y));
image(img52, random(a, b), e*random(x, y));
image(img53, random(a, b), e*random(x, y));
image(img54, random(a, b), e*random(x, y));
image(img55, random(a, b), e*random(x, y));
image(img56, random(a, b), e*random(x, y));
image(img57, random(a, b), e*random(x, y));
image(img58, random(a, b), e*random(x, y));
image(img59, random(a, b), e*random(x, y));
image(img60, random(a, b), e*random(x, y));
  
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
