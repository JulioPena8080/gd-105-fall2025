// create a class for the level
class level{

    // create translation
    void translation(){
      float x = width/2-30;
      float y = height/2-50;
      translate(x, y);
    }

    // create level
    void levelProperties(){
      // model of the level
      float threshold = 250;
      // offset limit
      //float offset = ;
      // speed of motion
      float velocity = 0.5;
 
      // level axis coordinates in canvas 
      PVector rect = new PVector(0, 0);
      // dimesion of level
      float big_background = 50;
      float tall_background = 140;
      float big = 50;
      float tall = 140;
      float inRange = random(0, 335);
      if(mousePressed){
        tall-=mouseY;
        text("This is mouse Y coordinate: " + mouseY, rect.x+10, rect.y+25);
      }
      // from top to bottom
      if(mouseY>140){
        tall=140;
      }
      //bottom to top
      if(mouseY>335){
          tall=140;
      }
      // in the middle 
      if(mouseY<=0){
        tall=140;
      }
      // moves origin to the center
      translation();
      // scale(0.5);
      // create a layer of background
      // level background
      fill(125);
      rect(rect.x, rect.y, big_background, tall_background);
      // rectangle for the level
      fill(225);
      rect(rect.x, rect.y, big, tall);

    }

}
