void setup(){
  size(800, 500);
  background(backgroundColor);
  imageMode(CENTER);
  // loading images in the set up method 
  backgroundHouseSprite = loadImage("backgroundHouse.png");
  groundTileSprite = loadImage("groundTile.png");
  waterTileSprite = loadImage("22x11WaterTile.png");
  stoneWallSprite = loadImage("stoneWall.png");
  chestTileSprite = loadImage("chestTile.png");

  // Player character sprite facing left
  charTwoAlphaSprite = loadImage("charTwoAlpha.png");
  // Player character sprite facing right
  charTwoAlphaSpriteMirror = loadImage("charTwoAlphaMirror.png");
}

void draw(){
  background(158, 199, 255);
  display();
  // user controller
  if(keyPressed&key==' '){
    display();
  }
  //saveFrame("Realms and Wizards.png");
}
