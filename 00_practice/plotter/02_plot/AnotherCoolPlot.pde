import processing.svg.*; // importing everything from processing library of scaling vector graphic
void setup(){
  size(101, 101);

}
void draw(){
  
  frameRate(1);
  background(255);
 

  beginRecord(SVG, "AnotherCoolPlot"); // set format and file name
  noFill();
  // normal lines
  line(0, 0, 100, 0); 
  line(0, 0, 0, 100);
  line(0, 100, 100, 100);
  line(100, 0, 100, 100);
  // extra 
  curve(15, 0, 15, 100, 85, 0, 85, 100);
  curve(100, 85, 0, 85, 100, 15, 0, 15);
  
  
  //line();
  
  
  // from top left to right bottom
  line(0, 0, 25, 25); // left 
  line(75, 75, 100, 100); //right 
  // sencond line 
  line(100, 0, 75, 25);
  line(0, 100, 25, 75);
  // square in the middle
  translate(width/2, height/2);
  rectMode(CENTER);
  square(0, 0, 50);
  square(0, 0, 40);
  // adding a diamond in the center
  rotate(TAU * 0.125);
  square(0, 0, 25);
  
  square(0, 0, 15);

  
  endRecord(); // finish the recording for the plotter 

  
}
