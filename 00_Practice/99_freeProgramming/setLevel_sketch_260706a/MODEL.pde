// create a class for the level
class levelClass {
    // create instructions 
    void levelGuide(){
      String guide = " Click & Drag ";
      fill(95);
      textSize(35);
      text(guide, 295, 125);
    }
    // create translation for level
    void translation(){
      float x = width/2-30;
      float y = height/2-50;
      translate(x, y);
    }
    // create level variables 
    void levelProperties(){
      // model of the level
      float threshold = 140;
      // level axis coordinates in canvas 
      PVector rect = new PVector(0, 0);
      // dimesion of level
      float big_background = 50;
      float tall_background = 140;
      float big = 50;
      float tall = 140;
      // create colors for the level
      color darkGreen = color(10, 100, 10);
      color white = 255;
      color green = color(25, 175, 95);
      // create an area for the level functionalities
      boolean offset = false;
      // set of string to display 
      String x = "This is mouse X coordinates: ";
      String y = "This is mouse Y coordinates: ";
      // conditions for level
      if(mouseY<=201){
        offset=true;
      }
      if(mousePressed&&offset==true){
        tall-=mouseY;
        fill(white);
        textSize(25);
        text(x + mouseX, rect.x+10, rect.y+25);
        text(y + mouseY, rect.x+10, rect.y+75);
      }
      // from top to bottom
      if(mouseY>threshold){
        tall=threshold;
      }
      // bottom to top
      if(mouseY>335){
          tall=threshold;
      }
      // in the middle 
      if(mouseY<=0){
        tall=threshold;
      }
      // display the level guide 
      levelGuide();
      // moves origin to the center
      translation();
      // extends the image 
      scale(1.5);
      // create a layer of background
      // level background
      fill(darkGreen);
      rect(rect.x-15, rect.y, big_background, tall_background);
      // rectangle for the level
      fill(green);
      rect(rect.x-15, rect.y, big, tall);
      // creates line for the offset  
      stroke(175);
      line(rect.x-250, rect.y, width, rect.y); 
    }
}
