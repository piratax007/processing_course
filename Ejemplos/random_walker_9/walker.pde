class walker{
  float x, y;
  color walkerColor;
  
  walker(){
    x = width / 2;
    y = height / 2;
    walkerColor = 255;
  }
  
  walker(color Color){
    x = width / 2;
    y = height / 2;
    walkerColor = Color;
  }
  
  void display(){
    stroke(walkerColor);
    point(x, y);
  }
  
  void walk(){
    int xStep = int(random(3)) - 1;
    int yStep = int(random(3)) - 1;
    
    x += xStep;
    y += yStep;
    
    x = constrain(x, 0, width - 1);
    y = constrain(y, 0, height - 1);
  }
}