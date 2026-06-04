    // declare oscillator square
    //SqrOsc square;
    // declare filters for oscillator
    //AllPass allpass;
// speed for each instant


// Active canvas for display
void draw(){

    
    // scales the entire canvas
    scaleProject();

    // background for active sketch
    background(backgroundColor);
    
    // returning texts
    guide();

    // floating point for speed in the tracker for each instant
    float trackerSpeed = instant * 50;
    // overlay tracker
    fill(blackShape);
    rect(trackerSpeed + 25, height/2, 50, height);
    
    // The first iteration happens inside the active sketch
    // where its purpose is to repeat until the user exits the program
    // called a custom funtion that does exactly this demands 
    
    // display all lines of shapes with their colors
    displayBroadcast(broadcastSnare, 0, #00aa00);
    displayBroadcast(broadcastKick, 1, #aa0000);
    displayBroadcast(broadcastHihat, 2, #0000aa);
    displayBroadcast(broadcastBass, 3, #ffee00);
    
    // play initialized sound
    if(broadcastSnare[instant]){
      // snare  
      drumKitSnare.play();
    }
    if(broadcastKick[instant]){
      // kick
      drumKitKick.play();
    }
    if(broadcastHihat[instant]){
      // hihat
      drumKitHihat.play();
    }
    if(broadcastBass[instant]){
      drumKitBass.play();
    }
    // increment to analyze
    instant++;
    // diviver by divisor and equals to it
    instant %= threshold;
}
// method that returns the value of random selection
void randomPattern(){
  // the random instant selected shape and threshold
  int rLine = int(random(3));
  int rInstant = int(random(threshold));
  // use switch for each case
  switch(rLine){
    case 0:
      broadcastSnare[rInstant] = !broadcastSnare[rInstant];
      break;
    case 1:
      broadcastKick[rInstant] = !broadcastKick[rInstant];
      break;
    case 2:
      broadcastHihat[rInstant] = !broadcastHihat[rInstant];
      break;
    case 3:
      broadcastBass[rInstant] = !broadcastBass[rInstant];
      break;
  }
  
}
