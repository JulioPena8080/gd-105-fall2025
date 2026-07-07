// An arcade game
JSONObject json;
// set up canvas
void setup(){
  // size
  size(500, 500);
  background(0);
  // ======================================= //
  json = new JSONObject(); // to save
  json = loadJSONObject("data/saveData.json"); // to load
  // saveJSONObject(json, "data/new.json");
  // [STORE IN: MODEL] 
  // ======================================= //
  // syntax; to remind my self to create a save function
  // that can save game's state by pressing a button
  
  // saveJSONObject(json, filename);
  
  // load images
  
  // game title
  gameTitle();
}

void gameModel(){

  //frameRate(1);
  //background(0);
  //allocatation
  
  // allocating classes
  Player p = new Player();
  Controllers c = new Controllers();
  Coin o = new Coin();
  Setting s = new Setting();
  SaveButton b = new SaveButton(); 
  
  // player colliding with object
  s.hover();
  // display score in the screen
  o.coinScore();
  // coin class to spawn coins
  o.coinSpawn();
  // save game state 
  b.keyPressed();
  // player class to display in screen
  p.playerColor();
  // player offset rules
  c.playerCollision();
  // controller class to move player in screen
  c.playerControl(); 
  // end game 
  s.endGame();

}
//  square Axis Vector
PVector sAV = new PVector(width/2, height/2); 
void gameTitle(){ 
  background(0);
  text(" Coin Spawer ", width/2, height/2-50);
  text(" reach 100000 coins", width/2-100, height/2+20);
  fill(random(150, 210), random(150, 210), random(150, 210));
  square(sAV.x, sAV.y, 100);
  fill(random(150, 210), random(150, 210), random(150, 210));
  square(sAV.x*CENTER, sAV.y*CENTER, 100);
  fill(medianLight);
  rect(width/2-15, height/2+25, 175, 85);
  fill(0);
  text("controllers: [a][w][s][d] ", width/2, height/2+35.0);
  text("save game by pressing [0]", width/2-2.0, height/2+55.0);
  text("load game by pressing [8]", width/2-2.0, height/2+75.0);
  text("title screen by pressing [y]", width/2-2.0, height/2+95.0);
  text("AFK MODE by pressing [ ]", width/2-2.0, height/2+108.0);
  fill(235, 235, 10);
  text("WARNING: Loading your saved data only works in the title screen",  width/2-150, height/2+225);
}
// display images in screen 
void draw(){ 
  gameModel(); 
  if(keyPressed&&key=='y'){
     gameTitle();
  }
  
} 
