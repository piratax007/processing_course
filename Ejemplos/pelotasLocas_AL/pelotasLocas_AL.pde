ArrayList<pelotaLoca> bubbles = new ArrayList<pelotaLoca>();

void setup(){
  size(400, 400);
}

void draw(){
  background(75);
  for (int i = 0; i < bubbles.size() - 2; i++){
    bubbles.get(i).dibujar();
    bubbles.get(i).mover();
    for (int j = 0; j < bubbles.size() - 2; j++){
      if (i != j && bubbles.get(j).colisionar(bubbles.get(i), bubbles.get(j))){
        bubbles.remove(bubbles.get(i));
        bubbles.remove(bubbles.get(j));
      }
    }
  }
}

void mousePressed(){
  bubbles.add(new pelotaLoca());
}
