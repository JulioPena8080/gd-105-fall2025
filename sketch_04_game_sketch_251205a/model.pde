// game properies
PVector bV = new PVector(340, 25);

float mPosX = mouseX;
float mPosY = mouseY;
float buttonWidth = 140;
float buttonHeight = 35;
color medianLight = color(random(100, 200), random(100, 200), random(100, 200));
boolean hoverMouse = false;

class SaveButton { // use classes to sort code structure //
  Coin o = new Coin();
  // save button in the warning scene
  void saveCoins(){
    fill(255);
    text("Saved Coins  ", 350, 45);
  }
  boolean savedCoins = false;
  
  void keyPressed(){
    // load game 
    if(keyPressed&&key=='8'){
        loadJSONObject("data/saveData.json");
        
        int id = json.getInt("id");
        int score = json.getInt("score");
        
        String name = json.getString("name");
        String type = json.getString("type");
        String time = json.getString("time"); 
        boolean loaded = false;
        println("id: " + id + ", score: " + score + ", name: " + name + ", type: " + type + ", time: " + time);
        // load data
        json.getInt("id");
        json.getInt("score"); // currently returns the score in display
        json.getString("type");
        json.getString("name");
        json.getString("time");
        loaded=true;
        if(loaded){
          fill(175);
          rect(20, 20, 215, o.bgSqr-25);
          fill(0);
          // extremly delicate or insert into an array!
          text(" | " + "id " + " : " + json.getInt("id") + " | " + json.getString("type") + " : " + json.getInt("score") + " | " + "time: " + json.getString("time") + " | ", tV.x, tV.y);
        }
        
    }
    if(keyPressed&&key=='0'){
      saveJSONObject(json, "data/saveData.json");
      // Add a new set count for the saved coins label // 
      savedCoins=true;
      //fill(255);
      text("!", 415, 45);
    }
  }
  //void savedCoins(){
  //  if(savedCoins==true){
  //    fill(medianLight);
  //    rect(bV.x, bV.y, buttonWidth, buttonHeight);
  //    fill(255);
  //    text("Saved Coins:  " + o.coinScore, 350, 45);
  //  }
  //}
  
}

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
  long coinScore = 0 * frameCount; 
    // coin value
  int rValue = 10 * frameCount;
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
  float fillInt = random(100, 200);
  float rectInt = random(-111, 201);
  float rectIntSX = random(-141, 171);
  float rectIntSY = random(-141, 171);
  void roomWall(){
    fill(fillInt, fillInt, fillInt);
    rect(rectInt, rectInt, rectIntSX, rectIntSY);
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
  int changeCost = 1600;
  // methods
  void playerColor(){
    // square with vector
    fill(playerColorOriginal);
    if(keyPressed&&key=='p'&&paid==true){
       
       playerColorChange = color(random(0, 255), random(0, 255), random(0, 255));
       playerColorOriginal = playerColorChange;
       playerSize = random(49.9, 101.1);
    } 
    if(o.coinScore<changeCost){
      paid=false;
    }
    if(paid==true&&o.coinScore>3000){
      background(0);
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
  Controllers c = new Controllers();
  SaveButton b = new SaveButton();

  boolean collected;
  void scoreBoard(){
      fill(50);
      rect(20, 20, 415, o.bgSqr);
      fill(#00eebb);
      text("Coins: " + o.coinScore, tV.x, tV.y);
      if(keyPressed&&key=='8'){
        // only works for console not for display
        rect(20, 20, 415, o.bgSqr);
        text("coins: " + o.coinScore, tV.x, tV.y); // gets Int convert into a string
        
      }
  }
  
  void hover(){ 
    
    // press 'm' to collect the coin 
    if(o.hover){

      // is hovering
      background(75);
      c.vel*=13.5; // is not increasing vel 
      o.coinScore += o.rValue; 
      o.coined=true;
      collected=true;
      cV.x=random(0, 390); 
      cV.y=random(25, 450);
      scoreBoard();
      //o.roomWall();
      b.saveCoins();
      
      // save data       
      json.setInt("id", 1);    
      json.setLong("score", o.coinScore);
      json.setString("type", "saved");
      json.setString("name", "spawner"); // User Input Layer
      json.setString("time", "24 Hours");
      
      // load if asked
      if(keyPressed&&key=='8'){
        json.getLong("score");
      }
      
     }
     
     int scoreLimit = 100500;
     if(o.coinScore==scoreLimit){
       background(30, 30, 200);
       fill(255);    
       text("COMPLETED GOAL 1", width/2, height/2);
     }
   }
  
  void endGame(){
    if(frameCount == 10000){
      background(0);
      fill(255);
      text("10000 frames passed " + " Enjoy the Coin Spawner by Game Structure ", width/2-100, height/2);
    }
    if(frameCount == 11000){
      background(20, 20, 20);
      fill(255);
      text("[AFK]", width/2, height/2);
    } 
  }   
}
  
