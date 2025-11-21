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

// variables for movement 
float nintendoSpeed = 0.9;
float hallSpeed = 0.7;
float deliSpeed = 0.5;
float boatSpeed = 0.2;
float bendiSpeed = 0.1;


// set up canvas 
void setup(){

  size(1000, 500);
  background(backgroundCover);
  fill(0);
  text("LOADING", width/2, height/2);
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
  
  scale(13.18);
  translate(cardVector.x, cardVector.y);
  image(card, cardVector.x, cardVector.y);
}

void exits(PImage exit, PVector exits){ 
  
  scale(1.08);
  translate(exits.x+-396, exits.y+-90);
  image(exit, exits.x+-193, exits.y+304);
}

void boxs(PImage box, PVector boxs){
  
  scale(0.05);
  translate(boxs.x+3411, boxs.y+2123);
  image(box, boxs.x+random(0, 50), boxs.y+-1575);
}

void nintendos(PImage nintendo, PVector nintendoVector){
  nintendoVector.x += nintendoSpeed;
  if(nintendoVector.x >= -100){
    nintendoSpeed += 1;
  }
  if(nintendoVector.x >= 1000){
    nintendoSpeed *= -1;
  }
  if(nintendoVector.x <= -1000){
    nintendoSpeed += 1;
  }
  println("distance: " + nintendoVector.x);
  scale(1.76);
  translate(nintendoVector.x+1285, nintendoVector.y+1197);
  image(nintendo, nintendoVector.x+302, nintendoVector.y+692);
}


void bendis(PImage bendi, PVector bendiVector){
  bendiVector.x += bendiSpeed;
  if(bendiVector.x <= 50){
    bendiVector.x *= -1;
    //rotate(sin(frameCount * 0.00001) * cos(TAU / 0.4));
  }
  
  //println("distance: " + bendiVector.x);
  scale(13.51);
  translate(bendiVector.x+-56, bendiVector.y+-280);
  image(bendi, bendiVector.x+8, bendiVector.y+-10);
}

void laptops(PImage laptop, PVector laptopVector){
  
  scale(0.90);
  translate(laptopVector.x+475, laptopVector.y+62);
  image(laptop, laptopVector.x+100, laptopVector.y+100);
}

void bags(PImage bag, PVector bagVector){
  
  scale(0.40);
  translate(bagVector.x+-577, bagVector.y+161);
  image(bag, bagVector.x+495, bagVector.y+-324);
}

void bendys(PImage bendy, PVector bendyVector){
  
  scale(0.50);
  translate(bendyVector.x+-1360, bendyVector.y+-3717);
  image(bendy, bendyVector.x+100, bendyVector.y+random(0, 140));
}

void backpacks(PImage backpack, PVector backpackVector){
  
  scale(11.04);
  translate(backpackVector.x+-588, backpackVector.y+524);
  image(backpack, backpackVector.x+100, backpackVector.y+100);
}

void tables(PImage table, PVector tableVector){
  
  scale(0.07);
  translate(tableVector.x+2043, tableVector.y+-6277);
  image(table, tableVector.x+100, tableVector.y+100);
}

void fires(PImage fire, PVector fireVector){
  
  scale(11.11);
  translate(fireVector.x-200, fireVector.y+302);
  image(fire, fireVector.x+100, fireVector.y+100);
}

void seeds(PImage seed, PVector seedVector){
  rotate(sin(frameCount * 0.009) * cos(TAU / 0.4));
  scale(1.05);
  translate(seedVector.x+413, seedVector.y+-1985);
  image(seed, seedVector.x+100, seedVector.y+100);
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
  image(hall, hallVector.x+-2058, hallVector.y+-80);
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
  image(deli, deliVector.x+100, deliVector.y+596);
  
}

void boats(PImage boat, PVector boatVector){
  // forward
  boatVector.x -= boatSpeed;
  
  if(boatVector.x <= -75){
    boatSpeed -= 1; 
  }
  // backwards
  if(boatVector.x >= 10){
    boatSpeed *= -1;
  }
  
  
  
  //println("frame: " + frameCount);
  scale(15.11);
  translate(boatVector.x+465, boatVector.y+318);
  image(boat, boatVector.x+100, boatVector.y-1);
  
  if(TAU < boatVector.y && boatVector.y > height){
      translate(boatVector.x, boatVector.y);
  }
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
  frameRate(60);
  //background(#ff00ff);
  background(0);
  pushMatrix();
  
  // collage function 
  collage();
  boats(boat, boatVector);// must leave boat here!

  popMatrix();
  resetMatrix();
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
