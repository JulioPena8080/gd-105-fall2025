void setup(){
  size(400, 400);
  background(255);
}
float a = 0.0;
float t = frameCount * 0.01;
void draw(){
  fill(map(sin(t), -1, 1, 180, 255), 0, 0);
  square(200, 200, 50);
}
