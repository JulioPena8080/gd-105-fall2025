// step sequencer program 

//background Color in an array
color[] bgColor = {25, 125, 225};
// distance away from each circle
int d = 6;
// quanttity of circles per channel
int q = 8;
// the X axis 
int x = 50;

float mX = mouseX;
float mY = mouseY;

void rect(){
  int w = 50;
  int h = 50;
  int lx = 125;
  int ly = 25;
  rect(w, h, lx, ly);
  
  
  
}

void changeInterface(){ // Change Scene once is clicked on but is not functional yet...
    fill(#3a0f9a);
    rect();
    fill(255);
    text("Oscillators", 90, 65);

    
}

void channelSelection(){ // selection for each channel "from 1 to 4"
    fill(0);
    square(350, 100, 50);
    fill(255);
    text("channel", 355, 115);
    text("1", 373, 140);
    
    
}


void label(){
    scale(2);
    fill(0);
    text("Step Sequencer", 100, 100);
}

void trackers(){
     // display rect under each circle 
     fill(112);
     rect(35, 169, 27, 8); // tracking channels background
     
    
}

void circles(){ // require 4 channels
   
    // channel iteration for circles
    for(int i=0; i<q; i++){ 
        
        fill(175, 175, 175); // set circles grey
        circle(x, 150, 25); // integer X in the width increase by iteration 
        q-=1; // and subtractiong 1 from quantity
        for(int e=0; e<d; e++){
            // adds distance between circles
            x+=d; 
            // stop loop from iterating
            if(x>width&&x>=q){
              break;
            }
        }
    }
}


// layout for the instruments of user interactions

void setup(){
    size(1000, 600);
    background(bgColor[0], bgColor[1], bgColor[2]);
    label();
}



// static and active sketches

void draw(){
  changeInterface();
  channelSelection();
  circles();
  trackers();
  save("03_music.png");

}
