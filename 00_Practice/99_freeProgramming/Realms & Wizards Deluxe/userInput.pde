// control
class controllerP1{

  void keyPressed(){
    
    Player p = new Player();
    
    p.charTwoAlpha(charTwoAlphaVector, charTwoAlphaSprite);
    // player score incrementation
    float movementPoint = 0.05;
    float swimingPoint = 1.7;

    // Player 1 Controller
    if(keyPressed&key=='z'){
      int movementNewInt = round(movementPoint);
      charTwoAlphaVector.x-=5.0;
      P1+=movementNewInt;
    }
    if(keyPressed&key=='x'){
      
      charTwoAlphaVector.x=0.0;
      charTwoAlphaVector.y=0.0;
    }
    // falling in the water condition
    if(charTwoAlphaVector.x<=(-1700.0)){
      int swimingNewInt = round(swimingPoint);
      charTwoAlphaVector.y+=10.2;
      P1+=swimingNewInt;
    }
  }
}

class controllerP2{
  
  void keyPressed(){
    
    Player p = new Player();
    
    p.charTwoAlphaMirror(charTwoAlphaMirrorVector, charTwoAlphaSpriteMirror);
    
    // player score incrementation
    float movementPoint = 0.05;
    float swimingPoint = 1.7;
    // Player 2 controllers
    if(keyPressed&key=='m'){
          // casting floating points
      int movementNewInt = round(movementPoint);
      charTwoAlphaMirrorVector.x+=5.0;
      P2+=movementNewInt;
    }
    if(keyPressed&key=='n'){
      charTwoAlphaMirrorVector.x=0.0;
      charTwoAlphaMirrorVector.y=0.0;
    }
    // falling in the water condition
    if(charTwoAlphaMirrorVector.x>=(+1009.5)){
        int swimingNewInt = round(swimingPoint);
        charTwoAlphaMirrorVector.y+=10.2;
        P2+=swimingNewInt;
    }
  }
}
