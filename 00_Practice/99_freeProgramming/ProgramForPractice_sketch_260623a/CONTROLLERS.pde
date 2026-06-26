// class with all the methods that control the API
class controlModule {
  // declare data type and name
  int scorePoint;
  boolean clicked;
  void mousePressed(){
    // first display score in the console
    print("Clicked bool: " + clicked + "\n");
    print("Current score: " + scorePoint + "\n");
    // second display score when is true
    clicked=true;
    if(clicked==true){
      scorePoint+=1;
      print("Clicked bool: " + clicked + "\n");
      print("Current score: " + scorePoint + "\n");
    } else {
      clicked=false;
    }
  }
  void mouseReleased(){
    // when is true and score is greater than 0. Adds 1 and display score
    if(clicked==true){
      scorePoint+=1;
      print("Clicked bool: " + clicked + "\n");
      print("Current score: " + scorePoint + "\n");
    } else {
      clicked=true;
    }
  
  }
  // custom function for pressing space
  void keyPressed(){
    // when 'space' is pressed 
    if(key==' '){
       // score added 1  
       scorePoint+=1;
       println("current score: " + scorePoint + "\n");
    }
  }
  
  
}
