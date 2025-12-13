// game properies

class Coin {
  // size of coin
  float coinRadious = 25;
  // score background
  float bgSqr = 75.0; 
  // distance between player and coin
  float playerDistance = dist(pV.x+25, pV.y+25, cV.x, cV.y);
  // turns true when is over or colliding
  boolean hover = playerDistance <= coinRadious;
  // score board variable
  float coinScore = 0.0; 
    // coin value
  float rValue = 10.5 * frameCount;
  // ensure coins saved
  boolean coined;
  
  
  void coinScore(){   
    coined=true;
    if(hover&&coined){
      coinScore *= rValue + 1.5;
    }
  }

  void coinSpawn(){
    // spawn coin in random locations
    fill(255, 255, 0);
    strokeWeight(6);
    circle(cV.x, cV.y, coinRadious);
  }  
}

class Player {
  Coin o = new Coin();
  // variables
  float playerSize = 50.0;
  color playerColorOriginal = #ffffff;
  color playerColorChange;
  
  // pay for change
  boolean paid;
  float changeCost = 1600.500;
  // methods
  void playerColor(float playerSize, color playerColorOriginal, color playerColorChange){
    // square with vector
    fill(playerColorOriginal);
    if(paid==true&&keyPressed&&key=='p'){
       playerColorChange = color(random(0, 255), random(0, 255), random(0, 255));
       playerColorOriginal = playerColorChange;
       playerSize = random(49.9, 101.1);
       playerColor(playerSize, playerColorOriginal, playerColorChange);
    } 
    if(o.coinScore<changeCost){
      paid=false;
    }
    if(paid==false&&o.coinScore>100000){
      //background(0);
      fill(255);
      text("Game Over", width/2, height/2);
    } 
    strokeWeight(6);
    square(pV.x, pV.y, playerSize); 
  }
}

class Setting{
  Player p = new Player();
  Coin o = new Coin();
  boolean collected;
  void hover(){  
    Controllers c = new Controllers();
    Coin o = new Coin();
    if(o.hover){
      // is hovering
      //background(0);
      c.vel+=-3.5;
      o.coinScore += o.rValue; 
      collected=true;
      cV.x=random(0, 390);
      cV.y=random(25, 450);
      fill(50);
      square(400, 25, o.bgSqr);
      fill(#00eebb);
      text("Coins: " + o.coinScore, tV.x, tV.y);
      if(o.coinScore>p.changeCost){
        o.coinScore-=p.changeCost;
        p.paid=true;
      } // currently unable to have a purchase mechanic  
     }
     float scoreLimit = 100500.0;
     if(o.coinScore>scoreLimit){
       background(0, 0, 200);
       fill(255);    
       text("You Won", width/2, height/2);
     }
  }
  void endGame(){
    if(frameCount == 11000){
      background(0);
      fill(255);
      text("Time Out!! " + " Game Over  ", width/2, height/2);
    }
  }   
}
  
