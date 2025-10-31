float w = width;
float h = height;
void canvas(){
  int backgroundCover = #ff00ff;
  background(backgroundCover);
  size(800, 600);
  return;
}

// make canvas function without setup
void setup(){
  canvas();
  PImage d = new PImage();
  
  img = loadImage("45.png");
  translate(w/2, h/2);
  scale(0.01);
  image(img, w/2, h/2);

}

String imgs(String one, String two, String three,
            String four, String five, String six,
            String seven, String eight, String nine,
            String ten, String eleven, String twelve,
            String thirdT, String fourT, String fiveT,
            String sixT){
          one = "1.png"; 
          two = "6.png";
          three = "9.png";
          four = "32.png";
          five = "33.png";
          six = "35.png";
          seven = "41.png";
          nine = "50.png";
          ten = "77.png";
          eleven = "80.png";
          twelve = "89.png";
          thirdT = "90.png";
          fourT = "98.png";
          fiveT = "100.png";
          sixT = "avatar2";
          
          PImage img1;
          PImage img2;
          PImage img3;
          PImage img4;
          PImage img5;
          PImage img6;
          PImage img7;
          PImage img8;
          PImage img9;
          PImage img10;
          PImage img11;
          PImage img12;
          PImage img13;
          PImage img14;
          PImage img15;
          PImage img16;
          
          img1 = loadImage(one);
          img2 = loadImage(two);
          img3 = loadImage(three);
          img4 = loadImage(four);
          img5 = loadImage(five);
          img6 = loadImage(six);
          img7 = loadImage(seven);
          img8 = loadImage(eight);  
          img9 = loadImage(nine);
          img10 = loadImage(ten);
          img11 = loadImage(eleven);
          img12 = loadImage(twelve);
          img13 = loadImage(thirdT);
          img14 = loadImage(fourT);
          img15 = loadImage(fiveT);
          img16 = loadImage(sixT);
          


                image(one, 0, 0); 
                image(two, 0, 0); 
                image(three, 0, 0); 
                image(four, 0, 0); 
                image(five, 0, 0); 
    //six, seven, eight, nine, ten, eleven, twelve, thirdT, fourT, fiveT, sixT);
}               
