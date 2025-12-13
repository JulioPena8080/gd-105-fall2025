// vectors 

// Player vector
PVector pV = new PVector(random(0, 450), random(0, 450));
// Coin vector
PVector cV = new PVector(random(0, 450), random(0, 450));
// Text vector
PVector tV = new PVector(400, 50);
// text title
//PVector textTitle = new PVector(width/2, height/2);

class Controllers {
  //allocation
  Coin o = new Coin();
  
  // variables
  float vel = 9.5;
  void playerCollision(){
    // player collision for offset left and bottom
    if(pV.x>width-100){
       pV.x-=vel;
    }
    if(pV.y>height-100){
       pV.y-=vel;
    }
    if(pV.x<0){
      pV.x+=vel;
    }
    if(pV.y<0){
      pV.y+=vel;
    }
  }
  
  // methods
  void playerControl(){
    // keys
      
    // depending on the pressed key player will move 
    if(keyPressed&&key=='w'){
      // up motion
      pV.y-=vel+random(0.0, 0.3);
      o.coinScore+=random(0.0, 0.3);
    }
    if(keyPressed&&key=='s'){
      // down motion
      pV.y+=vel+random(0.0, 0.3);
      o.coinScore+=random(0.0, 0.3);
    }
    if(keyPressed&&key=='a'){
      // left motion
      pV.x-=vel+random(0.0, 0.3);
      o.coinScore+=random(0.0, 0.3);
    }
    if(keyPressed&&key=='d'){
      // right motion
      pV.x+=vel+random(0.0, 0.3);
      o.coinScore+=random(0.0, 0.3);
    }

  }
}
