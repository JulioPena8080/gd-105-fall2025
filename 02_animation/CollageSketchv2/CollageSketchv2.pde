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
  img1 = loadImage("100.png");
  img2 = loadImage("100.png");
  img3 = loadImage("box.png");
  img4 = loadImage("33.png");
  img5 = loadImage("100.png");
  img6 = loadImage("35.png");
  img7 = loadImage("80.png");
  img8 = loadImage("bendy.png");
  img9 = loadImage("32.png");
  img10 = loadImage("table.png");
  img11 = loadImage("bendy.png");
  img12 = loadImage("41.png");
  img13 = loadImage("9.png");
  img14 = loadImage("100.png");
  img15 = loadImage("deli.png");
  img16 = loadImage("77copy.png");

}

// customized function named collage
void collage(){   
    //rotate(TAU * -1.1 * (frameCount * 0.031)); // divided
  
    //pushMatrix();
    
    //frameRate(1);
    
    //background(backgroundCover);
    //pushMatrix();
    translate(width/2*0.5, height/2*0.5);
    scale( random(0.4) );
    rotate(TAU * -1.80 * (frameCount * 0.0031));  // up to here
   //opMatrix();
    image(img9, random(-10058), random(180245)); // same image different sizes
    image(img10, random(-10058), random(180245));
    
    //background(backgroundCover);
    
    image(img11, random(-10058), random(180245));
    //translate(random(-150, 0), 0);
    image(img12, random(-10058), random(180245));
    image(img13, random(-10058), random(180245));
    image(img14, random(-10058), random(180245));
  
    image(img15, random(-10058), random(180245));
    image(img16, random(-10058), random(180245));
    
    //scale(0.020); // outter scaling 
    //translate(width/-0.67, height/-0.21); // center translation
    //scale(20);
    //rotate(TAU * 0.125 * (frameCount * 0.01));
    image(img1, random(-10058), random(180245)); 
    image(img1, random(-10058), random(180245));
    //rotate(TAU * 0.125 * (frameCount * 0.01)); // TAU rotation multiply by 0.125 and times each frame multiply by 0.01
    image(img2, random(-10058), random(180245));
    //rotate(TAU * 1.0 * (frameCount * 0.01));
    
    image(img3, random(-10058), random(180245));
    //rotate(TAU * 1.0 / (frameCount * 0.1));  // divided
    
    image(img4, random(-10058), random(180245));
    //rotate(TAU * 1.1 / (frameCount * 0.01)); // up to here
    
    image(img5, random(-10058), random(180245));
    //rotate(TAU * 1.1 * (frameCount * 0.01));
    
    image(img6, random(-10058), random(180245));
    //rotate(TAU * -1.1 * (frameCount * 0.01));
    
    image(img7, random(-10058), random(180245));
    
    //translate(-534, 0);
    //rotate(TAU * -1.1 * (frameCount * 0.1));
    image(img8, random(-10058), random(180245));
    //resetMatrix();
    //translate(-100, 0);
    

    //translate(-204, 0);
    //rotate(TAU * -1.1 / (frameCount * 0.1));
    //popMatrix();


    //println("Pixels: ", x);
  }
  

void draw() {
  println("frame: " + frameCount); // prints each frame in console
  
  collage(); // calling the customized function collage 
  
    if(frameCount == 7500){
        saveFrame("lastFrame.png");
        exit();
        //resetMatrix();
        
    }
  
}
