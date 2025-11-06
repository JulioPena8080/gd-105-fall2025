float w = width;
float h = height;
color backgroundCover = #ff00ff;

PImage img1, img2, img3, img4, img5, img6, img7, img8, img9, img10;


// make canvas function without setup
void setup() {
  size(500, 500);
  background(backgroundCover);
  img1 = loadImage("1.png");
  img2 = loadImage("ravioli.png");
  img3 = loadImage("772.png");
  img4 = loadImage("80.png");
  img5 = loadImage("90.png");
  img6 = loadImage("50.png");
  img7 = loadImage("9.png");
  img8 = loadImage("32.png");
  img9 = loadImage("41.png");
  img10 = loadImage("35.png");
}
float x = random(-250, 250);
float y = random(-250, 250);
void draw() {
  frameRate(1);
  scale(0.75);
  translate(width/2, height/2);
  //float x = random(-300, 300);
  for(int i=0; i<x; i++){
    
    x=y/2;
  }
  image(img1, x, y);
  image(img2, x, y);
  image(img3, x, y);
  image(img4, x, y);
  image(img5, x, y);
  image(img6, x, y);
  image(img7, x, y);
  image(img8, x, y);
  image(img9, x, y);
  image(img10, x, y);
  //image(img11, 0, 0);
  //image(img12, 0, 0);
  //image(img13, 0, 0);
  //image(img14, 0, 0);
  //image(img15, 0, 0);

}
