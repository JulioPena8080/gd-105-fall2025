// data analysis class
class data {
  // data types 
  int score;
  void mousePressed(){
    if(keyPressed&&key==' '){
      score+=1;
      println("added 1 to the score." + "\n");
    }
  }
  void sumFunction(){
    if(score>=10){
      println("its greater than 10" + "\n");
    }
    if(score<=0){
      println("its less than 0"  + "\n");
    }
  }
}
// sum integers & return their vaules
