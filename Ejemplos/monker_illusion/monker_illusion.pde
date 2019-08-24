void setup(){
  size(600, 300);
  noStroke();
  colorMode(HSB, 100);
}

void draw(){
  background(100);

  fill(0);
  for (int i = 0; i < height; i += 50){
    rect(mouseX, i + 25, 600, 25);
  }

  fill(0, 0, 50);
  for (int i = 0; i < height; i += 50){
    rect(100, i + 25, 150, 25);
  }

  for (int i = 0; i < height; i += 50){
    rect(300, i, 150, 25);
  }
}
