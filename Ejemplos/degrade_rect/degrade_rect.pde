rectMode(CENTER);

size(500, 500);

int spacing = 25;
int w = width / 2;
int h = height / 2;
float divisions = height / spacing;

for (int f = 0; f < height / spacing; f++) {
  for (int c = 0; c < width / spacing; c++) {

    float dh = dist(w, h, c * spacing + spacing / 2, h);
    float dv = dist(w, h, w, f * spacing + spacing / 2);

    if (dh < (divisions / 2 - c) * spacing && dv <= dh || //
      dh >= abs(divisions / 2 - c) * spacing && dv <= dh){
      fill(dh);
    } else {
      fill(dv);
    }

    rect(c * spacing + spacing / 2, f * spacing + spacing / 2, spacing, spacing);
  }

}

//save("degradado_rect.jpg");