color backgroundCover = lerpColor(#00ff00, #ff00ff, 0.6); 

PImage img1, img2, img3, img4, img5, img6, 
       img7, img8, img9, img10, img11, img12, 
       img13, img14, img15, img16;


// make canvas function without setup
void setup() {
  
  size(1000, 700);
  background(backgroundCover);
  //printMatrix();
  //loaded images  
  img1 = loadImage("switch.png");
  img2 = loadImage("switch.png");
  img3 = loadImage("box.png");
  img4 = loadImage("box.png");
  img5 = loadImage("seed.png");
  img6 = loadImage("seed.png");
  img7 = loadImage("bendy.png");
  img8 = loadImage("bendy.png");
  img9 = loadImage("32.png");
  img10 = loadImage("32.png");
  img11 = loadImage("41.png");
  img12 = loadImage("41.png");
  img13 = loadImage("hall.png");
  img14 = loadImage("hall.png");
  img15 = loadImage("35.png");
  img16 = loadImage("77copy.png");

}
float x = 0;
float y = 0;

PVector position = new PVector(0, 0);
// customized function named collage
void collage(){   
    //rotate(TAU * -1.1 / (frameCount * 0.1)); // divided
  
    //pushMatrix();
    
    //frameRate(1);
    
    //background(backgroundCover);
    translate(430, 152);
    scale( random(0.454) );
    image(img9, 1065, 2602); // same image different sizes
    image(img10, -499, 557);
    //rotate(TAU * -1.80 * (frameCount * 0.031));  // up to here
    //background(backgroundCover);
    
    image(img11, x, y);
    //translate(random(-150, 0), 0);
    image(img12, random(-2494), random(-1139));
    image(img13, random(4134), random(1026));
    image(img14, random(3067), random(2800));
  
    image(img15, random(1751), random(1169));
    image(img16, random(-3058), random(1245));
    
    scale(0.049); // outter scaling 
    //translate(width/-0.67, height/-0.21); // center translation
    scale(381);
    //rotate(TAU * 0.125 * (frameCount * 0.01));
    image(img1, -1186, -67); 
    image(img1, 9230, -39);
    //rotate(TAU * 0.125 * (frameCount * 0.01)); // TAU rotation multiply by 0.125 and times each frame multiply by 0.01
    image(img2, -395, 168);
    //rotate(TAU * 1.0 * (frameCount * 0.01));
    
    image(img3, -677, -1142);
    //rotate(TAU * 1.0 / (frameCount * 0.1));  // divided
    
    image(img4, -185, 210);
    //rotate(TAU * 1.1 / (frameCount * 0.01)); // up to here
    
    image(img5, -238, -188);
    //rotate(TAU * 1.1 * (frameCount * 0.01));
    
    image(img6, -540, -152);
    //rotate(TAU * -1.1 * (frameCount * 0.01));
    
    image(img7, 270, -223);
    
    //translate(-534, 0);
    //rotate(TAU * -1.1 * (frameCount * 0.1));
    image(img8, 7, -272);
    
    //translate(-100, 0);
    

    //translate(-204, 0);
    //rotate(TAU * -1.1 / (frameCount * 0.1));
    //popMatrix();


    //println("Pixels: ", x);
  }
  

void draw() {
  println("frame: " + frameCount); // prints each frame in console
  
  collage(); // calling the customized function collage 
    
    if(frameCount == 1500){
        saveFrame("lastFrame.png");
        exit();
        
    }
  
}
