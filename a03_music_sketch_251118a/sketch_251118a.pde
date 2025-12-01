// step sequencer program 
import processing.sound.*;


//background Color in an array
color bgColor = lerpColor(25, 125, 225);

// distance away from each circle
int distance = 6;
// quanttity of circles per step
int quantity = 8;
// the X axis 


// Vector(s = start, e = end);
PVector s = new PVector(50, 50);
PVector e = new PVector(125, 25);

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

PVector mouseVector = new PVector(mouseXposition, mouseYposition);

float horizontalXaxis = 50.0;
float verticalYaxis = 150.0;

float circlePositionX = horizontalXaxis;
float circlePositionY = verticalYaxis;
float size_OfShapeInSpace = 25;

boolean mouseClicked;
void changeColor(){
  color newColor = #00aaaa;
  //fill(color(200, 20, 100));
  
  fill(newColor);
  circle(circleVector.x, circleVector.y, size_OfShapeInSpace);
}

void originalColor(){
  fill(255);
  circle(circleVector.x, circleVector.y, size_OfShapeInSpace);

}

void stepButtonCircle(float circlePositionX, float circlePositionY, float size_OfShapeInSpace){
    

  
  // mouse collision
  float mousePositionX = mouseX;
  float mousePositionY = mouseY;
  float mouseDistance = dist(mousePositionX, mousePositionY, circlePositionX, circlePositionY);
  
  boolean hover = mouseDistance <= size_OfShapeInSpace/40; 
  
  if(hover){
    fill(0);
    circle(circlePositionX, circlePositionY, size_OfShapeInSpace+10);
    }
  if(mouseClicked){
    changeColor();
  } 
  if(mouseClicked){
    originalColor();
  }
  if(mouseDistance>size_OfShapeInSpace){
    changeColor();
  }
  
  
  circle(circlePositionX, circlePositionY, size_OfShapeInSpace+10);

  point(mouseX, mouseY);
  
}

void modulesFx(boolean activeSoundSawOsc){
    fill(0);
    text("PRESS SPACE TO START OSCILLATOR, PRESS ' O ' TO STOP, \nHOVER OVER THE CIRCLE EFFECT WITH THE MOUSE", width/2, height/2.5);
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

float trackerXaxis = 35.0;
float trackerYaxis = 169.0;
float tackerStepVelocity = 0.5;

float stepPerStack = 8.0;


PVector trackerVector = new PVector(trackerXaxis, trackerYaxis);
boolean stepSequenceStarted = true;

void trackerRectPosition(){
  fill(255);
  rect(trackerVector.x, trackerVector.y, 27, 8);
}

color stepButtonBackground = color(255);
boolean newCircleIsReal = false;
PVector circleVector = new PVector(horizontalXaxis, verticalYaxis);

void stepSequenceCircles(int quantity, int distance){ // require 4 channels

  // channel iteration for circles
 for(int i=0; i<quantity; i++){ frameRate(1);
  
  fill(stepButtonBackground); // set circles grey
  circle(circleVector.x, circleVector.y, size_OfShapeInSpace); // the variable 'horizontalXaxis' increase by less than quantity 
  quantity-=1; // and subtractiong 1 from quantity
  //scale(0.9);
  //println("quantity: " + quantity);
  //println("circle Vector: " + circleVector);
  if(circleVector.x==302){
    break;
    
  }
  if(circleVector.x>=size_OfShapeInSpace&&circleVector.y>size_OfShapeInSpace){
    changeColor();
  }
 
    for(int e=0; e<distance; e++){
       // adds distance between circles
       circleVector.x+=distance;
       noFill();
       
       circle(circlePositionX, circlePositionY, size_OfShapeInSpace);
  
         
    }

  }
}

void trackers(){

  // display rect under each circle 
     
  if(stepSequenceStarted){
   
   
     for(int i=0; i<10; i++){
        // increase tracker position and set a new background
        background(bgColor);
        frameRate(1); 
        // calling for update
        trackerVector.x+=distance;
        trackerRectPosition();
        changeInterface();
        channelSelection();
        
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

void mouseClicked(){ 
  mouseClicked = true;
  changeColor();
  circle(circlePositionX, circlePositionY, size_OfShapeInSpace);

}

void draw(){
  
  changeInterface();
  channelSelection();
  trackers();
  modulesFx(activeSoundSawOsc);  
  stepSequenceCircles(quantity, distance);
  stepButtonCircle(circlePositionX, circlePositionY, size_OfShapeInSpace);

  if(frameCount == 1){
    save("Step Sequencer.png");
  }
  
}
