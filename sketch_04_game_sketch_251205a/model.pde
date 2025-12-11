// player properies

// Player vector
PVector pV = new PVector(random(0, 450), random(0, 450));
// Coin vector
PVector cV = new PVector(random(0, 450), random(0, 450));
// Text vector
PVector tV = new PVector(400, 50);
// text title
PVector textTitle = new PVector(width/2, height/2);

class Coin {
  
  
  // size of coin
  float coinRadious = 25;
  // score background
  float bgSqr = 75.0; 

  // distance between player and coin
  float sqrDistance = dist(pV.x+25, pV.y+25, cV.x, cV.y);
  // turns true when is over or colliding
  boolean hover = sqrDistance <= coinRadious;
  // score board variable
  float coinScore = 0.0; 
    // coin value
  float rValue = 10.5 + coinScore;
  // ensure coins saved
  boolean coined;
  
  void coinScore(){   

    coined=true;
    if(hover&&coined){
      coinScore += rValue;
    }
    
  }

  void coinSpawn(){
    // spawn coin in random locations
    fill(255, 255, 0);
    circle(cV.x, cV.y, coinRadious);
  }
  
}


class Player {
  Controllers c = new Controllers();
  // variables
  float sqr = 50.0;  
  
  // methods
  void sqr(){
    // square with vector
    fill(255);
    noStroke();
    square(pV.x, pV.y, sqr); 
  }
  
  void pCollision(){
    // player collision for offset left and bottom
    if(pV.x>width-100){
       pV.x-=c.vel;
    }
    if(pV.y>height-100){
      pV.y-=c.vel;
    }
  }


 

}

class Setting{
  Coin o = new Coin();
  boolean collected;
  void hover(){  
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
     
     // once coin is saved 
     float collectedCoin = o.coinScore + 1.5;
     
     if(collected){
       text("Collected: " + collectedCoin, tV.x, tV.y+25);
       println("Collected: " + o.coinScore);
     }
     
     float scoreLimit = 10500.0;
     if(o.coinScore>scoreLimit){
       background(0, 0, 200);
       fill(255);
       
       text("You Won", width/2, height/2);
     }
  }
}

class GameState {
   
  Coin o = new Coin();
  void startGame(PVector textTitle){
    background(0);
    text("Press SPACE to start the game", textTitle.x, textTitle.y);
  }
  
  void endGame(){
      if(frameCount == 1100){
        background(0);
        fill(255);
        text("Time Out!! " + " Game Over  ", width/2, height/2);
      }
      
  }
  
}
