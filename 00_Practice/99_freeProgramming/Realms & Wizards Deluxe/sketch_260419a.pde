// color of the canvas in the background
color backgroundColor = lerpColor(25, 75, 0.5);
// Both player score Vector
PVector scoreVector = new PVector(0, 0);

// image Vectors 
PVector groundVector = new PVector(0, 0);
PVector waterVector = new PVector(0, 0);
PVector stoneVector = new PVector(0, 0);
PVector chestVector = new PVector(0, 0);
PVector charTwoAlphaVector = new PVector(0, 0);
PVector backgroundHouseVector = new PVector(0, 0);
//mirror image vector
PVector charTwoAlphaMirrorVector = new PVector(0, 0);
// declare sprites
PImage backgroundHouseSprite, groundTileSprite, waterTileSprite, stoneWallSprite, chestTileSprite, charTwoAlphaSprite;
// mirror sprites
PImage charTwoAlphaSpriteMirror;

// variables
float P1 = 0;
float P2 = 0;

class scoreBoard{
  // players text for scoring
  void scoreBoardText(){
      fill(0);
      scale(6);
      textSize(15);
      //translate(width/2, height/2);
      text("P1 :  " + P1, 408, -197, 40);
      text("P2 :  " + P2, 409, -181, 40);
  }
}

// getting all images ready to be display
class SpriteTiles {
  void groundTile(PVector groundVector, PImage groundTileSprite){
    scale(0.25);
    translate(width/2, height/2);
    //
    image(groundTileSprite, groundVector.x+0.0, groundVector.y-(-1686.7));
    //
    image(groundTileSprite, groundVector.x+131.9, groundVector.y-(-1686.7));
    image(groundTileSprite, groundVector.x+263.8, groundVector.y-(-1686.7));
    image(groundTileSprite, groundVector.x+395.7, groundVector.y-(-1686.7));
    image(groundTileSprite, groundVector.x+527.6, groundVector.y-(-1686.7));
    image(groundTileSprite, groundVector.x+659.5, groundVector.y-(-1686.7));
    //
    image(groundTileSprite, groundVector.x+791.4, groundVector.y-(-1686.7));
    image(groundTileSprite, groundVector.x+923.3, groundVector.y-(-1686.7));
    image(groundTileSprite, groundVector.x+1055.2, groundVector.y-(-1686.7));
    image(groundTileSprite, groundVector.x+1187.1, groundVector.y-(-1686.7));
    image(groundTileSprite, groundVector.x+1319.0, groundVector.y-(-1686.7));
    //
    image(groundTileSprite, groundVector.x+1450.9, groundVector.y-(-1686.7));
    image(groundTileSprite, groundVector.x+2324.8, groundVector.y-(-1686.7));
    image(groundTileSprite, groundVector.x+2455.5, groundVector.y-(-1686.7));
    image(groundTileSprite, groundVector.x+2585.9, groundVector.y-(-1686.7));
    image(groundTileSprite, groundVector.x+2718.8, groundVector.y-(-1686.7));
    //
    image(groundTileSprite, groundVector.x+2849.3, groundVector.y-(-1686.7));
  }
  // water tiles 
  void waterTile(PVector waterTileVector, PImage waterTileSprite){
    scale(0.60);
    translate(width/2, height/2);
    image(waterTileSprite, waterTileVector.x-720.5, waterTileVector.y-(-2570.5));
    image(waterTileSprite, waterTileVector.x-860.7, waterTileVector.y-(-2570.5));
    image(waterTileSprite, waterTileVector.x+2332.9, waterTileVector.y-(-2570.5));
    image(waterTileSprite, waterTileVector.x+2745.9, waterTileVector.y-(-2570.5));
    image(waterTileSprite, waterTileVector.x+3157.9, waterTileVector.y-(-2570.5));
  }
  // stone tiles 
  void stoneWall(PVector stoneVector, PImage stoneWallSprite){
    
    scale(0.68);
    translate(width/2, height/2);
    image(stoneWallSprite, stoneVector.x+2.1, stoneVector.y+(+3250.5));
    image(stoneWallSprite, stoneVector.x+2.1, stoneVector.y+(+3013.8));
    image(stoneWallSprite, stoneVector.x+2.1, stoneVector.y+(+2779.1));
    image(stoneWallSprite, stoneVector.x+2.1, stoneVector.y+(+2585.2));
     // controllers for moving the left wall up
    if(P1>0&keyPressed&key=='1'){
      image(stoneWallSprite, stoneVector.x+2.1, stoneVector.y+(+2585.2));
      stoneVector.y-=5.0;
    }
    // player 2 second door
    image(stoneWallSprite, stoneVector.x+2600.0, stoneVector.y+(+3250.5));
    image(stoneWallSprite, stoneVector.x+2600.0, stoneVector.y+(+3013.8));
    image(stoneWallSprite, stoneVector.x+2600.0, stoneVector.y+(+2779.1));
    image(stoneWallSprite, stoneVector.x+2600.0, stoneVector.y+(+2585.2));
    // controllers for moving the right wall up
    if(P2>0&keyPressed&key=='0'){
      image(stoneWallSprite, stoneVector.x+2600.0, stoneVector.y+(+2585.2));
      stoneVector.y-=5.0;
      
    }
    // controllers for move both wall down
    if(P1>20000&keyPressed&key=='2'){
      image(stoneWallSprite, stoneVector.x+2.1, stoneVector.y+(+3250.5));
      image(stoneWallSprite, stoneVector.x+2.1, stoneVector.y+(+3013.8));
      image(stoneWallSprite, stoneVector.x+2.1, stoneVector.y+(+2779.1));
      image(stoneWallSprite, stoneVector.x+2.1, stoneVector.y+(+2585.2));
      // left 
      image(stoneWallSprite, stoneVector.x+2600.0, stoneVector.y+(+3250.5));
      image(stoneWallSprite, stoneVector.x+2600.0, stoneVector.y+(+3013.8));
      image(stoneWallSprite, stoneVector.x+2600.0, stoneVector.y+(+2779.1));
      image(stoneWallSprite, stoneVector.x+2600.0, stoneVector.y+(+2585.2));
      stoneVector.y+=5.0;
    }
  }

  void chestTile(PVector chestVector, PImage chestTileSprite){
    scale(1.43);
    translate(width/2, height/2);
    image(chestTileSprite, chestVector.x+-187.8, chestVector.y+(2045.6));
  }
  // drawing planets
  void moonDrawing(){
    //moon 
    fill(225, 224, 223);
    circle(-1581, 1622, 112);
  }
  // drawing plantes sun and moon
  void sunDrawing(){
    // sun
    fill(231, 204, 8);
    circle(2300, -550, 500);
  }
  void backgroundHouse(PVector backgroundHouseVector, PImage backgroundHouseSprite){
    //scale(0.3);
    //translate(width/2, height/2);
    image(backgroundHouseSprite, backgroundHouseVector.x+441.5, backgroundHouseVector.y+348.5);
  }
}

class Player {
  
  // sprite display function
  void charTwoAlpha(PVector charTwoAlphaVector, PImage charTwoAlphaSprite){
    scale(0.98);
    translate(width/2, height/2);
    image(charTwoAlphaSprite, charTwoAlphaVector.x+0.0, charTwoAlphaVector.y+(1784.4));
  }

  // mirror sprite display function
  void charTwoAlphaMirror(PVector charTwoAlphaMirrorVector, PImage charTwoAlphaSpriteMirror){
    
    scale(0.99);
    translate(width/2, height/2);
    image(charTwoAlphaSpriteMirror, charTwoAlphaMirrorVector.x+-187.2, charTwoAlphaMirrorVector.y+(1555.1));
  }  
}

  
void display(){
  Player p = new Player();
  SpriteTiles s = new SpriteTiles();
  scoreBoard b = new scoreBoard();
  controllerP1 c1 = new controllerP1();
  controllerP2 c2 = new controllerP2();
  
  // regular methods being called
  s.backgroundHouse(backgroundHouseVector, backgroundHouseSprite);
  s.groundTile(groundVector, groundTileSprite);
  s.waterTile(waterVector, waterTileSprite);
  s.stoneWall(stoneVector, stoneWallSprite);
  s.chestTile(chestVector, chestTileSprite);
  s.sunDrawing();
  s.moonDrawing();
  
  // 2 player characters facing left and right 
  p.charTwoAlpha(charTwoAlphaVector, charTwoAlphaSprite);
  p.charTwoAlphaMirror(charTwoAlphaMirrorVector, charTwoAlphaSpriteMirror);
  // display text box
  b.scoreBoardText();
  
  // Player controllers
  c1.keyPressed();
  c2.keyPressed();
}
