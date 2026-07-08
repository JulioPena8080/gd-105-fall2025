// create a class for the level
class level{

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
      // conditions for level
      if(mouseY<=201){
        offset=true;
      }
      if(mousePressed&&offset==true){
        tall-=mouseY;
        fill(white);
        textSize(25);
        text("This is mouse X coordinate: " + mouseX, rect.x+10, rect.y+25);
        text("This is mouse Y coordinate: " + mouseY, rect.x+10, rect.y+75);
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
      // moves origin to the center
      translation();
      scale(1.5);
      // create a layer of background
      // level background
      fill(darkGreen);
      rect(rect.x-15, rect.y, big_background, tall_background);
      // rectangle for the level
      fill(green);
      rect(rect.x-15, rect.y, big, tall);
      // creates line for the offset  
      stroke(255);
      line(rect.x-250, rect.y, width, rect.y);
    }

}
