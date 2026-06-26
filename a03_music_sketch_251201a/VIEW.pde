
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
    displayBroadcast(broadcastSawOsc, 0, #00aa00);
    displayBroadcast(broadcastSqrOsc, 1, #aa0000);
    displayBroadcast(broadcastSinOsc, 2, #0000aa);
    displayBroadcast(broadcastTriOsc, 3, #ffee00);
    
    // play initialized sound
    if(broadcastSawOsc[instant]){
      // snare  
      saw.play();
    }
    if(broadcastSqrOsc[instant]){
      // kick
      square.play();
    }
    if(broadcastSinOsc[instant]){
      // hihat
      sine.play();
    }
    if(broadcastTriOsc[instant]){
      triangle.play();
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
      broadcastSawOsc[rInstant] = !broadcastSawOsc[rInstant];
      break;
    case 1:
      broadcastSqrOsc[rInstant] = !broadcastSqrOsc[rInstant];
      break;
    case 2:
      broadcastSinOsc[rInstant] = !broadcastSinOsc[rInstant];
      break;
    case 3:
      broadcastTriOsc[rInstant] = !broadcastTriOsc[rInstant];
      break;
  }
  
}
