

// A method first to set the size of the canvas
void setup()
{
  size(600, 600);
  background(125);
}

void draw()
{
  
  int numRows = 10;
  int numCols = 10;
  int numZine = 10;
  int numKano = 10;
  
  
  float cellSize = width / numCols; 
 
  for(int i=0; i<numKano; i++) 
  { 
    stroke(1);
    line(700, i / numKano, 0, 700); 
  }
  for(int i=0;i<numZine; i++) {
    stroke(1);
    // left    right
    line(0, i / numZine, 700, 700);} 
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
