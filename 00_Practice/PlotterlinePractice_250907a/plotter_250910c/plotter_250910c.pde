import processing.svg.*; // importing proccessing library of scaling vector graphic 

  beginRecord(SVG, "myCoolPlot.svg"); // set format and file name
  line(0, 0, width, height); // creates a line
  line(0, width, height, 0);
  line(width/2, height/2, width/2, height);
  endRecord(); // conclude record with an endRecord method
