// player properies

class Player {
  // variables
  float sqr;
  // methods
  void sqr(){
    // do stuff
    square(width/2, height/2, 50);
    println("square: " + sqr);
  }
}

// user control
boolean W = false;
boolean S;
boolean A; 
boolean D;
boolean P;
boolean SPACE;
boolean held;


class Controllers {
  // variables
  
  
  // methods
  
  void keyPressed(){
    W = true;
    S = true;
  }
  
  void keyReleased(){
    W = true;
  }

}

// update game
class canvas {
  // title 
  
  // gamestate
  
  // leaderboard
  
}
