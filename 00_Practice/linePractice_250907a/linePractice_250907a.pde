

// First a method to set the size and the background of the canvas 

void setup()
{
  size(700, 700);
  background(125); // Color grey in background
}


// A second method to define each variable and it's conditions
void draw()
{
// Integers defined
  int numRows = 10;
  int numCols = 10;
  int numZine = 10;
  int numKano = 10;
  
  // floating decimals from the width divided by columns
  float cellSize = width / numCols; 
 
  for(int i=0; i<numKano; i++) // For loops is essential for describing 
                               // to the PC what you want out of the code 
  {
    stroke(0);
    line(700, i / numKano, 0, 700); 
  }
  for(int i=0;i<numZine; i++) 
  {
    stroke(0);
    
    // line function coordination in my own words explaing it's possitions
    // is very simple once you see from these comments below |
    // left    right   //same here                       ____|
    
    
    line(0, i / numZine, 700, 700);} 
    // its more difficult to see it without the comments
    
  for(int i=0; i<numRows; i++)
  {
    stroke(0);
    line(0, i * cellSize, width, i * cellSize); // line can also take a 
                                                // specific shape or form
                                                // based on the operation
  }
  for(int i=0; i<numCols; i++) 
  {
    stroke(0);                                  // stroke is the depth of 
                                                // the line before is written
    line(i * cellSize, 0, i * cellSize, height);
  }
  
}
