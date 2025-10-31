import processing.svg.*; // import library
int x = width/2; // set x to width divided by 2
int y = height/2; // set y to height divided by 2

//beginRecord(SVG, "plot_03");
line(width-50, height-30, x/2, y/2);
line(x/2, y/2, width-40, height-20);
line(100, y/2, width, height);
//endRecord();
