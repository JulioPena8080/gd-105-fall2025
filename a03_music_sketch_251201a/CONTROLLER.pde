
float volume; // needs amplifier
float amp;

void amp(){
    // increases volume 
  if(keyPressed&&key=='1'){
    amp += 10.2;
  }
  
    // decreases volume
  if(keyPressed&&key=='0'){
    amp-=15.4;
  }
  
    // condination that returns the mute method
  if(key=='r'){
    if (instant == 0){
      randomPattern();
    }
  }
  // mute the sounds
  if(key==' '){
    mute();
  }
}
// mute the sound by pressing any key
void keyPressed(){
  amp();
}


// use mouse to interact with program
void mouseClicked(){
  int line = floor(mouseY/25); 
  int instant = floor(mouseX/25); 
 
  switch(line){
    case 0:
      broadcastSawOsc[instant] = !broadcastSawOsc[instant];
      break;
    case 1:
      broadcastSqrOsc[instant] = !broadcastSqrOsc[instant];
      break;
    case 2:
      broadcastSinOsc[instant] = !broadcastSinOsc[instant];
      break;
    case 3:
      broadcastTriOsc[instant] = !broadcastTriOsc[instant];
      break;
  }
}
