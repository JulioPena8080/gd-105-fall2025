

// customized functions
void arrayNumbers(){
    int[] array = new int[3]; // allocating the array
    // assign values to array
    array[0] = 1;
    array[1] = 2;
    array[2] = 3;
    translate(width/2, height/2); // translate to center 
    scale(2); // scale text
    text("The array has 3 numbers: [ " + array[0] + ", " + array[1] + ", " + array[2] + " ] ", 0, 0);
}

// static sketch 
void setup(){
    size(1000, 550);
    background(255);
}

// active sketck
void draw(){
    // Pink background
    background(255, 30, 200);
    // displays objects
    arrayNumbers();
}
