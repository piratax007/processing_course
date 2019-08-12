float diameter = 0;
float angle = 0;
boolean state = true;

void setup(){
  size(300, 300);
  smooth();
  noStroke();
}

void draw(){
  background(200);
  
  if (state){
    angle += HALF_PI / 30;
    if (angle > HALF_PI){
      state = !state;
    }
  }else {
    angle -= HALF_PI / 120;
    if (angle < 0){
      state = !state;
    }
  }
  
  diameter = 200 * sin(angle);
  
  fill(250, 100, 50);
  ellipse(width / 2, height / 2, diameter, diameter);
}
