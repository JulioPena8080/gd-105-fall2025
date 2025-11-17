color backgroundCover = lerpColor(#00ff00, #ff00ff, 0.6); 

PImage cards, exit, box, switsh, bendi, laptop, 
       bag, bendy, backpack, table, fire, seed, 
       hall, cone, ravioli, boat;


// make canvas function without setup
void setup() {
  
  size(1000, 700);
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
  cone = loadImage("cone.png");
  ravioli = loadImage("ravioli.png");
  boat = loadImage("boat.png");

}

void images(){
  
  translate(0.0, 0.0);
  scale(2.28);
  image(cards, 0 ,0);
  
  translate(0.0, 0.0);
  scale(2.28);
  image(exit, 0, 0);
  
  translate(0.0, 0.0);
  scale(2.28);
  image(box, 0, 0);
  
  translate(0.0, 0.0);
  scale(2.28);
  image(switsh, 0, 0);
  
  translate(0.0, 0.0);
  scale(2.28);
  image(bendi, 0, 0);
  
  translate(0.0, 0.0);
  scale(2.28);
  image(laptop, 0, 0);
  
  translate(0.0, 0.0);
  scale(2.28);
  image(bag, 0, 0);
  
  translate(0.0, 0.0);
  scale(2.28);
  image(bendy, 0, 0);
  
  translate(0.0, 0.0);
  scale(2.28);
  image(backpack, 0, 0);
  
  translate(0.0, 0.0);
  scale(2.28);
  image(table, 0, 0);
  
  translate(0.0, 0.0);
  scale(2.28);
  image(fire, 0, 0);
  
  
  translate(0.0, 0.0);
  scale(2.28);
  image(seed, 0, 0);
  
  translate(0.0, 0.0);
  scale(2.28);
  image(hall, 0, 0);
  
  translate(0.0, 0.0);
  scale(2.28);
  image(cone, 0, 0);
    
  translate(0.0, 0.0);
  scale(2.28);
  image(ravioli, 0, 0);
  
  translate(0.0, 0.0);
  scale(2.28);
  image(boat, 0, 0);
  
}

// customized function named collage
void transform(){   
    
    translate(width/2, height/2);
    scale( 0.00004 );
    //rotate(TAU * -1.80 * (frameCount * 0.31)); 
    images();
    
  }
  
void collage(){
  background(backgroundCover);
}
void draw() {
  //println("frame: " + frameCount); // prints each frame in console
  collage();
  transform(); 
 
  // calling the customized function collage 
  
    if(frameCount == 7500){
        saveFrame("lastFrame####.png");
        println("saved!");

        
    }
  
}
