
// First a method to set the size and the background of the canvas 

void setup()
{
  size(700, 700);
  background(70, 150, 60); // Color grey in background
}
int upToHeight = height;
int upToWidth = width;

int movePixel = 10;
int movePixels = 100;

int toStartAt = 0;
int toEndAt = 400;

String checkBoolean = null;

Boolean makeTrueEvent = true;
Boolean StartAnimation = true;
Boolean codeStart = true;

Boolean codeStop = false;
Boolean stateOfNone = false;


// A second method to define each variable and it's conditions
void draw()
{
  if (codeStart == true) 
    {
      background(75,75,75);
      if(codeStart == true){;background(120,140,60,90); // this background is another color it ran
    for(int i=0; i<movePixels; i++){background(0,145,80);fill(0,0,25);circle(200,140,100);}} 
    else{background(255,0,0);}
      
    }
  
  scale(0.7); // Scaling is to see beyond grid
  //translate(300, 150); // translating for centering 
  fill(255, 60);
  textSize(28);
  text("Rule 1: pick a color", 700, 40);
  text("Rule 2: pick a shape", 700, 80);
  text("Goal: 1 square or number", 700, 120);
  
  // Integers defined for the grid
  int numRows = 10;
  int numCols = 10;
  int numZine = 10;
  int numKano = 10;
  int[] unit = {0,1,2,3,4,5,6,7,8,9,10}; // Integer array for digit display in grind

  
  // shapes, stroke and fills with some text around it
  fill(255, 255, 255);
  textMode(CENTER); // line does have syntax error in textMOde(3) 
                    // is not supported by this render but it dont center 
  textSize(60);
  text(" G   A  M   E             GRIDS", 20, 350); // display text in the canvas with coordinates 
  textSize(20); 
  text("0", 24, 15);
  text("1", 72, 15);
  text("2", 144, 15);
  text("3", 216, 15);
  text("4", 288, 15); // had to go back to the basic to remember how I got here
  
  // floating decimals from the width divided by columns
  float cellSize = width / numCols; 
  
  int shape = 1; // to replicate shapes with a for loop
  
  for(int i=0; i<shape; i++) // for loops are eazy to get the hang of it
  {
    stroke(0);
    fill(225, 128, 0);
    triangle(200, 300, 400, 50, 60, 70); // takes 6 parameters
    
    stroke(2);
    fill(225, 0, 0, 40);
    circle(600, 300, 200); // takes 3 parameters
    
    stroke(1);
    fill(0, 0, 255);
    // rotate(190); // Rotation for 190 degrees
    square(400, 500, 100); // takes 3 parameters 
  }
  
  
  for(int arr : unit)  // trying to use foreach 
                       // loop to mark each column with a digit 
                       // to be able to measure        
  {
    //System.out.println(arr); // the array is not the problem 
   // Degub Section //
                  // add  "units" instead of "arr" look at the terminal
                  // i dont know what it is but i know the code is good 
                  // maybe is the bytes of these equations encrypted
    textSize(40);
    fill(0,0,0);
    text("0", 5, 48);
    text("1", 5, 100);
    text("2", 5, 170);
    text("3", 5, 240);
    text("4", 5, 308);
    // the parameters cannot be a coordinate to be able to replicate
    // I need some help for this part
  }
 
  for(int i=0; i<numKano; i++) // For loops is essential for describing 
                               // to the PC what you want out of the code 
  {
    stroke(255, 10); 
    
    line(700, i / numKano, 0, 700); 
  }
  for(int i=0;i<numZine; i++) 
  {
    stroke(255, 20);
    
    // Google AI mode example:
    // (x1, y1): Coordinates of the starting point of the line
    // (x2, y2): Coordinates of the ending point of the line
    
    // My example:
    // line function coordination in my own words explaing it's possitions
    // is very simple once you see from these comments below |
    // left    right   //left right                      ____|
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
  {  // negative 3 to draw the missing lines outside "canvas size"  
     // lines that cannot be displayed but they there
    stroke(0);                                  // stroke is the depth of 
                                                // the line before is draw
    line(i * cellSize, 0, i * cellSize, height);
  }                             // times one works
 
}
