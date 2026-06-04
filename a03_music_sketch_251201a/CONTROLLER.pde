// mute the sound by pressing any key
void keyPressed(){
  // condination that returns the mute method
  if(key=='r'){
    if (instant == 0){
      randomPattern();
    }
  }
  if(key==' '){
    mute();
  }
}


// use mouse to interact with program
void mouseClicked(){
  int line = floor(mouseY/25); 
  int instant = floor(mouseX/25); 
 
  switch(line){
    case 0:
      broadcastSnare[instant] = !broadcastSnare[instant];
      break;
    case 1:
      broadcastKick[instant] = !broadcastKick[instant];
      break;
    case 2:
      broadcastHihat[instant] = !broadcastHihat[instant];
      break;
    case 3:
      broadcastBass[instant] = !broadcastBass[instant];
      break;
  }
}
