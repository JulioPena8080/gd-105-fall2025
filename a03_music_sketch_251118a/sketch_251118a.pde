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
int verticalYaxis = 150;

// Vector(s = start, e = end);
PVector s = new PVector(50, 50);
PVector e = new PVector(125, 25);

// Cursor lines 
PVector lineS = new PVector(0, width);
PVector lineE = new PVector(0, height);

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

// sound wave types
boolean activeSoundSawOsc;
boolean activeSoundSqrOsc;
boolean activeSoundTriangleOsc;

// hover over stuff
boolean hoverMouse = false;

float mouseXposition = mouseX;
float mouseYposition = mouseY;

int circlePositionX = horizontalXaxis;
int circlePositionY = verticalYaxis;
int size_OfShapeInSpace = 25;

void modulesFx(boolean activeSoundSawOsc){
    fill(0);
    text("PRESS SPACE TO START OSCILLATOR, PRESS ' O ' TO STOP", width/2, height/2.5);
    activeSoundSawOsc = false;
    
    if(keyPressed&&key==' '){
      activeSoundSawOsc = true;
    }
    if(keyPressed&&key=='o'){
      saw.stop();
    }
    if(activeSoundSawOsc==true){
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

// above construction

void changeInterface(){
    fill(#3a0f9a);
    rect(s.x, s.y, e.x, e.y);
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
  circle(horizontalXaxis, verticalYaxis, size_OfShapeInSpace); // the variable 'horizontalXaxis' increase by less than quantity 
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
  modulesFx(activeSoundSawOsc);
  
  stroke(#00ff00);
  line(lineS.x, lineS.y, lineE.x, lineE.y);
  
  if(frameCount == 20){
    save("Step Sequencer.png");
  }
  
}
