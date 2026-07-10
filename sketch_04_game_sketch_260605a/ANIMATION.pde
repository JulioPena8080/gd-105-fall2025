// coin animation

void coinAnimation(float widthLength){
  
  // allocate function
  
  // coin size
  PVector coinVector = new PVector(645, 300);
  //titleScreenClass t = new titleScreenClass();
  int coinSize = 65;
  // condition for mouse click and pressing the 'space' key
  if(mousePressed){
    coinVector.x+=17.5;
  } 

  // coin location and color
  fill(175, 175, 0);
  circle(coinVector.x, coinVector.y, coinSize);
  fill(255, 255, 0);
  text("COIN", coinVector.x, coinVector.y);
  if(coinVector.x>=widthLength){
    coinVector.x=0;
  }
}
