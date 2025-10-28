import processing.svg.*; // importing proccessing library of scaling vector graphic 

  beginRecord(SVG, "myCoolPlot.svg"); // set format and file name
  line(0, 0, width, height); // creates a line from top left corner to bottom right corner
  line(0, width, height, 0); // creates a line from bottom left corner to top right corner
  line(width/2, height/2, width/2, height);  // creates a line in the center and finishes at the bottom
  endRecord(); // conclude record with an endRecord function
