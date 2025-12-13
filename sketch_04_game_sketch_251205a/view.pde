// An arcade game

// set up canvas
void setup(){
  // size
  size(500, 500);
  background(0);
  // load images
}

// display images in screen
void draw(){ 
  //frameRate(1);
  //background(0);
  // allocatation
  //text("[Controllers] player movement: " + pV.x + " " + pV.y, 0, 0);
  //text("[Coin] location in the screen" + cV.x + " " + cV.y, width/2, height/2);

  // allocating classes
  Player p = new Player();
  Controllers c = new Controllers();
  Coin o = new Coin();
  Setting s = new Setting();
  // player colliding with object
  s.hover();
  // display score in the screen
  o.coinScore();
  // coin class to spawn coins
  o.coinSpawn();
  // player class to display in screen
  p.playerColor(p.playerSize, p.playerColorOriginal, p.playerColorChange);
  // player offset rules
  c.playerCollision();
  // controller class to move player in screen
  c.playerControl();


  // end game 
  s.endGame();
} 
