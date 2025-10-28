import processing.svg.*; // import library
int x = width/2; // set x to width divided by 2
int y = height/2; // set y to height divided by 2

beginRecord(SVG, "plot_03");
line(x, y/2-50, x, y); // creates lines with x and y 
line(x, y/2+50, x, y*2);
line(x*2, y, x ,y*2);
line(0, width, height, 0); // line without x and y but only width and height
endRecord();
