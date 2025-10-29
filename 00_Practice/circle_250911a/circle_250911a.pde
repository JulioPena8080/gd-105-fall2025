// Colors


// Method to start

void setup()
{
  size(900, 900);
  background(125);
}

// Method to Draw

void draw()
{ 
    int amount = 1;
    fill(200,0,0);
    if (amount == 1) {stroke(2);circle(300, 600, 700);};
      fill(0,0,255);
      for(int i=0; i<amount; i++)
      {  
        amount = 2;
        strokeWeight(4);
        circle(600, 300, 200);
        if(amount == 2){stroke(2);circle(100, 400, 50);};
        if(amount > 1){fill(0,175,0);circle(50, 50, 95);}
      }
  
  fill(0,0,255);
  circle(760, 510, 100);
  fill(255);
  textSize(40);
  text("ATOMS", 600, 70);
  
}
