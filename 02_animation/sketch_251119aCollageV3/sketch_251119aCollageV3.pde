color backgroundCover = color(#ff00ff);

// declare stuff
PImage card, exit, box, nintendo, bendi;

PVector cardVector = new PVector(0, 0);
PVector exitVector = new PVector(0, 0);
PVector boxVector = new PVector(0, 0);
PVector nintedoVector = new PVector(0, 0);
PVector bendiVector = new PVector(0, 0);

float speed = 5;

void setup(){
  // set up canvas 
  size(1000, 500);
  background(backgroundCover);
  // load images
  card = loadImage("cards.png");
  exit = loadImage("exit.png");
  box = loadImage("box.png");
  nintendo = loadImage("switch.png");
  
}

void cards(PImage card, PVector cardVector){ 
  
  translate(cardVector.x, cardVector.y);
  rotate(TAU);
  image(card, cardVector.x, cardVector.y);
}

void exits(PImage exit, PVector exits){ 
  translate(exits.x, exits.y);
  image(exit, exits.x, exits.y);
}

void boxs(PImage box, PVector boxs){
  translate(boxs.x, boxs.y);
  image(box, boxs.x, boxs.y);
}

void nintendos(PImage nintendo, PVector nintendoVector){
  translate(nintendoVector.x, nintendoVector.y);
  image(nintendo, nintendoVector.x, nintendoVector.y);
}

void bendis(PImage bendi, PVector bendiVector){
  //translate();
}

void draw(){
  background(0);
  exits(exit, exitVector);
  boxs(box, boxVector);
  
  // if touch edge, bounce
  cardVector.x += speed;
  if(cardVector.x > width-620){
    
    speed *= -1;
  }  
  if(cardVector.x < 0){
    speed += 1;
  }
  
  // call collage function
  cards(card, cardVector);
  boxs(box, boxVector);
  
}
