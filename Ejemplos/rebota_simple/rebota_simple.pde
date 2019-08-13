float x, y;
float velX;
float velY;
float r;

void setup(){
  size(300, 300);
  r = 25;
  x = random(r, width - r);
  y = random(r, height - r);
  velX = random(-2, 2);
  velY = random(-2, 2);
}

void draw(){
  background(200);
  
  if (x - r < 0 || x + r > width){
    velX = -velX;
  }
  
  if (y - r < 0 || y + r > height){
    velY = -velY;
  }
  
  fill(120, 200, 75);
  ellipse(x, y, 2 * r, 2 * r);
  
  x += velX;
  y += velY;  
}
