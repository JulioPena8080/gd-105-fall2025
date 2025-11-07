color backgroundCover = #ff00ff; 

PImage img1, img2, img3, img4, img5, img6, 
       img7, img8, img9, img10, img11;


// make canvas function without setup
void setup() {
  
  size(1000, 500);
  background(backgroundCover);
  
  //loaded images  
  img1 = loadImage("1.png");
  img2 = loadImage("ravioli.png");
  img3 = loadImage("33.png");
  img4 = loadImage("80.png");
  img5 = loadImage("90.png");
  img6 = loadImage("50.png");
  img7 = loadImage("9.png");
  img8 = loadImage("32.png");
  img9 = loadImage("41.png");
  img10 = loadImage("35.png");
  img11 = loadImage("77copy.png");

}

// customized function named collage
void collage(){  
  
    scale(frameCount * 0.0002); // outter scaling 
    translate(width/0.42, height/0.46); // center translation
    image(img1, 0, -133); 
    rotate(TAU * 0.125 * (frameCount * 0.01)); // TAU rotation multiply by 0.125 and times each frame multiply by 0.01
    image(img2, -186, 0);
    rotate(TAU * 1.0 * (frameCount * 0.01));
    image(img3, 373, -29);
    rotate(TAU * 1.0 / (frameCount * 0.1));  // divided
    image(img4, -192, -9);
    rotate(TAU * 1.1 / (frameCount * 0.01)); // up to here
    image(img5, -148, -168);
    rotate(TAU * 1.1 * (frameCount * 0.01));
    image(img6, -332, -170);
    rotate(TAU * -1.1 * (frameCount * 0.01));
    image(img7, 0, -286);
    translate(-100, 0);
    rotate(TAU * -1.1 * (frameCount * 0.1));
    image(img8, -273, -278);
    translate(-100, 0);
    rotate(TAU * -1.1 / (frameCount * 0.1)); // divided
    image(img9, -18, -37);
    translate(-100, 0);
    rotate(TAU * -1.1 / (frameCount * 0.1));
    image(img10, -114, -336);
    rotate(TAU * -1.0 / (frameCount * 0.1));  // up to here
    image(img11, -210, 0); 
    
  }
  

void draw() {
  //background(backgroundCover);
  if(frameCount < 99500){ // if the frameCount is less than 99500 translation and rotation takes place
    translate(width/2, height/2); // translate to center
    rotate( frameCount * 19.5 * (TAU * (1.5 / 8.5) )); // rotate each frame multiply by 19.5 times TAU multiply by 1.5 divided by 8.5
  }
   
  collage(); // calling the customized function collage

}
