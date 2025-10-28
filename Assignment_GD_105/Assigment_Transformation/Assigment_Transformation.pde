// Functions that can help anyone build any project below
// This method creates the main display border
void setup() 
{
  size(600, 600); // size of canvas
  background(200, 50, 30); // Color
  stroke(225); // color of the line
}


// This method creates interective composition in each line of code
void draw()
{
  line(125,100,300,400);  // draws a line between point a(125,100) and (300,400)
  fill(color(200,45,255)); // fill color for the circle
  ellipse(200,200,50,50); // draw the circle
  fill(25.45,200); // fill color for the rectangle
  rect(300,300,100,50); // drawing a rectangle
}

// If this code is tested on processing you will see every line 
// drawn with the first method which display each row on the screen
