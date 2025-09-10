

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
  
  float columns = 0.0;
  
  textMode(CENTER); // line does not have syntax error but it dont center 
  text("DEBUG ARRAY FOR DIGITS PER COLUMN", 150, 50); // display text in the canvas with coordinates
  
  int Integers = 10;
  int[] unit = {0,1,2,3,4,5,6,7,8,9,10}; // integer array for digit display in grind
  
  // floating decimals from the width divided by columns
  float cellSize = width / numCols; 
  
  for(int arr : unit) // trying to use foreach 
                       // loop to mark each column with a digit 4
                       // to be able to measure
                       
  {
    
    //System.out.println(arr); // the array is not the problem 
                  // add  "units" instead of "arr" look at the terminal
                  // i dont know what it is but i know the code is good 
                  columns = numCols;
                  for(float cols : unit) 
                  {
                    text(cols, numRows, numCols);
                  }
    text(arr, numCols, 30);
    // the parameters cannot be a coordinate to be able to replicate
    // I need some help for this part
    
      
  }
 
  for(int i=0; i<numKano; i++) // For loops is essential for describing 
                               // to the PC what you want out of the code 
  {
    stroke(0);
    line(700, i / numKano, 0, 700); 
  }
  for(int i=0;i<numZine; i++) 
  {
    stroke(0);
    
    // Google AI mode example:
    // (x1, y1): Coordinates of the starting point of the line
    // (x2, y2): Coordinates of the ending point of the line
    
    // My example:
    // line function coordination in my own words explaing it's possitions
    // is very simple once you see from these comments below |
    // left    right   //left right                      ____|
    // 
    
    
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
