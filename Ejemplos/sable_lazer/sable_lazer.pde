void setup(){
  size(600, 600);
  background(0);
}

void draw(){
  strokeWeight(6);
  stroke(255);
  line(50, 50, 550, 550);
  filter(BLUR, 3);
}