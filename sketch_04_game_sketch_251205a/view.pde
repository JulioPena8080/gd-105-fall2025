// An arcade game

// set up canvas
void setup(){
  // size
  size(500, 500);
  // load images
}

// display images in screen
void draw(){ //frameRate(1);
  //background(0);
  // allocatation
  
  // allocating class "Player" to 'p'
  Player p = new Player();
  Controllers c = new Controllers();
  Coin o = new Coin();
  GameState g = new GameState();
  Setting s = new Setting();
  
  s.hover();
  
  // player class to display in screen
  p.sqr();
  p.pCollision();
    
  // controller class to move player inside canvas
  c.keyPressed();
  
  // coin class to spawn coins
  o.coinSpawn();
  o.coinScore();

  // end the game at 100 frames
  g.endGame();

  

}
