import processing.svg.*; // import library

void circles(){
  
beginRecord(SVG, "plot_03.svg");
  
int x = width/2; // set x to width divided by 2
int y = height/2; // set y to height divided by 2

int quantity = 5;
int a = 20;


   

  if(frameCount > 20){
    scale(0.3);
    rotate(radians(45));
    x+=20;
  }
    for(int i=0; i<quantity; i++){
      noFill();
      stroke(0);
      strokeWeight(1);
      translate(x, y);
      circle(0, 0, 25);
  
        for(int e=0; e<quatity; e++){   
          noFill();
          stroke(0); 
          strokeWeight(1);
          translate(x, y);
          circle(0, 0, 25);
        }
    }
endRecord();
}

void setup(){
    size(100, 100);
    circles();
}
