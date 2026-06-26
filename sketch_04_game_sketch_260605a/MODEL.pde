
class titleScreenClass { // Init start
  // credit for exchange
  int coinCreditInt; 

  // draw title screen
  void titleShapes(){
    // current shape script for display in center
    float size = 225.7;
    float W = width/2;
    float H = height/2;
    fill(13);
    strokeWeight(2);
    circle(W, H, size);
  }
  // method to call title text
  void titleText(){
    // colors for text
    color textColor = color(225, 128, 0);
    // text location & size
    textSize(25);
    textAlign(CENTER, CENTER);
    float W = width/2;
    float H = height/2;
    // title context 
    String title = "Arcade";
    fill(textColor);
    text(title, W, H);
    
  }

  // declared vector for intake slot
  PVector intakeSlotVector;
  Boolean clicked;
  // shape for intake slot
  void intakeSlot(){
    color textColor = color(225, 128, 0);
    // text for intakeSlot
    String intakeSlotText = "Insert Coin";
    // declare text locations
    float textLocationX = width-105;
    float textLocationY = height/2-25;
    // rectangle slot color
    color rectColor = color(15);
    // intake slot location in canvas
    float W = width-132.5;
    float H = height/2;
    // dimension of shape
    float widthLength = 55;
    float heightLength = 95;
    // first 2 parameters for the location in canvas
    float widthX = W + 22.5;
    float heightY = H + 19.5;
    // vector's allocation 
    PVector intakeSlotVector = new PVector(0, 0);
    // set color for rect
    fill(rectColor);
    rect(intakeSlotVector.x+W, intakeSlotVector.y+H, widthLength, heightLength);
    fill(0);
    rect(widthX, heightY, widthLength-45, heightLength-35);
    // text and color for slot 
    fill(textColor);
    text(intakeSlotText, textLocationX, textLocationY);
    // condition if mouse is hovering slot
    float mousePositionX = mouseX;
    float mousePositionY = mouseY;
    boolean mouseHoverOver = mousePositionX >= widthLength+620 || mousePositionY <= widthLength-50 
            && mousePositionY >= heightY+250 || mousePositionY <= heightY-450;
    // mouse over the slot testing
    //
    // coin's vector 
    
    if(mouseHoverOver==true){
      // grey rect to determine whether mouse is being hover
      fill(65);
      rect(widthX, heightY, widthLength-45, heightLength-35);
      coinAnimation(widthLength);
      
    }

  }
  
  // coin credit text, color and statements 
  boolean inserted;
  // hover over the intake slot 
  void coinCredit(int coinCreditInt){
    
    // credit method
    color textColor = color(225, 128, 0);
    // text for the credits
    String coinText = "Credits";
    //int limitCoin = 50;
    boolean coinInserted = false;
    // checks if it has been inserted and incremented 
    
    // warning still needs work //
    if(!mousePressed){
      coinCreditInt++;
    } 
    if(!mousePressed){
      coinCreditInt+=1;
      coinInserted=true;
    }
    if(coinInserted==true){
      coinCreditInt+=5;
    }
    if(keyPressed&&key==' '){
      coinCreditInt+=1;
    }
    // code above under construction //
    
    // color and text of credits 
    fill(textColor);
    text(coinText, 50, height-50);
    // credit coin color and text
    fill(225);
    text(coinCreditInt, 125, height-50);

  }
  
  // a method that get called for displaying 
  void displayScreenMethod(int coinCreditInt){ // activated in canvas
    //allocating controllers into a display method
    
    // background and shapes for the title screen
    background(20);
    // display title text and shapes
    titleShapes();
    titleText();
    // coin slot
    intakeSlot();
    // check if credit is inserted
    coinCredit(coinCreditInt);
  }
}

class gamePropertiesClass {
  
}

// classes for each part of the structure
//class gameSettingsClass { // State of loops & Updates

////class playerSettings { // Properties & Locations

////}

////class leaderBoard { // Display stats & Restart game
    
////}
//}
