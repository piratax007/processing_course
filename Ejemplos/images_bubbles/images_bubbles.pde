PImage[] bubblesImages = new PImage[3];
bubble[] bubbles = new bubble[100];

void setup(){
  size(350, 500);

  for (int i = 0; i < bubblesImages.length; i++){
    bubblesImages[i] = loadImage("bubble"+i+".png");
  }

  for (int i = 0; i < bubbles.length; i++){
    bubbles[i] = new bubble(bubblesImages[int(random(3))], random(10, 20));
  }
}

void draw(){
  background(#1A6A99);
  for (int i = 0; i < bubbles.length; i++){
    bubbles[i].display();
    bubbles[i].ascend();
  }
}
