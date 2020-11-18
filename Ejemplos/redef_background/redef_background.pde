void setup() {
  size(300, 300);
}

void draw() {
  background();
}

void background() {
  loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float d = dist(x, y, width / 2, height / 2);
      pixels[x + y * width] = color(d, 0, 0);
    }
  }
  updatePixels();
}
