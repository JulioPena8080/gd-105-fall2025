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
  float rValue = 10.5 + coinScore;
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
  Controllers c = new Controllers();
  Coin o = new Coin();
  // variables
  float playerSize = 50.0;
  color playerColorOriginal = #ffffff;
  color playerColorchange;
  // methods
  void playerColor(float playerSize, color playerColorOriginal, color playerColorChange){
    // square with vector
    fill(playerColorOriginal);
    if(paid==true){
         playerColorChange = color(random(0, 255), random(0, 255), random(0, 255));
         playerSize = random(49.9, 101.1);
         playerColor(playerSize, playerColorOriginal, playerColorChange);
    }
    strokeWeight(6);
    square(pV.x, pV.y, playerSize); 
  }
  // pay for change
  boolean paid;
  float changeCost = 5600.500;
  void payCoin(){
    
      if(o.coinScore>=changeCost&&keyPressed&&key=='p'){
        o.coinScore-=changeCost;
        paid=true;
      }
      if(o.coinScore<changeCost){
        paid=false;
      }
      if(paid==false){
         background(0);
         fill(255);
         text("CANT AFFORT IT, TRY AGAIN LATER", width/2, height/2);
       }   
    }
  }

}

class Setting{
  Coin o = new Coin();
  boolean collected;
  void hover(){  
    if(o.hover){
      // is hovering
      //background(0);
      o.coinScore += o.rValue * frameCount; 
      collected=true;
      cV.x=random(0, 390);
      cV.y=random(25, 450);
      fill(50);
      square(400, 25, o.bgSqr);
      fill(#00eebb);
      text("Coins: " + o.coinScore, tV.x, tV.y);
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
  
