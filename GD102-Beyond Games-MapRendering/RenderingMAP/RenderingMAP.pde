float centerX = width /2;
float centerY = height /2;

PImage imageSprite;
  
  float moveX = 250;
  float moveY = 250;
  
  int row = 19;
  int col = 32;
  
  float limitX = width;
  float limitY = height;
  
  float x = 0;
  float y = 0;


void setup(){
  frameRate(60);
  size(800, 500);// 11*21, 11*21 // set canvas at sprite 
                                 // size 11x11 pixels 
  background(0);
  
  //scale(centerX, centerY);
  println("Pixels: ", centerX, centerY); 
  
  // MAKE THE SAME IMAGERY WITH LESS CODE 
  
  scale(0.1);
  // grass loops
  imageSprite = loadImage("grass.png");
  // Horizontal
  image(imageSprite, x, y);

  for(int i=0; i<moveX; i++){ // display row of sprite 
    
    x+=250;
    image(imageSprite, x, y);
    
  }
  // Vertical
 
  for(int i=0; i<moveY; i++){ // second row
      y=234;
      x=0;
      image(imageSprite, x, y);
      if(x==limitX){x=limitX;}
      
      for(int c=0; c<moveX; c++){
          x+=250;
          image(imageSprite, x, y);}
          if(x==limitX){x=limitX;}
      }
  
  for(int z=0; z<moveX; z++){ // row 3
        
      y=468;
      x=0;
      image(imageSprite, x, y);}
      if(x==limitX){x=limitX;}
      
      for(int i=0; i<moveX; i++){
          x+=250;
          image(imageSprite, x, y);
          if(x==limitX){x=limitX;}
      } 
  
  for(int e=0;e<moveX;e++){ // row 4
        y=702; 
        x=0;
        image(imageSprite, x, y);
        for(int h=0;h<moveX;h++){
          x+=250;
          image(imageSprite, x, y);}
          if(x==limitX){x=limitX;}
      }
  for(int u=0;u<moveX;u++){ // row 5
      y=934; 
      x=0;
      image(imageSprite, x, y);}
      if(x==limitX){x=limitX;}
      for(int t=0;t<moveX;t++){
        x+=250;
        image(imageSprite, x, y);
        if(x==limitX){x=limitX;}
      }
   for(int r=0;r<moveX;r++){ // row 6
     y=1168;                                                
     x=0;  
     image(imageSprite, x, y);}
     if(x==limitX){x=limitX;}
     for(int f=0;f<moveX;f++){
       x+=250;
       image(imageSprite, x ,y);
       if(x==limitX){x=limitX;}
       
     }
   for(int j=0;j<moveX;j++){ // row 7
     y=1402;
     x=0;
     image(imageSprite, x, y);}
     if(x==limitX){x=limitX;}
     for(int k=0;k<moveX;k++){
       x+=250;
       image(imageSprite, x, y);
       if(x==limitX){x=limitX;}
     }
   for(int l=0;l<moveX;l++){ // row 8
     y=1631;
     x=0;
     image(imageSprite, x, y);}
     if(x==limitX){x=limitX;}
     for(int m=0;m<moveX;m++){
       x+=250;
       image(imageSprite, x, y);
       if(x==limitX){x=limitX;}
     }
   for(int n=0;n<moveX;n++){ // row 9
     y=1860;
     x=0;
     image(imageSprite, x, y);}
     for(int d=0;d<moveX;d++){
       x+=250;
       image(imageSprite, x, y);
       if(x==limitX){x=limitX;}
   }
   for(int a=0;a<moveX;a++){ // row 10
     y=2094;
     x=0;
     image(imageSprite, x, y);}
     if(x==limitX){x=limitX;}
     for(int w=0;w<moveX;w++){
       x+=250;
       image(imageSprite, x, y);
       if(x==limitX){x=limitX;}
    }
    for(int g=0;g<moveX;g++){ // row 11
      y=2328;
      x=0;
      image(imageSprite, x, y);}
      if(x==limitX){x=limitX;}
      for(int z=0;z<moveX;z++){
        x+=250;
        image(imageSprite, x, y);
        if(x==limitX){x=limitX;}
    }
    for(int p=0;p<moveX;p++){ // row 12
       y=2562;
       x=0;
       image(imageSprite, x, y);}
       if(x==limitX){x=limitX;}
       for(int i=0;i<moveX;i++){
         x+=250;
         image(imageSprite, x, y);
         if(x==limitX){x=limitX;}
         
      }
      for(int j=0;j<moveX;j++){ // row 13
         y=2792;
         x=0;
         image(imageSprite, x, y);}
         if(x==limitX){x=limitX;}
         for(int k=0;k<moveX;k++){
           x+=250;
           image(imageSprite, x ,y);
           if(x==limitX){x=limitX;}
       }
       for(int r=0;r<moveX;r++){ // row 14
          y=3024;
          x=0;
          image(imageSprite, x, y);
          if(x==limitX){x=limitX;}
          for(int e=0;e<moveX;e++){
            x+=250;
            image(imageSprite, x, y);
            if(x==limitX){x=limitX;}
        }
        for(int t=0;t<moveX;t++){ // row 15
          y=3258; 
          x=0;
          image(imageSprite, x, y);}
          if(x==limitX){x=limitX;}
          for(int i=0;i<moveX;i++){
            x+=250;
            image(imageSprite, x, y);}
            if(x==limitX){x=limitX;}
        }
        for(int r=0;r<moveX;r++){ // row 16
          y=3492;
          x=0;
          image(imageSprite, x, y);}
          if(x==limitX){x=limitX;}
          
          for(int e=0;e<moveX;e++){
              x+=250;
              image(imageSprite, x, y);
              if(x==limitX){x=limitX;}
         }
         for(int t=0;t<moveX;t++){ // row 17
            y=3724;
            x=0;
            image(imageSprite, x, y);}
            if(x==limitX){x=limitX;}
            for(int r=0;r<moveX;r++){
              x+=250;
              image(imageSprite, x, y);
              if(x==limitX){x=limitX;}
         }
         for(int r=0;r<moveX;r++){ // row 18
             y=3958; 
             x=0;
             image(imageSprite, x, y);}
             if(x==limitX){x=limitX;}
             for(int i=0;i<moveX;i++){
               x+=250;
               image(imageSprite, x, y);
               if(x==limitX){x=limitX;}
          }
          for(int b=0;b<moveX;b++){ // row 19
            y=4192; 
            x=0;
            image(imageSprite, x, y);}
            if(x==limitX){x=limitX;}
            for(int k=0;k<moveX;k++){
              x+=250;
              image(imageSprite, x, y);
              if(x==limitX){x=limitX;}
          }


}


void draw(){
  
  scale(0.1);
  // charTwo
  
  PImage charTwo;
  charTwo = loadImage("charTwo.png");
  
  
  
  if(keyPressed && key == ' '){
    image(charTwo, 0, 0);
   
  }
  if(keyPressed && key == 'd'){
    image(charTwo, moveX, 0);
  }

  //image(imageSprite, 250, 0); // for loops for iteration
  //image(imageSprite, 500, 0); // 3 blocks totals at 0.1


}
