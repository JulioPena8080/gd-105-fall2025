import processing.svg.*; // import library

beginRecord(SVG, "plot_04");
line(75, 50, width/2, height/2-5); // first line to drawn in screen
line(25, 25, 75, 50);
line(100, 50, 25, 25);
line(100, 50, 0, 0);
line(0, 0, 100, 25); // last line drawn in screen 
endRecord(); // end of recording
