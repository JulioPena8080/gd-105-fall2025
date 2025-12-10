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
  boolean collected = false;

  // allocatation
  
  // allocating class "Player" to 'p'
  Player p = new Player();
  Controllers c = new Controllers();
  Coin o = new Coin();

  // player class to display in screen
  p.sqr();
  p.pCollision();

  // controller class to move player inside canvas
  c.keyPressed();
  
  // coin class to spawn coins
  o.coinSpawn();
  o.coinScore();
  if(o.hover){
      
      // is hovering
      background(0);
      o.coinScore += o.rValue * frameCount ;
      collected=true;
      cV.x=random(0, 390);
      cV.y=random(25, 450);
      fill(50);
      square(400, 25, o.bgSqr);
      fill(#00eebb);
      text("Coins: " + o.coinScore, tV.x, tV.y);
        
   }
   float collectedCoin = o.coinScore + 1.5;
   
   if(collected){
     
     text("Collected: " + collectedCoin, tV.x, tV.y+25);
     println("Collected: " + o.coinScore);
   }
   
   // end the game at 100 frames
   p.endGame();
  

}
