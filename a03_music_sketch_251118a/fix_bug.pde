class view{
  // so the user have a spefic perception 
  

}

void trackerRectPosition(){
  fill(#aaff00);
  strokeWeight(4);
  rect(trackerVector.x, trackerVector.y, circlePositionX, width);
}

void draw(){ 
    
    changeInterface();
    channelSelection();
    trackers();
    stepSequenceCircles(quantity, distance);
    stepButtonCircle(circlePositionX, circlePositionY, size_OfShapeInRadious);
    modulesFx(activeSoundSawOsc);
    
}
