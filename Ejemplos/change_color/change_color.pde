void setup(){
  size(300, 300);
}

void draw(){
  if (mouseX < width / 2 && mouseY < height / 2){
    background(200, 75, 100);
  }else if(mouseX > width / 2 && mouseY < height / 2){
    background(100, 200, 75);
  }else if(mouseX < width / 2 && mouseY > height / 2){
    background(75, 100, 200);
  }else if(mouseX > width / 2 && mouseY > height / 2){
    background(200, 180, 20);
  }
  line(width / 2, 0, width / 2, height);
  line(0, height / 2, width, height / 2);
}
