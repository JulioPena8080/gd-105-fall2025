// An arcade game

// set up canvas
void setup(){
  // size
  size(500, 500);
  // load images
}

// display images in screen
void draw(){
  //      ||
  // allocating class "Player" to 'p'
  Player p = new Player();
  Controllers c = new Controllers();
  // call the class method 
  p.sqr();
  c.keyPressed();
}
