void setup() 
{
  size(400, 400); // Set the size of the sketch window
  background(255); // Set a Light gray background
}

void draw() {
  int numRows = 10;
  int numCols = 10;
  float cellSize =  width / numCols;
  
  stroke(0); // set line color to black 
  
  for (int i = 0; i < numRows; i++) {
  line(0, i * cellSize, width, i * cellSize); }
  for (int i = 0; i < numCols; i++) {
    line(i * cellSize, 0, i * cellSize, height);}
}
