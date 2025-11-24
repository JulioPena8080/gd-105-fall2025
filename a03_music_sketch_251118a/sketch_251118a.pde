// step sequencer program 
import processing.sound.*;


//background Color in an array
color bgColor = lerpColor(25, 125, 225);

// distance away from each circle
int d = 6;
// quanttity of circles per step
int q = 8;
// the X axis 
int x = 50;


// Vector(s = start, e = end);
PVector s = new PVector(50, 50);
PVector e = new PVector(125, 25);

// Array for Oscillators



 
// all functions goes under this comment


// Sound wavelength 'saw' with all pass filter
SawOsc saw;
AllPass allPass;
// sets a volume length
SoundFile laser;
SoundFile bgm;

// an amplitude object let us monitor the volume 
Amplitude ampLaser, ampBGM;

void modulesFx(){

    // preping assets
    laser = new SoundFile(this, ".wav");
    bgm = new SoundFile(this, ".wav");
    
    ampLaser = new Amplitude(this);
    ampLaser.input(laser);
    
    ampBGM = new Amplitude(this);
    ampBGM.input(bgm);
    
    saw = new SawOsc(this);
    saw.freq(200);
    allPass = new AllPass(this);
    
    // start the saw wave and pushes the allPass
    saw.play();
    allPass.process(saw);
    
}

void viewOscillator(){
  
}

void labelBackground(){ // assign values to variablzes and a cursor condition to start creating user interactions

  rect(s.x, s.y, e.x, e.y);

}

void mousePressed(){
  
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
    background(bgColor);
    label();
    modulesFx();
}



// static and active sketches

void draw(){
    
  float g = map(mouseX, 0, width, 0, 1);
  allPass.gain(g);
  background(g * 255, 0, 0);
  
  changeInterface();
  channelSelection();
  circles();
  trackers();


}
