color backgroundCover = lerpColor(#00ff00, #ff00ff, 0.6); 


// Vectors for transformations
PVector cardss = new PVector(-243, -110);
PVector exits = new PVector(414, -2);
PVector boxs = new PVector(5705, -511);
PVector switshs = new PVector(3044, 246);
PVector bendis = new PVector(-138, 56);
PVector laptops = new PVector(-662, -566);
PVector bags = new PVector(213, -105);
PVector bendys = new PVector(265, -1085);
PVector backpacks = new PVector(-380, 0);
PVector tables = new PVector(756, 3859);
PVector fires = new PVector(-221, 389);
PVector seeds = new PVector(-5342, 22900);
PVector halls = new PVector(6786, -883);
PVector delis = new PVector(-3273, -109);
PVector raviolis = new PVector(0, 0);
PVector boats = new PVector(407, -151);

PImage cards, exit, box, switsh, bendi, laptop, 
       bag, bendy, backpack, table, fire, seed, 
       hall, deli, ravioli, boat;


// make canvas function without setup
void setup() {
  
  size(1000, 500);
  background(backgroundCover);

  //loaded images  
  cards = loadImage("cards.png");
  exit = loadImage("exit.png");
  box = loadImage("box.png");
  switsh = loadImage("switch.png");
  bendi = loadImage("bendi.png");
  laptop = loadImage("laptop.png");
  bag = loadImage("bag.png");
  bendy = loadImage("bendy.png");
  backpack = loadImage("backpack.png");
  table = loadImage("table.png");
  fire = loadImage("911.png");
  seed = loadImage("seed.png");
  hall = loadImage("hall.png");
  deli = loadImage("deli.png");
  ravioli = loadImage("ravioli.png");
  boat = loadImage("boat.png");

}


void badImages(){
   scale(0.6);
   translate(cardss.x, cardss.y);
   image(cards, 0, 0); // resize
   translate(bags.x, bags.y);
   image(bag, 0, 0); // resize
   translate(backpacks.x, backpacks.y);
   image(backpack, 0, 0); // resize
   translate(fires.x, fires.y);
   image(fire, 0, 0); // resize
   translate(boats.x, boats.y);
   image(boat, 0, 0); // resize
   translate(exits.x, exits.y);
   image(exit, 0, 0);
   
   translate(bendis.x, bendis.y);
   image(bendi, 0, 0);
  
   translate(laptops.x, laptops.y);
   image(laptop, 0, 0);
  
  
}

void goodImages(){
  scale(0.13);
  
  translate(boxs.x, boxs.y);
  image(box, 0, 0);
  
  translate(switshs.x, switshs.y);
  image(switsh, 0, 0);
  
  translate(bendys.x, bendys.y);
  image(bendy, 0, 0);
  
  translate(tables.x, tables.y);
  image(table, 0, 0);

  translate(seeds.x, seeds.y);
  image(seed, 0, 0);
  
  translate(halls.x, halls.y);
  image(hall, 0, 0);
  
  translate(delis.x, delis.y);
  image(deli, 0, 0);
  
  scale(-0.13);
  translate(138, -116);
  image(ravioli, 0, 0);// CAN'T FIND HIM, RAVIOLI TOO SLIK
  
}
//void rnd(){
//  random(0, 9);
//

// customized function named collage
void mainTransform(){   
    
    translate(width/2, height/2);
    scale( 0.5 );
    
    badImages();
    
    //rotate(TAU * (frameCount * 0.00031)); 
    goodImages();
    
  }
void draw() {
  background(backgroundCover);
  
  //println("frame: " + frameCount); // prints each frame in console
  
  mainTransform(); 
  //println("length: x: " + mouseX + " y: " + mouseY);
  // calling the customized function collage 
  
  if(frameCount == 7500){
    saveFrame("lastFrame####.png");
    println("saved!");  
  }
  
}
