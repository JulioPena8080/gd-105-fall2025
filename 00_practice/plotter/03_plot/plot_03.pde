import processing.svg.*; // import library
int x = width/2; // set x to width divided by 2
int y = height/2; // set y to height divided by 2

int quantity = 5;
int a = 20;

void circles(){
  

    if(frameCount > 60){
      scale(0.3);
      rotate(radians(45));
      x+=20;
      for(int i=0; i<quantity; i++){
          noFill();
          stroke(0);
          strokeWeight(1);
          translate(x, y);
          circle(0, 0, 25);

          for(int e=0; e<quantity; e++){
            noFill();
            stroke(0); 
            strokeWeight(1);
            translate(x, y);
            circle(0, 0, 25);

          }
      }

    }
}

void setup(){
    size(100, 100);
}

void draw(){
    //background(255);
    // customized functions goes here
    if(frameCount == 200){
      save("plot_03.png");
    }

      circles();
    
    
}
//beginRecord(SVG, "plot_03");

//endRecord();
