// saves the first frame
class projectRecord{
  void saved(){
    saveFrame("Sample.png"); 
  }
}
// static sketch 
void setup(){
  // sets dimension & background
  size(1000, 550);
  background(199, 30, 20);
  // allocating classes 
  // save frame 
  projectRecord screen = new projectRecord();
  // translation 
  canvasOrigin translate = new canvasOrigin();
  // point of view on scale
  scaleView scale = new scaleView(); 
  // text to display on canvas
  textDisplay text = new textDisplay();
  // return methods 
  translate.origin();
  scale.extend();
  text.display();
  screen.saved();
  
  
  
  
  

}
