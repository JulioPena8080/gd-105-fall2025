// player properies

// Player vector
PVector pV = new PVector(random(0, 450), random(0, 450));
// Coin vector
PVector cV = new PVector(random(0, 450), random(0, 450));
// Text vector
PVector tV = new PVector(400, 50);

class Coin {
  // size of coin
  float coinRadious = 25;
  // score background
  float bgSqr = 75.0; 
  // coin value
  float rValue = random(0.0, 0.5);
  // distance between player and coin
  float sqrDistance = dist(pV.x+25, pV.y+25, cV.x, cV.y);
  // turns true when is over or colliding
  boolean hover = sqrDistance <= coinRadious;
  // score board variable
  float coinScore = 0.0; 
  // ensure coins saved
  boolean coined;
  
  void coinScore(){   

    coined=true;
    if(hover&&coined){
      coinScore += rValue;
    }
    if(keyPressed&&key==' '){
      background(255);

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
  
  void pCollision(){
    // player collision for offset left and bottom
    if(pV.x>width-100){
       pV.x-=c.vel;
    }
    if(pV.y>height-100){
      pV.y-=c.vel;
    }
  }

  void sqr(){
    // square with vector
    fill(255);
    noStroke();
    square(pV.x, pV.y, sqr); 
    
  }
  
  void endGame(){
      if(frameCount == 100){
        background(0);
        fill(255);
        text("Get Coins!!", width/2, height/2);
      }
      
  }

}
