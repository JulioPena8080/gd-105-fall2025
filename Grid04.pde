void setup() 
{
  size(400, 400); // Set the size of the sketch window
  background(255); // Set a Light gray background
}

void draw() {
  int numRows = 1; // Warning for safety do not go above 50 pixels for each 
  int numCols = 1; // Row and column it affects the eye sight of the user
  
  float cellSize =  width / numCols; // Square in between both axis per column
  System.out.println("CellSize number of Columns: " + cellSize); // Check for CellSize
  
  stroke(0); // Set line color to black 
  
  for (int i = 0; i < numRows; i++) { // for loop to iterate each Row
    line(0, i * cellSize, width, i * cellSize); } // 4 equations instead of coordinates for the rows to be display horizontally
  for (int i = 0; i < numCols; i++) {  // Same equation as above
    line(i * cellSize, 0, i * cellSize, height);} // Opposite to the one above
}
