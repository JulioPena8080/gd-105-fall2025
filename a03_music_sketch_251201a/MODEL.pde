//         DEMO
// | text [ O O O O ] [] |
// | text [ O O O O ] [] |
// 
// import all sounds library
import processing.sound.*;
// declare variables for sounds 
SoundFile drumKitKick, drumKitSnare, drumKitHihat, drumKitBass;

// declare a variable that informs the current state
// with a set of "True" and "False" conditional statements
// where its purpose is to be held to account as "broadcast"  
boolean[] broadcastSnare;
boolean[] broadcastKick;
boolean[] broadcastHihat;
boolean[] broadcastBass;

// boolean array for looping sequence with in parameter and inside a conditional statement
boolean[] iteration;
// assign an interger to a variable named "instant" 
// where its purpose is to tap on each section of the sequence
int instant = 0;
// assign an interger to another variable named "threshold"
// where its purpose is to keep control of the sequence
// as a final request for the program to be able to iterate
final int threshold = 16;
// prepare canvas for displaying the current script with
// drown shapes and conditions along with the first layer    
color backgroundColor = color(64, 128, 128);
// create the second layer by using distinction with another color for the shapes
// name of the color for the row of shapes
color blackShape = color(55, 55, 55);

// Entry point of the program
void setup(){
    // called the pre-build function 'frameRate' at 8 along with the limitation 
    // being allocated in the datatype 'boolean' array of the sounds that has been declared
    frameRate(8);
    // allocation for the limitation of the 'boolean' array
    broadcastSnare = new boolean[threshold];
    broadcastKick = new boolean[threshold];
    broadcastHihat = new boolean[threshold];
    broadcastBass = new boolean[threshold];
    //iteration = new boolean[instant];
    // creates the dimension of the canvas in interger values
    size(800, 500);
    // sets the first layer with a color 
    background(backgroundColor);
    // center rectangle under each 'instant'
    rectMode(CENTER);
    // initialize the declared sound variables
    drumKitSnare = new SoundFile(this, "data/669855__theendofacycle__clicky-snare-drum-hit.wav");
    drumKitKick = new SoundFile(this, "data/kick.wav");
    drumKitHihat = new SoundFile(this, "data/hihat.wav");
    drumKitBass = new SoundFile(this, "data/bass.wav");

    // loop sequence that only runs once
    for(int i = 0; i < threshold; i++){
      // random floating point from 0 to 1
      // if 'i' is less than 0.25
      // while is less than 0.125 fills each instant
      if(random(3) < 0.25){
        // 'i' becomes true
        broadcastSnare[i] = true;
      }
      if(random(1) < 0.125){
        broadcastKick[i] = true;
      }
      if(random(1) < 0.125){
        broadcastHihat[i] = true;
      }
      if(random(4) < 0.125){
        broadcastBass[i] = true;
      }
    }
}

// method that display the sequence of shapes 
void displayBroadcast(boolean[] iteration, int line, color blackShape){
      // an datatype that describe the dimension of shapes in a row named "circumference"
    float circumference = 25;
    for(int i = 0; i < threshold; i++){
      // calculation through 'i' to see whats 'true' or 'false'
      if(iteration[i]){
        fill(blackShape);
      } else {
        fill(255);
      }
      circle(25 + 50 * i, 25 + 50 * line, circumference);
    }
}
// mute the sounds
void mute(){
  drumKitSnare.stop();
  drumKitKick.stop();
  drumKitHihat.stop();
  drumKitBass.stop();
}

// add some text to the sketch with instructions
void guide(){
  textSize(25);
  textAlign(CENTER, CENTER);
  String label = "click on the circle to add that step\nand press and hold 'space' to stop the sounds\nPress 'r' to randomized the pattern";
  fill(0);
  text(label, width/2+85, height/2+275);
}

// resize sketch's origin
void scaleProject(){
  // floating point for the scale to be called in a console
  float scl = 0.5;
  // resize origin  
  scale(scl);
  //translate(width/2, height);
}
