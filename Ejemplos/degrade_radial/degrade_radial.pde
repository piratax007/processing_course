rectMode(CENTER);

size(500, 500);

int spacing = 25;
int w = width / 2;
int h = height / 2;

for (int f = 0; f < height / spacing; f ++) {
  for (int c = 0; c < width / spacing; c ++) {
    fill(dist(w, h, c * spacing + spacing / 2, f * spacing + spacing / 2));
    rect(c * spacing + spacing / 2, f * spacing + spacing / 2, spacing, spacing);
  }
}

//save("degradado_radial.jpg");