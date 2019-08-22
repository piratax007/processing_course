PImage eye;
float h = 223;
float k = 154;
float rO = 96;
float rI = 40;
float x1, x2, y1, y2;
float x11, x22, y11, y22;
float t = 1;

void setup(){
  size(450, 300);

  smooth();
  eye = loadImage("eye.png");
  stroke(75, 175, 255);
}

void draw(){
  image(eye, 0, 0);
  if (millis() > t * 5000){
    stroke(random(255), random(255), random(255));
    t++;
  }

  for (int b = -200; b < 200; b += 20){
    strokeWeight(.75);

    x1 = ((k + h - b) - sqrt(pow(b - h - k, 2) - 2 * (pow(h, 2) - pow(rO, 2) + pow(b - k, 2)))) / 2;
    x2 = ((k + h - b) + sqrt(pow(b - h - k, 2) - 2 * (pow(h, 2) - pow(rO, 2) + pow(b - k, 2)))) / 2;
    y1 = x1 + b;
    y2 = x2 + b;

    line(x1, y1, x2, y2);
    line(2 * h - x1, y1, 2 * h - x2, y2);
  }
}
