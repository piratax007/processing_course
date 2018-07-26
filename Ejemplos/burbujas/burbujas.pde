bubble b;

void setup(){
  size(500, 300);
  
  b = new bubble();
}

void draw(){
  background(150);
  b.display();
  b.ascend();
}