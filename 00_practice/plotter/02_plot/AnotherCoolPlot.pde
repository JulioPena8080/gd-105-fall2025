import processing.svg.*; // importing everything from processing library of scaling vector graphic

  beginRecord(SVG, "AnotherCoolPlot"); // set format and file name
  line(25, height, 25, 0); // line that goes from top to bottom 
  line(0, width, height, 0); // line that goes from bottom left corner to top right corner 
  line(0, 75, width, 75);  // line that goes by 75 in X axis to the left of the canvas at the end
  endRecord(); // finish the recording for the plotter 
