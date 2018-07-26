pelotaLoca b1;
pelotaLoca b2;

void setup(){
  size(350, 300);
  b1 = new pelotaLoca();
  b2 = new pelotaLoca(25, color(255, 0, 0));
}

void draw(){
  background(75);
  b1.dibujar();
  b2.dibujar();
  b1.mover();
  b2.mover();
  b1.colisionar(b1, b2);
}