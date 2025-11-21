color backgroundCover = #ff00ff;

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

float deliSpeed = 5;
float boatSpeed = 2;
float hallSpeed = 7;

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

// call customized functions
void cards(PImage card, PVector cardVector){ 
  
  scale(7.34);
  translate(cardVector.x, cardVector.y);
  image(card, cardVector.x, cardVector.y);
}

void exits(PImage exit, PVector exits){ 
  
  scale(1.18);
  translate(exits.x+-396, exits.y+-90);
  image(exit, exits.x, exits.y);
}

void boxs(PImage box, PVector boxs){
  
  scale(0.05);
  translate(boxs.x+3411, boxs.y+2123);
  image(box, boxs.x+random(0, 50), boxs.y);
}

void nintendos(PImage nintendo, PVector nintendoVector){
  
  scale(2.33);
  translate(nintendoVector.x+1285, nintendoVector.y+1197);
  image(nintendo, nintendoVector.x, nintendoVector.y);
}
float bendiSpeed = 1;

void bendis(PImage bendi, PVector bendiVector){
  bendiVector.x += bendiSpeed;
  if(bendiVector.x <= 50){
    bendiVector.x *= -1;
    rotate(sin(frameCount * 0.009) * cos(TAU / 0.4));
  }
  
  //println("distance: " + bendiVector.x);
  scale(13.51);
  translate(bendiVector.x+-56, bendiVector.y+-280);
  image(bendi, bendiVector.x, bendiVector.y);
}

void laptops(PImage laptop, PVector laptopVector){
  
  scale(0.90);
  translate(laptopVector.x+475, laptopVector.y+62);
  image(laptop, laptopVector.x, laptopVector.y);
}

void bags(PImage bag, PVector bagVector){
  
  scale(0.40);
  translate(bagVector.x+-577, bagVector.y+161);
  image(bag, bagVector.x, bagVector.y);
}

void bendys(PImage bendy, PVector bendyVector){
  
  scale(0.50);
  translate(bendyVector.x+-1360, bendyVector.y+-3717);
  image(bendy, bendyVector.x, bendyVector.y+random(0, 140));
}

void backpacks(PImage backpack, PVector backpackVector){
  
  scale(11.04);
  translate(backpackVector.x+-588, backpackVector.y+524);
  image(backpack, backpackVector.x, backpackVector.y);
}

void tables(PImage table, PVector tableVector){
  
  scale(0.07);
  translate(tableVector.x+2043, tableVector.y+-6277);
  image(table, tableVector.x, tableVector.y);
}

void fires(PImage fire, PVector fireVector){
  
  scale(11.11);
  translate(fireVector.x-200, fireVector.y+302);
  image(fire, fireVector.x, fireVector.y);
}

void seeds(PImage seed, PVector seedVector){
  
  scale(1.05);
  translate(seedVector.x+413, seedVector.y+-1985);
  image(seed, seedVector.x, seedVector.y);
}

void halls(PImage hall, PVector hallVector){
  hallVector.y -= hallSpeed;
  if(hallVector.y <= -20){
    hallSpeed *= -1;
  }
  if(hallVector.y > 1000){
    hallSpeed *= -1;
  }
  scale(0.04);
  translate(hallVector.x+1780+random(-5, 25), hallVector.y);
  image(hall, hallVector.x, hallVector.y);
}

void delis(PImage deli, PVector deliVector){
  
  deliVector.y += deliSpeed;
  if(deliVector.y >= 100){
     deliSpeed *= -1;
  }
  if(deliVector.y <= -200){
    deliSpeed += 1;
  }
  scale(1.72);
  translate(deliVector.x-3078, deliVector.y+-1972);
  image(deli, deliVector.x, deliVector.y);
  
}

void boats(PImage boat, PVector boatVector){
  // forward
  boatVector.x -= boatSpeed;
  
  if(boatVector.x <= -80){
    boatSpeed -= 1; 
  }
  // backwards
  if(boatVector.x >= 10){
    boatSpeed *= -1;
  }
  
  //println("frame: " + frameCount);
  scale(22.43);
  translate(boatVector.x+594, boatVector.y+318);
  image(boat, boatVector.x, boatVector.y+200);
}

void julios(PImage julio, PVector julioVector){
  
  scale(0.37);
  translate(julioVector.x+599, julioVector.y+245);
  image(julio, julioVector.x+random(0, 50), julioVector.y-(-729));
  
}
// customized collage function

void collage(){
  
  
  
  translate(width/2, height/2);// scatter effect 
               // random(2, 2.1);

  scale(0.045);
  //rotate(sin(frameCount * 0.009) * cos(TAU / 0.4));

  cards(card, cardVector);
  exits(exit, exitVector);
  boxs(box, boxVector);
  nintendos(nintendo, nintendoVector);
  bendis(bendi, bendiVector);
  laptops(laptop, laptopVector);
  bags(bag, bagVector);
  julios(julio, julioVector);
  bendys(bendy, bendyVector);
  backpacks(backpack, backpackVector);
  tables(table, tableVector);
  fires(fire, fireVector);
  halls(hall, hallVector);
  delis(deli, deliVector);
  seeds(seed, seedVector);

}

void draw(){
  //background(#ff00ff);
  background(0);
  pushMatrix();
  collage(); // collage function 
  
  boats(boat, boatVector);// must leave boat here!
  popMatrix();
  println("frame: " + frameCount);
  if(frameCount == 100000000){
  
    save("GIF.png");
    print("         Saved!");
    
  }
  if(frameCount == 305000000){
    save("GIF.png");
    print("         Saved! at 30,000");
  }
}
