class coin{
  float h, k;
  PImage Cara = loadImage("monedaCara.png"); 
  PImage Cruz = loadImage("monedaSello.png");
  PImage e;
  
  coin(float x, float y){
    h = x;
    k = y;
    e = Cara;
  }
  
  void display(){
    noStroke();
    image(e, h, k, 100, 100);
  }
  
  int flip(){
    int result = int(random(2));
    if (result == 0){
      e = Cara;
    }else{
      e = Cruz;
    }
    
    return result;
  }
}