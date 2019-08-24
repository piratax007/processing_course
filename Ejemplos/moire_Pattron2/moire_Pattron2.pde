void setup() {
  size(400, 400);
}

void draw(){
  background(175);

  pattron(color(213, 186, 26), 20);

  translate(200, 0);
  pattron(color(120, 187, 242), 20);

  translate(0, 200);
  pattron(color(246, 162, 230), 20);

  translate(-200, 0);
  pattron(color(120, 242, 143), 20);
}

void pattron(color colour, int separation){
  stroke(colour);
  for (int i = separation; i <= width / 2; i += separation){
    line(0, i, i, 0);
    line(i, height / 2, width / 2, i);
    line(0, height / 2 - i, i, height / 2);
    line(i, 0, width / 2, height / 2 - i);
  }
}
