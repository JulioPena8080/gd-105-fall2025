

// First a method to set the size of the canvas

void setup()
{
  size(700, 700);
  background(125);
}


// A second method to define each variable and it's conditions
void draw()
{
  
  int numRows = 10;
  int numCols = 10;
  int numZine = 10;
  int numKano = 10;
  
  float cellSize = width / numCols; 
 
  for(int i=0; i<numKano; i++) 
  { 
    stroke(0);
    line(700, i / numKano, 0, 700); 
  }
  for(int i=0;i<numZine; i++) {
    stroke(0);
    
    // line function coordination in my own words explaing it's possitions
    // is very simple once you see from these comments below |
    // left    right   //same here                       ____|
    
    
    line(0, i / numZine, 700, 700);} 
    // its more difficult to see it without the comments
    
  for(int i=0; i<numRows; i++)
  {
    stroke(0);
    line(0, i * cellSize, width, i * cellSize);
  }
  for(int i=0; i<numCols; i++) 
  {
    stroke(0);
    line(i * cellSize, 0, i * cellSize, height);
  }
  
}
