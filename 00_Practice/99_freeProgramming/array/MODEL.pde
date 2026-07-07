class canvasOrigin{
  // default its at (0, 0);
  void origin(){
    // to the center of canvas
    float x = width/2;
    float y = height/2;
    // execute translation 
    translate(x, y);
  }
}
class scaleView{
  // use floating points to clean the pixels
  void extend(){
    float value = 1.995;
    scale(value);
  }
}
class textDisplay{
  void display(){    
    String title = " The array has 3 numbers: ";
    String comma = ", ";
    String bracketOpen = "[ ";
    String bracketClose = " ]";
    int[] array = new int[3];
    array[0] = 1;
    array[1] = 2;
    array[2] = 3; 
    int x = 0;
    int y = 0;
    text(title + bracketOpen + array[0] + comma + array[1] + comma + array[2] + bracketClose, x, y);
  }
}
