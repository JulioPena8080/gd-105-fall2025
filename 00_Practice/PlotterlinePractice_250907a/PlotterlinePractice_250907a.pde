
// First a method to set the size and the background of the canvas 

void setup()
{
  size(700, 700);
  background(255); // Color grey in background
}

// A second method to define each variable and it's conditions
void draw()
{
  scale(0.8); // Scaling is to see beyond grid
  //translate(300, 150); // translating for centering 
  fill(255, 60);
  
  // Integers defined for the grid
  int numRows = 10;
  int numCols = 10;
  int numZine = 10;
  int numKano = 10;

  // floating decimals from the width divided by columns
  float cellSize = width / numCols;
  float cellSizeX = height / numRows;
 
  for(int i=0; i<numKano; i++) // For loops is essential for describing 
                               // to the PC what you want out of the code 
  {
    stroke(255, 10); 
    
    //line(700, i / numKano, 0, 700); 
  }
  for(int i=0; i<numZine; i++) 
  {
    stroke(255, 20);
    
    // Google AI mode example:
    // (x1, y1): Coordinates of the starting point of the line
    // (x2, y2): Coordinates of the ending point of the line
    
    // My example:
    // line function coordination in my own words explaing it's possitions
    // is very simple once you see from these comments below |
    // left    right   //left right                      ____|
    //line(0, i / numZine, 700, 700); 
    // its more difficult to see it without the comments
  }
  for(int i=0; i<numRows; i++)
  {
    stroke(0);
    //line(0, i * cellSize, width, i * cellSize); // line can also take a 
                                                // specific shape or form
                                                // based on the operation
  }
  for(int i=0; i<numCols; i++) 
  {  // negative 3 to draw the missing lines outside "canvas size"  
     // lines that cannot be displayed but they there
    stroke(0);                                  // stroke is the depth of 
                                                // the line before is draw
   // line(i * cellSize, 0, i * cellSize * 2, height);
  }                             // times one works
  for(int i=0; i<cellSizeX; i++)
  {  
    stroke(0);
    line(i / cellSize * -30000, 0, i * cellSize, height);
  }
  for(int i=0; i<numCols; i++)
  {
    numKano = 50;
    stroke(0);
    //line(i * cellSizeX, 0 , i * cellSize, height);
    //line(0, i * cellSize, height, i * cellSizeX);
  }
  for(int i=0; i<numRows; i++)
  {
    numZine = 50;  
    stroke(0);
    line(width, i * numZine / cellSizeX, 0, i * cellSize * 2);
    line(i * numKano, 0, 700, height);
  }
  
}
