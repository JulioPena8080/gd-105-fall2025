// use of arc() curve() and bezier() 
// use of translate() rotate() and scale()

void setup (){
     size(1000, 600); // setting up the canvas size
     //created random range for the colors from 100 to 190 in RGB
     background(random(100, 190), random(100, 190), random(100, 190));
}

void draw(){
  
  // variables to use as intergers multiples of 25 and up to 100
  int a = 25; 
  int b = 50;
  int c = 75;
  int d = 100;
  
  translate(width/2+50, height/2-50); // translate shapes to the center of the canvas
     // to make sure it stays in canvas
     translate(0, 0);// translated once again in a but different coordinate
     scale(2.8); // to re-size shapes
     rotate(90); // to find sustainability
     curve(0, 25, 50, 75, a, c, d, b); // this curve is the one in the left
     arc(50, 25, 50, 25, 25, 50, 50); // this is the second shape is a oval
     bezier(a, b, a, a, d, a, c, a); // and the last shape is one top of the oval
}
