color backgroundCover = color(#ff00ff);

// declare stuff
PImage card, exit, box, nintendo, bendi, laptop, bag, bendy, backpack, table, fire, seed, hall, deli, julio, boat;

PVector cardVector = new PVector(0, 0);
PVector exitVector = new PVector(0, 0);
PVector boxVector = new PVector(0, 0);
PVector nintendoVector = new PVector(0, 0);
PVector bendiVector = new PVector(0, 0);
PVector laptopVector = new PVector(0, 0);
PVector bagVector = new PVector(0, 0);
PVector bendyVector = new PVector(0, 0);
PVector backpackVector = new PVector(0, 0);
PVector tableVector = new PVector(0, 0);
PVector fireVector = new PVector(0, 0);
PVector seedVector = new PVector(0, 0);
PVector hallVector = new PVector(0, 0);
PVector deliVector = new PVector(0, 0);
PVector julioVector = new PVector(0, 0);
PVector boatVector = new PVector(0, 0);

float speed = 5;

void setup(){
  // set up canvas 
  size(1000, 500);
  background(backgroundCover);
  imageMode(CENTER);
  
  // load images
  card = loadImage("cards.png");
  exit = loadImage("exit.png");
  box = loadImage("box.png");
  nintendo = loadImage("switch.png");
  bendi = loadImage("bendi.png");
  laptop = loadImage("laptop.png");
  bag = loadImage("bag.png");
  bendy = loadImage("bendy.png");
  backpack = loadImage("backpack.png");
  table = loadImage("table.png");
  fire = loadImage("fire.png");
  seed = loadImage("seed.png");
  hall = loadImage("hall.png");
  deli = loadImage("deli.png");
  julio = loadImage("julio.png");
  boat = loadImage("boat.png");
  
}


void cards(PImage card, PVector cardVector){ 
  
  //scale(3.6);
  translate(cardVector.x+random(0, 50), cardVector.y);
  image(card, cardVector.x, cardVector.y);
}

void exits(PImage exit, PVector exits){ 
  scale(0.2);
  translate(exits.x+100, exits.y+484);
  image(exit, exits.x, exits.y);
}

void boxs(PImage box, PVector boxs){
  scale(0.2);
  translate(boxs.x, boxs.y);
  image(box, boxs.x, boxs.y);
}

void nintendos(PImage nintendo, PVector nintendoVector){
  scale(0.6);
  translate(nintendoVector.x--, nintendoVector.y);
  image(nintendo, nintendoVector.x, nintendoVector.y);
}

void bendis(PImage bendi, PVector bendiVector){
  scale(8.7);
  translate(bendiVector.x+1100, bendiVector.y);
  image(bendi, bendiVector.x, bendiVector.y);
}

void laptops(PImage laptop, PVector laptopVector){
  scale(0.1);
  translate(laptopVector.x+2274, laptopVector.y);
  image(laptop, laptopVector.x, laptopVector.y);
}

void bags(PImage bag, PVector bagVector){
  // if touch edge, bounce
  scale(6.8);
  translate(bagVector.x, bagVector.y);
  image(bag, bagVector.x, bagVector.y);
}

void bendys(PImage bendy, PVector bendyVector){
  scale(0.1);
  translate(bendyVector.x, bendyVector.y);
  image(bendy, bendyVector.x, bendyVector.y);
}

void backpacks(PImage backpack, PVector backpackVector){
  
  scale(2.0);
  translate(backpackVector.x, backpackVector.y);
  image(backpack, backpackVector.x, backpackVector.y);
}

void tables(PImage table, PVector tableVector){
  scale(2.4);
  translate(tableVector.x, tableVector.y);
  image(table, tableVector.x, tableVector.y);
}

void fires(PImage fire, PVector fireVector){
  scale(11.0);
  translate(fireVector.x-200*2, fireVector.y);
  image(fire, fireVector.x, fireVector.y);
}

void seeds(PImage seed, PVector seedVector){
  
  scale(11.4);
  translate(seedVector.x--, seedVector.y--);
  image(seed, seedVector.x, seedVector.y);
}

void halls(PImage hall, PVector hallVector){
  scale(0.2);
  translate(hallVector.x, hallVector.y);
  image(hall, hallVector.x, hallVector.y);
}

void delis(PImage deli, PVector deliVector){
  
  scale(4.0);
  translate(deliVector.x-1750, deliVector.y);
  image(deli, deliVector.x, deliVector.y);
  
}

void boats(PImage boat, PVector boatVector){
  
  scale(2.64);
  translate(boatVector.x, boatVector.y);
  image(boat, boatVector.x, boatVector.y);
}

void julios(PImage julio, PVector julioVector){
  
  scale(2);
  //rotate(TAU * (frameCount * 0.001));
  translate(julioVector.x+random(0, 50), julioVector.y-(-1982));
  image(julio, julioVector.x, julioVector.y-300);
  
}

void collage(){
  translate(width/2, height/2);
  scale(0.002);
  
  cards(card, cardVector);
  exits(exit, exitVector);
  boxs(box, boxVector);
  nintendos(nintendo, nintendoVector);
  bendis(bendi, bendiVector);
  laptops(laptop, laptopVector);
  bags(bag, bagVector);
  cards(card, cardVector);
  bendys(bendy, bendyVector);
  backpacks(backpack, backpackVector);
  tables(table, tableVector);
  fires(fire, fireVector);
  seeds(seed, seedVector);
  halls(hall, hallVector);
  delis(deli, deliVector);
  boats(boat, boatVector);
  julios(julio, julioVector);
}

void draw(){
  background(backgroundCover);
  collage(); // collage function 
  
  //println("frame: " + frameCount);
  if(frameCount == 1999000){
  
    save("GIF.png");
    print("         Saved!");
    
  }
  if(frameCount == 30500){
    save("GIF.png");
    print("         Saved! at 30,000");
  }
}
