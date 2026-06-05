
float volume = 0.2; // needs amplifier

// mute the sound by pressing any key
void keyPressed(){
  
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
  // needs a amplifier
  // increases volume 
  if(keyPressed&&key=='1'){
    volume+=0.1;
  }
  // decreases volume
  if(keyPressed&&key=='0'){
    volume-=0.1;
  }
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
