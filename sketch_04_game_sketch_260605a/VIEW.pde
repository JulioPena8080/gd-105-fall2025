//void changeColor(){
  
//}

//void circleButton(){

//  // assigned location
//  float hor = width/2;
//  float ver = height/2;
//  // assigned properties for mouse and button
//  float buttonSize = 250;
//  float radious = buttonSize;
  
//  float mPosX = mouseX;
//  float mPosY = mouseY;
//  // assign an floating argument to the distance of each parameter 'dist(a,a,b,b)'
//  // 'a' means mouse location and 'b' button location
//  float mouseDistance = dist(mPosX, mPosY, hor, ver);
//  // assign an condition for when is clicked
//  boolean mouseClicked = false;
//  // assign an conditional statement to the mouse distance less than radious
//  boolean hover = mouseDistance <= radious/50.0;
//  // call function for shapes to be displayed
//  fill(0,0,255);
//  circle(hor, ver, radious);
//  point(mPosX, mPosY);

//}

void setup(){
  // setup default size of canvas
  size(800, 500);
  background(0);
  // button to start title screen
  //circleButton();
}

void draw(){
  
  // allocated title screen to 't' to display that class 
  titleScreenClass t = new titleScreenClass();
  t.displayScreenMethod(t.coinCreditInt);
  
}
