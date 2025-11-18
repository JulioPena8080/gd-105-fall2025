color backgroundCover = lerpColor(#00ff00, #ff00ff, 0.6); 

float rL = 0.003;
float r = random(0.000, 0.009);

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
PVector seeds = new PVector(-5342, 2900);
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
  ravioli = loadImage("6.png");
  boat = loadImage("boat.png");

}


void badImages(){
   scale(1.4);
   translate(cardss.x, cardss.y);
   image(cards, 0, 0); // resize
   
   rotate(radians(90) * (frameCount * 0.003));
   rotate(radians(180) * (frameCount * 0.003));
   rotate(radians(270) * (frameCount * 0.003));

   
   translate(bags.x, bags.y);
   image(bag, 0, 0); // resize
   
   rotate(radians(90) * (frameCount * 0.003));
   rotate(radians(180) * (frameCount * 0.003));
   rotate(radians(270) * (frameCount * 0.003));

   
   translate(backpacks.x, backpacks.y);
   image(backpack, 0, 0); // resize
   
   rotate(radians(2) * cos(frameCount * rL * r));
   
   translate(fires.x, fires.y);
   image(fire, 0, 0); // resize
   
   rotate(radians(90) * cos(frameCount * rL));
   
   translate(boats.x, boats.y);
   image(boat, 0, 0); // resize
   
   
   rotate(radians(15) * cos(frameCount * rL)); 

   
   translate(exits.x, exits.y);
   image(exit, 0, 0);
   
   rotate(radians(5) * cos(frameCount * rL)); 
   rotate(radians(90) * (frameCount * 0.001));
   rotate(radians(180) * (frameCount * 0.003));
   rotate(radians(270) * (frameCount * 0.003));

   
   translate(bendis.x, bendis.y);
   image(bendi, 0, 0);
   
   rotate(radians(15) * (frameCount * 0.003)); 


   rotate(radians(90) * (frameCount * 0.003));
   rotate(radians(180) * (frameCount * 0.003));
   rotate(radians(270) * (frameCount * 0.003));

   translate(laptops.x, laptops.y);
   image(laptop, 0, 0);
   


}

void goodImages(){
  scale(0.09);
  
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
  
  rotate(radians(15) * (frameCount * rL+0.001));
  
  translate(149, 1619);
  image(ravioli, 0, 0);
  
  rotate(radians(5) / (frameCount * rL));
  if(rL > 0.0000){
    rotate(radians(5) * (frameCount * rL));
  }
  
  translate(halls.x, halls.y);
  image(hall, 0, 0);
  
  rotate(radians(90) * (frameCount * 0.003));
  rotate(radians(180) * (frameCount * 0.003));
  rotate(radians(270) * (frameCount * 0.003));

  translate(delis.x, delis.y);
  image(deli, 0, 0);

  
}

// customized function named collage
void mainTransform(){   
    
    translate(width/2, height/2);
    
    scale( 0.33 );
    imageMode(CENTER);
    
    badImages();
    //rotate(radians(15) * (frameCount * 0.00031)); 
    goodImages();
   
  }
void draw() {frameRate(60);
  //background(backgroundCover); 
  imageMode(CENTER);

  mainTransform(); 

  // calling the customized function collage 
  
  if(frameCount == 7500){
    saveFrame("lastFrame####.png");
    println("saved!"); 
    noLoop();
  }
  
}
