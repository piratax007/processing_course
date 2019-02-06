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
    int select = int(random(4));
    
    if (select == 0){
      x++;
    }else if(select == 1){
      x--;
    }else if(select == 2){
      y--;
    }else{
      y++;
    }
    
    x = constrain(x, 0, width - 1);
    y = constrain(y, 0, height - 1);
  }
}