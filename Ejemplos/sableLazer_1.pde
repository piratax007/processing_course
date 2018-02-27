void setup() {
  size(600, 600);
}

void draw() {
  noStroke();
  fill(0, 15);
  rect(0, 0, width, height);
}

void mousePressed() {
  float x = random(width);
  float y = random(height);
  noStroke();
  fill(255);
  ellipse(mouseX, mouseY, 15, 15);
  strokeWeight(4);
  stroke(255);
  line(mouseX, mouseY, x, y);
  filter(BLUR, 3);
  noStroke();
  fill(255);
  ellipse(mouseX, mouseY, 5, 5);
  strokeWeight(2);
  stroke(255);
  line(mouseX, mouseY, x, y);
}
