float angle = -PI / 2;
float xCenter;
float yCenter;
float diameter;

void setup(){
  smooth();
  size(300, 300);
  xCenter = width / 2;
  yCenter = height / 2;
  diameter = width - width * 0.3;
}

void draw(){
  background(200);
  ellipse(xCenter, yCenter, diameter, diameter);
  line(xCenter, yCenter, xCenter + ((diameter / 2 - 10) * cos(angle)), yCenter + ((diameter / 2 - 10) * sin(angle)));
  angle += PI / 1800;
  //saveFrame("frames/####.tif");
}
