// A method first to set the size of the canvas
void setup()
{
  size(700, 700);
  background(255);
}

void draw()
{
  int numRows = 2;
  int numCols = 2;
  float cellSize = width / numCols;
  for(int i=0; i<numZine; i++)
  {
    stroke(1);
    // left    right
    line(0, 99, 99, 99);
  }
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
