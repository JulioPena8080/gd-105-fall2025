// step sequencer program 
import processing.sound.*;


//background Color in an array
color bgColor = lerpColor(25, 125, 225);

// distance away from each circle
int distance = 6;
// quanttity of circles per step
int quantity = 8;
// the X axis 
int horizontalXaxis = 50;


// Vector(s = start, e = end);
PVector s = new PVector(50, 50);
PVector e = new PVector(125, 25);

// Cursor lines 
PVector lineS = new PVector(0, width);
PVector lineE = new PVector(0, height);

// Array for Oscillators



 
// all functions goes under this comment


// Sound wavelength with all pass filter
SawOsc saw;
//SqrOsc sqr;

 
AllPass allPass;
// sets a volume length
// SoundFile laser;
// SoundFile bgm;

//// an amplitude object let us monitor the volume 
// Amplitude ampLaser, ampBGM;
void mouseVector(PVector lineS, PVector lineE){
  
  
  line(lineS.x, lineS.y, lineE.x, lineE.y);
  
}

boolean activeSound;

void modulesFx(boolean activeSound){
    fill(0);
    text("PRESS SPACE TO START OSCILLATOR, PRESS ' O ' TO STOP", width/2, height/2.5);
    activeSound = false;
    
    if(keyPressed&&key==' '){
      
      activeSound = true;
    }
    if(keyPressed&&key=='o'){
      saw.stop();
    }
    if(activeSound==true){
      saw = new SawOsc(this);
      saw.freq(200);
      
      // filter
      allPass = new AllPass(this);
      // play sound wave
      saw.play();
      // volume adjustment
      saw.amp(0.3);
      
      // start the saw wave and pushes the allPass filter
      allPass.process(saw);
    }


    // preping assets
    //laser = new SoundFile(this, ".wav");
    //bgm = new SoundFile(this, ".wav");
    
    //ampLaser = new Amplitude(this);
    //ampLaser.input(laser);
    
    //ampBGM = new Amplitude(this);
    //ampBGM.input(bgm);
}

void labelBackground(){ // assign values to variablzes and a cursor condition to start creating user interactions

  rect(s.x, s.y, e.x, e.y);

}

void keyPressed(){

}

// above construction

void changeInterface(){
    fill(#3a0f9a);
    labelBackground();
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
     //background(bgColor);
     fill(112);
     rect(35, 169, 27, 8); // tracking channels background
     
    
}

void stepSequenceCircles(){ // require 4 channels
     
    
    // channel iteration for circles
    for(int i=0; i<quantity; i++){ 
        
        fill(175, 175, 175); // set circles grey
        circle(horizontalXaxis, 150, 25); // integer X in the width increase by iteration 
        quantity-=1; // and subtractiong 1 from quantity
        for(int e=0; e<distance; e++){
            // adds distance between circles
            horizontalXaxis+=distance; 
            // stop loop from iterating
            if(horizontalXaxis>width&&horizontalXaxis>=quantity){
              break;
            }
        }
    }
}


// layout for the instruments of user interactions

void setup(){
    size(1000, 600);
    background(bgColor);
    label();
    
}



// static and active sketches

void draw(){
  
  changeInterface();
  channelSelection();
  stepSequenceCircles();
  trackers();
  modulesFx(activeSound);
  mouseVector(lineS, lineE);
  if(frameCount == 20){
    save("Step Sequencer.png");
  }
  
}
