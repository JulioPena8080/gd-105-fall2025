class Controllers {
  //allocation
  Coin o = new Coin();
  
  // variables
  float vel = 9.5;
  
  // methods
  
  void keyPressed(){
      
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
    //println("[Controllers] player movement: " + pV.x, pV.y);
  }
}
